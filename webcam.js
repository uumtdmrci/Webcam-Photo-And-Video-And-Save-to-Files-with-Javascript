 
    function validatePhoneNumber(input) {
    if (input.value.startsWith('0')) {
        input.value = input.value.substring(1);
    }
    input.value = input.value.replace(/\D/g, '').slice(0, 10);
    }  
 
   document.addEventListener('DOMContentLoaded', function () {
        const radioButtons = document.querySelectorAll('input[name="tip"]');
        const sikayetSelect = document.getElementById('sikayet_id');
        const textChangeElement = document.querySelector('.textchange');  

        sikayetSelect.style.display = 'none';

        radioButtons.forEach((radio) => {
            radio.addEventListener('change', function () {
                if (radio.id === 'sikayet' && radio.checked) {
                    sikayetSelect.style.display = 'block';
                    textChangeElement.innerHTML = 'Şikayet'; 
                     $('.sikayet').removeClass('d-none');
                } else if (radio.id === 'oneri1' && radio.checked) {
                    sikayetSelect.style.display = 'none';
                    textChangeElement.innerHTML = 'Öneri'; 
                     $('.sikayet').addClass('d-none');
                }
            });
        });
    }); 
 
    function openmodal() {  
        var phone = $('input[name="tel"]').val(); 
        var tip = $('input[name="tip"]:checked').val(); 
        var place = <cfoutput>#url.id#</cfoutput>;
        var sikayet_id = $('#sikayet_id').val();
        var detay = $('textarea[name="detay"]').val();
        var name = $('input[name="name"]').val();   
        var dosya = $('input[name="outputFile"]').val(); 
        var fileInput = $('#outputFile')[0]; 
        var file = fileInput.files[0];  
        if (tip == 2 && (!sikayet_id || sikayet_id.trim() === '')) {
            Swal.fire({
                title: "Hata",
                text: "Lütfen Şikayet Nedeni Seçiniz.",
                icon: "warning"
            });
            return false;
        }
        if (!detay){ 
            Swal.fire({
                title: "Hata",
                text: "Lütfen Detay Alanını Doldurunuz.",
                icon: "warning"
            }); 
            return false;
        }
        if (!name){ 
            Swal.fire({
                title: "Hata",
                text: "Lütfen Ad Soyad Alanını Doldurunuz.",
                icon: "warning"
            }); 
            return false;
        } 
        if (!phone){ 
            Swal.fire({
                title: "Hata",
                text: "Lütfen geçerli bir telefon numarası girin.",
                icon: "warning"
            }); 
            return false;
        } 
        if (!file) { 
            Swal.fire({
                title: "Hata",
                text: "Lütfen Dosya Yükleyiniz.",
                icon: "warning"
            }); 
            return false;
        }

        // Dosyayı base64 formatına dönüştürme
        var reader = new FileReader();
        reader.onloadend = function () {
            var base64Image = reader.result.split(',')[1];   
            var mimeType = reader.result.split(',')[0].split(':')[1].split(';')[0];  // MIME türünü al 
            var url = "cfc/qr.cfc?method=feedbackcodepart&returnformat=json";  // Parametreleri URL'de değil, data kısmında gönderiyoruz
 
            var formData = new FormData();
            formData.append("place", place);
            formData.append("tip", tip);
            formData.append("tel", phone);
            formData.append("detay", detay);
            formData.append("name", name);
            formData.append('mimeType', mimeType);

            //formData.append("dosya", base64Image);  // Base64 verisini buraya ekliyoruz
            if (sikayet_id && sikayet_id.length > 0) {
                formData.append("sikayet_id", sikayet_id);
            }

            // İstek sırasında form verisi ekle
            var button = document.querySelector('.btn.submit-btn'); 
            $('.indicator-label').addClass('d-none'); 
            $('.indicator-progress').removeClass('d-none');  
            button.disabled = true; 
            $.ajax({
                type: "POST",
                url: url,
                data: formData,  
                processData: false,  
                contentType: false, 
                success: function(response) { 
                    $('.feedback-container').html(response);
                },
                error: function(error) {
                    console.log('Error:', error);
                }
            });  
        }
        reader.readAsDataURL(file); // Dosyayı base64 formatında oku
    }   

    let scanning = false;
    let mediaRecorder;
    let recordedChunks = []; 
    let currentStream;  
 
    function toggleQRScanner() { 
        $('#videoIcon').addClass('d-none');
        $('#capturedImage').addClass('d-none');
        $('.video-frame').removeClass('d-none');
        $('#whiteCircle').removeClass('d-none');
        $('#baslat').removeClass('d-none'); 

        if (!scanning) {
            startQRScanner();   
            $('#qrButton').addClass('d-none');
        } else {
            stopQRScanner();   
            document.getElementById('qrButton').innerText = 'Kayıt';
        } 
        scanning = !scanning;  
    }
 
    function startQRScanner() {
        if (currentStream) {
            currentStream.getTracks().forEach(track => track.stop()); // Eski stream'i durdur
        }

        navigator.mediaDevices.getUserMedia({
            video: { 
                facingMode: 'environment',
                width: { ideal: 1280 }, // Maksimum genişlik
                height: { ideal: 720 } // Maksimum yükseklik
            }
        })
        .then(function (stream) {
            const video = document.getElementById('video');
            video.srcObject = stream;
            video.play();

            // MediaRecorder işlemleri burada devam eder
        })
        .catch(function (error) {
            console.error('Error starting video recording:', error);
        });
    }
 
    function stopQRScanner() {
        $('#baslat').addClass('d-none');
        $('#bitir').addClass('d-none');
        $('.video-frame').addClass('d-none');
        $('#capturedImage').removeClass('d-none'); 
        $('#qrButton').removeClass('d-none');
        $('#whiteCircle').addClass('d-none');

        const video = document.getElementById('video');
        if (currentStream) {
            currentStream.getTracks().forEach((track) => track.stop());  // Eski stream'i durdur
        }

        video.srcObject = null;
        scanning = false;
        document.getElementById('qrButton').innerText = 'Kayıt';
    }
    function capturePhoto() {
        if (mediaRecorder && mediaRecorder.state !== "inactive") return; 
        
        const video = document.getElementById('video');
        const canvas = document.getElementById('canvas');
        const capturedImage = document.getElementById('capturedImage');
        const dosyacheck = document.getElementById('dosyacheck');
        const outputFile = document.getElementById('outputFile');
        const videoIcon = document.getElementById('videoIcon'); 
           
        const desiredWidth = 200;
        const desiredHeight = 200;
        canvas.width = desiredWidth;
        canvas.height = desiredHeight;
        
        const context = canvas.getContext('2d');
        context.drawImage(video, 0, 0, desiredWidth, desiredHeight);   
 
        const imageData = canvas.toDataURL('image/png');
        capturedImage.src = imageData; 
        capturedImage.classList.remove('d-none');
        dosyacheck.classList.remove('d-none');    
        videoIcon.classList.add('d-none');   
         
        const blob = dataURItoBlob(imageData);
        const file = new File([blob], "captured_image.png", { type: "image/png" });
         
        const dataTransfer = new DataTransfer();
        dataTransfer.items.add(file);
        outputFile.files = dataTransfer.files;
         
        stopQRScanner();
    }
 
    function dataURItoBlob(dataURI) {
        const byteString = atob(dataURI.split(',')[1]);
        const mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0];
        const ab = new ArrayBuffer(byteString.length);
        const ia = new Uint8Array(ab);
        for (let i = 0; i < byteString.length; i++) {
            ia[i] = byteString.charCodeAt(i);
        }
        return new Blob([ab], { type: mimeString });
    }
 

    function startVideoRecording() { 
        if (currentStream) {
            currentStream.getTracks().forEach(track => track.stop());
        }
 
        $('#whiteCircle').addClass('d-none');
        $('#baslat').addClass('d-none'); 
        $('#bitir').removeClass('d-none');  

        if (mediaRecorder && mediaRecorder.state === "recording") return;
 
       
        navigator.mediaDevices.getUserMedia({ video: { facingMode: 'environment' } })
            .then(function (stream) {
                currentStream = stream;  
                const video = document.getElementById('video');
                video.srcObject = stream;  // Video elementine stream bağla
                video.play();

                mediaRecorder = new MediaRecorder(stream);
                recordedChunks = [];

                mediaRecorder.ondataavailable = function (event) {
                    if (event.data.size > 0) {
                        recordedChunks.push(event.data);
                    }
                };

                mediaRecorder.onstop = function () {
                    const blob = new Blob(recordedChunks, { type: "video/mp4" });

                    const file = new File([blob], "recorded_video.mp4", { type: "video/mp4" });
                    const dataTransfer = new DataTransfer();
                    dataTransfer.items.add(file);
                    outputFile.files = dataTransfer.files;

                    capturedImage.classList.add('d-none'); 
                    videoIcon.classList.remove('d-none');
                    dosyacheck.classList.remove('d-none');
                };

                mediaRecorder.start();
            })
            .catch(function (error) {
                console.error('Error starting video recording:', error);
            });
    }

    function stopVideoRecording() {
        if (mediaRecorder && mediaRecorder.state === "recording") {
            mediaRecorder.stop(); 
            stopQRScanner();  
        }
    }  

 
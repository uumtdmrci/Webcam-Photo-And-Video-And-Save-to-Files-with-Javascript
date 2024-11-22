 
<cfif CGI.https eq "off">
    <cfheader statuscode="301" statustext="Moved permanently">
    <script>
        window.location.href = 'https://qr.basvuruportal.com/<cfoutput>#CGI.SCRIPT_NAME#</cfoutput>';
    </script> 

</cfif>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="GALATASARAY">
<meta name="keywords" content="">
<meta name="author" content="PIXINVENT">
<title>GALATASARAY</title>
<link rel="apple-touch-icon" href="documents/gslogo.png">
<link rel="shortcut icon" type="image/x-icon" href="documents/gslogo.png">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>


<style>
   #overlay {
        background: -webkit-linear-gradient(left, #fdb912, #fdb912, #a90432, #a90432);
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 9;
        overflow-y: auto;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px;
        box-sizing: border-box;
    }

    #overlay img {
        width: 100px;
        margin-bottom: 20px;
    }

    #overlay h1 {
        font-size: 1.6em;
        color: #333;
        margin-bottom: 10px;
    }

    #overlay p {
        font-size: 1.2em;
        color: #666;
        margin-bottom: 20px;
        text-align: center;
        max-width: 75%;
    }


    #overlay button:hover {
        background-color: #8b1f3d;
    }

    @media (max-width: 600px) { 
        #overlay img {
            width: 80px;
        }
        #overlay h1 {
            font-size: 1.2em;
        }
        #overlay p {
            font-size: 0.9em;
        }

    }
</style>
<style>
@import url("https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,900&family=Mulish:wght@400&display=swap");

.feedback-container {
    background-color: #fff;
    padding: 4rem;
    border-radius: 20px;
    box-shadow: 0px 8px 8px rgba(181, 198, 221, 0.3);
    max-width: 655px;
    width: 100%;

}

.feedback-container h2 {
    font-family: "Merriweather", serif;
    font-weight: 900;
    font-size: 26px;
    margin-bottom: 2rem;
}

.options {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1rem 1rem;
}

.options label {
    cursor: pointer;
    accent-color: #1b2b5c;
}

.options input[type="radio"] {
    margin-right: 0.5rem;
    height: 28px;
    width: 28px;
    vertical-align: middle;
}

.comments {
    margin-top: 2rem;

}

.comments label {
    display: block;
    margin-bottom: 1rem;
}

textarea {
    font-family: "Mulish", sans-serif;
    font-weight: 400;
    font-size: 16px;
    background: #fbfcff;
    color: #1b2b5c;
    max-width: 455px;
    width: 100%;
    height: 80px;
    padding: 0.5rem;
    border: 1px solid #e3e8f5;
    border-radius: 5px;
    resize: none;
}

.disclaimer {
    font-size: 12px;
    color: #7a7a7a;
    margin: 1rem 0;
    line-height: 1.5;
    max-width: 542px;
    width: 100%;
}

.disclaimer a,
.disclaimer a:visited {
    color: #7a7a7a;
}

.buttons {
    display: flex;
    justify-content: flex-start;
    font-family: "Mulish", sans-serif;
    font-weight: 400;
    font-size: 16px;
}

.cancel-btn,
.submit-btn {
    font-family: "Mulish", sans-serif;
    font-weight: 400;
    font-size: 16px;
    padding: 1rem 1.4rem;
    border-radius: 5px;
    cursor: pointer;
    border: none; 
    margin: 0.5rem;
    transition: background-color 0.3s ease, color 0.3s ease;
}

.cancel-btn {
    background-color: #ebeffa;
    color: #1b2b5c;
}

.submit-btn {
    background-color: #1b2b5c;
    color: #fff;
}

.cancel-btn:hover {
    background-color: #d1d8f9;
    color: #1b2b5c;
}

.submit-btn:hover {
    background-color: #163d7a;
    color: #fff;
}

@media (max-width: 700px) {
    body {
    height: auto;
    }

    .feedback-container {
    width: 100%;
    margin: 80px auto;
    }
}

@media (max-width: 620px) {
    .options {
    grid-template-columns: 1fr;
    }
}

@media (max-width: 430px) {
    .buttons {
    flex-direction: column-reverse;
    }
}

</style>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<style>body, html {
    overflow-y: hidden;
} 

.btn-group .btn-check:checked + .btn {
    background: -webkit-linear-gradient(left, #fdb912, #fdb912, #a90432, #a90432);
    color: white;
    font-weight:bold; 
    border-color: red;
    transition: all 0.3s ease; /* Yumuşak geçiş efekti */
}

.btn-group .btn {
    border: 1px solid #ced4da;
    transition: all 0.3s ease;
}

.btn-group .btn:first-child {
    border-top-right-radius: 0;
    border-bottom-right-radius: 0;
}

.btn-group .btn:last-child {
    border-top-left-radius: 0;
    border-bottom-left-radius: 0;
}

.btn-group {
    display: flex;
}

.w-100 {
    width: 100%;
}
</style> 
<script src="https://cdn.jsdelivr.net/npm/dspjs@1.0.0/dsp.min.js"></script>
<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/2096725/onset.js"></script>
</head>
<cfquery name="getPtype" datasource="nextstation_otoparkliste">
	SELECT * FROM SETUP_PLACE SP 
	LEFT JOIN SETUP_MAIN_CATEGORY_ROW SMCR ON SMCR.MCR_ID = SP.MCR_ID
	LEFT JOIN SETUP_YER SY ON SY.YER_ID = SP.PLACE_ID
    WHERE P_ID = #url.id#
	ORDER BY P_ID ASC
</cfquery>  
<style> 
    .video-frame {
        position: relative;
        width: 250px;
        height: 400px;
        overflow: hidden;
        border: 2px solid #000;  
        margin: 0 auto;
    }
 
    #video {
        width: auto;
        height: 100%;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        object-fit: cover;  
    }
 
    .white-circle {
        position: absolute;
        bottom: 20px;
        left: 50%;
        transform: translateX(-50%);  
        border-radius: 50%; 
        cursor: pointer;
    }

    .d-none {
        display: none;
    }
</style>
<div id="overlay">
    <div class="wrapper"> 
            <div class="text-center" style="color:#a90432;font-weight:bold;font-size:17px;"> 
               <div class="container"> 
                <div class="row justify-content-center">
                    <cfquery name="get_sikayet" datasource="nextstation_otoparkliste">
                        SELECT * FROM SETUP_SIKAYET
                        ORDER BY SIKAYET ASC
                    </cfquery>
                    <div class="d-flex justify-content-center align-items-center">
                        <div class="feedback-container p-2">
                            <img src="documents/gslogo.png" alt="Galatasaray Logo" class="img-fluid mt-1" style="width:15%">
                            <h6><cfoutput>#getPtype.MAIN_CATEGORY_ROW# - #getPtype.YER#</cfoutput></h6> 
                            <hr> 
                            <cfform name="form" id="form" method="post" enctype="multipart/form-data">
                                <div class="row"> 
                                    <div class="page1">
                                        <div class="options row mt-3" style="margin-left:5px !important">
                                            <div class="btn-group d-flex" role="group">
                                                <input type="radio" class="btn-check" name="tip" id="oneri1" value="1" autocomplete="off" checked>
                                                <label class="btn btn-outline-dark w-100" style="font-weight:bold" for="oneri1">Öneri</label> 
                                                <input type="radio" class="btn-check" name="tip" id="sikayet" value="2" autocomplete="off">
                                                <label class="btn btn-outline-dark w-100"  style="font-weight:bold" for="sikayet">Şikayet</label>
                                            </div>
                                        </div> 
                                        <button type="button" class="btn submit-btn btn-danger mt-3" style="background: -webkit-linear-gradient(top, #a90432, #a90432 , #fdb912);" onclick="goToPage(2)">İleri</button>
                                     </div>
                                    <div class="page2 d-none"> 
                                        <div class="col-12 mt-0"> 
                                            <button type="button" class="btn submit-btn btn-secondary mt-0 textchange" style="width:300px !important">Öneri</button>
                                         </div>
                                        <div class="col-12 mt-0 d-none sikayet">
                                            <div class="form-group">
                                                <label class="form-label me-2">Şikayet</label>
                                                <select class="form-control text-left" name="sikayet_id" id="sikayet_id" tabindex="-1" aria-hidden="true" style="display:none">
                                                <option value="">Şikayet Seçiniz</option>
                                                <cfoutput query="get_sikayet">
                                                    <option value="#sikayet_id#">#sikayet#</option>
                                                </cfoutput>
                                                </select>
                                            </div>
                                        </div>
                                            
                                        <div class="col-12 mt-1">
                                            <div class="form-group">
                                                <label class="form-label me-2" for="q_name">Detay</label>
                                                <textarea id="comments" class="form-control text-left" placeholder="Detay Giriniz" name="detay"></textarea>
                                            </div>
                                        </div> 
                                        <div class="col-12 mt-2">
                                            <div class="form-group">
                                                <label for="exampleInputPassword1"><b>Ad Soyad</b></label>
                                                <input type="text" class="form-control text-left" placeholder="Ad Soyad Giriniz"  id="name" name="name">
                                            </div>
                                        </div>
                                        <div class="col-12 mt-2">
                                            <div class="form-group">
                                                <label for="phone_num"><b>Telefon Numara</b></label>
                                                <input type="text" class="form-control" id="tel" oninput="this.value=this.value.replace(/\D/g,'').slice(0,10)" name="tel" placeholder="0 olmandan numaranızı giriniz">
                                            </div>
                                        </div> 
                                        <div class="col-12 mt-1"> 
                                            
                                        </div>   
                                        <div class="col-12 mt-1">
                                            <div class="d-flex justify-content-center align-items-center mt-1">
                                                 <div id="dosyacheck" class="text-center d-none" 
                                                     style="width: 40px; height: 40px; display: flex; align-items: center; justify-content: center; margin-right: 10px; border: 2px solid #ccc; border-radius: 10px;">
                                                    <i class="fa-solid fa-square-check"></i>
                                                </div>   
                                                <button type="button" class="btn submit-btn btn-danger mt-1" 
                                                    style="background: -webkit-linear-gradient(right, #a90432, #a90432 , #fdb912);" onclick="goToPage(3)">
                                                  Dosya Ekle
                                                </button>
                                            </div>
                                         </div>  
                                        <div class="col-12 mt-1">
                                            <button type="button" onclick="openmodal()" class="btn submit-btn btn-danger mt-0" style="background: -webkit-linear-gradient(top, #a90432, #a90432 , #fdb912);">
                                                <label class="indicator-label">Kaydet</label>
                                                <span class="indicator-progress d-none">Kayıt Ediliyor...
                                                    <span class="spinner-border spinner-border-sm align-middle ms-2"></span>
                                                </span>
                                            </button>
                                        </div>  
                                    </div> 
                                    <div class="page3 d-none">
                                        <div class="col-12 mt-1">   
                                           <!---  <div id="videoContainer" class="video-frame d-none">
                                                <video id="video" width="100" height="200" autoplay playsinline></video> 
                                            </div> 
                                            <button type="button" class="btn btn-dark mt-3 d-none" id="whiteCircle" onclick="capturePhoto()"><i class="fa-solid fa-camera"></i></button>
                                            <button type="button" class="btn btn-dark mt-3 d-none" id="baslat" onclick="startVideoRecording()"><i class="fa-solid fa-play"></i></button>
                                            <button type="button" class="btn btn-dark mt-3 d-none" id="bitir" onclick="stopVideoRecording()"><i class="fa-solid fa-pause"></i></button> --->
                                            <div id="videoContainer" class="video-frame d-none" style="position: relative; display: flex; flex-direction: column; align-items: center;">
                                                <video id="video" width="100%" height="200" autoplay playsinline></video> 
                                             
                                                <div style="position: absolute; bottom: 10px; display: flex; justify-content: center; width: 100%; gap: 10px;">
                                                    <button type="button" class="btn btn-dark" id="whiteCircle" onclick="capturePhoto()" style="width: 40px; height: 40px; border-radius: 50%;">
                                                        <i class="fa-solid fa-camera"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-dark" id="baslat" onclick="startVideoRecording()" style="width: 40px; height: 40px; border-radius: 50%;">
                                                        <i class="fa-solid fa-play"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-dark d-none" id="bitir" onclick="stopVideoRecording()" style="width: 40px; height: 40px; border-radius: 50%;">
                                                        <i class="fa-solid fa-pause"></i>
                                                    </button>
                                                </div>
                                            </div>
                                            <button type="button" class="btn btn-dark mt-3" id="qrButton" onclick="toggleQRScanner()">Kayıt</button><br>
                                            <canvas id="canvas" class="d-none"></canvas>
                                            <img id="capturedImage" class="d-none mt-3" width="100" height="100">
                                            <div id="videoIcon" class=" d-none mt-3 text-center" 
                                                style="width: 80px; height: 80px; display: flex; align-items: center; justify-content: center; margin: 0 auto; border: 2px solid #ccc; border-radius: 10px;">
                                                <i class="fa-solid fa-video"></i>
                                            </div>
                                            <input type="file" id="outputFile" name="outputFile" class="d-none" />
                                        </div>
                                        <button type="button" class="btn submit-btn btn-danger mt-3" style="background: -webkit-linear-gradient(top, #a90432, #a90432 , #fdb912);" onclick="goToPage(2)">Devam Et</button>
                                    </div>
                                </div> 
                            </cfform>
                            <script>
                                function goToPage(pageNumber) { 
                                        $('.page1, .page2, .page3').addClass('d-none');
                                         
                                        if (pageNumber === 2) {
                                            $('.page2').removeClass('d-none');
                                        } else if (pageNumber === 3) {
                                            $('.page3').removeClass('d-none');
                                        }
                                    } 
                            </script>
                        </div>
                    </div>    
                </div>
              </div>
            </div>  
    </div>
</div> 
 

 
<cfset phone = '#arguments.tel#'>
               
                 
                <cfset message ="KVKK SMS Onay Kodunuz :#code#. Galatasaray"> 
                <cfset _StatusControl_ = 1>
                <cfset _DeleteDate_ = ""> 
                <cfset _SendDate_ = now()> 
                <cfset _PhoneNumber_ = phone> 
                <cfset _Message_ = "#message#">
                
               
                        <cfscript>
                            my_doc = XmlNew();
                            my_doc.xmlRoot = XmlElemNew(my_doc,"MainmsgBody");
                            my_doc.xmlRoot.XmlChildren[1] = XmlElemNew(my_doc,"Command");
                            my_doc.xmlRoot.XmlChildren[1].XmlText = "0";
                            my_doc.xmlRoot.XmlChildren[2] = XmlElemNew(my_doc,"PlatformID");
                            my_doc.xmlRoot.XmlChildren[2].XmlText = "1";
                            my_doc.xmlRoot.XmlChildren[3] = XmlElemNew(my_doc,"UserName");
                            my_doc.xmlRoot.XmlChildren[3].XmlText = "#_UserName_#";
                            my_doc.xmlRoot.XmlChildren[4] = XmlElemNew(my_doc,"PassWord");
                            my_doc.xmlRoot.XmlChildren[4].XmlText = "#_Password_#";
                            my_doc.xmlRoot.XmlChildren[5] = XmlElemNew(my_doc,"ChannelCode");
                            my_doc.xmlRoot.XmlChildren[5].XmlText = "#_ServiceCode_#";
                            my_doc.xmlRoot.XmlChildren[6] = XmlElemNew(my_doc,"Mesgbody");
                            my_doc.xmlRoot.XmlChildren[6].XmlText = "#_Message_#";
                            my_doc.xmlRoot.XmlChildren[7] = XmlElemNew(my_doc,"Numbers");
                            my_doc.xmlRoot.XmlChildren[7].XmlText = "#_PhoneNumber_#";
                            my_doc.xmlRoot.XmlChildren[8] = XmlElemNew(my_doc,"Type");
                            my_doc.xmlRoot.XmlChildren[8].XmlText = "1";
                            my_doc.xmlRoot.XmlChildren[9] = XmlElemNew(my_doc,"Originator");
                            my_doc.xmlRoot.XmlChildren[9].XmlText = "#_AlphaNumeric_#";
                            my_doc.xmlRoot.XmlChildren[10] = XmlElemNew(my_doc,"Option");
                            my_doc.xmlRoot.XmlChildren[10].XmlText = "1";
                        </cfscript> 
                        <cfhttp url="http://processor.smsorigin.com/xml/process.aspx" method="Post" timeout="60">
                            <cfhttpparam type="xml" name="data" value="#my_doc#">
                        </cfhttp>
                        
                        <cfset Sms_Status = 1>
                        <cfset xmlDoc = cfhttp.FileContent> 
                        <cfif Len(xmlDoc)>
                            <cfif xmlDoc contains ':'>
                                <cfset Error_Code = -1>
                            <cfelse>
                                <cfset Error_Code = Trim(xmlDoc)>
                            </cfif>
                        </cfif>  


                                <div class="field mt-2" id="kvkkdiv">
                                    <span style="font-weight:normal">KVKK Sms Onay Kodu</span><hr>
                                    <span style="font-weight:normal;color:gray;font-size:12px !important;">Lütfen <cfoutput>#arguments.tel#</cfoutput> Numarasına Gönderilen 4 Haneli Sms Kodunuz Giriniz. </span><hr>
                                    <input id="kvkkcode" name="kvkkcode" type="number" class="form-control" placeholder="KVKK Sms Onay Kodu" maxlength="4" autocomplete="off">
                                </div>

                                <div class="text-center d-none" style="margin-top:20px;margin-bottom:10px" id="yanliskod">
                                    <span style="color:#a90432"><b>Kod Yanlış!</b></span>
                                </div>

                                <div class="text-center" style="margin-top:20px;margin-bottom:10px;font-weight:normal">
                                    KVKK Sms Doğrulama Metni
                                </div>
                                <div style="max-height:120px;overflow-x:hidden;border: 1px solid lightgrey;outline: none; border-radius:15px;padding:3px;font-size:8px;">
                                    <p class="card-text">
                                        <span style="font-size:8px;">
                                            <div  class="text-center">
                                                <span><b>Galatasaray Sportif Sınai ve Ticari Yatırımlar A.Ş.
                                                    Kişisel Verilerin Korunması Hakkında Aydınlatma Metni</b></span><br>
                                            </div>
                                        
                                            1.	Kapsam: <br/>
                                            Bu metin, 6698 sayılı Kişisel Verilerin Korunması Kanunu (“KVKK”) m.10 uyarınca gerçekleştirilmesi zorunlu olan aydınlatma yükümlülüğü gereği bilginize sunulmaktadır. Bu metin, Ali Sami Yen Spor Kompleksi Rams Park’ta gerçekleşecek müsabaka ve etkinlik günlerinde, Rams Park’ta bulunan otopark alanına girişinizin sağlanabilmesi için, kişisel verilerinizin Galatasaray Sportif Sınai ve Tic. Yat. A.Ş. (“Galatasaray”) tarafından ne şekilde ve hangi amaçlarla kullanıldığına dair bilgi vermek amacıyla hazırlanmıştır.  
                                            Kişisel verilerinizin, şeffaf ve hukuka uygun olarak kullanılması Galatarasay olarak önceliğimizdir. Kişisel verileriniz her koşulda, KVKK’de düzenlenen şart ve koşullarda ve KVKK’ye uygun olarak işlenecektir. Bu çerçevede kişisel verileriniz, hukuka ve dürüstlük kurallarına uygun, doğru ve gerektiğinde güncel olarak belirli, açık ve meşru amaçlar için, işlendikleri amaçla bağlantılı, sınırlı ve ölçülü olacak şekilde işlenecek ve kişisel verileriniz ilgili mevzuatta öngörülen veya işlendikleri amaç için gerekli olan süre kadar muhafaza edilecektir. Kişisel verilerinizi yetkisiz erişime, kayba veya ifşaya karşı korumak için gerekli tüm teknik ve idari güvenlik önlemlerini almaktayız. 
                                            2.	Veri Sorumlusu<br/>
                                            Bu form ile elde edilen bilgiler, yalnızca Galatasaray Sportif Sınai ve Tic. Yat. A.Ş. (Ali Sami Yen Spor Kompleksi Rams Park Huzur Mah. Seyrantepe/İstanbul Tel: (212) 305 19 05 Fax: (212) 305 19 42) tarafından veri sorumlusu sıfatıyla ve aşağıda açıklanan amaç ve hukuki gerekçelerle kullanılacaktır. 
                                            3.	Kişisel Verilerin Toplama Yöntemi <br/>
                                            Kişisel Verileriniz Galatasaray tarafından kullanılan ve dijital ortamda sunulan form ve internet sitesi üzerinden toplanmaktadır. 
                                            4.	Kullanılan Kişisel Veriler<br/>
                                            İşbu Aydınlatma Metni’nin kapsamında, aşağıdaki kategorilerde yer alan kişisel verileriniz toplanmaktadır: <br/>
                                            •	İletişim Bilgisi: Telefon numarası<br/>
                                            •	Diğer Bilgiler: Araç plakası<br/><br/>
                                            
                                            5.	Kişisel Verilerinizin Kullanım Amacı ve Hukuki Gerekçeleri <br/>
                                            Galatasaray, aşağıdaki amaçlarla ve işaret edilen hukuki gerekçelerden en az birine dayanarak kişisel verilerinizi işleyebilmektedir:<br/>
                                            -	Rams Park Otoparkına Girişinizin Sağlanması: İletişim bilgisi, diğer bilgiler (araç plakası), Ali Sami Yen Spor Kompleksi Rams Park’ta gerçekleşecek müsabaka ve etkinlik günlerinde, Rams Park’ta bulunan otopark alanına girişinizin, plaka tanıma sistemi/yazılımı vasıtasıyla sağlanabilmesi, bu hizmetin planlanması ve yürütülmesi, bu kapsamda sizlerle olan iletişimimizin sağlıklı şekilde yürütülmesi, sistem kaydınızın oluşturulması, talep ve şikayetlerinizin alınması ve bu kapsamda gerekli iş ve işlemlerin yapılması amacıyla sizlerin taleplerini gerçekleştirmek ve hukuki yükümlülüklerimizi yerine getirmek amacıyla Kanun’un 5/2 (c) ve (e) hükümleri uyarınca kullanılmaktadır. 
                                            <br/>
                                            -	Bilgilendirme Faaliyetleri Gerçekleştirilmesi: İletişim bilgileri, (i) Galatasaray tarafından, sizlere yapılacak bilgilendirme, bilgi güncelleme gibi taraflar arasındaki ilişkiden kaynaklanan mecburi iletişimler gerçekleştirilmesi amacıyla Kanun’un 5/2 (c) maddesi uyarınca kullanılmaktadır. 
                                            <br/>
                                            -	Galatasaray’ın günlük operasyonlarını sürdürebilmesi: İletişim bilgisi ve diğer bilgiler (araç plakası), mevzuattan kaynaklanan yükümlülüklerin yanında, Galatasaray tarafından sürdürülen raporlama, arşiv, bilgi yönetimi, bilgi işlem operasyonları, bilgi güvenliği operasyonları, talep ve şikayetlerinizin yönetimi gibi günlük operasyonların gerçekleştirilmesi amacıyla Kanun’un 5/2 (f) maddesi uyarınca kullanılmaktadır. 
                                            <br/>
                                            -	Yasal yükümlülüklerin ve resmi ve idari kurumların taleplerinin yerine getirilmesi bağlamında kanunen yetkili kamu kurumları ve özel kişilere bilgi verilmesi: İletişim bilgisi ve diğer bilgiler (araç plakası), yasal yükümlülüklerin ve resmi ve idari kurumların taleplerinin yerine getirilmesi amacıyla Kanun’un 5/2 (ç) maddesi uyarınca kullanılmaktadır.
                                            <br/>
                                            6.	Kişisel Verilerinizin Kimlere ve Hangi Amaçlarla Aktarılabileceği
                                            <br/>
                                            -	Kişisel verileriniz, yukarıda belirtilen amaçların gerçekleştirilebilmesi için gerektiği ölçüde ve bu amaçlarla sınırlı olmak kaydıyla, otoparka giriş sistemi yazılımını üreten/temin eden firmalar, online SMS gönderimi için birlikte çalıştığımız firmalar ve bilgi teknolojileri desteği aldığımız firmalar gibi hizmet aldığımız taraflarla paylaşılabilmektedir.
                                            <br/>
                                            -	Kişisel verileriniz, Galatasaray’ın ve Galatasaray Spor Kulübü ve bağlı ortaklıkları ve iştiraklerinin (Galatasaray Mağazacılık ve Per. A.Ş., Galatasaray Dijital Satış ve Pazarlama A.Ş., Galatasaray Televizyon Yayıncılık A.Ş., Galatasaray Emlak Gel. A.Ş., Galatasaray Florya Emlak A.Ş. ve Galatasaray Gayrimenkul Yat. ve Gel. Tic. A.Ş.) ve Galatasaray ile hukuki ilişki içerisinde olan kişilerin hukuki ve ticari güvenliğinin temini (Galatasaray tarafından yürütülen iletişime yönelik idari operasyonlar, talep/değerlendirme/şikayet yönetimi süreçleri, etkinlik yönetimi, hukuki uyum süreci, denetim, mali işler v.b.), Galatasaray’ın amaç ve faaliyetlerinin belirlenmesi, uygulanması ve Galatasaray’ın insan kaynakları politikalarının yürütülmesinin temini amaçlarıyla; Galatasaray Spor Kulübü’ne ve bağlı ortaklıkları ile iştiraklerine, Galatasaray yetkililerine, iş ortaklarımıza, tedarikçilerimize, kanunen yetkili kamu kurumları ve özel kişilere, 6698 sayılı Kanun’un 8. maddesinde belirtilen kişisel veri işleme şartları ve amaçları çerçevesinde aktarılabilecektir.
                                            <br/>
                                            7.	Verilerinize İlişkin Haklarınız<br/>
                                            Kanun’un 11. maddesi uyarınca (i) Kişisel verilerinizin işlenip işlenmediğini öğrenme, (ii) Kişisel verileriniz işlenmişse buna ilişkin bilgi talep etme, (iii) Kişisel verilerinizin işlenme amacını ve bunların amacına uygun kullanılıp kullanılmadığını öğrenme, (iv) Yurt içinde veya yurt dışında kişisel verilerinizin aktarıldığı üçüncü kişileri bilme, (v) Kişisel verilerinizin eksik veya yanlış işlenmiş olması hâlinde bunların düzeltilmesini isteme ve bu kapsamda yapılan işlemin kişisel verilerin aktarıldığı üçüncü kişilere bildirilmesini isteme, (vi) Kanun ve ilgili diğer kanun hükümlerine uygun olarak işlenmiş olmasına rağmen, işlenmesini gerektiren sebeplerin ortadan kalkması hâlinde kişisel verilerinizin silinmesini veya yok edilmesini isteme ve bu kapsamda yapılan işlemin kişisel verilerinizin aktarıldığı üçüncü kişilere bildirilmesini isteme, (vii) İşlenen verilerinizin münhasıran otomatik sistemler vasıtasıyla analiz edilmesi suretiyle kişinin kendisi aleyhine bir sonucun ortaya çıkmasına itiraz etme, (viii) Kişisel verilerinizin kanuna aykırı olarak işlenmesi sebebiyle zarara uğraması hâlinde zararın giderilmesini talep etme haklarına sahipsiniz.  
                                            <br/>
                                            Yukarıda belirtilen haklarınızı kullanmak için kimliğinizi tespit edici gerekli bilgiler ile KVK Kanunu’nun 11. maddesinde belirtilen haklardan kullanmayı talep ettiğiniz hakkınıza yönelik açıklamalarınızı içeren talebinizi Galatasaray Spor Kulübü Ve Topluluk Şirketleri Veri Sahibi Başvuru Formu'nu doldurarak, formun imzalı bir nüshasını “Ali Sami Yen Spor Kompleksi, Rams Park, Huzur Mahallesi,34485 Seyrantepe/İstanbul” adresine kimliğinizi tespit edici belgeler ile bizzat elden iletebilir, noter kanalıyla, iadeli taahhütlü mektupla veya KVK Kanunu’nda belirtilen diğer yöntemler ile gönderebilirsiniz. 
                                            <br/>
                                            Kişisel verilerini Galatasaray ile paylaşanlar, bu bilgilerin doğru olmasının ve güncel bir şekilde muhafaza edilmesinin, hem Kanun anlamında kişisel verileri üzerinde sahip oldukları haklar hem de ilgili diğer mevzuat açısından önemli olduğunu bildiklerini ve yanlış bilgi verilmesinde doğacak sorumlulukların tamamen kendilerine ait olacağını, kabul ve beyan etmişlerdir. 
                                            </span>                                
                                        </p> 
                                </div>
                                
                                <hr style="margin-top:15px"> 
                                <button type="button" onclick="dogrula()" class="btn submit-btn btn-danger btn-block" style="background-color:#fdb912">
                                    <label class="indicator-label">Doğrula</label>
                                    <span class="indicator-progress d-none">Doğrulanıyor...
                                        <span class="spinner-border spinner-border-sm align-middle ms-2"></span>
                                    </span>
                                </button> 

                    <script>
                $(document).ready(function() {
                    $('.spinner_').hide();
                    
                    $(".list_").css("filter", "none");
                })
                </script>
                <script>
                    function dogrula() { 
                        var kvkkcode = $('#kvkkcode').val(); 
                        var kvkkcoderange = <cfoutput>#code#</cfoutput>
                        if (!kvkkcode){
                            alert("Kvkk Kod Alanı Boş Geçilemez")
                            return false;
                        }
                        $("#yanliskod").addClass("d-none");
                        var button = document.querySelector('.btn.submit-btn'); 
                        $('.indicator-label').addClass('d-none'); 
                        $('.indicator-progress').removeClass('d-none');  
                        button.disabled = true;
                        if(kvkkcode ==kvkkcoderange)
                        {       
                            $('.spinner_').show(); 
                            $(".form-container").css("filter", "blur(3px)");
                            submitform()
                        } 
                        else{
                            $("#yanliskod").removeClass("d-none"); 
                            $('.indicator-label').removeClass('d-none'); 
                            $('.indicator-progress').addClass('d-none');  
                            button.disabled = false;
                        }
                    }
                </script>
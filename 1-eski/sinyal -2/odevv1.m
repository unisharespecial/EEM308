display('Amaç belirlenen s aralýðýnda bütün s deðerleri için |H1(s)| hesaplamak')
display(' ')
display('Ýlk önce transfer fonksiyonunun pay ve payda kýsýmlarý bir vektör olarak tanýmlanýr.')
display('Pay:')
b1=[4]
display('Payda')
a1=[1 2 17]
display('zerolar:')
q= roots(b1)
display('poleler:')
p= roots(a1)
display('Çizilecek Yüzey için omega deðerlerini [-10 10] arasýnda aldýk.Böylece bütün kutuplarda oluþan durumlarý görebiliriz')
omega=[-10:0.5:10];
display(' ')
display('reel(s)>-1 olduðundan sigma deðerlerini -1 den baþlatarak [-1 3] sigma aralýðýnda 32 tane örnek alýnýyor.') 
sigma=-1+(1/8)*(1:32);
display(' ')
display('meshgrid fonksiyonu ile s deðer aralýðý tanýmlanýyor.')
[sigmagrid,omegagrid]=meshgrid(sigma,omega);
display(' ')
display('Belirlenen s deðer aralýðý ile sgrid matrisi tanýmlanýyor.')
sgrid=sigmagrid+j*omegagrid;
display(' ')
display('b1 ve a1 vektörlerinin polinom deðerleri hesaplanarak matris bölmesi yapýlýyor ve transfer fonksiyonu bulunuyor.')
H1=polyval(b1,sgrid)./polyval(a1,sgrid);
display(' ')
display('|H1(s)| tarafýndan belirlenen yüzeyin çizimi mesh fonksiyonu ile sigma ve omega deðerlerine göre yapýlýyor.')
mesh(sigma,omega,abs(H1));
display(' ')
display('jw ekseni üzerinden yüzey görünümü view([0 30]) komutu ile saðlanabilir ancak 3 boyutlu görünüm için yapmadým.Komutu Kaynak kodda açýklama satýrý olarak vardýr') 
%view([0 30])
display(' ')
display('view([-80 30]) komutu ile Re(s)=-1 çizgisinin arkasýndan yuzey gorunumu saðlanabilir ancak burda da 3 boyutlu gorunum elde edileceðinden yazýlmamýþtýr ama kaynak kodda açýklama satýrý olarak yazýlmýþtýr.')
%view([-80 30])
display(' ')
display('3 boyutlu çizim ile kutuplarýn frekans cevabýný nasýl etkilediði görülüyor.')
hold on
plot3(zeros(1,41),omega,abs(H1(:,8))+0.05,'c')
hold off
display(' ')
display('Sonuç: Yüzey kutup deðerlerinde sonsuz deðerini alarak tanýmsýz olmaktadýr.Burdaki yukselmeler üstel biçimde olmaktadýr.')
display(' ')
display('Grafikteki mavi çizgi jw eksenini göstermektedir.')
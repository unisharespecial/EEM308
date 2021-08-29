display('Ama� belirlenen s aral���nda b�t�n s de�erleri i�in |H1(s)| hesaplamak')
display(' ')
display('�lk �nce transfer fonksiyonunun pay ve payda k�s�mlar� bir vekt�r olarak tan�mlan�r.')
display('Pay:')
b1=[4]
display('Payda')
a1=[1 2 17]
display('zerolar:')
q= roots(b1)
display('poleler:')
p= roots(a1)
display('�izilecek Y�zey i�in omega de�erlerini [-10 10] aras�nda ald�k.B�ylece b�t�n kutuplarda olu�an durumlar� g�rebiliriz')
omega=[-10:0.5:10];
display(' ')
display('reel(s)>-1 oldu�undan sigma de�erlerini -1 den ba�latarak [-1 3] sigma aral���nda 32 tane �rnek al�n�yor.') 
sigma=-1+(1/8)*(1:32);
display(' ')
display('meshgrid fonksiyonu ile s de�er aral��� tan�mlan�yor.')
[sigmagrid,omegagrid]=meshgrid(sigma,omega);
display(' ')
display('Belirlenen s de�er aral��� ile sgrid matrisi tan�mlan�yor.')
sgrid=sigmagrid+j*omegagrid;
display(' ')
display('b1 ve a1 vekt�rlerinin polinom de�erleri hesaplanarak matris b�lmesi yap�l�yor ve transfer fonksiyonu bulunuyor.')
H1=polyval(b1,sgrid)./polyval(a1,sgrid);
display(' ')
display('|H1(s)| taraf�ndan belirlenen y�zeyin �izimi mesh fonksiyonu ile sigma ve omega de�erlerine g�re yap�l�yor.')
mesh(sigma,omega,abs(H1));
display(' ')
display('jw ekseni �zerinden y�zey g�r�n�m� view([0 30]) komutu ile sa�lanabilir ancak 3 boyutlu g�r�n�m i�in yapmad�m.Komutu Kaynak kodda a��klama sat�r� olarak vard�r') 
%view([0 30])
display(' ')
display('view([-80 30]) komutu ile Re(s)=-1 �izgisinin arkas�ndan yuzey gorunumu sa�lanabilir ancak burda da 3 boyutlu gorunum elde edilece�inden yaz�lmam��t�r ama kaynak kodda a��klama sat�r� olarak yaz�lm��t�r.')
%view([-80 30])
display(' ')
display('3 boyutlu �izim ile kutuplar�n frekans cevab�n� nas�l etkiledi�i g�r�l�yor.')
hold on
plot3(zeros(1,41),omega,abs(H1(:,8))+0.05,'c')
hold off
display(' ')
display('Sonu�: Y�zey kutup de�erlerinde sonsuz de�erini alarak tan�ms�z olmaktad�r.Burdaki yukselmeler �stel bi�imde olmaktad�r.')
display(' ')
display('Grafikteki mavi �izgi jw eksenini g�stermektedir.')
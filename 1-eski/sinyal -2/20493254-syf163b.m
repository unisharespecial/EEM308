%syf/163 soru b)
%damping_raito=0 
wn=1
omega=[-5:0.1:5]
damping_ratio=0
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('damping_ratio=0 olduðunda kutuplar jw ekseninde yani imajiner olur. damping ratio=0 olduðundan peak deðeri olarak bir deðer bulunmamaktadýr ,grafiktende bu peak deðerinin oluþmadýðý görülmektedir ');

%damping_ratio<1 
wn=1
omega=[-5:0.1:5]
damping_ratio=1/4
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('0<damping_ratio<1 olduðunda fonksiyonun kutuplarý kompleks yapýlý olurlar, bu  nedenle impusle response da step response da salýnýma sahip olur.Damping_ratio ile kutuplar arasýndaki iliþkide damping_ratio küçüldükçe kutuplar jw eksenine yaklaþmaktadýr w=wn?1-DR^2 ve bu frekansta peak deðerine ulaþmaktadýr. Bu durumda  2.derece sistem ideal olmayan bandpass filter gibi davranýr  ');

% damping_ratio=1
wn=1
omega=[-5:0.1:5]
damping_ratio=1
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('Kutuplarýn reel sayý olabilmesi için  Damping_ratio 1 olmalýdýr.Bu durumda kutuplar reel eksen üzerindedir,bundan dolayý w(omega) arttýkça H(jw)) fonksiyonu monoton bir þekilde iner ');

%damping_ratio>1
wn=1
omega=[-5:0.1:5]
damping_ratio=2
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display(' Damping_ratio >1 durumunda kutuplar jw eksenine yaklaþýr.Bu durumda w(omega)’nýn düþük  deðerleri için  H(jw) fonksiyonunun tepkisi w nin deðiþimine karþý daha hassaslaþmaktadýr');

display('H(jw),w=0 için fonksiyon bu durumda sabit sayý haline gelir boylelikle  dört sistem içinde ayný deðere sahiptir.');

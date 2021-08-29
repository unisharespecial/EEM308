%syf/163 soru b)
%damping_raito=0 
wn=1
omega=[-5:0.1:5]
damping_ratio=0
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('damping_ratio=0 oldu�unda kutuplar jw ekseninde yani imajiner olur. damping ratio=0 oldu�undan peak de�eri olarak bir de�er bulunmamaktad�r ,grafiktende bu peak de�erinin olu�mad��� g�r�lmektedir ');

%damping_ratio<1 
wn=1
omega=[-5:0.1:5]
damping_ratio=1/4
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('0<damping_ratio<1 oldu�unda fonksiyonun kutuplar� kompleks yap�l� olurlar, bu  nedenle impusle response da step response da sal�n�ma sahip olur.Damping_ratio ile kutuplar aras�ndaki ili�kide damping_ratio k���ld�k�e kutuplar jw eksenine yakla�maktad�r w=wn?1-DR^2 ve bu frekansta peak de�erine ula�maktad�r. Bu durumda  2.derece sistem ideal olmayan bandpass filter gibi davran�r  ');

% damping_ratio=1
wn=1
omega=[-5:0.1:5]
damping_ratio=1
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('Kutuplar�n reel say� olabilmesi i�in  Damping_ratio 1 olmal�d�r.Bu durumda kutuplar reel eksen �zerindedir,bundan dolay� w(omega) artt�k�a H(jw)) fonksiyonu monoton bir �ekilde iner ');

%damping_ratio>1
wn=1
omega=[-5:0.1:5]
damping_ratio=2
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display(' Damping_ratio >1 durumunda kutuplar jw eksenine yakla��r.Bu durumda w(omega)�n�n d���k  de�erleri i�in  H(jw) fonksiyonunun tepkisi w nin de�i�imine kar�� daha hassasla�maktad�r');

display('H(jw),w=0 i�in fonksiyon bu durumda sabit say� haline gelir boylelikle  d�rt sistem i�inde ayn� de�ere sahiptir.');

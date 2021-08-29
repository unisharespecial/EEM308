%syf/163 soru b)
%damping_raito=0 
wn=1
omega=[-5:0.1:5]
damping_ratio=0
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('damping_ratio=0 oldu�unda fonksiyonun iki kutbuda sanal olur ve jw eksenleri �zerinde bulunmaktad�r. S�n�m oran�(damping ratio)=0 oldu�undan tam bir peak de�eri bulunmamaktad�r,grafiktende bu peak de�erinin olu�mad��� g�r�lmektedir ');

%damping_ratio<1 
wn=1
omega=[-5:0.1:5]
damping_ratio=1/4
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('0<damping_ratio<1 oldu�unda polinomun kutuplar� kompleks say� olur dolay�s�yla step response ve impulse respons lar� sal�n�ma sahip olur.Damping_ratio k���ld�k�e kutuplar jw eksenine yakla�makta ve w=wn?1-DR^2 bu frekansta peak de�erine ula�makta. Bu durumda 2.derece sistem ideal olmayan bandpass filter gibi davran�r  ');

% damping_ratio=1
wn=1
omega=[-5:0.1:5]
damping_ratio=1
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('S�n�m oran� 1 oldu�unda kutuplar reel say� olur ve reel eksen �zerindedir,bundan dolay� w(omega) artt�k�a H(jw)) fonksiyonu monoton bir �ekilde iner ');

%damping_ratio>1
wn=1
omega=[-5:0.1:5]
damping_ratio=2
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('S�n�m oran�n>1 olmas� kutuplar� jw eksenine yakla�t�rmakta.D���k w(omega) de�erleri i�in H(jw) fonksiyonunun tepkisi w nin de�i�imine kar�� daha hassasla�makta');

display('H(jw),w=0 i�in her bu d�rt sistem i�inde ayn� de�ere sahiptir ��nk� bu fonksiyon bu durumda sabit say� haline gelir');
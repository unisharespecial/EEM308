%syf/163 soru b)
%damping_raito=0 
wn=1
omega=[-5:0.1:5]
damping_ratio=0
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('damping_ratio=0 olduðunda fonksiyonun iki kutbuda sanal olur ve jw eksenleri üzerinde bulunmaktadýr. Sönüm oraný(damping ratio)=0 olduðundan tam bir peak deðeri bulunmamaktadýr,grafiktende bu peak deðerinin oluþmadýðý görülmektedir ');

%damping_ratio<1 
wn=1
omega=[-5:0.1:5]
damping_ratio=1/4
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('0<damping_ratio<1 olduðunda polinomun kutuplarý kompleks sayý olur dolayýsýyla step response ve impulse respons larý salýnýma sahip olur.Damping_ratio küçüldükçe kutuplar jw eksenine yaklaþmakta ve w=wn?1-DR^2 bu frekansta peak deðerine ulaþmakta. Bu durumda 2.derece sistem ideal olmayan bandpass filter gibi davranýr  ');

% damping_ratio=1
wn=1
omega=[-5:0.1:5]
damping_ratio=1
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('Sönüm oraný 1 olduðunda kutuplar reel sayý olur ve reel eksen üzerindedir,bundan dolayý w(omega) arttýkça H(jw)) fonksiyonu monoton bir þekilde iner ');

%damping_ratio>1
wn=1
omega=[-5:0.1:5]
damping_ratio=2
[num0,den]=ord2(wn,damping_ratio);
num=wn^2*num0
printsys(num,den)
freqs(num,den,omega)
display('Sönüm oranýn>1 olmasý kutuplarý jw eksenine yaklaþtýrmakta.Düþük w(omega) deðerleri için H(jw) fonksiyonunun tepkisi w nin deðiþimine karþý daha hassaslaþmakta');

display('H(jw),w=0 için her bu dört sistem içinde ayný deðere sahiptir çünkü bu fonksiyon bu durumda sabit sayý haline gelir');
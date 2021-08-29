display('Ama� kutup ve zero vekt�r uzunluklar�n� frekansa g�re nas�l de�i�ti�ini g�zlemlemek')
display(' ')
display('Transfer fonksiyonunun katsay�lar� pay ve payda olarak vekt�r bi�iminde tan�mlan�yor')
b=[1]
a=[1 -0.9 0.81]
display('Ancak girilen bu katsay�lar polinom olarak z^-1 cinsinden olmad���ndan pay ve paydan�n ilk elemanlar�')
display(' ')
display('birbirine b�l�nerek derece fark� bulunuyor ve daha sonra z^-1 formuna ge�mek i�in pay ve payda bu derece fark� ile �arp�l�yor')
k=b(1)/a(1);
q=roots(b);
p=roots(a);
bb=k*poly(q);
aa=k*poly(p);
display(' ')
display('buna g�re poleler:')
ps1=roots(aa)
display('zerolar:')
zr1=roots(bb)
%zplane(zr1,ps1)
display('frekans cevab�n� hesaplamak i�in gereken birim �ember �zerinde 512 e�it nokta al�n�yor.')
omega=[0:511]*pi/256;
unitcirc=exp(j*omega);
display(' ')
display('polevector1 matrisi 2x512lik bir matris olup,kutup yerlerini i�eren vekt�r olan ps1 vekt�r�n�n unit circle a g�re ��kar�lmas� ile sonu�lanan kompleks say�lar� tutmaktad�r.')
polevectors1=ones(2,1)*unitcirc-ps1*ones(1,512);
display(' ')
display('polelength1 polevector1 matrisinin boyunu tutmaktad�r.')
polelength1=abs(polevectors1);
display(' ')
display('Pole i�in g�sterilen komutlar�n ayn�s� zerolar i�inde ge�erlidir.')
display(' ')
display('Ancak verilen tarnsfer fonksiyonunda zero vekt�r� olmad���ndan zerovektor1 matrisini sadece birim �ember olu�turacakt�r.')
zerovectors1=ones(2,1)*unitcirc;
display(' ')
display('zerolength1 zerovector1 in boyunu tutmaktad�r.')
zerolength1=abs(zerovectors1);
display(' ')
display('polelength1 in ve zerolength1 in omega ya g�re �izimi yap�lmaktad�r.')
plot(omega,polelength1,'r',omega,zerolength1,'g')
display(' ')
display('k�rm�z� olan Polelength1i ye�il �izgi olan zerolength1 i g�stermektedir.')
display(' ')
display('Sonu� olarak grafi�e bak�ld���nda |H1(e^jw)|, polelength1in maksimum ve minimum oldu�u yerlerde minimum de�erini al�rken, polelength1in 1 oldu�u yerlerde yani zerolength1 ile kesi�ti�i yerlerde maksimum de�erini almaktad�r.')


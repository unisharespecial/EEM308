display('Amaç kutup ve zero vektör uzunluklarýný frekansa göre nasýl deðiþtiðini gözlemlemek')
display(' ')
display('Transfer fonksiyonunun katsayýlarý pay ve payda olarak vektör biçiminde tanýmlanýyor')
b=[1]
a=[1 -0.9 0.81]
display('Ancak girilen bu katsayýlar polinom olarak z^-1 cinsinden olmadýðýndan pay ve paydanýn ilk elemanlarý')
display(' ')
display('birbirine bölünerek derece farký bulunuyor ve daha sonra z^-1 formuna geçmek için pay ve payda bu derece farký ile çarpýlýyor')
k=b(1)/a(1);
q=roots(b);
p=roots(a);
bb=k*poly(q);
aa=k*poly(p);
display(' ')
display('buna göre poleler:')
ps1=roots(aa)
display('zerolar:')
zr1=roots(bb)
%zplane(zr1,ps1)
display('frekans cevabýný hesaplamak için gereken birim çember üzerinde 512 eþit nokta alýnýyor.')
omega=[0:511]*pi/256;
unitcirc=exp(j*omega);
display(' ')
display('polevector1 matrisi 2x512lik bir matris olup,kutup yerlerini içeren vektör olan ps1 vektörünün unit circle a göre çýkarýlmasý ile sonuçlanan kompleks sayýlarý tutmaktadýr.')
polevectors1=ones(2,1)*unitcirc-ps1*ones(1,512);
display(' ')
display('polelength1 polevector1 matrisinin boyunu tutmaktadýr.')
polelength1=abs(polevectors1);
display(' ')
display('Pole için gösterilen komutlarýn aynýsý zerolar içinde geçerlidir.')
display(' ')
display('Ancak verilen tarnsfer fonksiyonunda zero vektörü olmadýðýndan zerovektor1 matrisini sadece birim çember oluþturacaktýr.')
zerovectors1=ones(2,1)*unitcirc;
display(' ')
display('zerolength1 zerovector1 in boyunu tutmaktadýr.')
zerolength1=abs(zerovectors1);
display(' ')
display('polelength1 in ve zerolength1 in omega ya göre çizimi yapýlmaktadýr.')
plot(omega,polelength1,'r',omega,zerolength1,'g')
display(' ')
display('kýrmýzý olan Polelength1i yeþil çizgi olan zerolength1 i göstermektedir.')
display(' ')
display('Sonuç olarak grafiðe bakýldýðýnda |H1(e^jw)|, polelength1in maksimum ve minimum olduðu yerlerde minimum deðerini alýrken, polelength1in 1 olduðu yerlerde yani zerolength1 ile kesiþtiði yerlerde maksimum deðerini almaktadýr.')


%Buðra Bayram
%20193272

%Soru : 166 (a)

b1=[4];
a1=[1 2 17];
zeros=roots(b1);
poles=roots(a1);

disp('Soru : 166 (a) için');
disp('Kutuplar:');
disp(poles);

figure (1);
plot(real(zeros),imag(zeros),'o');
hold on
plot(real(poles),imag(poles),'x');
grid
title('Soru : 166 (a)');
xlabel('Re');
ylabel('Im');
axis([-5 5 -5 5]);

%--------------------------------------------
%Soru : 178 (i)

b=[0.25 -(sqrt(3)/2) 1];
a=[1 -(sqrt(3)/2) 0.25];
zs=roots(b);
ps=roots(a);

disp('Soru : 178 (i) için');
disp('Sýfýrlar:');
disp(zs);
disp('Kutuplar:');
disp(ps);

figure (2);
plot(real(zs),imag(zs),'o');
hold on
plot(real(ps),imag(ps),'x');
rsmak('circle');
grid
title('Soru : 178 (i)');
xlabel('Re');
ylabel('Im');
axis([-5 5 -5 5]);
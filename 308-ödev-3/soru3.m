clc;
clear;
z=[4 3 3];
p=[-0.45 0.67 0.81+0.72j]
k=2.2;
G=zpk(z,p,k)
impulseplot(G)
figure, step(G)
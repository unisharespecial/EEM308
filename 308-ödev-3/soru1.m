clc;
clear;
pay=[2 16 44 56 32];
payda=[3 3 -15 18 -12];
G=tf(pay,payda)
[z,p,k]=tf2zp(pay,payda)
zp2sos(pay,payda)
zplane(pay,payda)
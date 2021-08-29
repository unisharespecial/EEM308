clc;
clear;
pay=[6 14 26 36 2 14 44 56 32];
payda=[7 1 3 12 33 3 3 -15 18 -12];
G=tf(pay,payda)
[z,p,k]=tf2zp(pay,payda)
zp2sos(pay,payda)
zplane(pay,payda)

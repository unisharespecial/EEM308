pay=[0.008 -0.033 0.05 -0.033 0.080];
payda=[1 2.37 2.7 1.6 0.41];
x=tf(pay,payda)
bode(x),grid

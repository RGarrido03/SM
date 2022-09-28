clear
close
clc

x = 0:0.01:2*pi;
y_2 = f_ex2(2,x);
y_10 = f_ex2(10,x);
sinx = sin(x);

plot(x,sinx,'k-',x,y_2,'b-',x,y_10,'r-')
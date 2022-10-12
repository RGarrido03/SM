%% a)
clear
close
clc

f0 = 2; T = 1/f0;
Ta = 0.001;
Ts = 0:Ta:4*T;
x = 2*sin(4*pi*Ts);

Pm = ex1_3(x,Ta,T);
fprintf("Pm = %f\n",Pm)

plot(Ts,x)
grid on


%% b)
clear
close
clc

f0 = 5; T = 1/f0;
Ta = 0.001;
Ts = 0:Ta:4*T;
x = sin(2*pi*f0*Ts+pi/2);

plot(Ts,x)
grid on


%% c)
clear
close
clc

f0 = 10; T = 1/f0;
Ta = 0.001;
Ts = 0:Ta:4*T;
x = sin(2*pi*f0*Ts+70/180*pi) + sin(2*pi*f0*Ts+200/180*pi);

plot(Ts,x)
grid on


%% d)
clear
close
clc

f0 = gcd(3,4); T = 1/f0;
Ta = 0.001;
Ts = 0:Ta:4*T;
x = sin(6*pi*Ts) + sin(8*pi*Ts);

plot(Ts,x)
grid on


%% e)
clear
close
clc

f0 = gcd(3,4); T = 1/f0;
Ta = 0.001;
Ts = 0:Ta:4*T;
x = sin(6*pi*Ts) + sin(8*pi*Ts+0.1);

plot(Ts,x)
grid on


%% f)
clear
close
clc

f1 = 3;
f0 = gcd(3,4); T = 1/f0;
Ta = 0.001;
Ts = 0:Ta:4*T;
x = sin(6*pi*Ts) + sin(7*pi*Ts) + sin(8*pi*Ts);

Pm = ex1_3(x,Ta,T);
fprintf("Pm = %f\n",Pm)

plot(Ts,x)
grid on
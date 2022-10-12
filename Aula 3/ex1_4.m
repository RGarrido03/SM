clear
close
clc

N = 3;
A1 = 1;
A2 = A1;
A3 = A1;

f0 = 10;
T = 1/f0;
Ta = 0.001;
Ts = 0:Ta:4*T;

f1 = 10;
f2 = 20;
f3 = 30;

n = 3;
phi = zeros(n,1);
for i = 1:n
    phi(i) = (2*pi)*rand(1,1) - pi;
end

x = A1*sin(2*pi*f1*Ts+phi(1)) +...
    A2*sin(2*pi*f2*Ts+phi(2)) +...
    A3*sin(2*pi*f3*Ts+phi(3));

plot(Ts,x)
potencia = ex1_3(x,Ta,T);
fprintf("Potência = %f\n",potencia)
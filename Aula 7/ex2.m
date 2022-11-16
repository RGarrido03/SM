% Sanidade mental procura-se.

clear
close
clc

% 1.
Ta = 0.0001;
N = 10000;
[x,t] = GeraSinal(N,Ta);
plot(t,x)
xlabel('Tempo(seg)')
ylabel('Sinal')
grid

function [x,t] = GeraSinal(N,Ta)
phi = random('normal',0,pi,N,1); % Porque é que que isto não dá aaaaaaaaaa
phi_i1 = zeros(N,1);
for n = 2:N
    phi_i1(n) = phi_i1(n-1) + (phi(n)+phi(n-1))*Ta/2;
end

phi = random('normal',0,pi,N,1); % H E L P
phi_i2 = zeros(N,1);
for n = 2:N
    phi_i2(n) = phi_i2(n-1) + (phi(n)+phi(n-1))*Ta/2;
end

t = 0:Ta:N*Ta;
x = sin(2*pi*t) + 0.5*sin(2*pi*10*t + 10*phi_i1) + 0.5*sin(2*pi*12*t + 10*phi_i2);
end
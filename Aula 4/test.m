clear
close
clc

% Definir variáveis
K = 6;
Ta = 0.01;
f0 = 1;
Np = 6;



% Definir ak e bk
ak = zeros(K,1);
bk = zeros(K,1);
for k = 0:K-1
    if rem(k,2) == 0 % par
        bk(k+1) = 0;
    else % ímpar
        bk(k+1) = 4/(pi*k);
    end
end

% Invocar a função de desenho
[t,x] = ex2(Ta,f0,Np,ak,bk);
[ak_exp,bk_exp] = ex3(Ta,1/f0,x,K);

% Plot desta merda
plot(t,x)
grid on
title("Exercício 2")
xlabel("Tempo (s)")
ylabel("x(t)")

% Plot do sinal (quadrado)
hold on
plot(t,square(2*pi*t))
hold off
legend("Obtido através de Fourier","Sinal real")
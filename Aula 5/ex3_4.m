%% a)
clear
close
clc

T = 1; % Período
N = 100; % Nº períodos
Ta = 0.01; % Período de amostragem

t = 0:Ta:T*N;
x = sin(2*pi*t);
[X,f] = espetro(x,Ta);

% Exercicio 4
figure(2)
new_x = reconstroi(X);
plot(t,new_x)

%% b)
clear
close
clc

Ta = 0.01; % Período de amostragem
t = 0:Ta:50;
x = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t-pi*4);
[X,f] = espetro(x,Ta);

%% c)
clear
close
clc

T = 10; % Período
N = 100; % Nº períodos
Ta = 0.01; % Período de amostragem

t = 0:Ta:T*N;
x = 10 + 14*cos(20*pi*t-pi*3) + 8*cos(40*pi*t +pi/2);
[X,f] = espetro(x,Ta);

%% d)
clear
close
clc

Ta = 0.01; % Período de amostragem

t = 0:Ta:5;
x = square(2*pi*t);
plot(t,x)
% [X,f] = espetro(x,Ta);

%% 3)
clear
close
clc

Ta = 0.01; % Período de amostragem

t = 0:Ta:5;
x = sawtooth(2*pi*t,0.5);
plot(t,x)
% [X,f] = espetro(x,Ta);
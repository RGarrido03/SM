clear
close all
clc

%% Sinal y(t), registado durante 30 períodos
T_F = 1;
Ta = 0.01;
To = 2; % 1/fo = 1/(mdc(1.5*10,2.5*10)/10)
Np = 30;
t = 0:Ta:Np*To;
y = 12*cos(3*pi*t-pi/4) + 8*sin(5*pi*t + pi/5);

tempo_frequencia(T_F,Ta,To,Np,y)

%% Onda quadrada
T_F = 1;
Ta = 0.01;
To = 0.5; % 1/2Hz = 0.5 segundos
Np = 10; % 5 segundos * 0.5 segundos/período = 10 períodos
t = 0:Ta:Np*To;
y = square(2*pi*2*t) + 1; % w = 2*pi*f (f = 1/To = 1/0.5 = 2Hz)

tempo_frequencia(T_F,Ta,To,Np,y)
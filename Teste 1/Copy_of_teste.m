clear
close all
clc

%% Sinal y(t), registado durante 30 períodos
T_F = 1;
Ta = 0.01;
To = 1; % 1/fo = 1/(mdc(1.5*10,2.5*10)/10)
Np = 3;
t = 0:Ta:Np*To;
y = 8*cos(4*pi*t-pi*3) + 16*cos(6*pi*t + 2*pi/3) + 32*cos(10*pi*t);

tempo_frequencia(T_F,Ta,To,Np,y)
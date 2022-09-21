clear
close all
clc

impar = 1:2:10;
int_1 = linspace(-5,5,11);
int_2 = -5:0.9091:5;

a = [1,5,1-1i; 4,1i,1];

b = a;
b(3,:) = [1,2,3];
b(:,4) = [1,2,3];
b(:,1:2:end) = [];

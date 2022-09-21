clear
close all
clc

x = linspace(-2*pi,0,200);
y = sin(x).*exp(x);

plot(x,y,'r.')
axis([-8,0,-0.5,0.8])

title('Função sin(x) * e^x')
xlabel('x')
ylabel('y = sin(x) * e^x')
legend('sin(x) * e^x')
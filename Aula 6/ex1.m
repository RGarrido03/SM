clear
close
clc

Ta = 0.2;
to = 0:Ta:5; % to = tempo original
x = sin(2*pi*to);

[t,y] = ReconstroiSinal(x,Ta);
plot(t,y,'b-')
hold on
plot(to,x,'r.')
hold off
grid on
clear
close
clc

omega = linspace(0,2*pi,200);
f = sin(4*omega) .* exp(1i*omega);
g = sin(8*omega) .* exp(1i*omega);

%figure(1)
subplot(2,1,1)
plot(f,'g')
%hold on
%figure(2)
subplot(2,1,2)
plot(g,'r')
%hold off

% Apenas válido para hold on/off!
title('Parte imaginária em função da parte real')
ylabel('Parte imaginária')
xlabel('Parte real')
legend('f(omega)','g(omega)')
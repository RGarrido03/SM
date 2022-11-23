clear
close
clc

%% 1.
load("Guitar01.mat")
%sound(x,fa);
Ta = 1/fa;
t = [0:Ta:(length(x)-1)*Ta]';
figure(1)
plot(t,x)
title('Sinal no domínio do tempo')
xlabel('Tempo (seg)')
ylabel('Sinal')

%% 2.
[X,f] = espetro(x,Ta);
figure(2)
plot(f,abs(X));
xlim([-5e3 5e3])
ylim([0 4e-3])
title('Espetro em função da frequência')
xlabel('Frequência (Hz)')
ylabel('Magnitude')

%% 3.
fa_new = 2*fa;
Ta_new = 1/fa_new;
t_new = [0:Ta_new:(length(x)-1)*Ta_new]';
figure(3)
subplot(1,2,1)
plot(t_new,x)
[X_new,f_new] = espetro(x,Ta_new);
title('Sinal no domínio do tempo')
xlabel('Tempo (seg)')
ylabel('Sinal')

subplot(1,2,2)
plot(f_new,abs(X_new));
xlim([-5e3 5e3])
ylim([0 4e-3])
% sound(x,fa_new)
title('Espetro em função da frequência')
xlabel('Frequência (Hz)')
ylabel('Magnitude')

%% 4.
f_filter = 488.92;
fmin = f_filter - 0.1;
fmax = f_filter + 0.1;

filtro = zeros(1,length(f)); % Inicializar a zeros
filtro(f>fmin & f<fmax) = 1;
filtro(f>-fmax & f<-fmin) = 1;
filtro = logical(filtro); % Transformar numa variável True/False

j = 0;
x_filt = X(filtro);
new_X = zeros(length(X),1);
for i = 1:length(filtro)
    if filtro(i) == 1
        j = j + 1;
        new_X(i) = x_filt(j);
    end
end
figure(4)
plot(f,abs(new_X))
xlabel('Frequência (Hz)')
ylabel('Magnitude')
xlim([-5e3 5e3])
ylim([0 4e-3])
title('Sinal filtrado no domínio da frequência')

w = reconstroi(new_X);
figure(5)
plot(t(1:250),w(1:250))
xlabel('Tempo (seg)')
ylabel('Sinal')
title('Sinal filtrado no domínio do tempo')
% sound(w(1:250),fa)

%% 5.
x_new = x(1:1000);
t_new = t(1:1000);
Npal = 2^3;
amp = 0.00241852;
delta = amp/Npal;

partition = -amp + delta*2 : delta*2 : amp - delta*2;
codebook = -amp+delta : delta*2 : amp-delta;

[~,quantz] = quantiz(x_new,partition,codebook);

figure(6)
plot(t_new,x_new)
hold on
plot(t_new,quantz)
sound(quantz,fa)
hold off
grid on
legend('Sinal original', 'Sinal quantizado')
xlabel('Tempo (seg)')
ylabel('Sinal')
title('Quantização com n=3 bits')
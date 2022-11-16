clear
close
clc

% 1.
load("Guitar03.mat")
% sound(x,fa);

% 2.
Ta = 1/fa;
[X,f] = espetro(x,Ta);
plot(f,abs(X))
title('Espetro')
xlim([-4000 4000])
grid on

% 3.
fmin = 600;
fmax = 1200;

filtro = zeros(1,length(f));
filtro(f>fmin & f<fmax) = 1;
filtro(f>-fmax & f<-fmin) = 1;
filtro = logical(filtro);

figure
plot(f,filtro)
title('Filtro')
xlim([-2000,2000])
ylim([0,1.5])

j = 0;
x_filt = X(filtro);
new_x = zeros(length(X),1);
for i = 1:length(filtro)
    if filtro(i) == 1
        j = j + 1;
        new_x(i) = x_filt(j);
    end
end

w = reconstroi(new_x);

sound(real(w),fa);
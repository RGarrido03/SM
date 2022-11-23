clear
close
clc

Ta = 0.01;
t = 0:Ta:5; % to = tempo original
x = sin(2*pi*t);

for nbits = [2,3,4]
    Npal = 2^nbits;
    amp = 1;
    delta = amp/Npal;

    partition = -amp + delta*2 : delta*2 : amp - delta*2;
    codebook = -amp+delta : delta*2 : amp-delta;

    [~,quantz] = quantiz(x,partition,codebook);

    figure(nbits)
    plot(t,x)
    hold on
    plot(t,quantz)
    % plot(partition)
    hold off
    grid on
    title("nbits = " + nbits)
end
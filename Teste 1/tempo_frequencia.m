function tempo_frequencia(T_F,Ta,To,Np,y)
t = 0:Ta:Np*To;
if T_F == 1 % Em função do tempo
    plot(t,y)
    xlim([t(1) t(end)])
    xlabel('Tempo (s)')
    ylabel('x(t)')
    legend('Sinal em funçao do tempo')
    title('Representação do sinal no domínio do tempo')
    grid on
elseif T_F == 2 % Em função da frequência
    N = length(y);
    Fa = 1/Ta;
    f = (0:N-1)*Fa/N - Fa/2;
    Y = fftshift(fft(y))/N;

    plot(f,abs(Y))
    xlim([-Fa/2,Fa/2])
    xlabel('Frequência (Hz)')
    ylabel('Amplitude')
    legend('Amplitude em função da frequência')
    title('Representação do sinal no domínio da frequência')
    grid on
elseif T_F == 3
    % Em função do tempo
    subplot(1,2,1)
    plot(t,y)
    xlim([t(1) t(end)])
    xlabel('Tempo (s)')
    ylabel('x(t)')
    legend('Sinal em funçao do tempo')
    title('Representação do sinal')
    title('Representação do sinal no domínio do tempo')
    grid on
    

    % Em função da frequência (espetro)
    N = length(y);
    Fa = 1/Ta;
    f = (0:N-1)*Fa/N - Fa/2;
    Y = fftshift(fft(y))/N;

    subplot(1,2,2)
    plot(f,abs(Y))
    xlim([-Fa/2,Fa/2])
    xlabel('Frequência (Hz)')
    ylabel('Amplitude')
    legend('Amplitude em função da frequência')
    title('Representação do sinal no domínio da frequência')
    grid on
else
    fprintf('T_F deverá ter valores de 1, 2 e 3\n')
end
end
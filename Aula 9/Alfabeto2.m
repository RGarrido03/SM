function [Simbolos,Frequencia] = Alfabeto2(Mensagem)
Simbolos = unique(Mensagem);
Frequencia = zeros(1,length(Simbolos));
for i = 1:length(Mensagem)
    idx = find(Simbolos == Mensagem(i));
    Frequencia(idx) = Frequencia(idx) + 1;
end
end


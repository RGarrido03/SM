function NumBits = NumeroBits(Texto)
[Simbolos,Frequencia] = Alfabeto2(Texto);

tabela(:,1) = Frequencia;
tabela(:,2) = Simbolos;
tabela = sortrows(tabela,"descend");

NumBits = 0;
for i = 1:length(Simbolos)
    NumBits = NumBits + tabela(i,1)*i;
end
end


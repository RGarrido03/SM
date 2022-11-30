function H = Entropia(Texto)
[~,Frequencia] = Alfabeto2(Texto);
H = 0;

total = sum(Frequencia);

for i = 1:length(Frequencia)
    pk = Frequencia(i)/total;
    H = H + pk * log2(1/pk);
end
end
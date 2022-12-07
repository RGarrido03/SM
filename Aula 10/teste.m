clear
close
clc

f = [14 64 5 10 7]';
CompMesg = 1000;
nBits = [2 1 4 3 4]';
[NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits);
fprintf('NumBits = %d\n', NumBits)
fprintf('NumBPS = %f\n', NumBPS)
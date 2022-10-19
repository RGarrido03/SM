function [ak,bk] = ex3(Ta,T0,x,K)
k = K; N = K;
ak = 0;
bk = 0;
for n = 1:K
    ak = ak + x(n)*cos(2*pi*k*(1/T0)*n*Ta);
    bk = bk + x(n)*sin(2*pi*k*(1/T0)*n*Ta);
end
ak = 2/N .* ak;
bk = 2/N .* bk;
end
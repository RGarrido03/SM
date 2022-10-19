function [t,x] = ex2(Ta,f0,Np,ak,bk)
N = Np/(f0*Ta);
t = (0:N-1)*Ta;

x = ak(1)*cos(0*2*pi*f0*t);

for k = 1:length(ak)-1
    x = x + ak(k+1)*cos(k*2*pi*f0*t) + bk(k+1)*sin(k*2*pi*f0*t);
end
end
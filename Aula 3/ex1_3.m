function Pm = ex1_3(x,Ta,T)
N = T / Ta;
Pm = x(1:N)*x(1:N)'/N;
end
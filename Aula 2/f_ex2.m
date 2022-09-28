function y = f_ex2 (N,x)
y = 0;
for n = 1:N
    y = y + ((x.^n) ./ (factorial(n)) .* (sin(n*pi/2)));
end
end
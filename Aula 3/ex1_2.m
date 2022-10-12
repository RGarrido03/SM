clear
close
clc

% Inserir aqui os valores das frequencias
f = [2.5,4,8];

lambda = 1;

if isinteger(f) == 0
    while isinteger(f) == 0
        lambda = 10 * lambda;
        f = lambda .* f;
        fprintf("f = %f, lambda = %f\n",f,lambda)
        pause(3)
    end
end

mdc = gcd(f(1),f(2));

if length(f) > 2
for i = 3:length(f)
    mdc = gcd(mdc,f(i));
end
end

mdc = mdc/lambda;

fprintf("f0 = %f\n",mdc)

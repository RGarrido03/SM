clear
close
clc

x1 = -5:0.01:5;
x2 = -5:0.01:5;
[xx1,xx2] = meshgrid(x1,x2);
ta = 1/25;
T = -5:ta:5;

for t=T
    r = 2 .* sin(2.*pi .* sqrt(x1.^2 + x2.^2) - 2.*pi.*t);
    plot3(xx1,xx2,r)
    drawnow
end
clear
close
clc

x = linspace(-1,1,51);
y = linspace(-1,1,51);
[xx,yy] = meshgrid(x,y);

z = cos(4*pi*(xx+yy)).*exp(-abs(xx+yy));

surf(xx,yy,z), axis tight, shading interp
clear
close
clc

dt = 0.01;

% a)
t = 0:dt:5;
x = 2*sin(4*pi*t);
figure(1)
plot(t,x,'k-')

% b)
y = cos(10*pi*t);
figure(2)
plot(t,y,'k-')

% c)
z = x.*y;
figure(3)
plot(t,z,'k-')

%d)
t_10 = 0:dt:10;
w = 3.*sin(pi.*t_10) + 2.*sin(6.*pi.*t_10);
figure(4)
plot(t_10,w,'k-')

%e)
t1 = 0:dt:5;
t2 = 0:dt:5;
[tt1,tt2] = meshgrid(t1,t2);
q = 2*sin(2*pi*(2*t1+t2));
figure(5)
plot3(tt1,tt2,q)
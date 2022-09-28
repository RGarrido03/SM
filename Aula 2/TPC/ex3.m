clear
close
clc

dt = 0.01;

% a)
t = 0:dt:5;
x = 2*sin(4*pi*t);
subplot(2,2,1)
plot(t,x,'r-')

% b)
y = cos(10*pi*t);
subplot(2,2,2)
plot(t,y,'b--','LineWidth',1)

% c)
z = x.*y;
subplot(2,2,3)
plot(t,z,'g-',t,z,'k.','MarkerSize',3)

%d)
t_10 = 0:dt:10;
w = 3.*sin(pi.*t_10) + 2.*sin(6.*pi.*t_10);
subplot(2,2,4)
plot(t_10,w,'y-','LineWidth',2)
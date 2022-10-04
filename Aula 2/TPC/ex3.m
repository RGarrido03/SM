clear
close
clc

dt = 0.01;

% a)
t_5 = 0:dt:5;
x = 2*sin(4*pi*t_5);
subplot(2,2,1)
plot(t_5,x,'r-')
xlabel('t')
ylabel('x(t)')

% b)
y = cos(10*pi*t_5);
subplot(2,2,2)
plot(t_5,y,'b--','LineWidth',1)
xlabel('t')
ylabel('y(t)')

% c)
z = x.*y;
subplot(2,2,3)
plot(t_5,z,'g-',t_5,z,'k.','MarkerSize',3)
xlabel('t')
ylabel('z(t)')

%d)
t_10 = 0:dt:10;
w = 3.*sin(pi.*t_10) + 2.*sin(6.*pi.*t_10);
subplot(2,2,4)
plot(t_10,w,'y-','LineWidth',2)
xlabel('t')
ylabel('w(t)')
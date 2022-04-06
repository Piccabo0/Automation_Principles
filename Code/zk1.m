num = [1];
den=[1 0 1];
t=0:0.001:12;
[y,x,t]=step(num,den,t);
plot(t,y);

grid;
title('Unit-Step Response of G(s)=1/(s^2+1)');
xlabel('t/Sec');
ylabel('Output');
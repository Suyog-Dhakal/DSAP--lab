
t = -4:0.1:4;
c = 4;
r = 0;
w0 = 2*pi/4;
theta = pi/4;

x = abs(c)*exp(r*t).*(cos(w0*t+theta)+1i*sin(w0*t+theta));
subplot(1,3,1);
plot(t,x,'LineWidth',2);
title('075bct092 - r=0');

r = -5;
x = abs(c)*exp(r*t).*(cos(w0*t+theta)+1i*sin(w0*t+theta));
subplot(1,3,2);
plot(t,x,'LineWidth',2);
title('r<0');

r = 5;
x = abs(c)*exp(r*t).*(cos(w0*t+theta)+1i*sin(w0*t+theta));
subplot(1,3,3);
plot(t,x,'LineWidth',2);
title('r>0');

t = -10:0.1:10;
c = .5;
a = .5i;

x = c*exp(a*t);
subplot(2,2,1);
plot(t,x,'LineWidth',2);
title('075bct092 c>0, img(a)>0');

a = -.5i;
x = c*exp(a*t);
subplot(2,2,2);
plot(t,x,'LineWidth',2);
title('c>0, img(a)<0');

c = -.5;
a = .5i;
x = c*exp(a*t);
subplot(2,2,3);
plot(t,x,'LineWidth',2);
title('c<0, img(a)>0');

a = -.5i;
x = c*exp(a*t);
subplot(2,2,4);
plot(t,x,'LineWidth',2);
title('c<0, img(a)<0');
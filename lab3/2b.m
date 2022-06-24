t= -10:0.0005:10;
ut = (t>=0);
xt = double(ut);
a= 0.25;
ht=exp(-a*t).*ut;
subplot(1,3,1);
plot(t,xt);
title('x(t) = u(t)');

subplot(1,3,2);
plot(t,ht);
title('h(t)=exp(-at) * u(t)');

subplot(1,3,3);
r = -(length(t)-1):length(t)-1;
y=conv(xt,ht);
plot(r,y)
title('y(t) = x(t) * h(t)   075bct092');
xlabel('t');
ylabel('y(t)');

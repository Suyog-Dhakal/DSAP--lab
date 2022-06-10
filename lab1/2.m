
a = 2;
w = 5;
t = 0:0.1:10;
func = exp(-a*t).*cos(w*t);
xlabel('t');
ylabel('y');
plot(t,func);





C = [1/3, 1/2, 1/4, 1, 1/4, 1/2, 1/3];
n= -10:0.1:10;
w= 2*pi/10;
x=zeros(size(n));
for k = -3:3
    x = x + (k+4)*exp(i*k*w*n);
end
  plot(n,x,'LineWidth',2);
  title('075bct092');
  
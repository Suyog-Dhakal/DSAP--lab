
x1=[1,1,1,1,1];
n1=[-2,-1,0,1,2];
x2=[1,0,0,0,0,0,0,0,0];
n2=[-4,-3,-2,-1,0,1,2,3,4,5];

i=-6:7;
s=zeros(1,length(i));
[y_fold,n_fold] = sigfold(x1,n1);
temp=1;
for j=i
    [y_shift,n_shift] = sigshift_m(y_fold,n_fold,j);
    [y_multi,n_multi] = sigmulti(y_shift,n_shift,x2,n2);
    
    for k=1:length(n_multi)
      s(temp) = s(temp) + y_multi(k);
    end
    temp=temp+1;
end

stem(i,s);
title('y[n]=x1[n1]*x2[n2]');
xlabel('.......n........');
ylabel('.......y[n].....');


    



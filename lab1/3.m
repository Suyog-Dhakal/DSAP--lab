
num(1)=0;
num(2)=1;
temp=3;
num(temp)=0;
even=1;
odd=0;
fprintf('%d\n',num(1));

while((num(temp-2)+num(temp-1))<10000)
  if rem(num(temp-1),2)==0
    even += 1;
  else
    odd += 1;
   end
   
   fprintf('%d\n',num(temp-1));
   num(temp)=num(temp-2)+num(temp-1);
   temp=temp+1;
end

fprintf("Even number total counts: %d\n",even);
fprintf("odd number total counts: %d\n",odd);
     
result = num(1:temp-2);
plot(result);

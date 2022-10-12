function output=find_inverse1(V1,F,m,p)
x=length(F);
f=zeros(1,x);
i=1;
x1=find_power(V1,F);
if x1==p^m-1
    output=V1;
else
    while i<x+1
        f(i)=mod(x1+i,p^m-1);
       if f(i)==0
           output=F(i,:);
           break
       end
       i=i+1;
    end    
end
function output=add_inv(V,P)
x=length(V);
f=zeros(1,x);
i=1;
while i<x+1
    if V(i)==0
        f(i)=0;
    else
        f(i)=P-V(i);
    end
    i=i+1;
end
output=f;


function output=mult(V1,V2,F,m,p)
X=zeros(1,m);
y1=isequal(V1,X);
y2=isequal(V2,X);
if y1==1
output=X;
elseif y2==1
    output=X;
else
x1=find_powerw(V1,F,m,p);
x2=find_powerw(V2,F,m,p);
g=mod(x1+x2,p^m-1);
if x1==p^m-1
    output=F(x2,:);
elseif x2==p^m-1
    output=F(x1,:);
elseif g==0
    output=F(p^m-1,:);
else
    output=F(g,:);
end
end

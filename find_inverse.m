function output=find_inverse(V,F,m,p)
M=F;
i=1;
while 1
    f(i,:)=mult(V,M(i,:),F,m,p);
    if find_power(f(i,:),F)==p^m-1
        output=M(i,:);
        break 
    end
    i=i+1;
end
        
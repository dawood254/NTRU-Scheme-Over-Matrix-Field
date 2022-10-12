function power=find_power(V,F)
[x,y]=size(F);
for i=1:x
    f(i)=isequal(F(i,:),V);
    x1=double(f(i));
    if x1==1
        power=i;
    end
end

end

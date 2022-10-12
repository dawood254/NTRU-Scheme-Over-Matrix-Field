function power=find_powerw(V,F,m,p)
i=1;
while i<p^m
    f(i)=isequal(F(i,:),V);
    x1=double(f(i));
    if x1==1
        power=i;
        break
    end
    i=i+1;
end

end

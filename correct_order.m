function correct_field=correct_order(F)
[x,y]=size(F);
for i=1:x-2
    f(i,:)=F(i+2,:);
end
correct_field=[f;F(2,:)];
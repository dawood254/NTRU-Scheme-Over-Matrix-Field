function output=find_inv_matrix(M,F,m,p)
x=length(M{1,1});
V=zeros(1,x);
M11=cell2mat(M(1,1));
M12=cell2mat(M(1,2));
M21=cell2mat(M(2,1));
M22=cell2mat(M(2,2));
M1=mult(M11,M22,F,m,p);
M2=mult(M12,M21,F,m,p);
inaddM2=add_inv(M2,p);
det=add(M1,inaddM2,p);
g=isequal(det,V);
if g==1
    fprintf('The given matrix is singuler');
else
    y=find_inverse1(det,F,m,p);
    Adj11=M22;
    Adj12=add_inv(M12,p);
    Adj21=add_inv(M21,p);
    Adj22=M11;
    inv1=mult(y,Adj11,F,m,p);
    inv2=mult(y,Adj12,F,m,p);
    inv3=mult(y,Adj21,F,m,p);
    inv4=mult(y,Adj22,F,m,p);
    inv11=num2cell(inv1,2);
    inv12=num2cell(inv2,2);
    inv21=num2cell(inv3,2);
    inv22=num2cell(inv4,2);
    output=[inv11 inv12;inv21 inv22];
end

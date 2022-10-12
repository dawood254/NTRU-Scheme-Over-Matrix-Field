function output=Matrix_mult(M,N,F,m,p)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%
M11=cell2mat(M(1,1));
M12=cell2mat(M(1,2));
M21=cell2mat(M(2,1));
M22=cell2mat(M(2,2));
%%%%%%%%%%%%%%%%%%%%%
N11=cell2mat(N(1,1));
N12=cell2mat(N(1,2));
N21=cell2mat(N(2,1));
N22=cell2mat(N(2,2));
MN11=add(mult(M11,N11,F,m,p),mult(M12,N21,F,m,p),p);
MN12=add(mult(M11,N12,F,m,p),mult(M12,N22,F,m,p),p);
MN21=add(mult(M21,N11,F,m,p),mult(M22,N21,F,m,p),p);
MN22=add(mult(M21,N12,F,m,p),mult(M22,N22,F,m,p),p);
MN11=num2cell(MN11(1,:),2);
MN12=num2cell(MN12(1,:),2);
MN21=num2cell(MN21(1,:),2);
MN22=num2cell(MN22(1,:),2);
output=[MN11 MN12;MN21 MN22];

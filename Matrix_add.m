function output=Matrix_add(M,N,p)
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
%%%%%%%%%%%%%%%%%%%%%%%%
MN11=add(M11,N11,p);
MN12=add(M12,N12,p);
MN21=add(M21,N21,p);
MN22=add(M22,N22,p);
MN11=num2cell(MN11(1,:),2);
MN12=num2cell(MN12(1,:),2);
MN21=num2cell(MN21(1,:),2);
MN22=num2cell(MN22(1,:),2);
output=[MN11 MN12;MN21 MN22];

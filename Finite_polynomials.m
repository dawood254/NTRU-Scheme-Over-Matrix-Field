clc
clear
p = 11; m = 6;
prim_poly=[ 8     2     1     0     0     0     1];
F2 = gftuple([-1:p^m-2]',prim_poly,p);
F=correct_orderw(F2);
C=Convert_cell(F);
M=[C{2} C{2};C{3} C{1}];
N=find_inv_matrix(M,F,m,p); 
d=Matrix_mult(M,N,F,m,p)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

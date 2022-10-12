clc
clear
load('B.mat')
p = 3; m = 6;
prim_poly=[ 2     1     0     0     0     0     1];
F2 = gftuple([-1:p^m-2]',prim_poly,p);
F=correct_orderw(F2);
C=Convert_cell(F);
X=zeros(1,6);
X=num2cell(X(1,:),2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m1=find_powerw([0 1 0 0 0 0],F,m,p);
m2=find_powerw([1 0 0 0 0 0],F,m,p);
m3=find_powerw([1 1 0 0 0 0],F,m,p);
m4=find_powerw([0 1 0 0 0 0],F,m,p);
M=[C{m1} C{m2};C{m3} C{m4}];
%%%%%%%%%%%%%%%%Message%%%%%%%%%%%%%%%%%%%%%%
ms1=find_powerw([0 1 0 0 0 0],F,m,p);
ms2=find_powerw([0 1 0 0 0 0],F,m,p);
ms4=find_powerw([1 0 1 0 0 0],F,m,p);
MS=[C{ms1} C{ms2};X C{ms4}];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
H=[C{728} C{728};C{728} C{728}];
H1=[C{728} C{728};C{728} X];
Matrix_add(H,H1,p);
% C=Convert_cell(F);
% M=[C{2} C{2};C{3} C{1}];
N=find_inv_matrix(M,F,m,p); 
d=Matrix_mult(M,MS,F,m,p);
d1=Matrix_mult(N,d,F,m,p);
% find_inverse1([1,0,0],F,m,p)
V1=[0 1 2 0 1 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

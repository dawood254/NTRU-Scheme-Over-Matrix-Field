clc
clear
p1=11;m=6;
load('Field.mat')
load('C.mat')
X=zeros(1,6);
X=num2cell(X(1,:),2);
y=find_powerw([3 0 0 0 0 0],F,m,p1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m1=find_powerw([0 1 0 0 0 0],F,m,p1);
m2=find_powerw([1 0 0 0 0 0],F,m,p1);
m3=find_powerw([1 1 0 0 0 0],F,m,p1);
m4=find_powerw([0 1 0 0 0 0],F,m,p1);
M=[C{m1} C{m2};C{m3} C{m4}];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n1=find_powerw([1  1 0 0 0 0],F,m,p1);
n2=find_powerw([0 1 1 0 0 0],F,m,p1);
n3=find_powerw([1 1 0 0 0 0],F,m,p1);
n4=find_powerw([0 0 1 0 0 0],F,m,p1);
N=[C{n1} C{n2};C{n3} C{n4}];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r1=find_powerw([0 1 0 0 0 0],F,m,p1);
r2=find_powerw([0 1 0 0 0 0],F,m,p1);
r3=find_powerw([1 0 0 0 0 0],F,m,p1);
r4=find_powerw([0 0 1 0 0 0],F,m,p1);
R=[C{r1} C{r2};C{r3} C{r4}];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I1=find_powerw([3 0 0 0 0 0],F,m,p1);
I=[C{I1} X;X C{I1}];
%%%%%%%%%%%%%%%Keygeneration%%%%%%%%%%%%%%%%%%%%%%
prkey1=find_inv_matrix(M,F,m,p1);
prkey2=M;
Publickey=Matrix_mult(prkey1,N,F,m,p1);
%%%%%%%%%%%%%%%Encryption%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%Message%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ms1=find_powerw([0 1 0 0 0 0],F,m,p1);
ms2=find_powerw([0 1 0 0 0 0],F,m,p1);
ms4=find_powerw([1 0 1 0 0 0],F,m,p1);
MS=[C{ms1} C{ms2};X C{ms4}];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
H=Matrix_mult(Publickey,I,F,m,p1);
Semantic=Matrix_mult(H,R,F,m,p1);
cipher=Matrix_add(Semantic,MS,p1);
%%%%%%%%%%%%%%%%%%%%%Decryption%%%%%%%%%%%%%%%%%%%%%
A=Matrix_mult(prkey2,cipher,F,m,p1);
B=mod_(A,3);
MS=Matrix_mult(prkey1,B,F,m,p1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A1=Matrix_mult(N,I,F,m,p1);
A11=Matrix_mult(A1,R,F,m,p1);
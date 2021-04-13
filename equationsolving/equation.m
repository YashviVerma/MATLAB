clear
%Solving System of Equation AX=B
n=input('Enter the no. of variables ');
%n is the order of the square coefficient matrix A
for i=1:n
    for j=1:n
        A(i,j)=input('Element of matrix A ')
    end
end
A=reshape(A,n,n)
%converting into n*n square matrix
disp(A)
disp('Enter the matrix B ')
for i=1:n
    B(i)=input('Element of matrix B ')
end
B=reshape(B,n,1)
disp(B)
disp('Solution of system of equations ')
X=linsolve(A,B)
%linsolve uses LU decomposition
disp(X)
[V,D]=eig(A)
%diagnol matrix D contains eigen values  
%columns of matrix V are corresponding eigen vectors
disp('Eigen values of A : ')
disp(D)
disp('Matrix of eigen vectors of A : ')
disp(V)

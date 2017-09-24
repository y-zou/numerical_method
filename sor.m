function [result,nit]=sor(A,b,x,w,tol,nmax)
% SOR : solve linear system with SOR iteration
% Usage: [x,nit]=sor(A,b,x0,omega,d,tol,nmax)
% Inputs:
% A : an n x n-matrix,
% b : the rhs vector, with length n
% x0 : the start vector for the iteration
% tol: error tolerance
% w: relaxation parameter, (1 < w < 2),
% Outputs::
% x : the solution vector
% nit: number of iterations
D = diag(diag(A));
U = triu(A,1);
L = tril(A,-1);
y_sor = inv(D+w*L)* b;
m_sor = inv(D+w*L)*((1-w)*D-w*U);
for nit=1:nmax
    result = y_sor+m_sor*x;
    if abs(x-result)<=tol
        break;
    end
    x = result;
    
end 
end 
















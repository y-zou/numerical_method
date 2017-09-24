function [result,counter] = tmp_fun(A,b,x,count)
% Inputs:
% A : an n x n-matrix,
% b : the right side of the equation
% count maximim iteraton
% epsi: error tolerance
% Outputs:
% x : the solution vector
% counter: number of iterations
diag_A = diag(A);
for counter = 1:count   
    result = (b-(A*x-diag_A.*x))./diag_A
    x = result;
end
end
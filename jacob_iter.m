function [result,counter] = jacob_iter(A,b,x,count,epsi)
% Inputs:
% A : an n x n-matrix,
% b : the right side of the equation
% count maximim iteraton
% epsi: error tolerance
% Outputs:
% x : the solution vector
% counter: number of iterations
for counter = 1:count
    diag_A = diag(A);
    result = (b-(A*x-diag_A.*x))./diag_A;
    
    if abs(x-result)<=epsi
        break
    end
    
    x = result;
end    
end
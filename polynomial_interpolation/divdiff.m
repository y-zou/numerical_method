function a = divdiff(x,y)
%DIVDIFF Summary of this function goes here
%   Detailed explanation goes here

[len,col] = size(x);
a = zeros(len);
a(:,1) = y;
%calculate a(i,j)
for j = 2:len
    for i = j:len
        a(i,j) = (a(i,j-1)-a(i-1,j-1))/(x(i)-x(i-(j-1)));
    end
end



end


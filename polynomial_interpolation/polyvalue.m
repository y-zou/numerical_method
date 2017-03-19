function v = polyvalue(a,x,t)
% input: a= Newton’s divided differences
% x= the points for the data set to interpolate,
% same as in divdiff.
% t= the points where the polynomial should be evaluated
% output: v= value of polynomial at the points in t

[len,col] = size(a);
v = a(len,len);
for i = len-1:-1:1
    v = v*(t - x(i));
    v = v + a(i,i);
    
end  

end


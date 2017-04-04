function result = trapezoid(funItg,a,b,n)
%how to call? trapezoid(@funItg,0,0.8,n)
%n+1 points in total
hm = (b-a)/n;
x = linspace(a,b,n);
fx = feval(funItg,x);
result = sum(fx) - 0.5*fx(1) - 0.5*fx(end);
result = result*hm;
end


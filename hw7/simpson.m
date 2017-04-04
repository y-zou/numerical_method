function result = simpson(funItg,a,b,n)
%how to call? simpson(@funItg,0,0.8,n)
%2n+1 points in total
h = (b-a)/(2*n);
x_1 = a+h:2*h:b-h;
fx_1 = feval(funItg,x_1);
x_2 = a+2*h:2*h:b-2*h;
fx_2 = feval(funItg,x_2);
result = 4*sum(fx_1)+2*sum(fx_2)+funItg(a)+funItg(b);
result = result*h/3;
end


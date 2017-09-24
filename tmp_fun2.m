function result =tmp_fun2(A,b,x,w)

D = diag(diag(A));
U = triu(A,1);
L = tril(A,-1);
y_sor = inv(D+w*L)* b;
m_sor = inv(D+w*L)*((1-w)*D-w*U);

for nit=1:5
    result = y_sor+m_sor*x
    x = result;
    
end 
end 
















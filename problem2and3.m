%generate A
v1 = [1:9]*(-0.001)-2.01;
v2 = ones(1,8);
A = diag(v1)+diag(v2,1)+diag(v2,-1);

%generate b
format long
b= [0.994974*1e3
-1.57407
8.96677 
2.71137 
4.07407 
5.11719 
5.92917
6.57065 
0.507084*1e3]*(-1*1e-3);

x0 =[0.95
0.9
0.85
0.8
0.75
0.7
0.65
0.6
0.55];

w = linspace(1,2,11);
[result,nit] = arrayfun(@(wi)(sor(A,b,x0,wi,0.0001,100)),w,'UniformOutput',false);

[resultJ,nit_jacob] = jacob_iter(A,b,x0,100,0.0001);

nit = cell2mat(nit);
plot(w,nit)
title('problem2')
xlabel('w')
ylabel('number of iterations')
figure(2)
plot(w,(nit_jacob-nit)/nit_jacob)
title('problem3')
xlabel('w')



















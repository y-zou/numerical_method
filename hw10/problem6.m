x = 0:0.1:1;
y = [0.7829 0.8052 0.5753 0.5201 0.3783 0.2923 0.1695 0.0842 0.0415 0.009 0];
p1 = polyfit(x,y,1);
p2 = polyfit(x,y,2);
p3 = polyfit(x,y,4);
p4 = polyfit(x,y,8);

x1 = 0:0.001:1;
figure(1)
plot(x1,polyval(p1,x1))
hold on
plot(x1,polyval(p2,x1))
plot(x1,polyval(p3,x1))
plot(x1,polyval(p4,x1))

legend ('first','second','fourth','eighth')
scatter(x,y,'*')

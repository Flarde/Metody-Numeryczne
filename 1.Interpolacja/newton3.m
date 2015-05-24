close all
clc
a=wspol_newton(xi,yi);
i = 1;
xt = 0;
yInterpolacja = 0;
ywynik=0;
'      x     yInterpolacja      yWzorcowe'
for x=0:0.25:10
    yInterpolacja(i)=wielomian_newton(a,xi,x);
    ywynik(i)=exp((-x)*c).*sin(x)+d;
    fprintf('%15.5f',x,yInterpolacja(i),ywynik(i))
    fprintf('\n')
        xt(i) = x;
    i = i+1;
end
plot(xt,yInterpolacja,'-r',xu,yWzorcowe,'-g');
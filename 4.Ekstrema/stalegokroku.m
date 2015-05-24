function [ wyn ] = stalykrok(F, x0, delta)
if F(x0 + delta) < F(x0)
    znak=1;
else
    znak=-1;
end

x(1)=x0;
for k=1:9999999
    x(k+1) = x(k) + delta*znak;
    if ( F(x(k+1)) > F(x(k))); break;end;
end
wyn=(x(k+1)+x(k))/2;
k
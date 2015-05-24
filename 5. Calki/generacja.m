c = 0.7;
d = 1.4;
F = @(x) sqrt(c*x).*cos(d*x);		%funkcja 1
%F = @(x) exp(-x*c).*sin(x)+d;		%funkcja 2
%F = @(x) sin(c*x)+sin(2*d*x);		%funkcja 3


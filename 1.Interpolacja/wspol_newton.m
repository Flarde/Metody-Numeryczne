function a = wspol_newton(xi,yi)
n = length(xi);
a = yi;
for k = 2:n
    a(k:n) = (a(k:n) - a(k-1))./(xi(k:n) - xi(k-1));
end
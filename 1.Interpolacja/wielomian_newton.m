function w = wielomian_newton(a,xi,x)

n = length(xi);
w= a(n);

for k = 1:n-1;
    w = a(n-k) + (x - xi(n-k)).*w;
end
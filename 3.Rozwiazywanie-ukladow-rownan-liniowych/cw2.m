function [x,z] = gauss(A,b)
if size(b,2) >1;
    b=b';
end
n =length(b);
z=inv(A)
x=z*b;
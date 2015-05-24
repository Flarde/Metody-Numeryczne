function [wyn] = zlotypodzial(F,a,b,tol)
k=(sqrt(5)-1)/2;
xL=b-k*(b-a);
xR=a+k*(b-a);
i=0;
while(b-a) > tol
    i=i+1;
    if F(xL) < F(xR)
    b=xR;
    xR = xL;
    xL = b - k*(b-a);
    else
        a=xL;
        xL = xR;
        xR = a+k*(b-a);
end
end
wyn = (a+b)/2
i
function a=aprox2(x,y,m)
n=length(x);
if m+1>n
disp('Za ma³o punktów dla wielomianu stopnia m, obniz m!')
error('error')
end

B=zeros(1:m+1);
F=zeros(n,m+1);

for k=1:m+1
	F(:,k)=x'.^(k-1);
end

A=F'*F;
B=F'*y';
a=A\B;
a=flipud(a);
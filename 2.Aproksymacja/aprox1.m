function a=aprox1(x,y,m)
n=length(x);
if m+1>n
disp('Za ma³o punktów dla wielomianu stopnia m, obniz m!')
error('error')
end
for i=1:m+1
	for j=i:m+1
		sum=0;
			for k=1:n
				sum=sum+(x(k))^(i+j-2);
			end
	A(i,j)=sum;
	A(j,i)=sum;
	end
sum=0;

for k=1:n
	sum=sum+y(k)*x(k)^(i-1);
end

B(i)=sum;
end

a=inv(A)*B';
a=flipud(a);
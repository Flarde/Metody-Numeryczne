
c = 0.7;
d = 1.4;
x = 0:0.01:10;
y = 2*exp(-x*c).*(3*sin(x))+d; 		%Funkcja 1
F = @(x) 2*exp(-x*c).*(3*sin(x))+d;
%plot(x,y,'r');
%h=log(x*2*c+0.1).*cos(d*x); 		%Funkcja 2
%h=sin(c*x)+sin(2*d*x); 		%Funkcja 3

clc
close all
c= 0.6;
d=0.8571;
k=0.01;
x=0:k:10;

h=2*exp(-x*c).*(3*sin(x))+d; 		%Funkcja 1
%h=log(x*2*c+0.1).*cos(d*x); 		%Funkcja 2
%h=sin(c*x)+sin(2*d*x); 		%Funkcja 3

%Nalozenie suzmu na badana funkcje
y=h+0.1*rand(1,10/k+1)
xi=0:10;		%Generacja x dla wezlow interpolacyjnych
p=1;
for n=1:11
	yi(n)=y(p);
	p=p+1/k;
end
plot(x,h,'r') %wykres funkcji niezaszumionej
title('Wykres funkcji bazowej')
figure;
plot(x,y,'b',xi,yi,'ro') %zestawienie funkcji badanej z wezlami
title('Wykres funkcji zaszumionej oraz wezlow interpolacyjnych')
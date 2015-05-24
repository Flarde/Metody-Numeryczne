% METODY NUMERYCZNE LABORATORIUM I: INTERPOLACJA
% ZADANIE 1: Interpolacja wbuowanymi narz�dziami MATLAB'a

close all
clc

figure(1);
plot(xi,yi,'o');
xlabel ('xi');
ylabel ('yi = f(xi)');
title ('Rozmieszczenie w�z��w interpolacyjnych');

%Interpolacja wbudowanymi narz�dziami MATLAB'a

%xi, yi - wsp w�z��w interpolacyjnych
% x_p - przedzia� punkt�w dla kt�rych przeprowadzana b�dzie interpolacja
% 'metoda' - wyb�r metody interpolacyjnej
%y - funkcja zinterpolowana

x_p = 0:0.2:10;
y = interp1(xi,yi,x_p,'SPLINE');

%Wykre�lenie funkcji y=f(x_p)
figure(2);
plot(x_p,y);
xlabel('x_p');
ylabel('y = f(x_p)');
title('Wykres funkcji po interpolacji metod� SPLINE');

%wyznaczanie wartosci bledu
h= exp((-x_p).*c).*sin(x_p)+d;
blad = y-h;
max_blad_bezwzgledny = max(abs(blad));

%wyklreslenie funkcji bledu
figure(3);
plot(x_p,blad);
xlabel('x');
ylabel('Warto�� b��du delta_y');
title('Wykres b��du interpolacji dla metody SPLINE')

%zestawienie
figure(4);
plot(xi,yi,'o',x_p,y,'r-',x_p,h,'g-');
xlabel('x');
ylabel('yi, y=f(x_p)');
legend('W�z�y interpolacyjne','Wynik interpolacji','Funkcja oryginalna');
title('Wynik interpolacji, funkcja oryginalna i w�z�y');
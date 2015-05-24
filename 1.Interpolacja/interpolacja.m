% METODY NUMERYCZNE LABORATORIUM I: INTERPOLACJA
% ZADANIE 1: Interpolacja wbuowanymi narzêdziami MATLAB'a

close all
clc

figure(1);
plot(xi,yi,'o');
xlabel ('xi');
ylabel ('yi = f(xi)');
title ('Rozmieszczenie wêz³ów interpolacyjnych');

%Interpolacja wbudowanymi narzêdziami MATLAB'a

%xi, yi - wsp wêz³ów interpolacyjnych
% x_p - przedzia³ punktów dla których przeprowadzana bêdzie interpolacja
% 'metoda' - wybór metody interpolacyjnej
%y - funkcja zinterpolowana

x_p = 0:0.2:10;
y = interp1(xi,yi,x_p,'SPLINE');

%Wykreœlenie funkcji y=f(x_p)
figure(2);
plot(x_p,y);
xlabel('x_p');
ylabel('y = f(x_p)');
title('Wykres funkcji po interpolacji metod¹ SPLINE');

%wyznaczanie wartosci bledu
h= exp((-x_p).*c).*sin(x_p)+d;
blad = y-h;
max_blad_bezwzgledny = max(abs(blad));

%wyklreslenie funkcji bledu
figure(3);
plot(x_p,blad);
xlabel('x');
ylabel('Wartoœæ b³êdu delta_y');
title('Wykres b³êdu interpolacji dla metody SPLINE')

%zestawienie
figure(4);
plot(xi,yi,'o',x_p,y,'r-',x_p,h,'g-');
xlabel('x');
ylabel('yi, y=f(x_p)');
legend('Wêz³y interpolacyjne','Wynik interpolacji','Funkcja oryginalna');
title('Wynik interpolacji, funkcja oryginalna i wêz³y');
% METODY NUMERYCZNE LABORATORIUM I: INTERPOLACJA
% Generator funkcji nr 2

function [xi,yi,x,h] = generator_2(c,d,k);
close all
clc
% Wyznaczanie funkcji bazowej

n= 10;
x = 0:0.001:n;
h = log(x*2*c).*cos(d*x);

% Wykreslenie wektorów wezlow funkcji do interpolacji
xi = 0:k:10;
yi = log(xi*2*c).*cos(d*xi);

plot(xi,yi,'o');
xlabel('xi');
ylabel('yi = f(xi)');
title ('Rozmieszczenie wêz³ów interpolacyjnych');
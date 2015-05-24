% METODY NUMERYCZNE LABORATORIUM I: INTERPOLACJA
% Generator funkcji nr 1

function [xi,yi,x,h] = generator_1(c,d,k);
close all
clc
% Wyznaczanie funkcji bazowej

n = 10;
x = 0:0.001:n;
h = exp((-x)*c).*sin(x)+d;

% Wykreslenie wektorów wezlow funkcji do interpolacji
xi = 0:k:10;
xi = xi
yi = exp(-xi*c).*sin(xi)+d;
yi = yi
plot(xi,yi,'o');
xlabel('xi');
ylabel('yi = f(xi)');
title ('Rozmieszczenie wêz³ów interpolacyjnych');
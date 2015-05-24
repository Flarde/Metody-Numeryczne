% METODY NUMERYCZNE LABORATORIUM I: INTERPOLACJA
% Generator funkcji nr 2

function [xi,yi,x,h] = Generator_3(c,d,k);
close all
clc
% Wyznaczanie funkcji bazowej

n= 10;
x = 0:0.001:n;
h = sin(c*x)+sin(2*d*x)

% Wykreslenie wektorów wezlow funkcji do interpolacji
xi = 0:k:10;
yi = sin(c*xi)+sin(2*d*xi)

plot(xi,yi,'o');
xlabel('xi');
ylabel('yi = f(xi)');
title ('Rozmieszczenie wêz³ów interpolacyjnych');
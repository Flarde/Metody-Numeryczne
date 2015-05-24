clc
close all
a=polyfit(x,y,2)
w=polyval(a,x);
blad=w-h;
max_blad_bezwzgledny = max(abs(blad))

ai=polyfit(x,y,5)
wi=polyval(ai,x);
blad_i=wi-h;
max_blad_bezwzgledny_i = max(abs(blad_i))


plot(x,h,'g:',xi,yi,'go',x,w,'r',x,wi,'b')
title('Zestawienie funkcji badanej z funkcjami aproksymujacymi')
legend('funkcja niezaszumiona','wêz³y','aproksymacja dla N=1','aproksymacja N=5');
figure;
plot(x,blad,'r',x,blad_i,'b')
legend('aproksymacja dla N=1','aproksymacja dla N=5')
title('Wykresy b³êdu')
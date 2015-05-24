generacja;
x_stalegokroku = stalegokroku(F,1,0.1);
y_stalegokroku = F(x_stalegokroku);

x_swan = stalegokroku(F,1,0.1);
y_swan = F(x_swan);

x_zloty = zlotypodzial(F,min(x),max(x),0.01);
y_zloty = F(x_zloty);

[x_min, y_min] = fminbnd(F,min(x),max(x))
pks = findpeaks(y);
y_max = max(pks);
x_max = x(find(y == y_max))
% x_max = fzero('2*exp(-x*(0.7)).*(3*sin(x))+(1.4)', 0.93)
y_max;

figure
subplot(1,2,1)
plot(x,y,'r',x_stalegokroku,y_stalegokroku,'dk',x_swan,y_swan,'xc',x_zloty,y_zloty,'og')
stal_opis = sprintf(' Minimum dla metody stalego korku [%.2f,%.2f]',x_stalegokroku,y_stalegokroku);
swan_opis = sprintf(' Minimum dla metody Swana [%.2f,%.2f]',x_swan,y_swan);
zloty_opis = sprintf(' Minimum dla metody zlotego podzialu [%.2f,%.2f]',x_zloty,y_zloty);

text(x_stalegokroku,y_stalegokroku,stal_opis,'Color','k')
text(x_swan,y_swan,swan_opis,'Color','c')
text(x_zloty,y_zloty,zloty_opis,'Color','g')

title('Lokalne minima dla roznych metod')

subplot(1,2,2)
plot(x,y,'r',x_min,y_min,'ob',x_max,y_max,'og')
min_opis = sprintf(' Minimum lokalne funkcja wbudowana  [%.2f,%.2f]',x_min,y_min);
max_opis = sprintf(' Maksimum lokalne funkcja wbudowana [%.2f,%.2f]',x_max,y_max);

text(x_min,y_min,min_opis,'Color','b')
text(x_max,y_max,max_opis,'Color','g')

title('Lokalne ekstrema')
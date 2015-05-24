function y = prostokat(a,b,n,f)
%Dane wej
    
    % a = dolna granica calkowania
    % b = gorna granica calkowania
    % n = liczba podprzedzialow (n >= 1)
    % f = (string) nazwa pliku m-file definiujacego funkcje podcalkowa
  
h = (b-a)/n;
y = 0;
for i = 1:n
    y = y + feval(f,a+(2*i-1)*h/2);
end
y = h*y;
    
    
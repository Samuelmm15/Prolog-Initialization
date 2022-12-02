% 1. Realizar un predicado `pertenece/3` que detecte si un numero real (primer argumento) pertenece al intervalo en la recta real determinado por el limite inferior, segundo argumento,
% y el limite superior, tercer argumento. Por ejemplo: pertenece(5.5, 1.3, 7.2) habria que devolver true.

pertenece(X, Y, Z) :- X >= Y, X =< Z.

% De esta manera lo que se esta representando anteriormente es que el numero real x se encuentra entre `y` y `z` y que `y` es menor o igual que `z`.

% 2. Realizar un predicado 'generado_int/3' que genere en sucesivas resatisfacciones los enteros, primner argumento, que esten dentro de un intervalo determinado por el limite inferior
% , entero del segundo argumento, y el limite superior, entero del tercer argumento. Por ejemplo: generado_int(X, 2, 5) habria que devolver X = 2, X = 3, X = 4, X = 5.

generado_int(X, Y, Z) :- between(Y, Z, X).

% Hay que tener en cuenta que esto anterior lo que hace es generar que la X se encuentre dentro del rango que ha sido especificado por el por `y` y `z` y que los valores se deben de encontrar dentro de este rango.

% 3. Realizar los predicados 'mcm/3' y 'mcd/3' que devuelva en el primer argumento el minimo comun multiplo y el maximo comun divisor en el segundo. Por ejemplo:
% mcm(X, 2, 5) devuelve x=10. Lo mismo ocurre para el mcd.

% Esto son algunos ejemplos de implementaciones
% mcm(A,B,A1,B1,C):-A=B,C=A*(A1/A)*(B1/A).
% % mcm(A,B,A1,B1,C):-A>B,X=A-B,mcm(X,B,A1,B1,C).
% mcd(A,B,C):-A = B,C = A.
% mcd(A,B,C):-A > B, X = A - B, mcd(X, B, C).
% mcd(A,B,C):-A < B, Y = B - A, mcd(A, Y, C).
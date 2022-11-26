% Para este caso, se tiene implantado esto anteriormente.
femenino(petra).
femenino(carmen).
femenino(maria).
femenino(rosa).
femenino(ana).
femenino(cande).
masculino(angel).
masculino(pepe).
masculino(juan).
masculino(pedro).
masculino(enrique).
masculino(raul).
masculino(alfonso).
progenitor(petra, juan).
progenitor(petra, rosa).
progenitor(carmen, pedro).
progenitor(maria, ana).
progenitor(maria, enrique).
progenitor(rosa, raul).
progenitor(rosa, alfonso).
progenitor(rosa, cande).
progenitor(angel, juan).
progenitor(angel, rosa).
progenitor(pepe, pedro).
progenitor(juan, ana).
progenitor(juan, enrique).
progenitor(pedro, raul).
progenitor(pedro, alfonso).
progenitor(pedro, cande).

antepasado(X, Z) :- progenitor(X, Z).
antepasado(X, Z) :- progenitor(X, Y), antepasado(Y, Z).
% 1. Realizar las reglas necesarias para definir los predicados distinguiendo el sexo:
% hijo/2. (nombre del predicado/número de argumentos(ariedad))
% hija/2.
% nieto/2.
% nieta/2.
hijo(X, Y) :- progenitor(Y, X), masculino(X).
hija(X, Y) :- progenitor(Y, X), femenino(X).
nieto(X, Y) :- progenitor(Y, Z), progenitor(Z, X), masculino(X).
nieta(X, Y) :- progenitor(Y, Z), progenitor(Z, X), femenino(X).
% 2. Definición de las reglas para los predicados anteriores:
% hermano/2.
% hermana/2.
% sobrino/2.
% sobrina/2.
% primo/2.
% prima/2.
hermano(X, Y) :- progenitor(Z, X), progenitor(Z, Y), masculino(X), X \= Y.
hermana(X, Y) :- progenitor(Z, X), progenitor(Z, Y), femenino(X), X \= Y.
sobrino(X, Y) :- progenitor(Z, X), progenitor(W, Y), hermano(Z, W), masculino(X).
sobrina(X, Y) :- progenitor(Z, X), progenitor(W, Y), hermana(Z, W), femenino(X).
primo(X, Y) :- progenitor(Z, X), progenitor(W, Y), hermano(Z, W), masculino(X).
prima(X, Y) :- progenitor(Z, X), progenitor(W, Y), hermana(Z, W), femenino(X).
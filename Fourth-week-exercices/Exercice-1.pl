% Definir la relación 'invertir(?L1,?L2)' que se verifique si la lista L2 es equivalente a la L1 pero con los elementos en orden inverso. Utilizar la técnica del acumulador para ello. Por ejemplo, invertir([9, 3, 1, 5] , L) debe dar L = [5, 1, 3, 9].

% Invetir dos listas haciendo uso de la técnica del acumulador en prolog

invertir(Lista, Invertida) :- invertir(Lista, [], Invertida).

invertir([], Invertida, Invertida).
invertir([Cabeza|Cola], Acumulador, Invertida) :-
  invertir(Cola, [Cabeza|Acumulador], Invertida).
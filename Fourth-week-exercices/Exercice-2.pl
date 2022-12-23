% Definir la relación 'suma(+L,?X)' y 'suma_acc(+L,?X)' que se verifiquen si X es la suma de los elementos de la lista de números L. Ha de implementarse el primero sin acumulador y el segundo con. Por ejemplo, suma([9, 3, 1, 5] , X) debe dar X = 18.

% Implementación de suma(+L,?X) sin acumulador para sumar los distitnos elementos de un lista

suma(Lista, Suma) :- suma(Lista, 0, Suma).

suma([], Suma, Suma).
suma([Cabeza|Cola], SumaAcumulada, Suma) :-
  SumaNueva is SumaAcumulada + Cabeza,
  suma(Cola, SumaNueva, Suma).

% Implementación de suma_acc(+L,?X) con acumulador para sumar los distitnos elementos de un lista
suma_acc(Lista, Suma) :- suma_acc(Lista, 0, Suma).

suma_acc([], Suma, Suma).
suma_acc([Cabeza|Cola], Acumulador, Suma) :-
  AcumuladorNuevo is Acumulador + Cabeza,
  suma_acc(Cola, AcumuladorNuevo, Suma).

% Implementar la búsqueda de solución para el juego Torres de Hanói con tres postes y un número indefinido N de discos, de forma que 'hanoi(+N,?L)' devuelva en L una lista de movimientos para resolver el problema. Ha de implementarse tres variantes: 
% sin acumulador 'hanoi/2', con acumulador 'hanoi_acc/2'y con estructura en diferencia 'hanoi_dif/2'. Por ejemplo, hanoi(3,L) debe dar L = [mover(1, 3), mover(1, 2), mover(3, 2), mover(1, 3), mover(2, 1), mover(2, 3), mover(1, 3)].

% Primera implementación sin acumulador

hanoi(N, L) :- hanoi(N, 1, 3, 2, L).

hanoi(0, _, _, _, []).
hanoi(N, Origen, Destino, Auxiliar, [mover(Origen, Destino)|Resto]) :-
  N > 0,
  N1 is N - 1,
  hanoi(N1, Origen, Auxiliar, Destino, Resto).
hanoi(N, Origen, Destino, Auxiliar, [mover(Origen, Destino)|Resto]) :-
  N > 0,
  N1 is N - 1,
  hanoi(N1, Auxiliar, Destino, Origen, Resto).

% Segunda implementación con acumulador

hanoi_acc(N, L) :- hanoi_acc(N, 1, 3, 2, [], L).

hanoi_acc(0, _, _, _, L, L).
hanoi_acc(N, Origen, Destino, Auxiliar, Acumulador, L) :-
  N > 0,
  N1 is N - 1,
  hanoi_acc(N1, Origen, Auxiliar, Destino, [mover(Origen, Destino)|Acumulador], L).
hanoi_acc(N, Origen, Destino, Auxiliar, Acumulador, L) :-
  N > 0,
  N1 is N - 1,
  hanoi_acc(N1, Auxiliar, Destino, Origen, [mover(Origen, Destino)|Acumulador], L).

% Tercera implementación con estructura en diferencia

hanoi_dif(N, L) :- hanoi_dif(N, 1, 3, 2, L, []).

hanoi_dif(0, _, _, _, L, L).
hanoi_dif(N, Origen, Destino, Auxiliar, L, Resto) :-
  N > 0,
  N1 is N - 1,
  hanoi_dif(N1, Origen, Auxiliar, Destino, L, [mover(Origen, Destino)|Resto]).
hanoi_dif(N, Origen, Destino, Auxiliar, L, Resto) :-
  N > 0,
  N1 is N - 1,
  hanoi_dif(N1, Auxiliar, Destino, Origen, L, [mover(Origen, Destino)|Resto]).

# Aritmética en Prolog.

Hay que tener en cuenta que en prolog existen distintos operadores aritméticos que permite realizar ciertas operaciones.

## Operadores de Comparación.

```(prolog)
X = Y, =/2
X \= Y, \=/2
X < Y, </2
X > Y, >/2
X =< Y, =</2
X >= Y, >=/2
```

Cabe destacar que el operador igual `=` en prolog sirve para comparar si dos cosas son iguales o también para asignar valor a una cosa en concreto.

### Cuando se quiere saber por qué no se devuelve como resultado, lo que se está buscando se hace uso de la sentencia `trace`
Es decir, de manera general, cuando se está comprobando una sentencia en concreto y no se sabe por qué no nos está dando el resultado que estabábamos 
buscando, se hace uso de `trace` antes de la sentencia de búsqueda. De manera general se hace uso de manera:

```(prolog)
trace, puede_robar(juan, X)
% Como se puede observar anteriormente, se tiene el trace
% antes de la sentencia a comprobar, para ver todas las comprobaciones
% que se están comprobando para obtener el resultado final.
```

Con esto se puede concluir, que si se tienen problemas ante el funcionamiento de alguna sentencia,
se debe de hacer uso del `trace` para poder ver los movimientos y comprobaciones que se están realizando.

### Los `reings` en Prolog
Los `reings` en prolog hacen referencia al establecimiento de rangos dentro de una determinada condición, es decir,
si se tiene una condición, se establece un rango de valores al que está asociada esa condición.

Un ejemplo para poder entender el funcionamiento de esto es:

```(prolog)
reings(anarawd,878,916)
% Como se puede observar, para anarawd, se encuentra dentro del rango
% 878-916
```

## Operador `is`

Este operador se encarga de evaluar aritméticamente la parte derecha de `is` y asigna o compara
su resultado con la variable de la izquierda. Todos los elementos de la derecha deben de ser conocidos (números y variables instanciadas).
se Debe de usar siempre que se quiera hacer operaciones aritméticas. Los distintos operadores aritméticos que tiene prolog son:

```(prolog)
   +, -, *, /, //, mod
```

Cabe destacar que para poder hacer uso de cualquiera de los distintos operadores aritméticos que se encuentran dentro de prolog,
se debe de hacer uso a su vez **SIEMPRE** del operador `is`. 

### Generación de multiples líneas de salida con la `Terminal de Prolog`

Hay que tener en cuenta que cuando se quiere generar una consulta de múltiples salidas en la terminal de prolog, para poder llevar a cabo
esta acción se debe de pulsar la `barra espaciadora` ya que con esto lo que se consigue es generar las multiples salidas necesaria para la
comprobación de los resultados.

### Existencia de librerías implementadas por defecto en prolog

En prolog existen ciertas liberías y funciones que se encuentran implementadas por defecto en prolog y que pueden ser útiles para la 
utilización de dicho lenguaje, es por ello que podemos ver una función implementada por defecto como puede ser `gcd\2` que se 
trata de una función que se encuentra implementada por defecto y que se encarga de calcular el máximo común divisor de dos valores.
Como se puede ver en el siguiente [enlace](https://www.swi-prolog.org/pldoc/man?function=gcd/2) se tienen los distitnos ejemplos de dichas funciones implementadas por defecto.

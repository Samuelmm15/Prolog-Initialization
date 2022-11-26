# Componenentes de un programa prolog

- Declaración de `hechos` sobre objetos y relaciones.
- Definición de `reglas` sobre dichos objectos y relaciones.
- Planteamiento de `consultas`.
- `Cláusulas` = hechos + reglas.

## Unidades básicas de prolog

- Término
  - Constante
    - Átomo: `juan, maria, cafe`
    - Número: `12, -1.3`
  - Variable: `X, Y`
  - Estructura o término compuesto: `gusta(juan, maria), gusta(juan, cafe)`

Ejemplo de código para entender:

```(Prolog)
% Con el símbolo porcentaje se pueden poner comentarios en el código
atomo(juan).    % juan es un átomo
atomo(maria).   % maria es otro átomo
numero(12).     % 12 es un número
numero(-1.3).   % -1.3 es otro numero
estructura(gusta(juan, maria)).  % gusta/2 es una estructura o término compuesto
estructura(gusta(juan, cafe)).   % otro ejemplo de estructura gusta/2
```

**En prolog es importante tener en cuenta saber si las variables se encuentran instanciadas,
ya que puede ser que no estén instanciadas**.

Una consulta en prolog, es similar a SQl, por tanto se realizan consultas sobre un programa
de manera inidividual.

## Hechos

Se tratan de cláusulas simples que están formadas por predicados con argumentos
posiblemente instanciados:

```(prolog)
nombre_pred(arg1, arg2, ..., argn).
```

- Los argumentos son términos.
- La ariedad es el número de argumentos.
- Los predicados se denotan nombre/aridad:

```(prolog)
nombre_pred/n
```

- se pueden anidar términos generando estructuras:

```(prolog)
posee(juan, libro(ulises, autor(jame, joyce), 3124))
posee/2, libro/3, autor/2
```

Un ejemplo para poder entender esto, es:

```(prolog)
% Ejemplo de base de datos de hechos

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
```

## Consultas (query)

Se trata de la meta desde la que se infiere una respuesta. El que se encarga
de inferir una respuesta es un proceso de inferencia que busca a la base de datos
que unifique la meta, devolviendo:

- Éxito: `true`
- Fracaso: `false`

Además, las consultas combinan objetivos mediante conjunción(`,`)

```(prolog)
% Algunos ejemplos de consultas son:
progenitor(angel, juan).
progenitor(angel, cande).
progenitor(angel, X).
progenitor(angel, juan), progenitor(juan, ana).
progenitor(angel, X), progenitor(X, cande).
```

## Unificación

Se trata de un mecanismo de emparejamiento. Hay que tener en cuenta que dos predicados
son unificables si se produce que:
- Tienen igual nombre.
- Tienen igual ariedad.
- Los argumentos son unificables:
  - Variables sin instancia emparejan a cualquier término.
  - Átomos o números solo unifican a átomos o números iguales.

## Resatisfación

Se trata de un proceso que solicita respuestas adicionales. Al encontrar una
espuesta PROLOG marca el estado de la búsqueda. Al introducir `,` PROLOG lanza
el proceso de resatisfacción, continuando la búsqeuda desde el estado marcado.

Un ejemplo para poder entender esto anterior es:

```(prolog)
progenitor(angel, X), progenitor(X, Y).
```

## Reglas de PROLOG

Estas, declaran propiedades o relaciones que son ciertas bajo algunas condiciones.
Estas, generalizan condiciones en la que un predicado es cierto. Además, la estructura
queda dividida en cabeza y cuerpo:

```(prolog)
cabeza(arg1, arg2,...,argn):- meta1(...), meta2(...),...
```

Ejemplos de reglas para poder entender:

```(prolog)
% Ejemplos de reglas
nieto_a(X, Y) :- progenitor(V, X), progenitor(Y, V).

antepasado(X, Z) :- progenitor(X, Z).
antepasado(X, Z) :- progenitor(X, Y), antepasado(Y, Z).
```

![img.png](/img.png)

**Estos ejercicios anteriores son los ejercicios que se deben de realizar
como primera tarea de prolog**

## COMPILACIÓN DE UN ARCHIVO PROLOG Y CONSULTAS HACIENDO USO DE UBUNTU
Para poder realizar la compilación del fichero: 
- Nos debemos de desplazar hasta el directorio donde se encuentra el fichero con formado `.pl`.
- Para poder compilar el fichero, se hace uso del comando `$ prolog archivo.pl`.
- Una vez hecho esto, se pueden hacer consultas sobre dicho fichero.

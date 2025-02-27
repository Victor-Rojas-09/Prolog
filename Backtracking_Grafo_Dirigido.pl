% Hechos
conexion(vancouver, edmonton, 16).
conexion(vancouver, calgary, 13).
conexion(edmonton, saskatoon, 12).
conexion(calgary, edmonton, 4).
conexion(saskatoon, calgary, 9).
conexion(saskatoon, winnipeg, 20).
conexion(calgary, regina, 14).
conexion(regina, winnipeg, 4).
conexion(regina, saskatoon, 7).

% Reglas

% Regla para determinar si hay conexión directa 
viajar_entre(X, Y) :- conexion(X, Y, _).
viajar_entre(X, Y) :- conexion(X, Z, _), viajar_entre(Z, Y).

% Regla para verificar si un nodo tiene conexiones
tiene_aristas(Nodo) :- conexion(Nodo, _, _); conexion(_, Nodo, _).

% Regla para calcular el costo de viajar de X a Z pasando por Y
costo_viaje(X, Y, Z, TotalC) :-
    conexion(X, Y, C1),
    conexion(Y, Z, C2),
    TotalC is C1 + C2.

% Regla para obtener todas las conexiones de una ciudad
todas_conexiones(City) :-
    conexiones(City).

% Regla para obtener e imprimir las conexiones de una ciudad y su costo
conexiones(City) :-
    conexion(City, Destination, C),
    writeln((Destination, C)),
    conexiones(City).
conexiones(_).

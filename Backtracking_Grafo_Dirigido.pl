%Hechos
conexion(vancouver,edmonton,16).
conexion(vancouver,calgary,13).
conexion(edmonton,saskatoon,12).
conexion(calgary,edmonton,4).
conexion(saskatoon,calgary,9).
conexion(saskatoon,winnipeg,20).
conexion(calgary,regina,14).
conexion(regina,winnipeg,4).
conexion(regina,saskatoon,7).
%reglas

aristas(X):- conexion(X,_,_).

conectado(X, Y) :- conexion(X, Y, _).
conectado(X, Y) :- conexion(X, Z, _), conectado(Z, Y).

existe_conexion(X, Y) :- conectado(X, Y).
conexiones_regina :- listar_conexiones(regina).
listar_conexiones(Ciudad) :- conexion(Ciudad, Destino, C).
listar_conexiones(_).
viaje_posible(X, Y) :- existe_conexion(X, Y).

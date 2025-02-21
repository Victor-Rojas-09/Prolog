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

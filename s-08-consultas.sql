/*
i) Este archivo contendrá 10 o más consultas. El
criterio es libre. Se debe emplear el uso de
joins, funciones de agregación, algebra
relacional y subconsultas (No es necesario que
una misma consulta haga uso de todos estos
elementos). Este punto deberá explicarse.
*/


---select
SELECT * FROM Producto;
SELECT * FROM Pelicula;
SELECT * FROM AlbumMusical;
SELECT * FROM VideoJuego;
SELECT * FROM HistoricoPrecioProducto;
SELECT * FROM FormaPago;
SELECT * FROM Cliente;
SELECT * FROM ModAdquisicion;
SELECT * FROM Streaming;
SELECT * FROM Transferencia;

----
---CONSULTAS
----
SELECT * 
FROM FormaPago
INNER JOIN Cliente
ON FormaPago.id_formaPago = Cliente.id_cliente;

----
SELECT * 
FROM FormaPago
RIGHT JOIN Cliente
ON FormaPago.id_formaPago = Cliente.id_cliente;
----
SELECT * 
FROM FormaPago
LEFT JOIN Cliente
ON FormaPago.id_formaPago = Cliente.id_cliente;
-----
---SUBCONSULTA FROM
-----

SELECT nomBanco AS nb
FROM (SELECT * FROM FormaPago NATURAL JOIN TarCredito) 
GROUP BY formap
HAVING COUNT(*)>3;

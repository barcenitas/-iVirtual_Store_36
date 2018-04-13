/*
i) Este script contendrá algunos datos de prueba y
carga inicial para poder ilustrar el correcto
funcionamiento de la base de datos.
ii) No existe límite en cuanto a la cantidad de
registros, se deben poblar mínimo con 15
registros cada tabla
iii) El script deberá hacer uso de las secuencias
para realizar las inserciones.
iv) Tener en cuenta que un valor generado por una
secuencia pudiera emplearse varias veces para
insertar registros con llaves foráneas*/


---
---1_FormaPago
---

INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(1,'Banco Prebebes','Barcenitas','Transferencia'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(2,'Banamex','Carlos Slim Helú','Tcredito'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(3,'Banamex','Buzz Aldrin','Transferencia'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(4,'Banamex','Moses Austin','Tcredito'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(5,'Scotiabank','John Chisum','Transferencia'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(6,'HSBC ','Bárcenas Martínez Erick Iván','Tcredito'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(7,'BBVA Bancomer','Meg Crofton','Transferencia'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(8,'Banco Inbursa','Roy E. Disney','Tcredito'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(9,'Banco del Bajio','Bernal Sánchez Diego Arturo','Tcredito'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(10,'Bank of America México','Rufino Vigil Hernández','Transferencia'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(11,'CiBanco','Alberto Bailleres González','Transferencia'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(12,'Bancoppel','María Asunción Aramburuzabala','Tcredito'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(13,'Banco Ahorro Famsa','Carlos Hank Rhon','Transferencia'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(14,'Banco Forjadores','Roberto Hernández Ramírez','Tcredito'));
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(15,'Banco Prebebes','Ricardo Salinas Pliego','Tcredito'));



----
---2_Cliente
---
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,Password,Nombre,aPaterno,aMaterno,RFC,FormaPago) VALUES (99,14,'Asunción ','cabrigo@garmendia.cl','Password4','Aramburuzabala ','Asunción','María',null,Tcredito); 
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,Password,Nombre,aPaterno,aMaterno,RFC,FormaPago) VALUES (99,14,'Hank ','osabarca@hotmail.com','Password3','Carlos','Hernández','Rhon',null,Transferencia); 
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,Password,Nombre,aPaterno,aMaterno,RFC,FormaPago) VALUES (99,14,'Hernández','maeillanes@hotmail.com','Password2','Roberto','Hernández','Ramírez',null,Tcredito); 
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,Password,Nombre,aPaterno,aMaterno,RFC,FormaPago) VALUES (100,15,'Salinas','iabarcae@yahoo.es','Password','Ricardo','Salinas','Pliego',null,Tcredito); 

---
---3_Producto
----
INSERT INTO Producto(id_Producto,folioAlfanum,url,numVistas,nombre,numRepro,precioVenta,Pelicula_id_pelicula,AlbumMusical_id_aMusical,VideoJuego_id_vJuego) VALUES ();

---
--4_Pelicula
---
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES();



---
--5_AlbumMusical
---
INSERT INTO AlbumMusical(Producto_id_Producto,NomCancion,Artista,Album,Disquera) VALUES();

---
---6_VideoJuego
---
INSERT INTO VideoJuego(Producto_id_Producto,NomVjuego,Consola,Descripcion) VALUES();




-- 7_ModAdquisicion
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES();



-- 8_OrdenCompra
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES();



--- 9_Factura

INSERT INTO Factura(id_FolioFactura,FolioOrdenCompra,FormaPago_id_FormaPago,MontoTotalFactura,FechaGenyEnvio,FormaPago,IVA,OrdenCompra_id_OrdenCompra) VALUES();


---- 10_EnvioPaquete
INSERT INTO EnvioPaquete(id_EnvioPaquete,Factura_id_FolioFactura,FechaEnvio,numSeguimiento,EmpresaPaqueteria,Escala001,MunicipioFactura,C.P.Factura,ColoniaFactura,CalleFactura,NumExteriorFactura,NumInteriorFactura,MunicipioEntrega,C.P.Entrega,ColoniaEntrega,NumExteriorEntrega,NumInteriorEntrega) VALUES();

--- 11_Seguimiento
INSERT INTO Seguimiento(id_Seguimiento,EnvioPaquete_id_EnvioPaquete,FechaLlegada,HoraLlegada,Ubicacion,EstacionEscala) VALUES();



--- 12_Compra

INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES();



--13_Tcredito

INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES();



--14_Transferencia


INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES();


-- 15_Streaming

INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones) VALUES();




-- 16_Paqueteria

INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES();



---
--- 17_HistoricoPrecioProducto
---
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES ();


---Cerrando Transacción
commit;




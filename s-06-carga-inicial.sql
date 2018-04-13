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

INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(1,'Banco Prebebes','Barcenitas','Transferencia');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(2,'Banamex','Carlos Slim Helú','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(3,'Banamex','Buzz Aldrin','Transferencia');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(4,'Banamex','Moses Austin','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(5,'Scotiabank','John Chisum','Transferencia');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(6,'HSBC ','Bárcenas Martínez Erick Iván','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(7,'BBVA Bancomer','Meg Crofton','Transferencia');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(8,'Banco Inbursa','Roy E. Disney','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(9,'Banco del Bajio','Bernal Sánchez Diego Arturo','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(10,'Bank of America México','Rufino Vigil Hernández','Transferencia');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(11,'CiBanco','Alberto Bailleres González','Transferencia');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(12,'Bancoppel','María Asunción Aramburuzabala','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(13,'Banco Ahorro Famsa','Carlos Hank Rhon','Transferencia');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(14,'Banco Forjadores','Roberto Hernández Ramírez','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(15,'Banco Prebebes','Ricardo Salinas Pliego','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(16,'Santander','Felipe Guillen Díaz','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(17,'HSBC','Luis Zamora Ortiz','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(18,'Scotiabank','Carolina Cortes Horta','Transferencia');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(19,'BBVA Bancomer','Gustavo Lopez Hernandez','Transferencia');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(20,'HSBC','Apolonio Cruz Bravo','TarCredito');
INSERT INTO FormaPago(id_FormaPago,NomBanco,NomTitular,TipoPago) VALUES(21,'Banco Prebebes','Sofia Cabrera Camarillo','Transferencia');


----
---2_Cliente
---
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,password,telefono,Nombre,aPaterno,aMaterno,rfc,FormaPago) VALUES (99,12,'Asunción','cabrigo@garmendia.cl','pass15','5545856322','Aramburuzabala ','Asunción','María','ARAM860729LH1','TarCredito');
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,password,telefono,Nombre,aPaterno,aMaterno,rfc,FormaPago) VALUES (100,13,'Hank','osabarca@hotmail.com','Password3','55458741022','Carlos','Hernández','Rhon','HERC9003182H0','Transferencia');
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,password,telefono,Nombre,aPaterno,aMaterno,rfc,FormaPago) VALUES (101,14,'Hernández','maeillanes@hotmail.com','Password2','5575413600','Roberto','Hernández','Ramírez','HER8904241H0','TarCredito');
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,password,telefono,Nombre,aPaterno,aMaterno,rfc,FormaPago) VALUES (102,15,'Salinas','iabarcae@yahoo.es','Password8','5500145805','Ricardo','Salinas','Pliego','SAPR690207GH1','TarCredito');
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,password,telefono,Nombre,aPaterno,aMaterno,rfc,FormaPago) VALUES (103,16,'Guillen','guille@yahoo.es','Password74','5547892410','Felipe','Guillen','Díaz','GUDF950418GH1','TarCredito');
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,password,telefono,Nombre,aPaterno,aMaterno,rfc,FormaPago) VALUES (104,17,'Luiszam','luisiz@yahoo.es','Password78','5518452100','Luis','Zamora','Ortiz','ZAOL910624EH2','TarCredito');
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,password,telefono,Nombre,aPaterno,aMaterno,rfc,FormaPago) VALUES (105,18,'Carolina22','caro22@yahoo.es','Password79','550148563','Carolina','Cortes','Horta','COHC950409LH02','Transferencia');
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,password,telefono,Nombre,aPaterno,aMaterno,rfc,FormaPago) VALUES (106,19,'Gusi50','guss75@yahoo.es','Password25','5547851233','Gustavo','Lopez','Hernandez','LOHG900207DH1','Transferencia');
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,password,telefono,Nombre,aPaterno,aMaterno,rfc,FormaPago) VALUES (107,20,'Apo99','apolina5@yahoo.es','Password24','5548541278','Apolonio','Cruz','Bravo','CRBA871127GH1','TarCredito');
INSERT INTO Cliente(id_Cliente,FormaPago_id_FormaPago,Usuario,eMail,password,telefono,Nombre,aPaterno,aMaterno,rfc,FormaPago) VALUES (108,21,'sofia785','sof_ia75@yahoo.es','Password21','5565741328','Sofia','Cabrera','Camarillo','CACS820925FH2','Transferencia');

---
---3_Producto
----


-----peliculas
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (1, '6SDF', 'Pelicula', 15, 99.99, 8, 2, 0);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (2, '7GD', 'Pelicula', 40, 139.99, 4, 2, 0);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (3, '8GER', 'Pelicula', 45, 89.99, 5, 30, 1);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (4, '9JYT', 'Pelicula', 15, 99.99, 8, 9, 0);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (5, '10VFS', 'Pelicula', 4, 110.00, 7, 2, 0);


---album musical
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (16, '11SDS', 'Album musical', 48, 305.99, 15, 2, 1);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (17, '12HTD', 'Album musical', 95, 152.99, 14, 2, 0);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (18, '13SGS', 'Album musical', 35, 99.99, 45, 30, 1);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (19, '14GUP', 'Album musical', 94, 175.99, 36, 9, 0);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (12, '15SJO', 'Album musical', 40, 375.00, 7, 2, 0);

----videojuegos
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (31, '1A', 'Video Juego', 31, 755.99, 40, 9, 2);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (32, '2AA', 'Video Juego', 4, 431.99, 4, 2, 0);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (33, '2BA', 'Video Juego', 150, 999.99, 80, 69, 0);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (34, '4CAF', 'Video Juego', 4, 431.99, 4, 2, 0);
INSERT INTO Producto(id_Producto,folioAlfanumerico,tipoProducto,numVistas,precioVenta,copiasVendidas,copiasExistentes,copiasDefectuosas) VALUES (35, '5FEQ', 'Video Juego', 4, 999.99, 450, 300, 10);



---
--4_Pelicula
---
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(1,'La forma del agua','Thriller',1.05,'B15','Digital');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(2,'Pelicula 2','Thriller',1.25,'B15','Digital');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(3,'Pelicula 3','Thriller',1.48,'B15','Digital');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(4,'Pelicula 4','Thriller',1.40,'B15','Digital');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(5,'Pelicula 5','Thriller',1.35,'B15','Digital');

INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(6,'Pelicula 2','Thriller',1.98,'B15','DVD');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(7,'Pelicula 3','Thriller',1.87,'B15','Digital');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(8,'Pelicula 4','Thriller',1.45,'B15','Blue Ray');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(9,'Pelicula 5','Thriller',1.12,'B15','Digital');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(10,'Pelicula 5','Thriller',1.84,'B15','Digital');

INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(11,'Pelicula 2','Thriller',1.18,'B15','DVD');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(12,'Pelicula 3','Thriller',1.96,'B15','Digital');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(13,'Pelicula 4','Thriller',1.21,'B15','Blue Ray');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(14,'Pelicula 5','Thriller',1.18,'B15','Digital');
INSERT INTO Pelicula(Producto_id_Producto,NomPeli,Genero,Duracion,Clasificacion,FormatoVideo)VALUES(15,'Pelicula 5','Thriller',1.09,'B15','Digital');

---
--5_AlbumMusical
---

INSERT INTO AlbumMusical(Producto_id_Producto,NomCancion,Artista,Album,Disquera) VALUES(1,'La calma','Pastora Soler','La calma','EuroMusic');
INSERT INTO AlbumMusical(Producto_id_Producto,NomCancion,Artista,Album,Disquera) VALUES(2,'Caminos','yunkis','Lafauna','iStore');
INSERT INTO AlbumMusical(Producto_id_Producto,NomCancion,Artista,Album,Disquera) VALUES(3,'La soledad','Chuminos','Eliote','MCD');
INSERT INTO AlbumMusical(Producto_id_Producto,NomCancion,Artista,Album,Disquera) VALUES(4,'Hoy','Astrd','Sinfo','PPCDSALC');
INSERT INTO AlbumMusical(Producto_id_Producto,NomCancion,Artista,Album,Disquera) VALUES(5,'Otro dia','KF','RIKS','VFDD');

---
---6_VideoJuego
---
INSERT INTO VideoJuego(Producto_id_Producto,NomVjuego,Consola,Descripcion) VALUES (31,'Revenant Saga','PS3 ','¡Conviértete en un Revenant, descubre la verdad de la venganza en un juego en 3D!');
INSERT INTO VideoJuego(Producto_id_Producto,NomVjuego,Consola,Descripcion) VALUES (32,'The Experimental Bundle','PS3 ','Sumérgete en el mundo de Linger in Shadows');
INSERT INTO VideoJuego(Producto_id_Producto,NomVjuego,Consola,Descripcion) VALUES (33,'The Surfer','PS3 ','The Surfer es un arcade a puntos que permite jugar eligiendo una amplia variedad de sitios');
INSERT INTO VideoJuego(Producto_id_Producto,NomVjuego,Consola,Descripcion) VALUES (34,'Batman - The Telltale Series','PS3 ','Introdúcete en el espíritu fracturado de Bruce Wayne como el Dark Knight');
INSERT INTO VideoJuego(Producto_id_Producto,NomVjuego,Consola,Descripcion) VALUES (35,'DOA5LR: Luchadores básicos','PS4 ','Dead or Alive 5 Last Round: ¡la lucha de entretenimiento definitiva!');






-- 7_ModAdquisicion
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(1,'A');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(2,'B');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(3,'B');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(4,'C');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(5,'A');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(6,'E');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(7,'C');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(8,'E');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(9,'C');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(10,'A');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(11,'E');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(12,'A');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(13,'B');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(14,'A');
INSERT INTO ModAdquisicion(id_ModAdquisicion,TipoEnvio) VALUES(15,'B');




-- 8_OrdenCompra
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(1,1,100,100,'100');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(2,2,200,101,'200');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(3,3,300,102,'300');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(4,4,400,103,'400');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(5,5,500,104,'500');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(6,6,600,105,'600');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(7,7,700,106,'700');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(8,8,800,107,'800');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(9,9,900,108,'900');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(10,10,1000,109,'1000');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(11,11,1100,110,'1100');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(12,12,1200,111,'1200');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(13,13,1300,112,'1300');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(14,14,1400,113,'1400');
INSERT INTO OrdenCompra(id_OrdenCompra,Cliente_id_Cliente,Factura_id_FolioFactura,ModAdquisicion_id_ModAdquisicion,FolioOrdenCompra) VALUES(15,15,1500,114,'1500');



--- 9_Factura
INSERT INTO Factura(id_FolioFactura,FolioOrdenCompra,FormaPago_id_FormaPago,MontoTotalFactura,FechaGenEnvio,FormaPago,id_OrdenCompra) VALUES(100,'1001',1,100.0,TO_DATE('11/03/2017', 'dd/mm/yyyy'),'Transferencia',100);
INSERT INTO Factura(id_FolioFactura,FolioOrdenCompra,FormaPago_id_FormaPago,MontoTotalFactura,FechaGenEnvio,FormaPago,id_OrdenCompra) VALUES(200,'1002',2,200.0,TO_DATE('12/04/2017', 'dd/mm/yyyy'),'Tcredito',200);
INSERT INTO Factura(id_FolioFactura,FolioOrdenCompra,FormaPago_id_FormaPago,MontoTotalFactura,FechaGenEnvio,FormaPago,id_OrdenCompra) VALUES(300,'1003',3,300.0,TO_DATE('13/05/2017', 'dd/mm/yyyy'),'Transferencia',300);
INSERT INTO Factura(id_FolioFactura,FolioOrdenCompra,FormaPago_id_FormaPago,MontoTotalFactura,FechaGenEnvio,FormaPago,id_OrdenCompra) VALUES(400,'1004',4,400.0,TO_DATE('14/06/2017', 'dd/mm/yyyy'),'Tcredito',400);
INSERT INTO Factura(id_FolioFactura,FolioOrdenCompra,FormaPago_id_FormaPago,MontoTotalFactura,FechaGenEnvio,FormaPago,id_OrdenCompra) VALUES(500,'1005',5,500.0,TO_DATE('15/07/2017', 'dd/mm/yyyy'),'Transferencia',500);


---- 10_EnvioPaquete
INSERT INTO EnvioPaquete(id_EnvioPaquete,Factura_id_FolioFactura,FchaEnvio,numSeguimiento,EmpresaPaqueteria,MunicipioFactura,cpFactura,ColoniaFactura,CalleFactura,NumExteriorFactura) VALUES(1, 1, TO_DATE('11/03/2018', 'dd/mm/yyyy'), 1, "UPS", "Ecatepec", 04854, "Astros", "Soles", 45);
INSERT INTO EnvioPaquete(id_EnvioPaquete,Factura_id_FolioFactura,FchaEnvio,numSeguimiento,EmpresaPaqueteria,MunicipioFactura,cpFactura,ColoniaFactura,CalleFactura,NumExteriorFactura) VALUES(2, 2, TO_DATE('12/03/2018', 'dd/mm/yyyy'), 1, "Fedex", "Coacalco", 05654, "Luces", "Luna", 65);
INSERT INTO EnvioPaquete(id_EnvioPaquete,Factura_id_FolioFactura,FchaEnvio,numSeguimiento,EmpresaPaqueteria,MunicipioFactura,cpFactura,ColoniaFactura,CalleFactura,NumExteriorFactura) VALUES(3, 3, TO_DATE('13/03/2018', 'dd/mm/yyyy'), 1, "Flecha roja", "Cuernavaca", 04845, "Sur", "Postal", 48);
INSERT INTO EnvioPaquete(id_EnvioPaquete,Factura_id_FolioFactura,FchaEnvio,numSeguimiento,EmpresaPaqueteria,MunicipioFactura,cpFactura,ColoniaFactura,CalleFactura,NumExteriorFactura) VALUES(4, 4, TO_DATE('14/03/2018', 'dd/mm/yyyy'), 1, "Estafeta", "Guadalajara", 04024, "Norte", "Matias Romero", 129);
INSERT INTO EnvioPaquete(id_EnvioPaquete,Factura_id_FolioFactura,FchaEnvio,numSeguimiento,EmpresaPaqueteria,MunicipioFactura,cpFactura,ColoniaFactura,CalleFactura,NumExteriorFactura) VALUES(5, 5, TO_DATE('15/03/2018', 'dd/mm/yyyy'), 1, "Estrella", "Zapopan", 96854, "Olivos", "Luisa", 1576);

--- 11_Seguimiento
INSERT INTO Seguimiento(id_Seguimiento,EnvioPaquete_id_EnvioPaquete,FechaLlegada,HoraLlegada,Ubicacion,EstacionEscala) VALUES(1,1,'FechaLlegada','HoraLlegada','Ubicacion 1',001);
INSERT INTO Seguimiento(id_Seguimiento,EnvioPaquete_id_EnvioPaquete,FechaLlegada,HoraLlegada,Ubicacion,EstacionEscala) VALUES(2,2,'FechaLlegada','HoraLlegada','Ubicacion 2',002);
INSERT INTO Seguimiento(id_Seguimiento,EnvioPaquete_id_EnvioPaquete,FechaLlegada,HoraLlegada,Ubicacion,EstacionEscala) VALUES(3,3,'FechaLlegada','HoraLlegada','Ubicacion 3',003);
INSERT INTO Seguimiento(id_Seguimiento,EnvioPaquete_id_EnvioPaquete,FechaLlegada,HoraLlegada,Ubicacion,EstacionEscala) VALUES(4,4,'FechaLlegada','HoraLlegada','Ubicacion 4',004);
INSERT INTO Seguimiento(id_Seguimiento,EnvioPaquete_id_EnvioPaquete,FechaLlegada,HoraLlegada,Ubicacion,EstacionEscala) VALUES(5,5,'FechaLlegada','HoraLlegada','Ubicacion 5',005);



--- 12_Compra
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(1,1,100,'Video Juego',300,1);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(2,2,200,'Video Juego',400,1);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(3,3,300,'Video Juego',500,1);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(4,4,400,'Video Juego',600,1);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(5,5,100,'Video Juego',300,1);

INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(6,6,100,'Pelicula',600,2);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(7,7,200,'Pelicula',400,2);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(8,8,300,'Pelicula',500,2);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(9,9,400,'Pelicula',600,2);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(10,10,100,'Pelicula',300,2);

INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(11,11,100,'Album musical',700,1);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(12,12,200,'Album musical',800,1);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(13,13,300,'Album musical',900,1);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(14,14,400,'Album musical',300,1);
INSERT INTO Compra(Id_Compra,Producto_id_Producto,OrdenCompra_id_OrdenCompra,ProductoComprado,PrecioUnitario,Cantidad) VALUES(15,15,100,'Album musical',300,1);



--13_Tcredito

INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(1,01,'Visa',555,4848340526178171);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(2,02,'Visa',545,4028027558957067);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(3,03,'Visa',236,4222384909141329);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(4,04,'Master Card',288,5338033068035032);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(5,05,'American Express',455,373510159518627);

INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(6,06,'Visa',545,4848340526178172);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(7,07,'Visa',535,4028027558957069);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(8,08,'Visa',226,4222384909141323);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(9,09,'Master Card',298,5338033068035038);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(10,010,'American Express',415,373510159518622);

INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(11,011,'Visa',155,4848340526178177);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(12,012,'Visa',245,4028027558957064);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(13,013,'Visa',336,4222384909141324);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(14,014,'Master Card',488,5338033068035034);
INSERT INTO Tcredito(FormaPago_id_FormaPago,MesVen,TipoTarjeta(3),NumSeguridad,NumTarjeta) VALUES(15,015,'American Express',655,373510159518620);




--14_Transferencia


INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(1,000000154789645217);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(2,878982654684684844);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(3,877511154789645217);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(4,999881154789645217);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(5,555555154789645218);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(6,000000154789645214);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(7,878982654684684846);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(8,877511154789645214);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(9,999881154789645217);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(10,555555154789645917);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(11,000000154789647717);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(12,878982654684684864);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(13,877511154787649217);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(14,999881154789645213);
INSERT INTO Transferencia(FormaPago_id_FormaPago,CLABE) VALUES(15,555555154789645211);
-- 15_Streaming

INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(1,'www.Revenant/31A.com',100);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(2,'www.Experimental/32A.com',200);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(3,'www.Batman/34A.com',300);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(4,'www.DOA5LR/35A.com',400);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(5,'www.Revenant/31A.com',100);

INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(6,'www.Streaming/6.com',100);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(7,'www.Streaming/7.com',200);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(8,'www.Streaming/8.com',300);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(9,'www.Streaming/9.com',400);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(10,'www.Streaming/10.com',100);

INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(11,'www.Streaming/11.com',100);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(12,'www.Streaming/12.com',200);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(13,'www.Streaming/13.com',300);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(14,'www.Streaming/14.com',400);
INSERT INTO Streaming(ModAdquisicion_id_ModAdquisicion,URL,NumReproducciones)VALUES(15,'www.Streaming/15.com',100);


-- 16_Paqueteria

INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (1, i, 'Correcaminos', 'CODF01', '1');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (2, i, 'Castores', 'CADF02', '3');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'Flecha roja', 'FERDF07', '1');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'Apaches', 'APDF12', '4');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'DHL', 'DHLDF04', '7');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'UPS', 'UPSDF03', '7');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'Estafeta', 'ESDF05', '2');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'Fedex', 'FEDF06', '7');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'SEPOMEX', 'SMDF08', '5');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'Envia2', 'EnDF09', '4');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'Paquetes del sur', 'PSDF10', '5');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'Estrella', 'ESDF11', '1');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'Amanecer', 'AMDF13', '2');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'Nortes rapidos', 'NRDF14', '6');
INSERT INTO Paqueteria(ModAdquisicion_id_ModAdquisicion,EnvioPaquete_id_EnvioPaquete,Empresa,Clave,ZonaCobertura) VALUES (i, i, 'Viento veloz', 'VVDF15', '3');


---
--- 17_HistoricoPrecioProducto
---


INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (1,1,TO_DATE('2018/03/09','YYYY/MM/DD'),300);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (2,2,TO_DATE('2018/03/08','YYYY/MM/DD'),400);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (3,3,TO_DATE('2018/03/07','YYYY/MM/DD'),500);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (4,4,TO_DATE('2018/03/06','YYYY/MM/DD'),600);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (5,5,TO_DATE('2018/03/05','YYYY/MM/DD'),300);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (6,6,TO_DATE('2018/03/09','YYYY/MM/DD'),300);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (7,7,TO_DATE('2018/03/08','YYYY/MM/DD'),400);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (8,8,TO_DATE('2018/03/07','YYYY/MM/DD'),500);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (9,9,TO_DATE('2018/03/06','YYYY/MM/DD'),600);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (10,10,TO_DATE('2018/03/05','YYYY/MM/DD'),300);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (11,11,TO_DATE('2018/04/09','YYYY/MM/DD'),300);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (12,12,TO_DATE('2018/04/08','YYYY/MM/DD'),400);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (13,13,TO_DATE('2018/04/07','YYYY/MM/DD'),500);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (14,14,TO_DATE('2018/04/06','YYYY/MM/DD'),600);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (15,15,TO_DATE('2018/04/05','YYYY/MM/DD'),300);


INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (16,16,TO_DATE('2018/04/09','YYYY/MM/DD'),300);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (17,17,TO_DATE('2018/04/08','YYYY/MM/DD'),400);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (18,18,TO_DATE('2018/04/07','YYYY/MM/DD'),500);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (19,19,TO_DATE('2018/04/06','YYYY/MM/DD'),600);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (20,20,TO_DATE('2018/04/05','YYYY/MM/DD'),300);

INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (31,31,TO_DATE('2018/04/09','YYYY/MM/DD'),300);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (32,32,TO_DATE('2018/04/08','YYYY/MM/DD'),400);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (33,33,TO_DATE('2018/04/07','YYYY/MM/DD'),500);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (34,34,TO_DATE('2018/04/06','YYYY/MM/DD'),600);
INSERT INTO HistoricoPrecioProducto(id_PrecioHistorico,Producto_id_Producto,PeriodoPrecio,Precio) VALUES (35,35,TO_DATE('2018/04/05','YYYY/MM/DD'),300);
---Cerrando Transacción iVirtual Store 36
commit;

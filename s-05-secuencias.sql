/*
i) Este archivo contendrá la definición de todas
las secuencias necesarias para poder insertar
registros en tablas que requieran la generación
de valores secuenciales. Todas las secuencias
deberán iniciar en un número seleccionado por
el equipo.

*/

-- 
-- SEQUENCE_1: FormaPago
--

CREATE SEQUENCE FormaPago
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_2: Cliente
--

CREATE SEQUENCE Cliente
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_3: Producto
--

CREATE SEQUENCE Producto
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_4: Pelicula 
--

CREATE SEQUENCE Pelicula
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_5: AlbumMusical
--

CREATE SEQUENCE AlbumMusical
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_6: VideoJuego

CREATE SEQUENCE VideoJuego
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_7: ModAdquisicion 
--

CREATE SEQUENCE ModAdquisicion
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;
-------------------------------------
-- 
-- SEQUENCE_8: OrdenCompra
--

CREATE SEQUENCE OrdenCompra
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_9: Factura
--

CREATE SEQUENCE Factura
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_10: EnvioPaquete
--

CREATE SEQUENCE EnvioPaquete
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_11: Seguimiento
--

CREATE SEQUENCE Seguimiento
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_12: Compra
--

CREATE SEQUENCE Compra
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_13: Tcredito

CREATE SEQUENCE Tcredito
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_14: Transferencia
--

CREATE SEQUENCE Transferencia
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;


-------------------

-- 
-- SEQUENCE_15: Streaming

CREATE SEQUENCE Streaming
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-- 
-- SEQUENCE_16: Paqueteria
--

CREATE SEQUENCE Paqueteria
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;

-----------------

-- 
-- SEQUENCE_17: HistoricoPrecioProducto
--

CREATE SEQUENCE HistoricoPrecioProducto
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    NOORDER
;


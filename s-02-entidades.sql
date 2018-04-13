/*
**************
**TABLAS**
**************
*/

--Tabla: 1_Producto
CREATE TABLE Producto (
    id_producto   NUMBER(10,0) NOT NULL,
    folioAlfanumerico   VARCHAR2(13)    NOT NULL,
    tipoProducto        VARCHAR2(45)    NOT NULL,
    numVistas           NUMBER(10,0)    NOT NULL,
    precioVenta         NUMBER(10,2)    NOT NULL,
    copiasVendidas      NUMBER(10, 0)   DEFAULT 0 NOT NULL,
    copiasExistentes    NUMBER(10, 0)   DEFAULT 0 NOT NULL,
    copiasDefectuosas   NUMBER(10, 0)   DEFAULT 0 NOT NULL,
    CONSTRAINT p_id_producto_pk PRIMARY KEY (id_producto),
    CONSTRAINT p_folioAlfanumerico_uk UNIQUE (folioAlfanumerico)
);

--Tabla: 2_Pelicula
CREATE TABLE Pelicula (
    Producto_id_producto    NUMBER(10, 0)   NOT NULL,
    nomPeli                 VARCHAR2(45)    NOT NULL,
    genero                  VARCHAR2(45)    NOT NULL,
    duracion                NUMBER(10,2)    NOT NULL,
    clasificacion           VARCHAR2(45)    DEFAULT 'A' NOT NULL,
    formatoVideo            VARCHAR2(45)    NOT NULL,
    CONSTRAINT p_Producto_id_producto_pk PRIMARY KEY (Producto_id_producto),
    CONSTRAINT p_duracion_chk CHECK (duracion > 0),
    CONSTRAINT p_Producto_id_producto_fk FOREIGN KEY (Producto_id_producto)
      REFERENCES Producto(id_producto)
);

--Tabla: 3_AlbumMusical
CREATE TABLE AlbumMusical (
    Producto_id_producto    NUMBER(10, 0)   NOT NULL,
    nomCancion              VARCHAR2(45)    NOT NULL,
    artista                 VARCHAR2(45)    NOT NULL,
    album                   VARCHAR2(45)    NOT NULL,
    disquera                VARCHAR2(45)    NOT NULL,
    CONSTRAINT am_Producto_id_producto_pk PRIMARY KEY (Producto_id_producto),
    CONSTRAINT am_Producto_id_producto_fk FOREIGN KEY (Producto_id_producto)
      REFERENCES Producto(id_producto)
);

--Tabla: 4_VideoJuego
CREATE TABLE VideoJuego (
    Producto_id_producto    NUMBER(10, 0)   NOT NULL,
    nomVJuego               VARCHAR2(45)    NOT NULL,
    consola                 VARCHAR2(45)    NOT NULL,
    descripcion             VARCHAR2(100)   NOT NULL,
    CONSTRAINT vj_Producto_id_producto_pk PRIMARY KEY (Producto_id_producto),
    CONSTRAINT vj_Producto_id_producto_fk FOREIGN KEY (Producto_id_producto)
      REFERENCES Producto(id_producto)
);

--Tabla: 5_HistoricoPrecioProducto
CREATE TABLE HistoricoPrecioProducto (
    id_precioHistorico      NUMBER(10, 0)   NOT NULL,
    Producto_id_producto    NUMBER(10, 0)   NOT NULL,
    periodoPrecio           DATE            NOT NULL,
    precio                  NUMBER(10, 2)   NOT NULL,
    CONSTRAINT hpp_id_precioHistorico_pk PRIMARY KEY (id_precioHistorico),
    CONSTRAINT hpp_Producto_id_producto_uk UNIQUE (Producto_id_producto),
    CONSTRAINT hpp_Producto_id_producto_fk FOREIGN KEY (Producto_id_producto)
      REFERENCES Producto(id_producto)
);

--Tabla: 6_FormaPago
CREATE TABLE FormaPago (
    id_formaPago    NUMBER(10, 0)   NOT NULL,
    nomBanco        VARCHAR2(45)    NOT NULL,
    nomTitular      VARCHAR2(45)    NOT NULL,
    tipoPago        VARCHAR2(45)    NOT NULL,
    CONSTRAINT fp_id_formaPago_pk PRIMARY KEY (id_formaPago)
);

--Tabla: 7_Cliente
CREATE TABLE Cliente (
    id_cliente              NUMBER(10, 0)   NOT NULL,
    FormaPago_id_formaPago  NUMBER(10, 0)   NOT NULL,
    usuario                 VARCHAR2(45)    NOT NULL,
    eMail                   VARCHAR2(45)    NOT NULL,
    password                VARCHAR2(30)    NOT NULL,
    telefono                VARCHAR2(20)    NOT NULL,
    nombre                  VARCHAR2(45)    NOT NULL,
    aPaterno                VARCHAR2(45)    NOT NULL,
    aMaterno                VARCHAR2(45)    NOT NULL,
    rfc                     VARCHAR2(18)    NOT NULL,
    FormaPago               VARCHAR2(45)    NOT NULL,
    CONSTRAINT c_id_cliente_pk PRIMARY KEY (id_cliente),
    CONSTRAINT c_usuario_uk UNIQUE (usuario),
    CONSTRAINT c_eMail_uk UNIQUE (eMail),
    CONSTRAINT c_rfc_uk UNIQUE (rfc),
    CONSTRAINT c_FormaPago_id_formaPago_fk FOREIGN KEY (FormaPago_id_formaPago)
      REFERENCES FormaPago(id_formaPago)
);

--Tabla: 8_ModAdquisicion
CREATE TABLE ModAdquisicion (
    id_modAdquisicion   NUMBER(10, 0)   NOT NULL,
    tipoEnvio           VARCHAR2(45)    NOT NULL,
    CONSTRAINT ma_id_modAdquisicion_pk PRIMARY KEY (id_modAdquisicion)
);

--Tabla: 9_Streaming
CREATE TABLE Streaming (
    ModAdquisicion_id_modAdquisicion  NUMBER(10, 0)   NOT NULL,
    url                               VARCHAR2(100)   NOT NULL,
    numReproducciones                 NUMBER(10, 0)   NOT NULL,
    CONSTRAINT s_ModAdquisicion_id_modAdquisicion_pk PRIMARY KEY (ModAdquisicion_id_modAdquisicion),
    CONSTRAINT s_url_uk UNIQUE (url),
    CONSTRAINT s_ModAdquisicion_id_modAdquisicion_fk FOREIGN KEY (ModAdquisicion_id_modAdquisicion)
      REFERENCES ModAdquisicion(id_modAdquisicion)
);

--Tabla: 10_Transferencia
CREATE TABLE Transferencia (
    FormaPago_id_formaPago  NUMBER(10, 0)   NOT NULL,
    clabe                   NUMBER(30, 0)   NOT NULL,
    CONSTRAINT t_FormaPago_id_formaPago_pk PRIMARY KEY (FormaPago_id_formaPago),
    CONSTRAINT t_clabe_ik UNIQUE (clabe),
    CONSTRAINT t_FormaPago_id_formaPago_fk FOREIGN KEY (FormaPago_id_formaPago)
      REFERENCES FormaPago(id_formaPago)
);

--Tabla: 11_TarCredito
CREATE TABLE TarCredito (
    FormaPago_id_formaPago  NUMBER(10, 0)   NOT NULL,
    numTarjeta              NUMBER(20, 0)   NOT NULL,
    mesVen                  NUMBER(2, 0)    NOT NULL,
    anioVen                 NUMBER(2, 0)    NOT NULL,
    numSeg                  NUMBER(4, 0)    NOT NULL,
    tipoTarjeta             VARCHAR2(45)    NOT NULL,
    CONSTRAINT tc_FormaPago_id_formaPago_pk PRIMARY KEY (FormaPago_id_formaPago),
    CONSTRAINT tc_numTarjeta_uk UNIQUE (numTarjeta),
    CONSTRAINT tc_mesVen_chk CHECK (mesVen > 0),
    CONSTRAINT tc_anioVen_chk CHECK (anioVen > 0),
    CONSTRAINT tc_FormaPago_id_formaPago_fk FOREIGN KEY (FormaPago_id_formaPago)
      REFERENCES FormaPago(id_formaPago)
);

--Tabla: 12_Factura
CREATE TABLE Factura (
    id_folioFactura         NUMBER(10, 0)   NOT NULL,
    folioOrdenCompra        VARCHAR2(45)    NOT NULL,
    FormaPago_id_formaPago  NUMBER(10, 0)   NOT NULL,
    montoTotalFactura       NUMBER(10, 2)   NOT NULL,
    fechaGenEnvio           DATE            NOT NULL,
    formaPago               VARCHAR2(45)    NOT NULL,
    iva                     AS (montoTotalFactura * 0.16) VIRTUAL,
    id_ordenCompra          NUMBER(10, 0)   NOT NULL,
    CONSTRAINT f_id_folioFactura_pk PRIMARY KEY (id_folioFactura),
    CONSTRAINT f_folioOrdenCompra_uk UNIQUE (folioOrdenCompra),
    CONSTRAINT f_id_ordenCompra_uk UNIQUE (id_ordenCompra),
    CONSTRAINT f_FormaPago_id_formaPago_fk FOREIGN KEY (FormaPago_id_formaPago)
      REFERENCES FormaPago(id_formaPago)
);

--Tabla: 13_OrdenCompra
CREATE TABLE OrdenCompra (
    id_ordenCompra                   NUMBER(10, 0)   NOT NULL,
    Cliente_id_cliente               NUMBER(10, 0)   NOT NULL,
    Factura_id_folioFactura          NUMBER(10, 0)   NOT NULL,
    ModAdquisicion_id_modAdquisicion NUMBER(10, 0)   NOT NULL,
    folioOrdenCompra                 VARCHAR2(45)    NOT NULL,
    CONSTRAINT oc_id_ordenCompra_pk PRIMARY KEY (id_ordenCompra),
    CONSTRAINT oc_Cliente_id_cliente_fk FOREIGN KEY (Cliente_id_cliente)
      REFERENCES Cliente(id_cliente),
    CONSTRAINT oc_ModAdquisicion_id_modAdquisicion_fk FOREIGN KEY (ModAdquisicion_id_modAdquisicion)
      REFERENCES ModAdquisicion(id_modAdquisicion),
    CONSTRAINT oc_Factura_id_folioFactura_fk FOREIGN KEY (Factura_id_folioFactura)
      REFERENCES Factura(id_folioFactura)
);

--Tabla: 14_Compra
CREATE TABLE Compra (
    id_compra                   NUMBER(10, 0)   NOT NULL,
    Producto_id_producto        NUMBER(10, 0)   NOT NULL,
    OrdenCompra_id_ordenCompra  NUMBER(10, 0)   NOT NULL,
    productoComprado            VARCHAR2(45)    NOT NULL,
    precioUnitario              NUMBER(10, 2)   NOT NULL,
    cantidad                    NUMBER(10, 0)   NOT NULL,
    CONSTRAINT c_id_compra_pk PRIMARY KEY (id_compra),
    CONSTRAINT c_Producto_id_producto_fk FOREIGN KEY (Producto_id_producto)
      REFERENCES Producto(id_producto),
    CONSTRAINT c_OrdenCompra_id_ordenCompra_fk FOREIGN KEY (OrdenCompra_id_ordenCompra)
      REFERENCES OrdenCompra(id_ordenCompra)
);

--Tabla: 15_EnvioPaquete
CREATE TABLE EnvioPaquete (
    id_envioPaquete          NUMBER(10, 0)   NOT NULL,
    Factura_id_folioFactura  NUMBER(10, 0)   NOT NULL,
    fechaEnvio               DATE            NOT NULL,
    numSeguimiento           NUMBER(30, 0)   NOT NULL,
    empresaPaqueteria        VARCHAR2(45)    NOT NULL,
    escala                   NUMBER(3, 0),
    municipioFactura         VARCHAR2(45)    NOT NULL,
    cpFactura                NUMBER(7, 0)    NOT NULL,
    coloniaFactura           VARCHAR2(45)    NOT NULL,
    calleFactura             VARCHAR2(45)    NOT NULL,
    numExteriorFactura       NUMBER(6, 0)    NOT NULL,
    numInteriorFactura       NUMBER(6, 0),
    municipioEntrega         VARCHAR2(45),
    cpEntrega                NUMBER(7, 0),
    coloniaEntrega           VARCHAR2(45),
    calleEntrega             VARCHAR2(45),
    numExteriorEntrega       NUMBER(6, 0),
    numInteriorEntrega       NUMBER(6, 0),
    CONSTRAINT ep_id_envioPaquete_pk PRIMARY KEY (id_envioPaquete),
    CONSTRAINT ep_Factura_id_folioFactura_fk FOREIGN KEY (Factura_id_folioFactura)
      REFERENCES Factura(id_folioFactura)
);

--Tabla: 16_Paqueteria
CREATE TABLE Paqueteria (
    ModAdquisicion_id_modAdquisicion NUMBER(10, 0)   NOT NULL,
    EnvioPaquete_id_envioPaquete     NUMBER(10, 0)   NOT NULL,
    empresa                          VARCHAR2(45)    NOT NULL,
    clave                            VARCHAR2(45)    NOT NULL,
    zonaCobertura                    VARCHAR2(45)    NOT NULL,
    CONSTRAINT p_ModAdquisicion_id_modAdquisicion_pk PRIMARY KEY (ModAdquisicion_id_modAdquisicion),
    CONSTRAINT p_ModAdquisicion_id_modAdquisicion_fk FOREIGN KEY (ModAdquisicion_id_modAdquisicion)
      REFERENCES ModAdquisicion(id_modAdquisicion),
    CONSTRAINT p_EnvioPaquete_id_envioPaquete_fk FOREIGN KEY (EnvioPaquete_id_envioPaquete)
      REFERENCES EnvioPaquete(id_envioPaquete)
);

--Tabla: 17_Seguimiento
CREATE TABLE Seguimiento (
    id_seguimiento               NUMBER(10, 0)   NOT NULL,
    EnvioPaquete_id_envioPaquete NUMBER(10, 0)   NOT NULL,
    fechaLlegada                 DATE            NOT NULL,
    horaLlegada                  DATE            NOT NULL,
    ubicacion                    VARCHAR2(45)    NOT NULL,
    CONSTRAINT s_id_seguimiento_pk PRIMARY KEY (id_seguimiento),
    CONSTRAINT s_EnvioPaquete_id_envioPaquete_fk FOREIGN KEY (EnvioPaquete_id_envioPaquete)
      REFERENCES EnvioPaquete(id_envioPaquete)
);





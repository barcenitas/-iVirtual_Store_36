/*
**************
**SECUENCIAS**
**************
*/


/*
**************
**TABLAS**
**************
*/

--Tabla: Cliente
CREATE TABLE Cliente (
    id_cliente    NUMBER(10, 0)   NOT NULL,
    usuario       VARCHAR2(30)    NOT NULL,
    eMail         VARCHAR2(30)    NOT NULL,
    password      VARCHAR2(40)    NOT NULL,
    telefono      VARCHAR2(20)    NOT NULL,
    nombre        VARCHAR2(40)    NOT NULL,
    aPaterno      VARCHAR2(40)    NOT NULL,
    aMaterno      VARCHAR2(40),
    rfc           VARCHAR2(18)    NOT NULL,
    formaPago     VARCHAR2(40)    NOT NULL,
    CONSTRAINT c_id_cliente_pk PRIMARY KEY (id_cliente),
    CONSTRAINT c_usuario_uk UNIQUE (usuario),
    CONSTRAINT c_eMail_uk UNIQUE (eMail),
    CONSTRAINT c_rfc_uk UNIQUE (rfc)
);

--Tabla: Factura
CREATE TABLE Factura (
    id_folioFactura     NUMBER(10, 0)   NOT NULL,
    folioOrdenCompra    VARCHAR2(40)    NOT NULL,
    montoTotal          NUMBER(10, 2)   NOT NULL,
    fechaEnvio          DATE            NOT NULL,
    formaPago           VARCHAR2(40)    NOT NULL,
    iva                 NUMBER(10, 2)   NOT NULL,
    Cliente_id_cliente  NUMBER(10, 0)   NOT NULL,
    CONSTRAINT f_id_folioFactura_pk PRIMARY KEY (id_folioFactura),
    CONSTRAINT f_folioOrdenCompra_uk UNIQUE (folioOrdenCompra),
    CONSTRAINT f_Cliente_id_cliente_fk FOREIGN KEY (Cliente_id_cliente)
      REFERENCES Cliente(id_cliente)
);

--Tabla: Producto
CREATE TABLE Producto (
    id_producto               NUMBER(10, 0)   NOT NULL,
    folioAlfanum              VARCHAR2(40)    NOT NULL,
    url                       VARCHAR2(50)    NOT NULL,
    numVistas                 NUMBER(10, 0)   NOT NULL,
    nombre                    VARCHAR2(40)    NOT NULL,
    numRepro                  NUMBER(10, 0)   NOT NULL,
    precioVenta               NUMBER(10, 2)   NOT NULL,
    Pelicula_id_pelicula      NUMBER(10, 0)   NOT NULL,
    AlbumMusical_id_aMusical  NUMBER(10, 0)   NOT NULL,
    VideoJuego_id_vJuego      NUMBER(10, 0)   NOT NULL,
    CONSTRAINT p_id_producto_pk PRIMARY KEY (id_producto),
    CONSTRAINT p_folioAlfanum_uk UNIQUE (folioAlfanum),
    CONSTRAINT p_url_uk UNIQUE (url)
    --Me faltan 3 FK (cada producto), poner con un alter table
);

--Tabla: ArticuloVendido
CREATE TABLE ArticuloVendido (
    id_articulo               NUMBER(10, 0)   NOT NULL,
    nombre                    VARCHAR2(40)    NOT NULL,
    precioUnitario            NUMBER(10, 2)   NOT NULL,
    cantidad                  NUMBER(10, 0)   NOT NULL,
    Factura_id_folioFactura   NUMBER(10, 0)   NOT NULL,
    Producto_id_producto      NUMBER(10, 0)   NOT NULL,
    CONSTRAINT av_id_articulo_pk PRIMARY KEY (id_articulo),
    CONSTRAINT av_Factura_id_folioFactura_fk FOREIGN KEY (Factura_id_folioFactura)
      REFERENCES Factura(id_folioFactura),
    CONSTRAINT av_Producto_id_producto_fk FOREIGN KEY (Producto_id_producto)
      REFERENCES Producto(id_producto)
);

--Tabla: Pelicula
CREATE TABLE Pelicula (
    id_pelicula   NUMBER(10, 0)   NOT NULL,
    nomPeli       VARCHAR2(40)    NOT NULL,
    genero        VARCHAR2(40)    NOT NULL,
    duracion      NUMBER(10, 2)   NOT NULL,
    Clasificacion VARCHAR2(40)    DEFAULT 'A'     NOT NULL,
    formatoVideo  VARCHAR2(40)    DEFAULT 'MPEG'  NOT NULL,
    CONSTRAINT p_id_pelicula_pk PRIMARY KEY (id_pelicula),
    CONSTRAINT p_duracion_chk CHECK (duracion > 0)
);

--Tabla: AlbumMusical
CREATE TABLE AlbumMusical (
    id_aMusical   NUMBER(10, 0)   NOT NULL,
    nomCancion    VARCHAR2(40)    NOT NULL,
    artista       VARCHAR2(40)    NOT NULL,
    album         VARCHAR2(40)    NOT NULL,
    disquera      VARCHAR2(40)    DEFAULT 'Desconocida' NOT NULL,
    CONSTRAINT am_id_aMusical_pk PRIMARY KEY (id_aMusical)
);

--Tabla: VideoJuego
CREATE TABLE VideoJuego (
    id_vJuego   NUMBER(10, 0)   NOT NULL,
    nomVJuego   VARCHAR2(40)    NOT NULL,
    consola     VARCHAR2(40)    NOT NULL,
    descripcion VARCHAR2(100)   DEFAULT 'Sin descripcion' NOT NULL,
    CONSTRAINT vj_id_vJuego_pk PRIMARY KEY (id_vJuego)
);

--LLaves foráneas de Producto
ALTER TABLE Producto ADD
CONSTRAINT p_Pelicula_id_pelicula_fk
FOREIGN KEY (Pelicula_id_pelicula)
REFERENCES Pelicula(id_pelicula);

ALTER TABLE Producto ADD
CONSTRAINT p_AlbumMusical_id_aMusical_fk
FOREIGN KEY (AlbumMusical_id_aMusical)
REFERENCES AlbumMusical(id_aMusical);

ALTER TABLE Producto ADD
CONSTRAINT p_VideoJuego_id_vJuego_fk
FOREIGN KEY (VideoJuego_id_vJuego)
REFERENCES VideoJuego(id_vJuego);

--Tabla 

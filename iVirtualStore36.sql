--iVirtualStore36

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------

-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- FormaPago
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`FormaPago` (
  `id_FormaPago` INT NOT NULL,
  `NomBanco` VARCHAR(20) NOT NULL,
  `NomTitular` VARCHAR(20) NOT NULL,
  `TipoPago` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_FormaPago`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `id_Cliente` INT NOT NULL,
  `FormaPago_id_FormaPago` INT NOT NULL,
  `Usuario` VARCHAR(20) NOT NULL,
  `eMail` VARCHAR(20) NOT NULL,
  `Password` VARCHAR(10) NOT NULL,
  `Telefono` VARCHAR(15) NOT NULL,
  `Nombre` VARCHAR(20) NOT NULL,
  `aPaterno` VARCHAR(20) NOT NULL,
  `aMaterno` VARCHAR(20) NOT NULL,
  `RFC` VARCHAR(45) NULL,
  `FormaPago` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_Cliente`),
  INDEX `fk_Cliente_FormaPago1_idx` (`FormaPago_id_FormaPago` ASC),
  CONSTRAINT `fk_Cliente_FormaPago1`
    FOREIGN KEY (`FormaPago_id_FormaPago`)
    REFERENCES `mydb`.`FormaPago` (`id_FormaPago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Producto
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `id_Producto` INT NOT NULL,
  `FolioAlfanumerico` VARCHAR(13) NOT NULL,
  `TipoProducto` VARCHAR(45) NOT NULL,
  `NumVistas` INT NOT NULL,
  `PrecioVenta` DOUBLE NOT NULL,
  `CopiasVendidas` INT NOT NULL,
  `CopiasExistentes` INT NOT NULL,
  `CopiasDefectuosas` INT NOT NULL,
  PRIMARY KEY (`id_Producto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Pelicula
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pelicula` (
  `Producto_id_Producto` INT NOT NULL,
  `NomPeli` VARCHAR(45) NOT NULL,
  `Genero` VARCHAR(45) NOT NULL,
  `Duracion` VARCHAR(45) NOT NULL,
  `Clasificacion` VARCHAR(45) NOT NULL,
  `FormatoVideo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Producto_id_Producto`),
  INDEX `fk_Pelicula_Producto1_idx` (`Producto_id_Producto` ASC),
  CONSTRAINT `fk_Pelicula_Producto1`
    FOREIGN KEY (`Producto_id_Producto`)
    REFERENCES `mydb`.`Producto` (`id_Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- AlbumMusical
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`AlbumMusical` (
  `Producto_id_Producto` INT NOT NULL,
  `NomCancion` VARCHAR(45) NOT NULL,
  `Artista` VARCHAR(45) NOT NULL,
  `Album` VARCHAR(45) NOT NULL,
  `Disquera` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Producto_id_Producto`),
  INDEX `fk_AlbumMusical_Producto1_idx` (`Producto_id_Producto` ASC),
  CONSTRAINT `fk_AlbumMusical_Producto1`
    FOREIGN KEY (`Producto_id_Producto`)
    REFERENCES `mydb`.`Producto` (`id_Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- VideoJuego
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`VideoJuego` (
  `Producto_id_Producto` INT NOT NULL,
  `NomVjuego` VARCHAR(45) NOT NULL,
  `Consola` VARCHAR(20) NOT NULL,
  `Descripcion` TEXT(30) NOT NULL,
  PRIMARY KEY (`Producto_id_Producto`),
  INDEX `fk_VideoJuego_Producto1_idx` (`Producto_id_Producto` ASC),
  CONSTRAINT `fk_VideoJuego_Producto1`
    FOREIGN KEY (`Producto_id_Producto`)
    REFERENCES `mydb`.`Producto` (`id_Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- ModAdquisicion
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ModAdquisicion` (
  `id_ModAdquisicion` INT NOT NULL,
  `TipoEnvio` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_ModAdquisicion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- OrdenCompra
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`OrdenCompra` (
  `id_OrdenCompra` INT NOT NULL,
  `Cliente_id_Cliente` INT NOT NULL,
  `Factura_id_FolioFactura` INT NOT NULL,
  `ModAdquisicion_id_ModAdquisicion` INT NOT NULL,
  `FolioOrdenCompra` INT(10) NOT NULL,
  PRIMARY KEY (`id_OrdenCompra`),
  INDEX `fk_OrdenCompra_ModAdquisicion1_idx` (`ModAdquisicion_id_ModAdquisicion` ASC),
  INDEX `fk_OrdenCompra_Cliente1_idx` (`Cliente_id_Cliente` ASC),
  CONSTRAINT `fk_OrdenCompra_Cliente1`
    FOREIGN KEY (`Cliente_id_Cliente`)
    REFERENCES `mydb`.`Cliente` (`id_Cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrdenCompra_ModAdquisicion1`
    FOREIGN KEY (`ModAdquisicion_id_ModAdquisicion`)
    REFERENCES `mydb`.`ModAdquisicion` (`id_ModAdquisicion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Factura
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Factura` (
  `id_FolioFactura` INT NOT NULL,
  `FolioOrdenCompra` VARCHAR(45) NOT NULL,
  `FormaPago_id_FormaPago` INT NOT NULL,
  `MontoTotalFactura` DOUBLE NOT NULL,
  `FechaGenyEnvio` DATE NOT NULL,
  `FormaPago` VARCHAR(45) NOT NULL,
  `IVA` DOUBLE NOT NULL,
  `OrdenCompra_id_OrdenCompra` INT NOT NULL,
  PRIMARY KEY (`id_FolioFactura`),
  INDEX `fk_Factura_OrdenCompra1_idx` (`OrdenCompra_id_OrdenCompra` ASC),
  INDEX `fk_Factura_FormaPago1_idx` (`FormaPago_id_FormaPago` ASC),
  CONSTRAINT `fk_Factura_OrdenCompra1`
    FOREIGN KEY (`OrdenCompra_id_OrdenCompra`)
    REFERENCES `mydb`.`OrdenCompra` (`id_OrdenCompra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Factura_FormaPago1`
    FOREIGN KEY (`FormaPago_id_FormaPago`)
    REFERENCES `mydb`.`FormaPago` (`id_FormaPago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- EnvioPaquete
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EnvioPaquete` (
  `id_EnvioPaquete` INT NOT NULL,
  `Factura_id_FolioFactura` INT NOT NULL,
  `FechaEnvio` DATE NOT NULL,
  `numSeguimiento` INT(24) NOT NULL,
  `EmpresaPaqueteria` VARCHAR(45) NOT NULL,
  `Escala001` INT NOT NULL,
  `MunicipioFactura` VARCHAR(45) NULL,
  `C.P.Factura` INT NULL,
  `ColoniaFactura` VARCHAR(45) NULL,
  `CalleFactura` VARCHAR(45) NULL,
  `NumExteriorFactura` INT NULL,
  `NumInteriorFactura` INT NULL,
  `MunicipioEntrega` VARCHAR(45) NULL,
  `C.P.Entrega` INT NULL,
  `ColoniaEntrega` VARCHAR(45) NULL,
  `CalleEntrega` VARCHAR(45) NULL,
  `NumExteriorEntrega` INT NULL,
  `NumInteriorEntrega` INT NULL,
  PRIMARY KEY (`id_EnvioPaquete`),
  INDEX `fk_EnvioPaquete_Factura1_idx` (`Factura_id_FolioFactura` ASC),
  CONSTRAINT `fk_EnvioPaquete_Factura1`
    FOREIGN KEY (`Factura_id_FolioFactura`)
    REFERENCES `mydb`.`Factura` (`id_FolioFactura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Seguimiento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Seguimiento` (
  `id_Seguimiento` VARCHAR(45) NOT NULL,
  `EnvioPaquete_id_EnvioPaquete` INT NOT NULL,
  `FechaLlegada` DATE NOT NULL,
  `HoraLlegada` TIME(24) NOT NULL,
  `Ubicacion` VARCHAR(45) NOT NULL,
  `EstacionEscala` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Seguimiento`),
  INDEX `fk_Seguimiento_EnvioPaquete1_idx` (`EnvioPaquete_id_EnvioPaquete` ASC),
  CONSTRAINT `fk_Seguimiento_EnvioPaquete1`
    FOREIGN KEY (`EnvioPaquete_id_EnvioPaquete`)
    REFERENCES `mydb`.`EnvioPaquete` (`id_EnvioPaquete`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Compra
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Compra` (
  `Id_Compra` INT NOT NULL,
  `Producto_id_Producto` INT NOT NULL,
  `OrdenCompra_id_OrdenCompra` INT NOT NULL,
  `ProductoComprado` VARCHAR(20) NOT NULL,
  `PrecioUnitario` DOUBLE NOT NULL,
  `Cantidad` INT NOT NULL,
  PRIMARY KEY (`Id_Compra`),
  INDEX `fk_ProductoVendido_OrdenCompra1_idx` (`OrdenCompra_id_OrdenCompra` ASC),
  INDEX `fk_ProductoVendido_Producto1_idx` (`Producto_id_Producto` ASC),
  CONSTRAINT `fk_ProductoVendido_OrdenCompra1`
    FOREIGN KEY (`OrdenCompra_id_OrdenCompra`)
    REFERENCES `mydb`.`OrdenCompra` (`id_OrdenCompra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProductoVendido_Producto1`
    FOREIGN KEY (`Producto_id_Producto`)
    REFERENCES `mydb`.`Producto` (`id_Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tcredito
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tcredito` (
  `FormaPago_id_FormaPago` INT NOT NULL,
  `MesVen` VARCHAR(45) NOT NULL,
  `AñoVen` YEAR NOT NULL,
  `TipoTarjeta(3)` VARCHAR(20) NOT NULL,
  `NumSeguridad` INT NOT NULL,
  `NumTarjeta` INT NOT NULL,
  INDEX `fk_Tcredito_FormaPago1_idx` (`FormaPago_id_FormaPago` ASC),
  PRIMARY KEY (`FormaPago_id_FormaPago`),
  CONSTRAINT `fk_Tcredito_FormaPago1`
    FOREIGN KEY (`FormaPago_id_FormaPago`)
    REFERENCES `mydb`.`FormaPago` (`id_FormaPago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Transferencia
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Transferencia` (
  `FormaPago_id_FormaPago` INT NOT NULL,
  `CLABE` INT NOT NULL,
  PRIMARY KEY (`FormaPago_id_FormaPago`),
  INDEX `fk_Transferencia_FormaPago1_idx` (`FormaPago_id_FormaPago` ASC),
  CONSTRAINT `fk_Transferencia_FormaPago1`
    FOREIGN KEY (`FormaPago_id_FormaPago`)
    REFERENCES `mydb`.`FormaPago` (`id_FormaPago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Streaming
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Streaming` (
  `ModAdquisicion_id_ModAdquisicion` INT NOT NULL,
  `URL` VARCHAR(45) NOT NULL,
  `NumReproducciones` INT NOT NULL,
  PRIMARY KEY (`ModAdquisicion_id_ModAdquisicion`),
  INDEX `fk_Streaming_ModAdquisicion1_idx` (`ModAdquisicion_id_ModAdquisicion` ASC),
  CONSTRAINT `fk_Streaming_ModAdquisicion1`
    FOREIGN KEY (`ModAdquisicion_id_ModAdquisicion`)
    REFERENCES `mydb`.`ModAdquisicion` (`id_ModAdquisicion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Paqueteria
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Paqueteria` (
  `ModAdquisicion_id_ModAdquisicion` INT NOT NULL,
  `EnvioPaquete_id_EnvioPaquete` INT NOT NULL,
  `Empresa` VARCHAR(45) NOT NULL,
  `Clave` VARCHAR(45) NOT NULL,
  `ZonaCobertura` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ModAdquisicion_id_ModAdquisicion`),
  INDEX `fk_Paqueteria_ModAdquisicion1_idx` (`ModAdquisicion_id_ModAdquisicion` ASC),
  INDEX `fk_Paqueteria_EnvioPaquete1_idx` (`EnvioPaquete_id_EnvioPaquete` ASC),
  CONSTRAINT `fk_Paqueteria_ModAdquisicion1`
    FOREIGN KEY (`ModAdquisicion_id_ModAdquisicion`)
    REFERENCES `mydb`.`ModAdquisicion` (`id_ModAdquisicion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Paqueteria_EnvioPaquete1`
    FOREIGN KEY (`EnvioPaquete_id_EnvioPaquete`)
    REFERENCES `mydb`.`EnvioPaquete` (`id_EnvioPaquete`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- HistoricoPrecioProducto
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`HistoricoPrecioProducto` (
  `id_PrecioHistorico` INT NOT NULL,
  `Producto_id_Producto` INT NOT NULL,
  `PeriodoPrecio` DATE NOT NULL,
  `Precio` DOUBLE NOT NULL,
  PRIMARY KEY (`id_PrecioHistorico`),
  INDEX `fk_PrecioHistorico_Producto1_idx` (`Producto_id_Producto` ASC),
  CONSTRAINT `fk_PrecioHistorico_Producto1`
    FOREIGN KEY (`Producto_id_Producto`)
    REFERENCES `mydb`.`Producto` (`id_Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

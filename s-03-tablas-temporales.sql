/*
i) Diseñar un escenario donde se haga uso de una
o más tablas temporales. Se pueden crear
nuevas tablas en caso de ser necesario.
(1) Sugerencias para su implementación:
(a) Suponer que se desea consultar
datos de un conjunto de tablas, pero
por el nivel de normalización que
presentan, se decide crear una tabla
temporal para aplicar un proceso de
desnormalización e insertar los datos
de forma temporal. Por ejemplo,
suponer que se tiene una Jerarquía
Super tipo – Subtipos. Se decide
crear una tabla temporal que
contendrá todos los datos de la
Jerarquía.
(b) Simular un carrito de compras. El
contenido del carrito de compras se
puede guardar en una tabla temporal
y en el momento que el cliente
decida comprar, los datos se
consultan de la tabla temporal y se
insertan en las tablas permanentes.
(c) Suponer que se tiene que realizar
ciertos cálculos que provienen de la
consulta de varias tablas permanentes
como son: promedios, costos totales,
descuentos, ventas, etc. El resultado
de estos cálculos se puede guardar en
una tabla temporal para ser
consultados por algún cliente.

*/
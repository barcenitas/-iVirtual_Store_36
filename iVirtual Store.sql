/*
1. Caso iVirtual Store
iVirtual Store es una empresa que se dedica a la venta de productos multimedia a través de
su sitio Web. Los productos que ofrece la empresa son:
● Películas. Se requiere almacenar nombre de la película, genero, duración en
minutos, clasificación (A, B, C) y formato de video.
● Álbum musical. Se registra el nombre del artista o grupo musical, nombre del álbum,
año de creación, nombre de la disquera.
● Video juegos. Se registra el nombre del video juego, el tipo de consola en la que se
ejecuta, y una descripción en la cual se encuentran las instrucciones para jugarlo.
Estos productos pueden ser adquiridos en 2 modalidades: Compras en línea para ser
visualizados a través de internet (streaming) o en disco enviado por paquetería.
Para cada producto independientemente de su tipo se requiere almacenar lo siguiente:
● Precio de venta. Este precio puede variar conforme pasa el tiempo, se requiere
almacenar el periodo de tiempo en el que un producto tendrá un determinado precio.
● Folio de control alfanumérico de 13 caracteres que identifica a las características del
producto, el número de copias vendidas, el número de copias en existencia y el
número de copias defectuosas. Cuando llega un nuevo lote de copias a la tienda, si
los datos del producto ya existen, solo se aumenta el número de copias que llegaron
7a la tienda.
● URL o dirección de Streaming (para la modalidad de streaming), número de veces
que el producto ha sido visualizado.
●
Para poder realizar una compra, el cliente deberá registrarse en el sitio web. Se le solicitan
los siguientes campos: nombre, apellidos, usuario (máximo 20 caracteres), password
(máximo 10 caracteres) RFC (opcional), correo electrónico y teléfono.
Con la finalidad de enviar vía paquetería la compra realizada, se le solicitan los datos de su
dirección: calle, numero interior, numero exterior, colonia, código postal, municipio /
delegación y entidad federativa. Cabe mencionar que el cliente puede registrar hasta 2
direcciones, una que representa la dirección de entrega de su compra, y la otra la dirección
de facturación. Si se registra una sola, se emplea la misma tanto para facturar como para
enviarle al cliente la compra por paquetería. La tienda no cuenta con catálogos para la
dirección. Se registran todos los datos tal cual como se capturan en pantalla.
La empresa ofrece 2 formas de pago a sus clientes: Pago por tarjeta de crédito o por
transferencia. Para ambos casos se debe registrar el nombre del banco y el titular. Para las
tarjetas de crédito, se debe almacenar número de tarjeta, tipo de tarjeta (Master Card,
American Express o Visa), mes de vencimiento, año de vencimiento, y número de
seguridad. Para el caso de las transferencias bancarias, se solicita el número o clave
interbancaria (CLABE). Cuando el cliente se registra, se debe almacenar los datos de su
forma de pago seleccionada. El cliente puede registrar ambos tipos de formas de pago.
Cuando un cliente decide comprar uno o varios productos, se genera una orden de compra.
Esta orden se debe registrar el cliente que la solicita y un folio de compra formado por 10
dígitos. Se indica si la orden de compra se enviará por paquetería o si se hará uso del
servicio de Streaming (se pueden seleccionar ambas modalidades).
Se requiere registrar el detalle de la orden de compra que incluye lo siguiente: lista de
productos comprados con la cantidad y precio unitario.
El siguiente paso es la generación de la factura. El sistema deberá generar y registrar los
datos de la factura: Fecha de generación, orden de compra asociada, forma de pago, monto
total de la factura, número (folio) de factura e IVA.
El último proceso es la entrega de la orden de compra. La empresa envía el paquete a la
empresa de paquetería. Cabe mencionar que se cuenta con un catálogo de empresas de
paquetería. Se guarda nombre de la empresa, clave y zona de cobertura (A, B, o C).
Para cada paquete enviado a la empresa de paquetería se debe registrar: la factura
asociada, la empresa de paquetería a la que se envió, la fecha de envío y un número de
seguimiento de 24 caracteres.
Cada paquete a entregar cuenta con una trayectoria o seguimiento. En ella, el paquete
puede realizar varias escalas en diferentes lugares antes de llegar a su destino final. Cada
escala tiene un consecutivo iniciando en 001. La empresa de paquetería proporciona esta
información a iVirtual Store para que el cliente pueda realizar el seguimiento del paquete.
Los datos que se le envían son: lugar donde se encuentra el paquete, fecha y hora de
llegada.
*/
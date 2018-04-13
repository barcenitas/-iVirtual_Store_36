/*
i) Este script deberá invocar a todos los scripts
anteriores. Este script deberá ser ejecutado al
momento de realizar la entrega del proyecto.
ii) Se tomará en cuenta el correcto uso de
usuarios, es decir, utilizar a los usuarios Oracle
del sistema operativo y SYS de la base de datos
solo para cuestiones administrativas.
*/

Prompt Bienvenido a iVirtual Store 36

CONNECT sys/system AS sysdba

Prompt Conectando con iVirtual
Prompt Proporcione usuario y password (admin e invitado)

@@s-01-usuarios.sql

Prompt cargando objetos...

CONNECT bs_proy_admin/1234
@@s-02-entidades.sql

Prompt creando tablas temporales
CONNECT bm_proy_invitado/1234
@@s-03-tablas-temporales.sql

Prompt cargandpo...
CONNECT bs_proy_admin/1234
@@s-05-secuencias.sql

Prompt iVirtual está listo para atenderle! 






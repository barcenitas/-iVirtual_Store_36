--s-01-usuarios.sql
/*i) Este script contendrá la definición de 2
usuarios:
<iniciales>_proy_invitado
y
<iniciales>_proy_admin, donde <iniciales>
corresponden a la primera letra de cada
apellido paterno de cada integrante. El usuario
admin será el dueño de todos los objetos del
caso de estudio.
ii) Incluir en el script la definición de 2 roles:(1) rol_admin Contendrá todos los roles
necesarios para poder implementar el caso
de estudio asignado.
(2) rol_invitado.
Solo deberá tener
permisos para crear sesiones.
iii) Asignar a los usuarios admin e invitado los
roles
rol_admin
y
rol_invitado
respectivamente.*/

--1 Definicion de usuarios /crear usuarios
CONNECT sys/system AS sysdba

CREATE USER bs_proy_admin IDENTIFIED BY 1234 
       DEFAULT TABLESPACE data --system 
       TEMPORARY TABLESPACE temp
       QUOTA UNLIMITED ON data;----system

CREATE ROLE rol_admin;

GRANT CREATE session, CREATE table, CREATE view, 
      CREATE procedure,CREATE synonym,
      ALTER table, ALTER view, ALTER procedure,ALTER synonym,
      DROP table, DROP view, DROP procedure,DROP synonym,
      TO conn;

GRANT rol_admin TO bs_proy_admin;
--------------------------------------------------------------------------------------------------
CREATE USER bm_proy_invitado IDENTIFIED BY 1234 
       DEFAULT TABLESPACE data --system 
       TEMPORARY TABLESPACE temp
       QUOTA 1000M ON data;----system

CREATE ROLE rol_invitado;

GRANT CREATE session
      TO conn;
      
GRANT rol_invitado TO bm_proy_invitado;

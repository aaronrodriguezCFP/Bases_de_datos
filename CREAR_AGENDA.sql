-- Uso de DLL
drop database if exists agenda;
create database agenda;
use agenda;
create table contacto (
	dni char(9) primary key,
    nombre varchar(80),
    tlf char(12)
);
-- Uso del DML
insert into contacto values ('11111111A', 'pepe', '617778899');
insert into cintacto values ('22222222B', "Luis", "698887766");

select * from contacto;
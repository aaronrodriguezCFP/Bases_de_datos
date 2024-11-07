DROP DATABASE IF EXISTS ANIMALES; 
CREATE DATABASE ANIMALES;
USE ANIMALES;

CREATE TABLE familia (
idfamilia int primary key,
familia varchar(20)
);

CREATE TABLE animal (
idanimal int primary key,
idfamilia int,
animal varchar(50),
cuantos int,
FOREIGN KEY (idfamilia) REFERENCES familia(idfamilia)
);

insert into familia values (1, 'Aves');
insert into familia values (2, 'Mamíferos');
insert into familia values (3, 'Peces');
 
insert into animal values (1, 1, 'Garza Real', 3);
insert into animal values (2, 1, 'Cigüeña Blanca', 4);
insert into animal values (3, 1, 'Gorrión', 7);
 
insert into animal values (4, 2, 'Zorro', 3);
insert into animal values (5, 2, 'Lobo', 2);
insert into animal values (6, 2, 'Ciervo', 4);
 
insert into animal values (7, 3, 'Pez globo', 10);
insert into animal values (8, 3, 'Pez payaso', 12);
insert into animal values (9, 3, 'Angel llama', 15);

-- CONSULTAS TIPO SELECT 
SELECT * FROM familia;
SELECT * FROM animal ORDER BY animal ASC;
SELECT * FROM animal WHERE cuantos > 3;
SELECT * FROM animal ORDER BY cuantos ASC;
SELECT animal.animal, familia.familia, animal.cuantos 
FROM animal
INNER JOIN familia ON animal.idfamilia = familia.idfamilia;

-- ERRORES MYSQL
INSERT INTO familia (idfamilia, familia) VALUES (1, 'Reptiles');
INSERT INTO animal (idanimal, idfamilia, animal, cuantos) VALUES (10, 7, 'Serpiente', 2);
DELETE FROM familia WHERE idfamilia = 1;
INSERT INTO animal (idanimal, idfamilia, animal, cuantos) VALUES (11, 2, 'Tigre', 'dos');

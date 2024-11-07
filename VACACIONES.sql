DROP DATABASE IF EXISTS VACACIONES;
CREATE DATABASE VACACIONES;
USE VACACIONES;

CREATE TABLE CLIENTE (
	DNI CHAR(9) PRIMARY KEY,
    NOMBRE VARCHAR (100),
    TELEFONO VARCHAR(12)
);

CREATE TABLE ALOJAMIENTO (
	idAlojamiento int PRIMARY KEY,
	TIPO SET('Habitación', 'Casa Rural', 'Apartamento'),
    DOMICILIO VARCHAR(200),
    PERSONAS int
);

CREATE TABLE ALQUILER (
	DNICli CHAR(9),
    idAlojamiento INT,
    ENTRADA DATE,
    SALIDA DATE,
    foreign key (DNICli) references CLIENTE (DNI),
    foreign key (idAlojamiento) references ALOJAMIENTO(idAlojamiento)
    
);

-- Insertar 3 clientes
INSERT INTO CLIENTE (DNI, NOMBRE, TELEFONO) VALUES
('12345678A', 'Juan Pérez', '600123456'),
('87654321B', 'María García', '611987654'),
('11223344C', 'Carlos López', '622333444');

-- Insertar 4 alojamientos
INSERT INTO ALOJAMIENTO (idAlojamiento, TIPO, DOMICILIO, PERSONAS) VALUES
(1, 'Habitación', 'Calle Sol, 5', 2),
(2, 'Casa Rural', 'Calle Luna, 7', 8),
(3, 'Apartamento', 'Avenida Mar, 12', 4),
(4, 'Habitación', 'Calle Estrella, 3', 2);

-- Insertar 10 alquileres
INSERT INTO ALQUILER (DNICli, idAlojamiento, ENTRADA, SALIDA) VALUES
('12345678A', 1, '2024-07-01', '2024-07-07'),
('12345678A', 2, '2024-08-01', '2024-08-10'),
('12345678A', 3, '2024-09-01', '2024-09-05'),
('87654321B', 2, '2024-07-10', '2024-07-15'),
('87654321B', 4, '2024-08-01', '2024-08-07'),
('87654321B', 1, '2024-09-01', '2024-09-05'),
('11223344C', 3, '2024-07-01', '2024-07-10'),
('11223344C', 4, '2024-08-10', '2024-08-15'),
('11223344C', 2, '2024-09-01', '2024-09-07'),
('11223344C', 1, '2024-09-15', '2024-09-20');

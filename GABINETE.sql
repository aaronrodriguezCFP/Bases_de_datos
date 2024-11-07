DROP DATABASE IF EXISTS gabinete;
CREATE DATABASE IF NOT EXISTS gabinete;
USE gabinete;

CREATE TABLE Paciente (
    idPaciente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Telefono VARCHAR(50),
    Correo VARCHAR(50)
);

CREATE TABLE Psicologo (
    idPsicologo INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Telefono VARCHAR(50),
    Correo VARCHAR(50)
);

CREATE TABLE Cita (
    idCita INT PRIMARY KEY AUTO_INCREMENT,
    idPaciente INT,
    idPsicologo INT,
    Fecha DATE,
    Hora TIME,
    Modalidad SET('Presencial', 'Teléfono', 'Videollamada'),
    FOREIGN KEY (idPaciente) REFERENCES Paciente(idPaciente),
    FOREIGN KEY (idPsicologo) REFERENCES Psicologo(idPsicologo)
);

INSERT INTO Psicologo (Nombre, Apellido, Telefono, Correo) VALUES ('Ana', 'López', '600123123', 'ana.lopez@gmail.com');
INSERT INTO Psicologo (Nombre, Apellido, Telefono, Correo) VALUES ('Carlos', 'Martínez', '600456456', 'carlos.martinez@gmail.com');
INSERT INTO Psicologo (Nombre, Apellido, Telefono, Correo) VALUES ('Lucía', 'Gómez', '600789789', 'lucia.gomez@gmail.com');

INSERT INTO Paciente (Nombre, Apellido, Telefono, Correo) VALUES ('Juan', 'Pérez', '600123456', 'juan.perez@gmail.com');
INSERT INTO Paciente (Nombre, Apellido, Telefono, Correo) VALUES ('Marta', 'Sánchez', '600654321', 'marta.sanchez@gmail.com');
INSERT INTO Paciente (Nombre, Apellido, Telefono, Correo) VALUES ('Pedro', 'García', '600987654', 'pedro.garcia@gmail.com');
INSERT INTO Paciente (Nombre, Apellido, Telefono, Correo) VALUES ('Sara', 'López', '600321987', 'sara.lopez@gmail.com');
INSERT INTO Paciente (Nombre, Apellido, Telefono, Correo) VALUES ('Laura', 'Martín', '600654789', 'laura.martin@gmail.com');
INSERT INTO Paciente (Nombre, Apellido, Telefono, Correo) VALUES ('Javier', 'Moreno', '600789456', 'javier.moreno@gmail.com');
INSERT INTO Paciente (Nombre, Apellido, Telefono, Correo) VALUES ('Beatriz', 'Torres', '600123789', 'beatriz.torres@gmail.com');
INSERT INTO Paciente (Nombre, Apellido, Telefono, Correo) VALUES ('David', 'Hernández', '600456123', 'david.hernandez@gmail.com');
INSERT INTO Paciente (Nombre, Apellido, Telefono, Correo) VALUES ('Clara', 'Díaz', '600789123', 'clara.diaz@gmail.com');
INSERT INTO Paciente (Nombre, Apellido, Telefono, Correo) VALUES ('Mario', 'Ramírez', '600987321', 'mario.ramirez@gmail.com');

-- Citas para el psicólogo Ana López
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (1, 1, '2024-10-14', '10:00:00', 'Presencial');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (2, 1, '2024-10-15', '11:00:00', 'Videollamada');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (3, 1, '2024-10-16', '09:30:00', 'Teléfono');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (4, 1, '2024-10-16', '11:00:00', 'Presencial');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (5, 1, '2024-10-17', '14:00:00', 'Teléfono');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (6, 1, '2024-10-18', '15:30:00', 'Videollamada');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (7, 1, '2024-10-19', '09:00:00', 'Teléfono');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (8, 1, '2024-10-20', '10:00:00', 'Videollamada');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (1, 1, '2024-10-21', '12:00:00', 'Presencial');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (2, 1, '2024-10-22', '14:30:00', 'Teléfono');

-- Citas para el psicólogo Carlos Martínez
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (3, 2, '2024-10-15', '10:00:00', 'Presencial');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (4, 2, '2024-10-16', '09:00:00', 'Videollamada');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (5, 2, '2024-10-17', '11:30:00', 'Presencial');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (6, 2, '2024-10-18', '12:00:00', 'Teléfono');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (1, 2, '2024-10-19', '14:00:00', 'Presencial');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (2, 2, '2024-10-20', '15:00:00', 'Videollamada');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (7, 2, '2024-10-21', '11:00:00', 'Teléfono');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (8, 2, '2024-10-22', '14:30:00', 'Presencial');

-- Citas para el psicólogo Lucía Gómez
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (9, 3, '2024-10-15', '16:00:00', 'Presencial');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (10, 3, '2024-10-16', '10:00:00', 'Teléfono');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (1, 3, '2024-10-17', '09:00:00', 'Videollamada');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (2, 3, '2024-10-18', '11:30:00', 'Presencial');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (3, 3, '2024-10-19', '14:30:00', 'Videollamada');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (4, 3, '2024-10-20', '15:30:00', 'Teléfono');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (5, 3, '2024-10-21', '16:00:00', 'Presencial');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (6, 3, '2024-10-22', '10:30:00', 'Videollamada');

-- Más citas
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (7, 1, '2024-10-23', '14:00:00', 'Teléfono');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (8, 2, '2024-10-24', '10:00:00', 'Videollamada');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (9, 3, '2024-10-25', '15:00:00', 'Presencial');
INSERT INTO Cita (idPaciente, idPsicologo, Fecha, Hora, Modalidad) VALUES (10, 1, '2024-10-26', '11:00:00', 'Teléfono');


SELECT Nombre, Apellido
FROM Paciente 
ORDER BY Nombre ASC;

SELECT Cita.Fecha, Cita.Hora, Paciente.Nombre, Paciente.Apellido
FROM Cita
INNER JOIN Paciente ON Cita.idPaciente = Paciente.idPaciente
WHERE Cita.Fecha = CURDATE();

SELECT Cita.Fecha, Cita.Hora, Paciente.Nombre AS NombrePaciente, Paciente.Apellido AS ApellidoPaciente
FROM Cita
INNER JOIN Paciente ON Cita.idPaciente = Paciente.idPaciente
INNER JOIN Psicologo ON Cita.idPsicologo = Psicologo.idPsicologo
WHERE Psicologo.idPsicologo = 1 AND Cita.Fecha = '2024-10-15';

SELECT DISTINCT Paciente.Nombre AS NombrePaciente, Paciente.Apellido AS ApellidoPaciente
FROM Cita
INNER JOIN Paciente ON Cita.idPaciente = Paciente.idPaciente
WHERE Cita.Modalidad = 'Videollamada';


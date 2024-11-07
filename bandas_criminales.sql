DROP DATABASE IF EXISTS bandascriminales;
CREATE DATABASE bandascriminales;
USE bandascriminales;

-- Crear la tabla Investigador primero
CREATE TABLE Investigador (
    idInvestigador INT PRIMARY KEY,
    nombreInvestigador VARCHAR(100)
);

-- Crear la tabla Banda sin la clave foránea por ahora
CREATE TABLE Banda (
    idBanda INT PRIMARY KEY,
    nombreBanda VARCHAR(100),
    idJefe INT
);

-- Crear la tabla Miembro
CREATE TABLE Miembro (
    idMiembro INT PRIMARY KEY,
    nombreMiembro VARCHAR(100),
    idBanda INT,
    FOREIGN KEY (idBanda) REFERENCES Banda(idBanda)
);

-- Crear la tabla Delito
CREATE TABLE Delito (
    idDelito INT PRIMARY KEY,
    descripcion VARCHAR(255),
    fechaDelito DATE,
    idInvestigador INT,
    idBanda INT,
    FOREIGN KEY (idInvestigador) REFERENCES Investigador(idInvestigador),
    FOREIGN KEY (idBanda) REFERENCES Banda(idBanda)
);

-- Crear la tabla Victima
CREATE TABLE Victima (
    idVictima INT PRIMARY KEY,
    nombreVictima VARCHAR(100),
    idDelito INT,
    FOREIGN KEY (idDelito) REFERENCES Delito(idDelito)
);

-- Inserta datos en la tabla Investigador
INSERT INTO Investigador (idInvestigador, nombreInvestigador) 
VALUES 
(1, 'Carlos Sánchez'),
(2, 'María Fernández'),
(3, 'Javier Romero');

-- Inserta datos en la tabla Banda
INSERT INTO Banda (idBanda, nombreBanda, idJefe) 
VALUES 
(1, 'Los Salvajes', 10),
(2, 'Los Guerreros', 11),
(3, 'Los Destructores', 12);

-- Inserta datos en la tabla Miembro
INSERT INTO Miembro (idMiembro, nombreMiembro, idBanda) 
VALUES 
(10, 'Juan Pérez', 1),
(11, 'Luis García', 2),
(12, 'Ana Torres', 3),
(13, 'Carlos López', 1);

-- Ahora puedes actualizar la tabla Banda para agregar la clave foránea
ALTER TABLE Banda ADD FOREIGN KEY (idJefe) REFERENCES Miembro(idMiembro);

-- Inserta datos en la tabla Delito
INSERT INTO Delito (idDelito, descripcion, fechaDelito, idInvestigador, idBanda) 
VALUES 
(1, 'Robo a mano armada', '2024-10-20', 1, 1),
(2, 'Asalto en grupo', '2024-10-21', 2, 2),
(3, 'Vandalismo', '2024-10-22', 2, 3);

-- Inserta datos en la tabla Victima
INSERT INTO Victima (idVictima, nombreVictima, idDelito) 
VALUES 
(1, 'Pedro Gómez', 1),
(2, 'María Ruiz', 2),
(3, 'Sofía Martínez', 3);

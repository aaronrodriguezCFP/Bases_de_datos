DROP DATABASE IF EXISTS ALMACEN;
CREATE DATABASE ALMACEN; 
USE ALMACEN;

CREATE TABLE Categoria (
	idCategoria int primary key,
	Categoria varchar(25)
);
CREATE TABLE Producto (
	idProducto int primary key,
    idCategoria int,
    Nombre varchar(100),
    Precio float,
    Stock int,
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria)
);
INSERT INTO Categoria (idCategoria, Categoria) VALUES (1, 'Electrónica');
INSERT INTO Categoria (idCategoria, Categoria) VALUES (2, 'Ropa');
INSERT INTO Categoria (idCategoria, Categoria) VALUES (3, 'Hogar');
INSERT INTO Categoria (idCategoria, Categoria) VALUES (4, 'Deportes');
INSERT INTO Categoria (idCategoria, Categoria) VALUES (5, 'Juguetes');

INSERT INTO Producto (idProducto, idCategoria, Nombre, Precio, Stock) VALUES (1, 1, 'Televisor 4K', 499.99, 20);
INSERT INTO Producto (idProducto, idCategoria, Nombre, Precio, Stock) VALUES (2, 1, 'Smartphone', 299.99, 50);
INSERT INTO Producto (idProducto, idCategoria, Nombre, Precio, Stock) VALUES (3, 2, 'Camiseta Deportiva', 19.99, 100);
INSERT INTO Producto (idProducto, idCategoria, Nombre, Precio, Stock) VALUES (4, 2, 'Jeans Clásicos', 39.99, 60);
INSERT INTO Producto (idProducto, idCategoria, Nombre, Precio, Stock) VALUES (5, 3, 'Lámpara de Escritorio', 24.99, 30);
INSERT INTO Producto (idProducto, idCategoria, Nombre, Precio, Stock) VALUES (6, 3, 'Sofá 3 Plazas', 399.99, 10);
INSERT INTO Producto (idProducto, idCategoria, Nombre, Precio, Stock) VALUES (7, 4, 'Bicicleta de Montaña', 249.99, 15);
INSERT INTO Producto (idProducto, idCategoria, Nombre, Precio, Stock) VALUES (8, 4, 'Raqueta de Tenis', 59.99, 25);
INSERT INTO Producto (idProducto, idCategoria, Nombre, Precio, Stock) VALUES (9, 5, 'Muñeco de Acción', 14.99, 40);
INSERT INTO Producto (idProducto, idCategoria, Nombre, Precio, Stock) VALUES (10, 5, 'Set de Construcción', 29.99, 35);

INSERT INTO Producto VALUES (11, 2, 'Sudadera con Capucha', 25.99, 80);
INSERT INTO Producto VALUES (12, 2, 'Chaqueta de Cuero', 89.99, 35);
INSERT INTO Producto VALUES (13, 2, 'Pantalones Cortos', 15.99, 120);
INSERT INTO Producto VALUES (14, 2, 'Vestido de Verano', 45.99, 50);
INSERT INTO Producto VALUES (15, 2, 'Zapatos Deportivos', 59.99, 70);

INSERT INTO Producto VALUES (16, 3, 'Mesa de Comedor', 199.99, 25);
INSERT INTO Producto VALUES (17, 3, 'Silla de Oficina', 89.99, 40);
INSERT INTO Producto VALUES (18, 3, 'Cafetera Eléctrica', 49.99, 70);
INSERT INTO Producto VALUES (19, 3, 'Aspiradora', 129.99, 15);
INSERT INTO Producto VALUES (20, 3, 'Ventilador de Pie', 39.99, 50);

INSERT INTO Producto VALUES (21, 4, 'Pelota de Fútbol', 19.99, 100);
INSERT INTO Producto VALUES (22, 4, 'Guantes de Boxeo', 29.99, 50);
INSERT INTO Producto VALUES (23, 4, 'Cinta para Correr', 399.99, 10);
INSERT INTO Producto VALUES (24, 4, 'Pesas de Mano', 14.99, 80);
INSERT INTO Producto VALUES (25, 4, 'Traje de Neopreno', 99.99, 20);

INSERT INTO Producto VALUES (26, 5, 'Puzzle 1000 Piezas', 19.99, 200);
INSERT INTO Producto VALUES (27, 5, 'Pelota Saltarina', 9.99, 150);
INSERT INTO Producto VALUES (28, 5, 'Coche de Juguete', 24.99, 80);
INSERT INTO Producto VALUES (29, 5, 'Casa de Muñecas', 59.99, 40);
INSERT INTO Producto VALUES (30, 5, 'Juego de Mesa', 29.99, 60);

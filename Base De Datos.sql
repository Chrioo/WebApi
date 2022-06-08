Create  DataBase Bar1;

USE Bar1;

CREATE TABLE Productos
(
	idProducto INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	nomProd VARCHAR(50) NOT NULL,
	descripcion VARCHAR(100) NOT NULL,
	precio DECIMAL (5,2) NOT NULL,
	cantidad INT,
	estado INT
);

CREATE TABLE RegistroYLogin
(
	id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	nombreUsuario VARCHAR(30) NOT NULL,
	contraseña VARCHAR (15) NOT NULL,
	edad INT NOT NULL
);

INSERT INTO Productos VALUES ('Cubata', 'Guaraná', 0.90, 40, 1);
INSERT INTO Productos VALUES ('Chamaco', '250 ml', 3.00, 50, 1);
INSERT INTO Productos VALUES ('Agua', 'Mineral', 1.50, 100, 1);
INSERT INTO Productos VALUES ('Powerade', 'Limón', 1.50, 40, 1);
INSERT INTO Productos VALUES ('Tequila', '250 ml', 45.00, 0, 0);

SELECT * FROM Productos;

CREATE PROC LeerProducto
as
SELECT * FROM Productos
GO

CREATE PROC InsertarProductos
@nomprod VARCHAR(50),
@descripcion VARCHAR(100),
@precio DECIMAL(5,2),
@cantidad INT,
@estado INT
AS
INSERT INTO Productos VALUES(@nomprod, @descripcion, @precio, @cantidad, @estado)
GO

CREATE PROC ActualizarProductos
@idproducto INT,
@nomprod VARCHAR(50),
@descripcion VARCHAR(100),
@precio DECIMAL(5,2),
@cantidad INT,
@estado INT
AS
UPDATE Productos SET nomProd=@nomprod, descripcion=@descripcion, precio=@precio, cantidad=@cantidad, estado=@estado WHERE idProducto=@idproducto
GO

CREATE PROC EliminarProductos
@idprod INT
AS
DELETE FROM Productos WHERE idProducto=@idprod
GO
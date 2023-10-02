DROP DATABASE IF EXISTS CarShop2;
CREATE DATABASE CarShop2;
USE CarShop2;

CREATE TABLE Marca (
    ID_marca INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(50),
    Descripcion VARCHAR(400),
    imagenes VARCHAR(300)
);

CREATE TABLE Usuarios (
    ID_U INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Gmail VARCHAR(150) NOT NULL,
    Contraseña VARCHAR(150) NOT NULL,
    Nombre CHAR(100),
    Apellido1 CHAR(100),
    Apellido2 CHAR(100),
    Apellido3 CHAR(100)
);

CREATE TABLE Vehiculos (
    ID_V INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nombre CHAR(150),
    Precio FLOAT(13,2),
    Marca INT,
    Año_Creacion INT(4),
    Diseno VARCHAR(500),
    Rendimiento VARCHAR(500),
    Concepto VARCHAR(500),
    imagenes VARCHAR(300) NOT NULL,
    FOREIGN KEY (Marca) REFERENCES Marca(ID_marca) ON DELETE CASCADE
);

CREATE TABLE Registros (
    ID_R INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Usuario INT,
    Vehiculo INT,
    fecha DATE,
    FOREIGN KEY (Usuario) REFERENCES Usuarios(ID_U),
    FOREIGN KEY (Vehiculo) REFERENCES Vehiculos(ID_V) ON DELETE CASCADE
);

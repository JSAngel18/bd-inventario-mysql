DROP DATABASE IF EXISTS bd_inventario;

CREATE DATABASE bd_inventario
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;

USE bd_inventario;

CREATE TABLE area(
    idArea INT AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    descripcion VARCHAR(150),
    PRIMARY KEY(idArea),
    UNIQUE(nombre)
);

CREATE TABLE categoria(
    idCategoria INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY(idCategoria),
    UNIQUE(nombre)
);

CREATE TABLE empleado(
    idEmpleado INT AUTO_INCREMENT,
    dni CHAR(8) NOT NULL,
    nombres VARCHAR(60) NOT NULL,
    apellidos VARCHAR(60) NOT NULL,
    cargo VARCHAR(60),
    correo VARCHAR(80),
    telefono VARCHAR(20),
    idArea INT NOT NULL,
    PRIMARY KEY(idEmpleado),
    UNIQUE(dni),
    FOREIGN KEY(idArea)
        REFERENCES area(idArea)
);

CREATE TABLE equipo(
    codigo VARCHAR(10),
    idCategoria INT NOT NULL,
    nombre VARCHAR(80) NOT NULL,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    numeroSerie VARCHAR(50),
    fechaAdquisicion DATE,
    estado ENUM(
        'Disponible',
        'Prestado',
        'Mantenimiento',
        'Baja'
    ),
    ubicacion VARCHAR(80),
    idEmpleadoResponsable INT NOT NULL,
    idEmpleadoRegistro INT NOT NULL,
    PRIMARY KEY(codigo),
    UNIQUE(numeroSerie),
    FOREIGN KEY(idCategoria)
        REFERENCES categoria(idCategoria),
    FOREIGN KEY(idEmpleadoResponsable)
        REFERENCES empleado(idEmpleado),
    FOREIGN KEY(idEmpleadoRegistro)
        REFERENCES empleado(idEmpleado)
);
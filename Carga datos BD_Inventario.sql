
INSERT INTO area(nombre,descripcion)
VALUES
('Tecnología','Área de TI'),
('Recursos Humanos','Gestión del personal'),
('Contabilidad','Área financiera'),
('Logística','Control de activos'),
('Gerencia','Dirección General');

INSERT INTO categoria(nombre)
VALUES
('Laptop'),
('PC Escritorio'),
('Servidor'),
('Impresora'),
('Proyector');

INSERT INTO empleado(dni, nombres, apellidos, cargo, correo, telefono, idArea)
VALUES
('71234567', 'Juan', 'Pérez', 'Administrador TI', 'jperez@empresa.com', '987654321', 1),
('72345678', 'María', 'Torres', 'Analista', 'mtorres@empresa.com', '987654322', 2),
('73456789', 'Carlos', 'Rojas', 'Contador', 'crojas@empresa.com', '987654323', 3),
('74567890', 'Ana', 'Ramírez', 'Asistente Logístico', 'aramirez@empresa.com', '987654324', 4),
('75678901', 'Luis', 'Fernández', 'Gerente', 'lfernandez@empresa.com', '987654325', 5);

INSERT INTO equipo
VALUES
('EQ001', 1, 'Laptop Dell Latitude', 'Dell', 'Latitude 5540', 'SN001', '2024-02-15', 'Disponible', 'Laboratorio 1', 1, 1),
('EQ002', 2, 'PC HP', 'HP', 'EliteDesk', 'SN002', '2023-10-12', 'Prestado', 'Oficina RRHH', 2, 1),
('EQ003', 5, 'Proyector Epson', 'Epson', 'PowerLite', 'SN003', '2022-08-10', 'Disponible', 'Sala de reuniones', 5, 4);
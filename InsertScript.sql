-- Tabla Estado de Contrato
INSERT INTO Estados_Contrato (nombre, descripcion) VALUES
('Activo', 'Contrato vigente y en ejecución'),
('Inactivo', 'Contrato finalizado o cancelado'),
('Pendiente', 'Contrato en proceso de firma o aprobación');

-- Tabla Tipo de Propiedad
INSERT INTO Tipos_Propiedad (nombre, descripcion) VALUES
('Casa', 'Vivienda unifamiliar'),
('Apartamento', 'Vivienda en edificio multifamiliar'),
('Local Comercial', 'Espacio para negocio o comercio'),
('Terreno', 'Superficie de tierra sin construcción');

-- Tabla Estado de Propiedad
INSERT INTO Estados_Propiedad (nombre, descripcion) VALUES
('Disponible', 'Propiedad disponible para venta o arrendamiento'),
('Vendida', 'Propiedad ya vendida'),
('Arrendada', 'Propiedad actualmente arrendada'),
('En Mantenimiento', 'Propiedad en proceso de reparación o mejora');

-- Tabla de Personas
INSERT INTO Personas (nombre, apellido, telefono, email, direccion, ciudad, codigo_postal) VALUES
('Juan', 'Pérez', '555-1234', 'juan.perez@example.com', 'Calle Falsa 123', 'Ciudad de México', '12345'),
('María', 'Gómez', '555-5678', 'maria.gomez@example.com', 'Avenida Siempre Viva 456', 'Guadalajara', '67890'),
('Carlos', 'López', '555-9876', 'carlos.lopez@example.com', 'Boulevard Los Olivos 789', 'Monterrey', '54321'),
('Ana', 'Martínez', '555-4321', 'ana.martinez@example.com', 'Calle Real 321', 'Puebla', '98765');

-- Tabla de Propiedades
INSERT INTO Propiedades (id_propietario, id_asesor, id_tipo_propiedad, id_estado_propiedad, direccion, ciudad, codigo_postal, metros_cuadrados, habitaciones, banos, precio, fecha_creacion) VALUES
(1, 3, 1, 1, 'Calle Falsa 123', 'Ciudad de México', '12345', 150, 3, 2, 2500000.00, '2023-01-15'),
(2, 4, 2, 1, 'Avenida Siempre Viva 456', 'Guadalajara', '67890', 80, 2, 1, 1200000.00, '2023-02-20'),
(3, 3, 3, 1, 'Boulevard Los Olivos 789', 'Monterrey', '54321', 200, 4, 3, 3500000.00, '2023-03-10'),
(4, 4, 4, 1, 'Calle Real 321', 'Puebla', '98765', 500, 0, 0, 800000.00, '2023-04-05');

-- Tabla de Contratos de Arrendamiento
INSERT INTO Contratos_Arrendamiento (id_estado_contrato, id_propiedad, id_arrendatario, id_asesor, fecha_inicio, fecha_fin, renta_mensual, deposito) VALUES
(1, 3, 4, 3, '2023-07-01', '2024-06-30', 15000.00, 30000.00),
(1, 4, 1, 4, '2023-08-01', '2024-07-31', 10000.00, 20000.00);
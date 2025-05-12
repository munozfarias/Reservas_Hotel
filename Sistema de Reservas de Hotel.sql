CREATE DATABASE hotel_reservas;
USE hotel_reservas;

-- Creación de tabla Habitaciones
CREATE TABLE Habitaciones (
    habitacion_numero INT PRIMARY KEY,
    habitacion_tipo VARCHAR(50),
    capacidad INT,
    costo_por_noche DECIMAL(10, 2)
);

-- Creación de tabla Clientes
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    primer_nombre VARCHAR(100),
    apellido VARCHAR(100),
    direccion VARCHAR(255),
    email VARCHAR(100)
);

-- Creación de tabla Reservas
CREATE TABLE Reservas (
    reserva_id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    habitacion_numero INT,
    check_in_fecha DATE,
    check_out_fecha DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (habitacion_numero) REFERENCES Habitaciones(habitacion_numero)
);

-- Insertar datos en tabla Habitaciones
INSERT INTO Habitaciones (habitacion_numero, habitacion_tipo, capacidad, costo_por_noche)
VALUES
    (101, 'Single', 1, 50.00),
    (102, 'Double', 2, 80.00),
    (103, 'Suite', 4, 150.00);

-- Insertar datos en tabla Clientes
INSERT INTO Clientes (primer_nombre, apellido, direccion, email)
VALUES
    ('Juan', 'Pérez', 'Calle Falsa 123', 'juanperez@example.com'),
    ('Ana', 'Gomez', 'Avenida Siempre Viva 456', 'ana.gomez@example.com');

-- Insertar datos en tabla Reservas
INSERT INTO Reservas (id_cliente, habitacion_numero, check_in_fecha, check_out_fecha)
VALUES
    (1, 101, '2025-05-12', '2025-05-14'),
    (2, 102, '2025-05-13', '2025-05-15');
    
-- Ver todas las habitaciones
SELECT * FROM Habitaciones;

-- Ver todos los clientes
SELECT * FROM Clientes;

-- Ver todas las reservas
SELECT * FROM Reservas;

-- Ver las reservas de un cliente específico
SELECT * FROM Reservas WHERE id_cliente = 1;

-- Script SQL Server con errores para práctica de auditoría

CREATE TABLE Clientes (
    ID INT,
    NombreCliente VARCHAR(100),
    TelefonoCliente VARCHAR(50),
    Correo VARCHAR(100),
    Direccion TEXT
);

CREATE TABLE Pedidos (
    PedidoID INT,
    Cliente INT,
    FechaPedido DATE,
    Total DECIMAL(10,2),
    Estado DATE
);

CREATE TABLE Productos (
    ID INT,
    Nombre VARCHAR(100),
    Precio FLOAT,
    Stock VARCHAR(50)
);

CREATE TABLE DetallePedido (
    ID INT,
    Pedido INT,
    Producto INT,
    Cantidad TEXT,
    PrecioUnitario DECIMAL
);

CREATE TABLE Empleados (
    ID INT,
    NombreCompleto VARCHAR(200),
    Telefono VARCHAR(50),
    Correo VARCHAR(100),
    Rol TEXT
);

CREATE TABLE Sucursales (
    ID INT,
    Nombre VARCHAR(100),
    Ubicacion VARCHAR(100)
);

CREATE TABLE Inventario (
    ID INT,
    Producto INT,
    Sucursal INT,
    Existencia VARCHAR(30)
);

CREATE TABLE Proveedores (
    RazonSocial VARCHAR(100),
    Contacto VARCHAR(100),
    Telefono VARCHAR(50)
);

CREATE TABLE Compras (
    ID INT,
    Proveedor INT,
    Producto INT,
    FechaCompra DATE,
    Monto TEXT
);

CREATE TABLE Pagos (
    ID INT,
    Pedido INT,
    Metodo DATE,
    Monto VARCHAR(20),
    FechaPago TEXT
);

-- Observaciones:
-- 1. No hay claves primarias
-- 2. No hay claves foráneas explícitas
-- 3. Tipos de datos inconsistentes (ej. Cantidad como TEXT)
-- 4. Algunos campos están mal nombrados (Cliente, Producto, Pedido)
-- 5. Falta de normalización en Inventario y Pagos
-- 6. Se mezclan conceptos: Productos están repetidos en Inventario y Compras


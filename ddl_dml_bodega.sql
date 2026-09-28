-- ══════════════════════════════════════════
-- BodegaTech — Script de Inventario
-- Autor: Julian Di Marco
-- Fecha: 28/09/2026
-- ══════════════════════════════════════════

--SECCION DDL------------------------

DROP TABLE IF EXISTS inventario;

CREATE TABLE inventario(
id_producto INT NOT NULL IDENTITY (1,1), --valor unico para cada producto
nombre_producto VARCHAR(100) NOT NULL, --cadena de texto para el producto, puede contener numeros
categoria VARCHAR (50) NOT NULL, --cadena de texto para la categoria, no suele incluir numeros
precio_unitario DECIMAL (10,2) NOT NULL, --formato dinero hasta 10 cifras y 2 decimales
stock_actual INT NOT NULL, -- numero entero
stock_minimo INT NOT NULL, --numero entero
fecha_ingreso date not null, --fecha de ingreso sin horario
activo tinyint NOT NULL, --0 inactivo, 1 activo

CONSTRAINT PK_inventario PRIMARY KEY (id_producto)
);

-- SECCION DML -----------------

INSERT INTO inventario
(nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES
('Laptop Pro 15', 'Computacion', 1200.00, 15, 3, '2024-01-10', 1),
('Mouse Inalambrico', 'Accesorios', 28.00,	80,	10,	'2024-01-10',1),
('Monitor 4K 27"','Computacion', 450.00,	12,	2,	'2024-01-15', 1),
('Teclado Mecanico', 'Accesorios',	95.00,	40,	5,	'2024-01-15', 1),
('Laptop Basic 14','Computacion',	650.00,	20,	3,	'2024-02-01',	1),
('Auriculares BT Pro','Audio',	120.00,	35,	5,	'2024-02-01',	1),
('Hub USB-C 7 puertos',	'Accesorios',45.00,	60,	10,	'2024-02-10',	1),
('Webcam HD 1080p',	'Accesorios',	85.00,	25,	5,	'2024-02-10',	1),
('SSD Externo 1TB',	'Almacenamiento',	130.00,	18,	3,	'2024-03-01',	1),
('Parlante Bluetooth','Audio',	60.00,	45,	8,	'2024-03-01', 1);


UPDATE inventario set stock_actual = 12 
where id_producto = 1
UPDATE inventario set stock_actual = 68 
where id_producto = 2
UPDATE inventario set stock_actual = 30 
where id_producto = 6


UPDATE inventario set activo = 0 
where id_producto = 8

select *from inventario
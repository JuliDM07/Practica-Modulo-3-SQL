CREATE DATABASE Practica;
USE Practica;
--


CREATE TABLE Clientes(
id_cliente int NOT NULL IDENTITY(1,1) PRIMARY KEY, --integer porque debe ser un numero entero y dato unico
nombre VARCHAR (100) NOT NULL, -- varchar por ser texto sin numeros
perfil_bio text not null, --text porque es texto y puede contener numeros
fecha_registro date not null, --date porque se necesita la fecha
)
--
CREATE TABLE Productos(
id_producto int not null IDENTITY (1,1) PRIMARY KEY, ---integer porque debe ser un numero entero y dato unico
descripcion varchar(255), --texto hasta 255 caracteres
precio decimal (10,2) not null, --hasta 10 cifras y 2 decimales
esta_activo varchar(3) not null, -- iria comando 'YES' o 'NO'
)

SELECT * FROM Clientes;
SELECT * FROM Productos;
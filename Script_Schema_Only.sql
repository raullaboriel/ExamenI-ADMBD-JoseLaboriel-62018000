/*JOSE RAUL LABORIEL TORRES - 62018000*/

CREATE TABLE clientes (
id INT IDENTITY,
nombre VARCHAR(40) NOT NULL,
apellido VARCHAR(40) NOT NULL,
telefono VARCHAR(20) NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE proveedores (
id INT IDENTITY,
nombre VARCHAR(40) NOT NULL,
apellido VARCHAR(40) NOT NULL,
telefono VARCHAR(20) NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE ventas (
id INT IDENTITY,
cliente_id INT,
al_credito BIT NOT NULL,
fecha DATETIME NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (cliente_id) REFERENCES clientes(id)
)


CREATE TABLE compras (
id INT IDENTITY,
fecha DATETIME NOT NULL,
descripcion VARCHAR(40),
PRIMARY KEY (id)
)

CREATE TABLE creditos (
id INT IDENTITY,
cliente_id INT,
venta_id INT,
PRIMARY KEY (id),
FOREIGN KEY (cliente_id) REFERENCES clientes(id),
FOREIGN KEY (venta_id) REFERENCES ventas(id)
)

CREATE TABLE abonos (
id INT IDENTITY,
cliente_id INT,
credito_id INT,
fecha DATETIME NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (cliente_id) REFERENCES clientes(id),
FOREIGN KEY (credito_id) REFERENCES creditos(id)
)

CREATE TABLE productos (
id INT IDENTITY,
nombre VARCHAR(40) NOT NULL,
precio DECIMAL(15,3) NOT NULL,
preveedor_id INT,
PRIMARY KEY (id),
FOREIGN KEY (preveedor_id) REFERENCES proveedores(id)
)

CREATE TABLE inventario (
id INT IDENTITY,
producto_id INT,
existencias INT NOT NULL,
ganancia_del_30 BIT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (producto_id) REFERENCES productos(id)
)

CREATE TABLE compras_detalle (
id INT IDENTITY,
compra_id INT,
producto_id INT,
cantidad INT NOT NULL,
precio DECIMAL(15,3) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (compra_id) REFERENCES compras(id),
FOREIGN KEY (producto_id) REFERENCES productos(id)
)

CREATE TABLE ventas_detalle (
id INT IDENTITY,
venta_id INT,
producto_id INT,
cantidad INT NOT NULL,
precio DECIMAL(15,3) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (venta_id) REFERENCES ventas(id),
FOREIGN KEY (producto_id) REFERENCES productos(id)
)

CREATE TABLE encargos (
id INT IDENTITY,
compra_id INT,
fecha_de_entrega_prevista DATETIME NOT NULL,
fecha_de_entrega DATETIME,
PRIMARY KEY (id),
FOREIGN KEY (compra_id) REFERENCES compras(id)
)

CREATE TABLE gastos_casa (
id INT IDENTITY,
producto_id INT,
descripcion VARCHAR(40),
cantidad INT NOT NULL,
fecha DATETIME NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (producto_id) REFERENCES productos(id)
)

CREATE TABLE gastos_negocio (
id INT IDENTITY,
descripcion VARCHAR(40),
monto DECIMAL(15,3) NOT NULL,
PRIMARY KEY (id)
)

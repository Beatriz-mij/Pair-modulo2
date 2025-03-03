CREATE SCHEMA `tienda_zapatillas`;

USE `tienda_zapatillas`;

CREATE TABLE `zapatillas`(
	`id_zapatilla` INT AUTO_INCREMENT,
	`modelo` VARCHAR(45) NOT NULL,
    `color` VARCHAR(45) NOT NULL,
    PRIMARY KEY(`id_zapatilla`)
	);

CREATE TABLE `clientes`(
	`id_cliente` INT AUTO_INCREMENT,
	`nombre` VARCHAR(45) NOT NULL,
    `numero_telefono` INT NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `direccion` VARCHAR(45) NOT NULL,
    `ciudad` VARCHAR(45),
	`provincia` VARCHAR(45) NOT NULL,
    `pais` VARCHAR(45) NOT NULL,
	`codigo_postal` VARCHAR(45) NOT NULL,
    PRIMARY KEY(`id_cliente`)
    );

CREATE TABLE `empleados`(
	`id_empleado` INT AUTO_INCREMENT,
	`nombre` VARCHAR(45) NOT NULL,
    `tienda` VARCHAR(45) NOT NULL,
    `salario` INT,
    `fecha_incorporacion` DATE NOT NULL,
    PRIMARY KEY (`id_empleado`)
	);

CREATE TABLE `facturas`(
	`id_factura` INT AUTO_INCREMENT,
    `numero_factura` VARCHAR(45) NOT NULL,
    `fecha` DATE NOT NULL,
    `fk_zapatilla_id` INT NOT NULL,
    `fk_empleado_id` INT NOT NULL,
    `fk_cliente_id` INT NOT NULL,
    PRIMARY KEY(`id_factura`),
    CONSTRAINT `fk_facturas_zapatilla_id` 
		FOREIGN KEY (`fk_zapatilla_id`)
        REFERENCES `zapatillas`(`id_zapatilla`),
    CONSTRAINT `fk_facturas_empleado_id`
		FOREIGN KEY (`fk_empleado_id`)
        REFERENCES `empleados`(`id_empleado`),
    CONSTRAINT `fk_facturas_cliente_id`
		FOREIGN KEY(`fk_cliente_id`)
        REFERENCES `clientes`(`id_cliente`)
	);

CREATE DATABASE `duxdbentrega` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `rubro` (
  `id_rubro` int NOT NULL AUTO_INCREMENT,
  `rubro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rubro`),
  UNIQUE KEY `id_rubro_UNIQUE` (`id_rubro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `producto` (
  `codigo` varchar(45) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `id_rubro` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `id_rubro_idx` (`id_rubro`),
  CONSTRAINT `id_rubro` FOREIGN KEY (`id_rubro`) REFERENCES `rubro` (`id_rubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cliente` (
    `id_cliente` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(45) DEFAULT NULL,
    `apellido` VARCHAR(45) DEFAULT NULL,
    `cuit` INT DEFAULT NULL,
    PRIMARY KEY (`id_cliente`)
)  ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_0900_AI_CI;

CREATE TABLE `venta` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_unitario` double DEFAULT NULL,
  `codigo_producto` varchar(45) DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `codigo_producto_idx` (`codigo_producto`),
  KEY `id_cliente_idx` (`id_cliente`),
  CONSTRAINT `codigo_producto` FOREIGN KEY (`codigo_producto`) REFERENCES `producto` (`codigo`),
  CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

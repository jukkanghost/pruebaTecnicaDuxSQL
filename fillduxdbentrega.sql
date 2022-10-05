use duxdbentrega;

insert into
	rubro (rubro)
values
	("librería"),
    ("informatica"),
	("bazar");

insert into
	producto (codigo, nombre, fecha_creacion, id_rubro)
values
	("001", "papel", '2022-09-07', 1),
	("002", "carton", '2022-09-07', 1),
	("003", "lamina", '2022-09-07', 1),
	("004", "sacapuntas", '2022-07-07', 1),
	("005", "fibron", '2022-04-12', 1),
	("006", "silla", '2022-05-16', 3),
	("007", "mesa", '2022-02-22', 3),
	("008", "copa", '2022-01-17', 3),
	("009", "perchero", '2021-08-08', 3),
	("010", "wafflera", '2021-11-23', 2),
	("011", "ventilador", '2022-05-01', 2),
	("012", "procesadora", '2022-01-01', 3);

insert into
	cliente (nombre, apellido, cuit)
values
	("Francisco", "Daniele", '2040443'),
	("Agustina", "Fioretti", '2040443'),
	("Owen", "Palmero", '2040443'),
	("Julian", "Gonzalez", '2040443'),
	("Franco", "Perez", '2040443');

insert into
	venta (codigo_producto, fecha, cantidad, precio_unitario, id_cliente)
values
	("001", '2022-09-07', 3, 15, 1),
	("001", '2022-09-07', 5, 15, 3),
	("002", '2022-09-07', 48, 10, 3),
	("003", '2022-09-07', 5, 7, 4),
	("003", '2022-05-23', 5, 7, 4),
	("007", '2021-06-04', 1, 20, 2),
	("010", '2021-12-07', 1, 78, 1),
	("012", '2022-01-05', 1, 95, 2),
	("009", '2021-10-10', 2, 150, 2);
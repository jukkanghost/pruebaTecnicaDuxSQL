/* Todos los productos del rubro "librería" creados hoy */
use duxdbentrega;

SELECT 
    nombre, fecha_creacion, rubro
FROM
    producto
        JOIN
    rubro ON producto.id_rubro = rubro.id_rubro
WHERE
    rubro.rubro = 'librería'
        AND producto.fecha_creacion = DATE(NOW())


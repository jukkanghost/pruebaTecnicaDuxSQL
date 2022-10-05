/* Ventas que tienen al menos un producto del rubro "bazar" */
use duxdbentrega;

SELECT 
    venta.id_venta, producto.nombre, rubro.rubro
FROM
    venta
        JOIN
    producto ON codigo_producto = codigo
        JOIN
    rubro ON producto.id_rubro = rubro.id_rubro
WHERE
    rubro.rubro = 'bazar'
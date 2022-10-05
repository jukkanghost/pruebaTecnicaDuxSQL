/* Cantidad de ventas por producto */
use duxdb;
SELECT 
    nombre, SUM(cantidad) AS cantidad_ventas
FROM
    venta
        JOIN
    producto ON codigo_producto = codigo
GROUP BY codigo_producto

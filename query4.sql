/* Cantidad de productos comprados por cliente en el mes actual */
use duxdbentrega;

SELECT 
    cliente.nombre,
    producto.nombre,
    SUM(cantidad) AS cantidad_mes_actual
FROM
    venta
        JOIN
    producto ON codigo_producto = codigo
        JOIN
    cliente ON venta.id_cliente = cliente.id_cliente
WHERE
    MONTH(venta.fecha) = MONTH(NOW())
GROUP BY cliente.nombre

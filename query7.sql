/* Rubros que no tienen ventas en los últimos 2 meses */
use duxdb;
SELECT 
    rubro.rubro
FROM
    venta
        JOIN
    producto ON codigo_producto = codigo
        JOIN
    rubro ON producto.id_rubro = rubro.id_rubro
WHERE
    venta.fecha < DATE(NOW() - INTERVAL 2 MONTH)
        AND rubro.rubro NOT IN (SELECT 
            rubro.rubro
        FROM
            venta
                JOIN
            producto ON codigo_producto = codigo
                JOIN
            rubro ON producto.id_rubro = rubro.id_rubro
        WHERE
            venta.fecha >= DATE(NOW() - INTERVAL 2 MONTH)
        GROUP BY rubro.rubro)
GROUP BY rubro.rubro
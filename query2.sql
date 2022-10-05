/* Monto total vendido por cliente */
use duxdbentrega;

SELECT 
    nombre, SUM(cantidad * precio_unitario) AS total
FROM
    venta
        JOIN
    cliente USING (id_cliente)
GROUP BY id_cliente


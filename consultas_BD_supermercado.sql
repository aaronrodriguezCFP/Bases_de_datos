-- 1. Realiza un listado de clientes de Alemania, Francia o Inglaterra que sean todos ellos propietarios.
SELECT * FROM CLIENTE
WHERE PAIS IN('Alemania', 'Francia', 'Reino Unido')
AND CARGO = 'Propietario';

-- 2. Realiza un listado de productos cuyo precio esté comprendido entre 10 y 30 euros incluyendo el nombre de la categoría.
SELECT NOMBRE, CATEGORIA, MEDIDA, PRECIO, STOCK
FROM PRODUCTO INNER JOIN CATEGORIA
ON PRODUCTO.IDCATEGORIA = CATEGORIA.IDCATEGORIA
WHERE PRECIO >= 10 AND PRECIO <=30
ORDER BY NOMBRE ;

-- 3. Realiza un listado de detalles (ventas) incluyendo nombre y categoría del producto vendido. Debe quedar ordenado por nombre producto.
SELECT IDPEDIDO, NOMBRE, UNIDADES, DETALLE.PRECIO
FROM DETALLE INNER JOIN PRODUCTO
ON  DETALLE.IDPRODUCTO = PRODUCTO.IDPRODUCTO
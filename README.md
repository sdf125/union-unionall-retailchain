# RetailChain — UNION y UNION ALL

En esta práctica se trabajó con dos tablas de inventario correspondientes a distintas sucursales de RetailChain.

El objetivo fue comparar el comportamiento de `UNION` y `UNION ALL` al consolidar información de inventario.

## ¿Cuántas filas devuelve cada consulta y por qué son distintas?

La consulta con `UNION` devuelve menos filas porque elimina aquellas que son completamente duplicadas entre ambas consultas.

En este ejercicio, los productos con ID 103, 104 y 106 aparecen en ambas sucursales con el mismo ID, nombre y categoría. Por eso, al seleccionar esas columnas, `UNION` elimina las repeticiones.

En cambio, `UNION ALL` conserva todos los registros de ambas sucursales, incluso si existen productos repetidos.

## ¿Por qué UNION ALL es más eficiente que UNION?

`UNION ALL` es más eficiente porque simplemente combina los resultados de las consultas sin verificar si existen filas duplicadas.

`UNION`, en cambio, necesita realizar un proceso adicional para detectar y eliminar duplicados, lo que requiere más recursos.

## ¿En qué casos de negocio usaría cada uno?

Usaría `UNION` cuando necesite obtener una lista única, por ejemplo:

* Consolidar clientes únicos de diferentes campañas.
* Crear un catálogo único de productos de varias sucursales.

Usaría `UNION ALL` cuando necesite conservar todos los registros, por ejemplo:

* Combinar todas las ventas de distintas sucursales.
* Consolidar registros históricos de transacciones para analizar el volumen total.

## ¿Qué pasa si las columnas no coinciden?

Las consultas que se combinan mediante `UNION` o `UNION ALL` deben devolver la misma cantidad de columnas y en el mismo orden.

Además, los tipos de datos correspondientes deben ser compatibles.

Si una consulta devuelve una cantidad diferente de columnas o tipos incompatibles, SQL genera un error y no puede realizar la unión.

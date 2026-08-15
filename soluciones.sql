-- ══════════════════════════════════════════
-- RetailChain — UNION y UNION ALL
-- Autor: Florencia López
-- Fecha: [14/08/2026]
-- ══════════════════════════════════════════


-- ── CONSULTA 1: UNION ────────────────────
-- Reporte de Catálogo Unificado
-- Productos únicos comercializados por la empresa.

SELECT
    id_producto,
    nombre_producto,
    categoria
FROM inventario_sucursal_norte

UNION

SELECT
    id_producto,
    nombre_producto,
    categoria
FROM inventario_sucursal_sur;


-- ── CONSULTA 2: UNION ALL ────────────────
-- Auditoría de Stock Total
-- Se conservan todos los registros físicos.

SELECT
    id_producto,
    nombre_producto,
    categoria,
    stock
FROM inventario_sucursal_norte

UNION ALL

SELECT
    id_producto,
    nombre_producto,
    categoria,
    stock
FROM inventario_sucursal_sur;


-- ── CONSULTA 3: COMPARACIÓN ──────────────

SELECT COUNT(*) AS filas_union
FROM (
    SELECT
        id_producto,
        nombre_producto,
        categoria
    FROM inventario_sucursal_norte

    UNION

    SELECT
        id_producto,
        nombre_producto,
        categoria
    FROM inventario_sucursal_sur
) AS resultado_union;


SELECT COUNT(*) AS filas_union_all
FROM (
    SELECT
        id_producto,
        nombre_producto,
        categoria,
        stock
    FROM inventario_sucursal_norte

    UNION ALL

    SELECT
        id_producto,
        nombre_producto,
        categoria,
        stock
    FROM inventario_sucursal_sur
) AS resultado_union_all;
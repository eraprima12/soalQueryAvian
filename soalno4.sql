SELECT
    c.kode_toko,
    d.nama_sales
FROM table_area_sales c
JOIN (
    SELECT
        LEFT(kode_sales, 1) AS area,
        MAX(kode_sales) AS last_kode_sales
    FROM table_master_sales
    GROUP BY LEFT(kode_sales, 1)
) x
    ON c.area_sales = x.area
JOIN table_master_sales d
    ON d.kode_sales = x.last_kode_sales
ORDER BY c.kode_toko;

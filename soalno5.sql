SELECT
    d.nama_sales AS kode_baru,
    SUM(b.nominal_transaksi) AS nominal_transaksi
FROM table_penjualan b
LEFT JOIN table_history_kode_toko a
    ON b.kode_toko = a.kode_toko_lama
JOIN table_area_sales c
    ON c.kode_toko = COALESCE(a.kode_toko_baru, b.kode_toko)
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
GROUP BY d.nama_sales
ORDER BY d.nama_sales;

SELECT DISTINCT
    COALESCE(a.kode_toko_baru, b.kode_toko) AS kode_toko_baru
FROM table_penjualan b
LEFT JOIN table_history_kode_toko a
    ON b.kode_toko = a.kode_toko_lama
ORDER BY kode_toko_baru;

SELECT
    COALESCE(a.kode_toko_baru, b.kode_toko) AS kode_toko_baru,
    SUM(b.nominal_transaksi) AS nominal_transaksi
FROM table_penjualan b
LEFT JOIN table_history_kode_toko a
    ON b.kode_toko = a.kode_toko_lama
GROUP BY COALESCE(a.kode_toko_baru, b.kode_toko)
ORDER BY kode_toko_baru;

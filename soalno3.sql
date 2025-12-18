SELECT
    a.kode_toko_baru AS kode_baru,
    SUM(b.nominal_transaksi) AS nominal_transaksi
FROM table_penjualan b
JOIN table_history_kode_toko a
    ON b.kode_toko = a.kode_toko_lama
GROUP BY a.kode_toko_baru
ORDER BY nominal_transaksi DESC
LIMIT 1;

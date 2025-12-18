-- =========================
-- TABLE A : History Kode Toko
-- =========================
CREATE TABLE table_history_kode_toko (
    kode_toko_baru INT PRIMARY KEY,
    kode_toko_lama INT
);

INSERT INTO table_history_kode_toko VALUES
(1, 6),
(2, NULL),
(3, 7),
(4, 9),
(5, 8);

-- =========================
-- TABLE B : Penjualan
-- =========================
CREATE TABLE table_penjualan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    kode_toko INT,
    nominal_transaksi DECIMAL(12,2)
);

INSERT INTO table_penjualan (kode_toko, nominal_transaksi) VALUES
(1, 1000.00),
(2, 1000.00),
(4, 1000.00),
(6, 1000.00),
(7, 1000.00);

-- =========================
-- TABLE C : Area Sales
-- =========================
CREATE TABLE table_area_sales (
    kode_toko INT PRIMARY KEY,
    area_sales CHAR(1)
);

INSERT INTO table_area_sales VALUES
(1, 'A'),
(2, 'A'),
(3, 'A'),
(4, 'B'),
(5, 'B');

-- =========================
-- TABLE D : Master Sales
-- =========================
CREATE TABLE table_master_sales (
    kode_sales VARCHAR(5) PRIMARY KEY,
    nama_sales VARCHAR(50)
);

INSERT INTO table_master_sales VALUES
('A1', 'Alpha'),
('A2', 'Blue'),
('A3', 'Charlie'),
('B1', 'Delta'),
('B2', 'Echo');

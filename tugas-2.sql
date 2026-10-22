-- 1. CREATE
INSERT INTO pelanggan (nama_pelanggan, no_telepon, alamat) VALUES
('Wahyu Santoso', '081287923890', 'Jl. Merdeka No. 10, Madiun'),
('Siti Bambang',  '082342344901', 'Jl. Pahlawan No. 25, Bojonegoro'),
('Cahya Wijaya',  '085234789012', 'Jl. Diponegoro No. 7, Madiun');

INSERT INTO produk (nama_produk, harga, stok) VALUES
('Beras 5 Kg',      65000.00, 23),
('Minyak Goreng',   18000.00, 105),
('Gula Pasir 1 Kg', 15000.00, 83);

INSERT INTO penjualan (tanggal, id_pelanggan, id_produk, jumlah) VALUES
('2026-10-10 09:34:34', 1, 1, 2),
('2026-10-29 14:15:04', 2, 2, 3),
('2026-10-20 10:23:30', 3, 3, 5);

-- 2. READ
SELECT * FROM pelanggan;

-- 3. UPDATE
UPDATE penjualan
SET jumlah = 4
WHERE id_penjualan = 2;

-- 4. DELETE
DELETE FROM penjualan
WHERE id_penjualan = 3;
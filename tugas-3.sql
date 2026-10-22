-- SELECT
SELECT pelanggan.nama_pelanggan,
       SUM(penjualan.jumlah * produk.harga) AS total_belanja
FROM penjualan

-- JOIN
JOIN pelanggan ON penjualan.id_pelanggan = pelanggan.id_pelanggan
JOIN produk ON penjualan.id_produk = produk.id_produk

-- WHERE
WHERE penjualan.tanggal >= '2026-10-01'

-- GROUP BY
GROUP BY pelanggan.nama_pelanggan;
-- 1. Tabel pemasok
CREATE TABLE pemasok (
    id_pemasok INT AUTO_INCREMENT PRIMARY KEY,
    nama_pemasok VARCHAR(100) NOT NULL,
    kontak VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    nomor_rekening VARCHAR(30),
    nama_bank VARCHAR(50)
);

-- 2. Tabel produk
CREATE TABLE produk (
    id_produk INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(100) NOT NULL,
    harga_satuan DECIMAL(15,2) NOT NULL CHECK (harga_satuan >= 0)
);

-- 3. Tabel kas_usaha
CREATE TABLE kas_usaha (
    id_kas INT AUTO_INCREMENT PRIMARY KEY,
    nama_kas VARCHAR(50) NOT NULL,
    jenis_kas VARCHAR(20) NOT NULL,
    saldo_terkini DECIMAL(15,2) NOT NULL DEFAULT 0 CHECK (saldo_terkini >= 0)
);

-- 4. Tabel transaksi
CREATE TABLE transaksi (
    id_transaksi INT AUTO_INCREMENT PRIMARY KEY,
    tanggal_transaksi DATE NOT NULL,
    jenis_transaksi VARCHAR(20) NOT NULL,
    total_nilai DECIMAL(15,2) NOT NULL CHECK (total_nilai >= 0)
);

-- 5. Tabel faktur_pembelian
CREATE TABLE faktur_pembelian (
    id_faktur INT AUTO_INCREMENT PRIMARY KEY,
    id_transaksi INT NOT NULL UNIQUE,
    id_pemasok INT NOT NULL,
    nomor_faktur VARCHAR(50) NOT NULL UNIQUE,
    tanggal_terbit DATE NOT NULL,
    tanggal_jatuh_tempo DATE NOT NULL,
    total_tagihan DECIMAL(15,2) NOT NULL CHECK (total_tagihan >= 0),
    status_pembayaran VARCHAR(20) NOT NULL DEFAULT 'Belum Bayar',
    CONSTRAINT fk_faktur_transaksi FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi),
    CONSTRAINT fk_faktur_pemasok FOREIGN KEY (id_pemasok) REFERENCES pemasok(id_pemasok),
    CONSTRAINT chk_tanggal_faktur CHECK (tanggal_jatuh_tempo >= tanggal_terbit)
);

-- 6. Tabel pembayaran
CREATE TABLE pembayaran (
    id_pembayaran INT AUTO_INCREMENT PRIMARY KEY,
    id_faktur INT NOT NULL,
    id_kas INT NOT NULL,
    id_produk INT NOT NULL,
    tanggal_pembayaran DATE NOT NULL,
    jumlah_unit DECIMAL(15,2) NOT NULL CHECK (jumlah_unit > 0),
    harga_satuan DECIMAL(15,2) NOT NULL CHECK (harga_satuan >= 0),
    subtotal DECIMAL(15,2) NOT NULL CHECK (subtotal >= 0),
    CONSTRAINT fk_pembayaran_faktur FOREIGN KEY (id_faktur) REFERENCES faktur_pembelian(id_faktur),
    CONSTRAINT fk_pembayaran_kas FOREIGN KEY (id_kas) REFERENCES kas_usaha(id_kas),
    CONSTRAINT fk_pembayaran_produk FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);
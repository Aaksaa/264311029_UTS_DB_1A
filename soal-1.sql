CREATE TABLE pelanggan (
    id_pelanggan   INT PRIMARY KEY AUTO_INCREMENT,
    nama_pelanggan VARCHAR(50) NOT NULL,
    no_telepon     VARCHAR(15),
    alamat         VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE produk (
    id_produk   INT PRIMARY KEY AUTO_INCREMENT,
    nama_produk VARCHAR(50) NOT NULL,
    harga       DECIMAL(12,2) NOT NULL,
    stok        INT NOT NULL DEFAULT 0
) ENGINE=InnoDB;

CREATE TABLE penjualan (
    id_penjualan INT PRIMARY KEY AUTO_INCREMENT,
    tanggal      DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_pelanggan INT NOT NULL,
    id_produk    INT NOT NULL,
    jumlah       INT NOT NULL,

    CONSTRAINT fk_penjualan_pelanggan
        FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
    CONSTRAINT fk_penjualan_produk
        FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
) ENGINE=InnoDB;

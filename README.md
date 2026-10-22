This is an Database's Exam at Middle Semesters. Here's the full question in Indonesian Language:


```
SOAL 1: Data Definition & Relasi [Bobot: 40%]
(SCPMK0720801 - DDL & Relasi) Pembuatan struktur fisik dan ketepatan relasi.

Pilihlah 3 tabel dari proyek kelompok Anda yang saling berelasi (Contoh: 2 Tabel Induk/Master dan 1 Tabel Transaksi/Anak).
Tuliskan kode SQL CREATE TABLE untuk ketiga tabel tersebut!
Syarat Wajib:
Tentukan tipe data yang rasional dan Primary Key yang valid.
Harus ada deklarasi FOREIGN KEY yang menghubungkan Tabel Transaksi dengan kedua Tabel Induk.
SOAL 2: Operasi CRUD Dasar [Bobot: 50%]
(SCPMK0720802 - CRUD Dasar) Manipulasi baris data dasar.

Berdasarkan 3 tabel yang telah Anda buat di Soal 1, lakukan urutan operasi operasional berikut menggunakan kode SQL:

[CREATE] Lakukan INSERT minimal 3 baris data dummy ke masing-masing tabel (total 9 baris data).
[READ] Tampilkan seluruh isi salah satu Tabel Induk menggunakan perintah SELECT *.
[UPDATE] Ubah satu nilai data (misal: mengubah harga, mengubah status, atau memperbaiki nama) pada Tabel Transaksi. Wajib menggunakan klausa WHERE pada Primary Key agar tidak terjadi update massal.
[DELETE] Hapus salah satu baris data dummy pada Tabel Transaksi. Wajib menggunakan klausa WHERE.
SOAL 3: Query Kompleks & Agregasi Laporan [Bobot: 10%]
(SCPMK0720803 - WHERE, JOIN, Aggregasi) Ekstraksi Penarikan Data

Sistem aplikasi proyek Anda membutuhkan sebuah "Laporan Ringkasan".

Buatlah SATU perintah SQL query tunggal yang harus memuat keempat komponen ini sekaligus dalam satu sintaks:

SELECT: Menampilkan minimal satu nama kolom dari Tabel Induk dan satu hasil fungsi agregat (contoh: SUM(), COUNT(), AVG()).
JOIN: Menggabungkan minimal 2 tabel (Tabel Induk dan Tabel Transaksi) agar data yang ditarik relevan.
WHERE: Mem-filter/menyaring data berdasarkan kondisi tertentu (misal: hanya transaksi yang statusnya 'Selesai', atau tanggal tertentu).
GROUP BY: Mengelompokkan hasil agregasi berdasarkan atribut induk (misal: dikelompokkan per Nama Pelanggan, atau per Nama Kategori).
Contoh ada tabel mahasiswa (id_mhs, nama_mhs) dan rps (id_mhs, id_mk, sks), kita ingin mendapatkan total sks yang ditempuh dari tiap mahasiswa

SELECT nama_mhs, nama_mk, COUNT(sks) as sks_ditempuh

FROM rps a

JOIN mahasiswa  b ON a.id_mhs = b. id_mhs

GROUP BY a.nama_mhs

Hasilnya

| nama_mhs	| sks_ditempuh |
| budi |	13 |
| anis |	20 |

```

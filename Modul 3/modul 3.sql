-- Nama  : Rido juana
-- NIM   : 24241036
-- Kelas : A
-- Modul : 3 

-- Nilai Literal, Operator Matematika, Perbandingan, Logika
-- Fungsi Matematika dan Tanggal (Date)
-- Klausal WHERE, LIKE

-- Praktek 1
-- Menggunakan nilai literal pada SELECT
SELECT 77;

-- Praktek 2
-- Menggunakan SELECT untuk menampilkan nilai literal dengan tipe data yang berbeda
SELECT 77 AS angka, false AS nilai_logika, 'PTI' AS teks;


-- Null 
-- berarti tidak memiliki nilai apapun 
-- Praktek 3
-- Menggunakan SELECT untuk menampilkan NULL
SELECT NULL AS kosong;

-- Operator Matematika 
-- Praktek 4
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi_1, 5 DIV 2 AS hasil_bagi_2;


-- Praktek 5
-- menggunakan database
USE pti_mart;

-- operator matematika untuk dua kolom dalam tabel penjualan
-- Ambil data hasil perkalian qty  dan harga simpan dalam kolom total beli
-- Praktek 6
SELECT qty*harga  AS total_beli FROM tr_penjualan;

-- Operator Perbandingan 
-- simbol untuk membandingkan nilai dari nilai literal ataupun hasil ekspresi matematika alter
-- Praktek 7
-- operator perbandingan
SELECT 5=5, 5!=5, 5!=4;

-- Fungsi 
-- proses yang memiliki nama, bukan simbol seperti operator
-- Praktek 8
SELECT POW(3,2), ROUND(3,14), ROUND(3,54), ROUND(3,155, 1),
ROUND (3,155,2), FLOOR(4,28), FLOOR(4,78), CELING(4,39), CELING(4,55);

-- PRAKTEK 9
-- Fungsi tanggal
SELECT 
    NOW() AS waktu_sekarang,
    YEAR('2022-05-03') AS tahun,
    MONTH('2022-05-03') AS bulan,
    DAY('2022-05-03') AS hari,
    DATEDIFF(NOW(), '2022-05-03') AS selisih_hari;

-- Penjelasan:
-- NOW()      = tanggal dan waktu sekarang
-- YEAR()     = mengambil tahun
-- MONTH()    = mengambil bulan
-- DAY()      = mengambil hari
-- DATEDIFF() = menghitung selisih hari


-- LATIHAN MANDIRI DARI SLIDE

-- Operator matematika
SELECT 4 * 2;
SELECT (4 * 8) % 7;
SELECT (4 * 8) MOD 7;

-- Operator perbandingan
SELECT 1 = TRUE;
SELECT 1 = FALSE;
SELECT 5 >= 5;
SELECT 5.2 = 5.20000;
SELECT NULL = 1;
SELECT NULL = NULL;

-- Fungsi tanggal
SELECT DATEDIFF('2022-07-23', NOW());
SELECT YEAR('2022-07-23');
SELECT MONTH('2022-07-23');
SELECT DAY('2022-07-23');
SELECT YEAR(NOW());

Praktik 10
SELECT detediff(now() , tgl_transaksi) FROM tr_penjual;
SELECT detediff(tgl_transaksi, now()) FROM tr_penjual;
-- WHERE 
-- untuk memfilter atau menyaring data

-- PRAKTEK 11 
-- Ambil semua data pada kolom nama produk dan qty, yang qty > 3
SELECT nama_produk, qty
FROM tr_penjualan
WHERE qty > 3;

-- Ambil semua data pada kolom nama produk dan harga , harga max 10000
SELECT nama_produk, harga
FROM tr_penjual
WHERE 



-- Praktek 12 
-- Multi kriteria dalam WHERE 
SELECT nama_produk, qty, tgl_transaksi FROM tr_penjualan;
- Ambil semua produk dan qty yang qty > 3 DAN transaksi pada bulan 6
SELECT nama_produk, qty
FROM tr_penjualan
WHERE qty > 3 AND month(tgl_transaksi) = 6;

-- Praktek 13
-- WHERE dengan kriteria Teks
-- Ambil semua nama_produk yang bernama 'Flashdisk DQLab 32 GB'
SELECT nama_produk, qty
FROM tr_penjualan
WHERE nama_produk = 'Flashdisk DQLab 32 GB'

-- Praktek 14
-- WHERE dengan operator LIKE
-- Ambil semua nama_produk yang namanya berawal huruf 'F'
SELECT nama_produk FROM tr_penjual
WHERE nama_produk LIKE 'F%' ;

-- Latihan Mandiri

-- Praktek 15
-- WHERE dengan Operator Perbandingan (AND, OR, NOT, XOR)
-- Ambil nama_produk yang berawalan huruf 'f%' dan qty > 2
SELECT nama_produk, qty FROM tr_penjualan
WHERE nama_produk LIKE 'F%' AND qty > 2;

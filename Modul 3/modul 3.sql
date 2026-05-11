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

-- Praktek 9
SELECT NOW(), YEAR('2022-05-03'),

DAY('2022-05-03);
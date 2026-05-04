-- Nama : Rido juana
-- nim :24241036
-- kelas : A
-- Modul : 2

-- mENGGUNAKAN DATABASE
USE pti_mart;-- USE nama_db:

-- mengambil 1 kolom dari 1 tabel
-- mengambil kolom nama produk dari tabel produk
SELECT nama_produk FROM produk ;

-- mengambil > dari 1 tabel
-- mengambil kolom nama_produk dan harga dari tabelproduk
SELECT nama_produk, harga FROM produk ;

-- mengambil semua kolom
SELECT * FROM pproduk;

-- PREFIX dan ALIAS
-- PREFIX
-- bagian nama objek database yang levelnya lebih tinggi 
SELECT produk.nama_produk FROM produk; 
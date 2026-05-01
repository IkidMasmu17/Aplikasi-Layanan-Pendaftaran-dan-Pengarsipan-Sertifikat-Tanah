# Aplikasi Layanan Pendaftaran dan Pengarsipan Sertifikat Tanah

Aplikasi web berbasis Laravel untuk mengelola pendaftaran permohonan sertifikat tanah dan bangunan, proses verifikasi berjenjang, survei lapangan, pengarsipan berkas, peminjaman berkas, serta laporan administrasi.

## Fitur Utama

- Autentikasi pengguna dengan peran admin, pemohon, peneliti, ketua peneliti, kasi, kadis, dan petugas arsip.
- Pengelolaan master data jabatan, pangkat, jenis bangunan, kecamatan, kelurahan, pengguna, dan rak arsip.
- Alur permohonan sertifikat bangunan dan sertifikat tanah.
- Pengelolaan data survei dan verifikasi permohonan.
- Pengarsipan berkas dan sertifikat berdasarkan rak.
- Laporan pegawai, biodata pemohon, riwayat berkas, berita acara, laporan survei, peminjaman berkas, statistik, dan sertifikat.

## Teknologi

- Laravel 12
- PHP 8.2 atau lebih baru
- MySQL
- Laravel Mix, Webpack, Axios, Lodash, dan PostCSS

## Database

Konfigurasi default aplikasi menggunakan database MySQL `laraveltanah`. Struktur dan data awal tersedia pada file `laraveltanah.sql`; migrasi Laravel juga tersedia di folder `database/migrations`.

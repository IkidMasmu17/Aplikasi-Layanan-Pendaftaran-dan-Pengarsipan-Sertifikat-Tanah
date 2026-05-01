-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Feb 2023 pada 02.12
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraveltanah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip_berkas`
--

CREATE TABLE `arsip_berkas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permohonan_id` bigint(20) UNSIGNED NOT NULL,
  `rak_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip_sertifikats`
--

CREATE TABLE `arsip_sertifikats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permohonan_tanah_id` bigint(20) UNSIGNED NOT NULL,
  `rak_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_bangunans`
--

CREATE TABLE `jenis_bangunans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatans`
--

CREATE TABLE `kecamatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelurahans`
--

CREATE TABLE `kelurahans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_06_28_091242_create_jabatans_table', 1),
(2, '2013_08_01_083333_create_pangkats_table', 1),
(3, '2013_11_11_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_06_28_113756_create_jenis_bangunans_table', 1),
(7, '2021_06_28_114343_create_kecamatans_table', 1),
(8, '2021_06_28_115005_create_kelurahans_table', 1),
(9, '2021_07_21_080029_create_permohonans_table', 1),
(10, '2021_08_04_031524_create_surveis_table', 1),
(11, '2021_08_04_044130_create_raks_table', 1),
(12, '2021_08_06_222731_create_peminjaman_berkas_table', 1),
(13, '2021_08_06_225606_create_arsip_berkas_table', 1),
(14, '2021_09_25_054448_create_permohonan_tanahs_table', 1),
(15, '2021_09_25_064422_create_survei_tanahs_table', 1),
(16, '2021_11_13_230747_create_arsip_sertifikats_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pangkats`
--

CREATE TABLE `pangkats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pangkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pangkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman_berkas`
--

CREATE TABLE `peminjaman_berkas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permohonan_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keperluan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permohonans`
--

CREATE TABLE `permohonans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_bangunan_id` bigint(20) UNSIGNED NOT NULL,
  `kelurahan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `no_fisik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_yuridis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letak_tanah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dikuasai_awal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dengan_dasar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_register` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_register` date NOT NULL,
  `luas_tanah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surat_kuasa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `segel_tanah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan_tanah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sppt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `verif_admin` date DEFAULT NULL,
  `verif_tim` date DEFAULT NULL,
  `verif_ketua` date DEFAULT NULL,
  `verif_kasi` date DEFAULT NULL,
  `verif_kadis` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permohonan_tanahs`
--

CREATE TABLE `permohonan_tanahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelurahan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `no_fisik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_yuridis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letak_tanah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dikuasai_awal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dengan_dasar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_register` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_register` date NOT NULL,
  `luas_tanah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `segel_tanah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `riwayat_peroleh_tanah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sppt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `verif_admin` date DEFAULT NULL,
  `verif_tim` date DEFAULT NULL,
  `verif_ketua` date DEFAULT NULL,
  `verif_kasi` date DEFAULT NULL,
  `verif_kadis` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `raks`
--

CREATE TABLE `raks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_rak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surveis`
--

CREATE TABLE `surveis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permohonan_id` bigint(20) UNSIGNED NOT NULL,
  `nama_petugas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_survei` date NOT NULL,
  `surat_ukur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_denah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luas_bidang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lereng_permukaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kepekaan_erosi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat_erosi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drainase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kerikil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ancaman_banjir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `survei_tanahs`
--

CREATE TABLE `survei_tanahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permohonan_tanah_id` bigint(20) UNSIGNED NOT NULL,
  `nama_petugas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_survei` date NOT NULL,
  `surat_ukur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_denah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luas_bidang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lereng_permukaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kepekaan_erosi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat_erosi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drainase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kerikil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ancaman_banjir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pangkat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telepon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `nip`, `jabatan_id`, `pangkat_id`, `password`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_telepon`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '123', NULL, NULL, '$2y$10$exQulrkGI7FrJ1a2.79/yO.gDgz4wD20WRSc0MtqUPNfkD419q.b6', 'banjarbaru', '1997-05-05', 'Laki-laki', 'banjarbaru', NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arsip_berkas`
--
ALTER TABLE `arsip_berkas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arsip_berkas_permohonan_id_foreign` (`permohonan_id`),
  ADD KEY `arsip_berkas_rak_id_foreign` (`rak_id`);

--
-- Indeks untuk tabel `arsip_sertifikats`
--
ALTER TABLE `arsip_sertifikats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arsip_sertifikats_permohonan_tanah_id_foreign` (`permohonan_tanah_id`),
  ADD KEY `arsip_sertifikats_rak_id_foreign` (`rak_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_bangunans`
--
ALTER TABLE `jenis_bangunans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kecamatans`
--
ALTER TABLE `kecamatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelurahans`
--
ALTER TABLE `kelurahans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelurahans_kecamatan_id_foreign` (`kecamatan_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pangkats`
--
ALTER TABLE `pangkats`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `peminjaman_berkas`
--
ALTER TABLE `peminjaman_berkas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjaman_berkas_permohonan_id_foreign` (`permohonan_id`);

--
-- Indeks untuk tabel `permohonans`
--
ALTER TABLE `permohonans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permohonans_jenis_bangunan_id_foreign` (`jenis_bangunan_id`),
  ADD KEY `permohonans_kelurahan_id_foreign` (`kelurahan_id`),
  ADD KEY `permohonans_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `permohonan_tanahs`
--
ALTER TABLE `permohonan_tanahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permohonan_tanahs_kelurahan_id_foreign` (`kelurahan_id`),
  ADD KEY `permohonan_tanahs_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `raks`
--
ALTER TABLE `raks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surveis`
--
ALTER TABLE `surveis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `survei_tanahs`
--
ALTER TABLE `survei_tanahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `survei_tanahs_permohonan_tanah_id_foreign` (`permohonan_tanah_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `users_pangkat_id_foreign` (`pangkat_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `arsip_berkas`
--
ALTER TABLE `arsip_berkas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `arsip_sertifikats`
--
ALTER TABLE `arsip_sertifikats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenis_bangunans`
--
ALTER TABLE `jenis_bangunans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kecamatans`
--
ALTER TABLE `kecamatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelurahans`
--
ALTER TABLE `kelurahans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pangkats`
--
ALTER TABLE `pangkats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peminjaman_berkas`
--
ALTER TABLE `peminjaman_berkas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permohonans`
--
ALTER TABLE `permohonans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permohonan_tanahs`
--
ALTER TABLE `permohonan_tanahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `raks`
--
ALTER TABLE `raks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surveis`
--
ALTER TABLE `surveis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `survei_tanahs`
--
ALTER TABLE `survei_tanahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `arsip_berkas`
--
ALTER TABLE `arsip_berkas`
  ADD CONSTRAINT `arsip_berkas_permohonan_id_foreign` FOREIGN KEY (`permohonan_id`) REFERENCES `permohonans` (`id`),
  ADD CONSTRAINT `arsip_berkas_rak_id_foreign` FOREIGN KEY (`rak_id`) REFERENCES `raks` (`id`);

--
-- Ketidakleluasaan untuk tabel `arsip_sertifikats`
--
ALTER TABLE `arsip_sertifikats`
  ADD CONSTRAINT `arsip_sertifikats_permohonan_tanah_id_foreign` FOREIGN KEY (`permohonan_tanah_id`) REFERENCES `permohonan_tanahs` (`id`),
  ADD CONSTRAINT `arsip_sertifikats_rak_id_foreign` FOREIGN KEY (`rak_id`) REFERENCES `raks` (`id`);

--
-- Ketidakleluasaan untuk tabel `kelurahans`
--
ALTER TABLE `kelurahans`
  ADD CONSTRAINT `kelurahans_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatans` (`id`);

--
-- Ketidakleluasaan untuk tabel `peminjaman_berkas`
--
ALTER TABLE `peminjaman_berkas`
  ADD CONSTRAINT `peminjaman_berkas_permohonan_id_foreign` FOREIGN KEY (`permohonan_id`) REFERENCES `permohonans` (`id`);

--
-- Ketidakleluasaan untuk tabel `permohonans`
--
ALTER TABLE `permohonans`
  ADD CONSTRAINT `permohonans_jenis_bangunan_id_foreign` FOREIGN KEY (`jenis_bangunan_id`) REFERENCES `jenis_bangunans` (`id`),
  ADD CONSTRAINT `permohonans_kelurahan_id_foreign` FOREIGN KEY (`kelurahan_id`) REFERENCES `kelurahans` (`id`),
  ADD CONSTRAINT `permohonans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `permohonan_tanahs`
--
ALTER TABLE `permohonan_tanahs`
  ADD CONSTRAINT `permohonan_tanahs_kelurahan_id_foreign` FOREIGN KEY (`kelurahan_id`) REFERENCES `kelurahans` (`id`),
  ADD CONSTRAINT `permohonan_tanahs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `surveis`
--
ALTER TABLE `surveis`
  ADD CONSTRAINT `surveis_id_foreign` FOREIGN KEY (`id`) REFERENCES `permohonans` (`id`);

--
-- Ketidakleluasaan untuk tabel `survei_tanahs`
--
ALTER TABLE `survei_tanahs`
  ADD CONSTRAINT `survei_tanahs_permohonan_tanah_id_foreign` FOREIGN KEY (`permohonan_tanah_id`) REFERENCES `permohonan_tanahs` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`),
  ADD CONSTRAINT `users_pangkat_id_foreign` FOREIGN KEY (`pangkat_id`) REFERENCES `pangkats` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

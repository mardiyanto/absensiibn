-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Agu 2021 pada 17.51
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gender`
--

INSERT INTO `gender` (`id_gender`, `gender`) VALUES
(1, 'Pria'),
(2, 'Wanita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_khd` int(11) NOT NULL,
  `nama_khd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`id_khd`, `nama_khd`) VALUES
(1, 'Hadir'),
(2, 'Sakit'),
(3, 'Ijin'),
(4, 'Alpha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE `kelompok` (
  `id_kelompok` int(11) NOT NULL,
  `nama_kelompok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelompok`
--

INSERT INTO `kelompok` (`id_kelompok`, `nama_kelompok`) VALUES
(1, 'UMAR'),
(2, 'ABBAS'),
(3, 'ABU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `protected` tinyint(4) DEFAULT NULL,
  `is_active` int(1) NOT NULL,
  `is_parent` int(1) UNSIGNED NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `icon`, `protected`, `is_active`, `is_parent`, `sort`) VALUES
(15, 'Menu Management', 'menu', 'fa fa-list-alt', NULL, 1, 42, 14),
(16, 'MASTER DATA', '#', 'fa fa-folder', NULL, 1, 0, 1),
(18, 'Data Santri', 'santri', 'fa fa-user-graduate', NULL, 1, 16, 2),
(21, 'Data Shift', 'shift', 'fa fa-retweet', NULL, 1, 16, 4),
(35, 'User management', 'users', 'fa fa-users', NULL, 1, 42, 13),
(36, 'Histori Absensi', 'presensi', 'fa fa-paperclip', NULL, 1, 41, 9),
(39, 'Rekap Absensi', 'rekap', 'fa fa-list-alt', NULL, 1, 41, 10),
(41, 'DATA ABSENSI', '#', 'fa fa-folder-open', NULL, 1, 0, 8),
(42, 'SETTING', '#', 'fa fa-cogs', NULL, 1, 0, 11),
(45, 'Data Pengajar', 'pengajar', 'fa fa-user', NULL, 1, 16, 0),
(46, 'Data Kelompok', 'kelompok', 'fa fa-layer-group', NULL, 1, 16, 0),
(47, 'Data Gaji', 'penggajian', 'fa fa-dollar-sign', NULL, 1, 41, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_pengajar` varchar(30) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `shift_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengajar`
--

INSERT INTO `pengajar` (`id`, `nip`, `nama_pengajar`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `foto`, `shift_id`) VALUES
(1, 'P2108001', 'Pengajar 01', 'Jakarta', '1997-01-01', 'Wanita', 'Jakarta', 'Selena_Gomez_in_Cute_Pink_Lips_4K_Wallpapers.jpg', 5),
(4, 'P2108002', 'Pengajar 02', 'Karang Tengah', '1995-01-01', 'Wanita', 'Karang Tengah', '27894388_790732624452440_3552518203873689600_n.jpg', 6),
(5, 'P2108004', 'Pengajar 03', 'Jakarta Pusat', '1997-01-01', 'Pria', 'Jakarta Pusat', 'wc1791843-liverpool-wallpaper-2017.jpg', 5),
(6, 'P2108005', 'Pengajar 04', 'Jakarta Timur', '1997-01-01', 'Pria', 'Jakarta Timur', 'default.png', 5),
(7, 'P2108006', 'Jeff Bezos', 'Meksiko', '1964-12-01', 'Pria', 'Meksiko', 'Tanpa_judul.png', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id_absen` int(11) NOT NULL,
  `nomor_induk` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `jam_msk` time NOT NULL,
  `jam_klr` time NOT NULL,
  `id_khd` int(11) DEFAULT NULL,
  `ket` varchar(150) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id_absen`, `nomor_induk`, `tgl`, `jam_msk`, `jam_klr`, `id_khd`, `ket`, `id_status`) VALUES
(83, 'P2108001', '2021-08-15', '17:50:00', '18:00:00', 1, 'Rajin', 2),
(84, 'P2108002', '2021-08-15', '17:55:00', '18:00:00', 1, '', 2),
(85, 'S2108001', '2021-08-15', '17:55:00', '18:00:00', 1, '', 2),
(86, 'S2108133', '2021-08-15', '18:00:00', '19:00:00', 1, '', 2),
(87, 'S2108139', '2021-08-15', '07:16:50', '07:16:56', 1, '', 2),
(90, 'P2108002', '2021-08-16', '12:47:30', '12:47:34', 1, '', 2),
(91, 'P2108001', '2021-08-16', '12:47:49', '12:47:53', 1, '', 2),
(92, 'S2108139', '2021-08-16', '12:48:17', '04:00:00', 1, '', 2),
(93, 'S2108133', '2021-08-16', '04:55:00', '05:00:00', 1, '', 2),
(94, 'S2108134', '2021-08-16', '07:00:00', '08:00:00', 1, 'Rajin kali', 2),
(95, '', '2021-08-16', '00:00:00', '00:00:00', 4, 'null', 3),
(96, '', '2021-08-15', '00:00:00', '00:00:00', 4, 'null', 3),
(97, 'S2108001', '2021-08-16', '00:00:00', '00:00:00', 4, 'Malas masuk', 3),
(98, 'S2108134', '2021-08-15', '00:00:00', '00:00:00', 3, 'Ada kepentingan', 3),
(99, 'P2108006', '2021-08-17', '07:00:00', '08:00:00', 1, 'Digantikan', 2),
(100, 'P2108006', '2021-08-15', '00:00:00', '00:00:00', 3, 'Rapat', 3),
(101, 'P2108006', '2021-08-16', '00:00:00', '00:00:00', 2, 'Flu', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `santri`
--

CREATE TABLE `santri` (
  `id` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_santri` varchar(30) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `nama_orang_tua` varchar(50) NOT NULL,
  `kelompok_id` int(11) NOT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `shift_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `santri`
--

INSERT INTO `santri` (`id`, `nis`, `nama_santri`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `nama_orang_tua`, `kelompok_id`, `foto`, `shift_id`) VALUES
(133, 'S2108001', 'Santri 01', 'Tangerang', '2000-01-01', 'Pria', 'Tangerang', 'Orang Tua 01', 3, 'default.png', 6),
(134, 'S2108133', 'Santri 02', 'Jakarta', '2001-01-01', 'Wanita', 'Jakarta', 'Orang Tua 02', 1, 'default.png', 5),
(139, 'S2108134', 'Santri 03', 'Karang Tengah', '1996-01-01', 'Pria', 'Karang Tengah', 'Orang Tua 03', 3, '171747.jpg', 6),
(140, 'S2108139', 'Santri 04', 'Ciledug', '1997-01-01', 'Wanita', 'Ciledug', 'Orang tua 04', 2, 'default.png', 6),
(141, 'S2108140', 'Santri 05', 'Karang Tengah', '0000-00-00', 'Pria', 'Karang Tengah', 'Orang Tua 05', 1, '2016-dota-2-1366x768_-_Copy.jpg', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shift`
--

CREATE TABLE `shift` (
  `id_shift` int(11) NOT NULL,
  `nama_shift` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shift`
--

INSERT INTO `shift` (`id_shift`, `nama_shift`) VALUES
(5, 'MALAM'),
(6, 'SORE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stts`
--

CREATE TABLE `stts` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stts`
--

INSERT INTO `stts` (`id_status`, `nama_status`) VALUES
(1, 'Masuk'),
(2, 'Pulang'),
(3, 'tidak hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(26, '::1', 'admin@admin.com', '$2y$12$MPcQlOck9fzd/5UjJ6iIXuhZivhkXdfoVD2xFXpZTnZ2IWQw/nFhW', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1556798313, 1629155474, 1, 'Administrator', '.', NULL, '123412341234'),
(48, '::1', 'manalu@gmail.com', '$2y$10$Z8NjOCsRReheIq.4FrQeLepPTi8PsqdbgDafohBbcWy.gfaDQTWtu', 'manalu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1628598959, NULL, 1, 'RUPINDA', 'MANALU', NULL, '081283404176');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(29, 26, 1),
(51, 48, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_khd`);

--
-- Indeks untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`id_kelompok`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id_shift`);

--
-- Indeks untuk tabel `stts`
--
ALTER TABLE `stts`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gender`
--
ALTER TABLE `gender`
  MODIFY `id_gender` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id_khd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `id_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `santri`
--
ALTER TABLE `santri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT untuk tabel `shift`
--
ALTER TABLE `shift`
  MODIFY `id_shift` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `stts`
--
ALTER TABLE `stts`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

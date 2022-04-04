-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 05:38 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem-informasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE `alamat` (
  `id_alamat` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `jalan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kalurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabkota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `propinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sts_tinggal` enum('Ya','Tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `anak`
--

CREATE TABLE `anak` (
  `id_anak` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `nama_anak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lair` date DEFAULT NULL,
  `jns_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pdd` int(10) UNSIGNED NOT NULL,
  `sts_tunjangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sts_menikah` enum('Menikah','Belum menikah') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ciri_fisik`
--

CREATE TABLE `ciri_fisik` (
  `id_fisik` int(10) UNSIGNED NOT NULL,
  `tinggi_bada` int(11) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `rambut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bentuk_muka` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warna_kulit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciri_khusus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cacat_tubuh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `istri_suami`
--

CREATE TABLE `istri_suami` (
  `id_istrisuami` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `nama_istri_suami` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jns_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pdd` int(10) UNSIGNED DEFAULT NULL,
  `sts_tunjangan` enum('Ya','Tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_menikah` date NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `istri_suami`
--

INSERT INTO `istri_suami` (`id_istrisuami`, `id_peg`, `nama_istri_suami`, `t_lahir`, `tgl_lahir`, `jns_kelamin`, `kode_pdd`, `sts_tunjangan`, `tgl_menikah`, `ket`, `created_at`, `updated_at`) VALUES
(1, 1, 'Consequuntur cum nis', 'Consequuntur odio qu', '1988-11-12', 'L', 3, 'Tidak', '1981-09-16', 'Temporibus cupiditat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan_luarnegeri`
--

CREATE TABLE `kunjungan_luarnegeri` (
  `id_kunjungan` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `negara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_berangkat` date NOT NULL,
  `tgl_pulang` date NOT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sumber_biaya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mertua`
--

CREATE TABLE `mertua` (
  `id_mertua` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `nama_mertua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jns_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_13_002508_create_pensiun_table', 1),
(6, '2021_12_13_002526_create_unit_kerja_table', 1),
(7, '2021_12_13_002610_create_tm_agama_table', 1),
(8, '2021_12_13_002632_create_tm_pendidikan_table', 1),
(9, '2021_12_13_002649_create_tm_golongan_table', 1),
(10, '2021_12_13_002702_create_tm_diklat_table', 1),
(11, '2021_12_13_002721_create_tm_jabatanstruktural_table', 1),
(12, '2021_12_13_002805_create_tm_jabatanf_table', 1),
(13, '2021_12_13_002820_create_tm_jabatanft_table', 1),
(14, '2021_12_13_002834_create_tm_gapok_table', 1),
(15, '2021_12_13_002910_create_tm_ppkenaikangaji_table', 1),
(16, '2021_12_13_002935_create_tm_satuanorganisasi_table', 1),
(17, '2021_12_13_002951_create_pegawai_table', 1),
(18, '2021_12_13_003015_create_riwayat_organisasi_table', 1),
(19, '2021_12_13_003030_create_ciri_fisik_table', 1),
(20, '2021_12_13_003043_create_alamat_table', 1),
(21, '2021_12_13_003058_create_pendidikan_table', 1),
(22, '2021_12_13_003115_create_istri_suami_table', 1),
(23, '2021_12_13_003127_create_anak_table', 1),
(24, '2021_12_13_003142_create_orangtua_table', 1),
(25, '2021_12_13_003156_create_mertua_table', 1),
(26, '2021_12_13_003210_create_saudara_table', 1),
(27, '2021_12_13_003346_create_riwayat_satuankerja_table', 1),
(28, '2021_12_13_003405_create_riwayat_stskepeg_table', 1),
(29, '2021_12_13_003423_create_riwayat_pangkat_table', 1),
(30, '2021_12_13_003435_create_riwayat_gapok_table', 1),
(31, '2021_12_13_003454_create_riwayat_jabatan_table', 1),
(32, '2021_12_13_003511_create_riwayat_jabatanfungsional_table', 1),
(33, '2021_12_13_003529_create_riwayat_jabatanftambahan_table', 1),
(34, '2021_12_13_003543_create_riwayat_diklat_table', 1),
(35, '2021_12_13_003603_create_penghargaan_table', 1),
(36, '2021_12_13_003625_create_kunjungan_luarnegeri_table', 1),
(37, '2021_12_13_003646_create_riwayat_indisipliner_table', 1),
(38, '2021_12_13_003703_create_naik_pangkat_table', 1),
(39, '2021_12_13_003721_create_naik_kgb_table', 1),
(40, '2021_12_13_003740_create_hubungi_table', 1),
(41, '2022_03_13_144849_create_roles_table', 1),
(42, '2022_03_13_145018_add_role_fields_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `naik_kgb`
--

CREATE TABLE `naik_kgb` (
  `id_naikkgb` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `no_sklama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sklama` date DEFAULT NULL,
  `pejabat_sklama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmt_lama` date NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gapok_lama` double NOT NULL,
  `mk_lama` int(11) NOT NULL,
  `kode_gapok` int(10) UNSIGNED NOT NULL,
  `tmt_baru` date NOT NULL,
  `naik_selanjutnya` date NOT NULL,
  `ket` enum('Belum diproses','Proses','Disetujui','Ditolak') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `naik_pangkat`
--

CREATE TABLE `naik_pangkat` (
  `id_naikpangkat` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `no_surat_usul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_surat_usul` date DEFAULT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mk_tahun` int(11) NOT NULL,
  `mk_bulan` int(11) NOT NULL,
  `kode_gol` int(10) UNSIGNED NOT NULL,
  `tmt_baru` date NOT NULL,
  `gapok_baru` double NOT NULL,
  `gapok_terbilang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naik_selanjutnya` date NOT NULL,
  `ket` enum('Belum diproses','Proses','Disetujui','Ditolak') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orangtua`
--

CREATE TABLE `orangtua` (
  `id_ortu` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `nama_ortu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jns_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orangtua`
--

INSERT INTO `orangtua` (`id_ortu`, `id_peg`, `nama_ortu`, `t_lahir`, `tgl_lahir`, `jns_kelamin`, `alamat`, `pekerjaan`, `ket`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ayah', 'Tempat', '2022-03-22', 'L', 'Jl. Karang Pasundan VI No.50', 'Swasta', '-', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_peg` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jns_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_agama` int(10) UNSIGNED DEFAULT NULL,
  `kode_unitkerja` int(10) UNSIGNED DEFAULT NULL,
  `sts_marital` enum('Menikah','Belum menikah') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_pdd` int(10) UNSIGNED DEFAULT NULL,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fakultas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thmsk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sts_pegawai` enum('Tetap','Tidak Tetap') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `kode_gol` int(10) UNSIGNED DEFAULT NULL,
  `sertifikasi` year(4) DEFAULT NULL,
  `kode_jbts` int(10) UNSIGNED DEFAULT NULL,
  `tmt_jab` date DEFAULT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mapel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengajar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_peg`, `nama`, `t_lahir`, `tgl_lahir`, `jns_kelamin`, `kode_agama`, `kode_unitkerja`, `sts_marital`, `kode_pdd`, `nama_sekolah`, `jurusan`, `fakultas`, `thmsk`, `alamat`, `sts_pegawai`, `id_user`, `kode_gol`, `sertifikasi`, `kode_jbts`, `tmt_jab`, `no_telp`, `mapel`, `mengajar`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Join Karmila', 'Karimun', '1986-09-06', 'P', 4, 1, 'Menikah', 7, '-', 'IPS', 'IPS', '03 Agustus 2007', 'Komp. Green Valley Recidence Blok E. No. 27', 'Tetap', 5, NULL, 2000, 4, '9999-09-09', '082350496224', 'Bahasa Mandarin TK', 'Bahasa Mandarin TK', 'Join Karmila.png', NULL, NULL),
(2, 'Yacinta Elsanella Kurnia Dewi, S. Pd.', 'Bagansiapiapi', '1997-10-18', 'P', 4, 1, 'Belum menikah', 7, 'Universitas Brawijaya', 'Pendidikan Bahasa Jepang', 'Ilmu Budaya', '6 Januari 2020', 'Jl. Tikukur No. 6, Sadang Serang, Kec. Coblong, Bandung', 'Tidak Tetap', 1, NULL, 2000, 4, '9999-09-09', '08', 'TK', 'TK', 'Yacinta Elsanella Kurnia Dewi, S. Pd..png', NULL, NULL),
(3, 'Theresia Wanda Yustiawati', 'Bandung', '1966-04-27', 'P', 4, 1, 'Menikah', 8, 'IKIP SILIWANGI', 'Pendidikan Masyarakat Konsentrasi PAUD', 'PENMAS', '01 Juli 2020', 'Puri Cipageran Indah I B 187 Cimahi', 'Tidak Tetap', 1, NULL, 2010, 4, '9999-09-09', '08', 'TK', 'TK', 'Theresia Wanda Yustiawati.png', NULL, NULL),
(4, 'Hanna Kartika Nikodemus,S.Pd', 'Bandung', '1966-11-24', 'P', 4, 1, 'Menikah', 7, 'STKIP PANCA SAKTI', 'PAUD', '-', '01 Juli 1994', 'Perm. Griya Pesantren Indah Blok G no 3, Cimahi', 'Tetap', 1, NULL, 2000, 4, '9999-09-09', '08', 'TK', 'TK', 'Hanna Kartika Nikodemus,S.Pd.png', NULL, NULL),
(5, 'Kristianingsih, S.Pd., AUD', 'Kebumen', '1974-12-09', 'P', 4, 1, 'Menikah', 7, 'Universitas Pendidikan Indonesia', 'PG PAUD', 'FIP (Fakulta Ilmu Pendidikan)', '01 Juli 1997', 'Nusa Cisangkan Permai C 2', 'Tetap', 1, NULL, 2014, 4, '9999-09-09', '08', 'TK', 'TK', 'Kristianingsih, S.Pd., AUD.png', NULL, NULL),
(6, 'Lie Mei Siang', 'Madiun', '1970-09-06', 'P', 4, 1, 'Menikah', 2, 'SMEA', 'Managemen Pemasaran', '-', '30 September 1994', 'Jl. Ciateul Kaler No. 55A  Bandung', 'Tetap', 1, NULL, 2000, 4, '9999-09-09', '08', '-', '-', 'Lie Mei Siang.png', NULL, NULL),
(7, 'Sutini, S.Pd', 'Boyolali', '1964-07-29', 'P', 4, 1, 'Menikah', 7, 'STKIP PANCA SAKTI', 'PAUD', 'Ilmu Pendidikan', '1984', 'Puyuh Dalam 2 No. 47 Bandung', 'Tetap', 1, NULL, 2000, 4, '9999-09-09', '08', 'TK', 'TK', 'Sutini, S.Pd.png', NULL, NULL),
(8, 'Jutetni Sitio, S.E, S.', 'Sosornangka', '1979-06-25', 'P', 4, 1, 'Menikah', 7, 'Universitas Terbuka', 'PAUD', 'Pendidikan', '01 Juli 2000', 'Jl. Cikaso Selatan Gg Sentosa No. 407 Bandung', 'Tetap', 1, NULL, 2013, 4, '9999-09-09', '08', 'TK', 'Mapel Guru TK', 'Jutetni Sitio, S.E, S..png', NULL, NULL),
(9, 'Ramsi Silaban, S.Pd', 'Tarutung', '1977-02-03', 'P', 4, 1, 'Menikah', 7, 'STKIP PANCA SAKTI', 'PAUD', 'Pendidikan', '01 Juli 2005', 'Jl. Jakarta No. 11G', 'Tetap', 1, NULL, 2000, 4, '9999-09-09', '08', 'TK', 'TK', 'Ramsi Silaban, S.Pd.png', NULL, NULL),
(10, 'Supardi, S.Pd', 'Banyumas', '1969-07-11', 'L', 4, 2, 'Menikah', 7, 'Universitas Terbuka', 'PGSD', 'FKIP', '01 Juli 2001', 'Taman Holis Indah II Blok A4 No.16', 'Tetap', 1, NULL, 2010, 4, '9999-09-09', '08', 'Guru Kelas', '-', 'Supardi, S.Pd.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pdd` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `kode_pdd` int(10) UNSIGNED NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_sttb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `th_sttb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penghargaan`
--

CREATE TABLE `penghargaan` (
  `id_penghargaan` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `penghargaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pensiun`
--

CREATE TABLE `pensiun` (
  `id_pensiun` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat_usul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_surat_usul` date DEFAULT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_pensiun` enum('Pensiun Usia','Pensiun Janda','Pensiun Duda','Pensiun Dini') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alasan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pensiun` date NOT NULL,
  `tmt_pensiun` date NOT NULL,
  `ket` enum('Belum diproses','Proses','Disetujui','Ditolak') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_diklat`
--

CREATE TABLE `riwayat_diklat` (
  `id_diklat` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `kode_diklat` int(10) UNSIGNED NOT NULL,
  `nama_diklat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `no_sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thn_sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penyelenggara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_gapok`
--

CREATE TABLE `riwayat_gapok` (
  `id_gapok` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_gapok` int(10) UNSIGNED NOT NULL,
  `tmt` date NOT NULL,
  `naik_selanjutnya` date NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_indisipliner`
--

CREATE TABLE `riwayat_indisipliner` (
  `id_hukuman` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `hukuman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_jabatan`
--

CREATE TABLE `riwayat_jabatan` (
  `id_jabatan` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_jbts` int(10) UNSIGNED NOT NULL,
  `tmt` date NOT NULL,
  `kode_gol` int(10) UNSIGNED NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_jabatanftambahan`
--

CREATE TABLE `riwayat_jabatanftambahan` (
  `id_jbtft` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_jbtft` int(10) UNSIGNED NOT NULL,
  `tmt` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_jabatanfungsional`
--

CREATE TABLE `riwayat_jabatanfungsional` (
  `id_jabatanf` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_jbtf` int(10) UNSIGNED NOT NULL,
  `tmt` date NOT NULL,
  `kode_gol` int(10) UNSIGNED NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_organisasi`
--

CREATE TABLE `riwayat_organisasi` (
  `id_org` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `nama_org` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kedudukan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thn_awal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thn_akhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pimpinan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelompok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pangkat`
--

CREATE TABLE `riwayat_pangkat` (
  `id_pangkat` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_gol` int(10) UNSIGNED NOT NULL,
  `mk_tahun` int(11) NOT NULL,
  `mk_bulan` int(11) NOT NULL,
  `tmt` date NOT NULL,
  `naik_selanjutnya` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_satuankerja`
--

CREATE TABLE `riwayat_satuankerja` (
  `id_satuankerja` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `kode_unitkerja` int(10) UNSIGNED NOT NULL,
  `kode_satuanorg` int(10) UNSIGNED NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `pejabat_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_stskepeg`
--

CREATE TABLE `riwayat_stskepeg` (
  `id_sts` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `status` enum('CPNS','PNS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jns_kepeg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `kode_gol` int(10) UNSIGNED NOT NULL,
  `kode_jbts` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama_role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(2, 'direktur', '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(3, 'kepala_unit', '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(4, 'pegawai', '2022-03-17 18:51:22', '2022-03-17 18:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `saudara`
--

CREATE TABLE `saudara` (
  `id_saudara` int(10) UNSIGNED NOT NULL,
  `id_peg` int(10) UNSIGNED NOT NULL,
  `nama_saudara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jns_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_agama`
--

CREATE TABLE `tm_agama` (
  `kode_agama` int(10) UNSIGNED NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tm_agama`
--

INSERT INTO `tm_agama` (`kode_agama`, `agama`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'Buddha', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(2, 'Hindu', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(3, 'Katolik', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(4, 'Kristen', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(5, 'Konghucu', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(6, 'Islam', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `tm_diklat`
--

CREATE TABLE `tm_diklat` (
  `kode_diklat` int(10) UNSIGNED NOT NULL,
  `jenis_diklat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_gapok`
--

CREATE TABLE `tm_gapok` (
  `kode_gapok` int(10) UNSIGNED NOT NULL,
  `masa_kerja` int(11) NOT NULL,
  `PP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_gol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gapok` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_golongan`
--

CREATE TABLE `tm_golongan` (
  `kode_gol` int(10) UNSIGNED NOT NULL,
  `pangkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_jabatanf`
--

CREATE TABLE `tm_jabatanf` (
  `kode_jbtf` int(10) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_jabatanft`
--

CREATE TABLE `tm_jabatanft` (
  `kode_jbtft` int(10) UNSIGNED NOT NULL,
  `tugas_tambahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_jabatanstruktural`
--

CREATE TABLE `tm_jabatanstruktural` (
  `kode_jbts` int(10) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eselon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tm_jabatanstruktural`
--

INSERT INTO `tm_jabatanstruktural` (`kode_jbts`, `nama_jabatan`, `eselon`, `level`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'Direktur', NULL, NULL, NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(2, 'Kepala Unit', NULL, NULL, NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(3, 'Kepala Sekolah', NULL, NULL, NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(4, 'Pegawai', NULL, NULL, NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `tm_pendidikan`
--

CREATE TABLE `tm_pendidikan` (
  `kode_pdd` int(10) UNSIGNED NOT NULL,
  `pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tm_pendidikan`
--

INSERT INTO `tm_pendidikan` (`kode_pdd`, `pendidikan`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'SMA', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(2, 'SMK', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(3, 'D1', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(4, 'D2', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(5, 'D3', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(6, 'D4', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(7, 'S1', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(8, 'S2', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(9, 'S3', NULL, '2022-03-17 18:51:22', '2022-03-17 18:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `tm_ppkenaikangaji`
--

CREATE TABLE `tm_ppkenaikangaji` (
  `kode_ppgaji` int(10) UNSIGNED NOT NULL,
  `no_ppgj` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_berlaku` date NOT NULL,
  `pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tm_satuanorganisasi`
--

CREATE TABLE `tm_satuanorganisasi` (
  `kode_satuanorg` int(10) UNSIGNED NOT NULL,
  `nama_satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `kode_unitkerja` int(10) UNSIGNED NOT NULL,
  `nama_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`kode_unitkerja`, `nama_unit`, `created_at`, `updated_at`) VALUES
(1, 'TKK', '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(2, 'SDK', '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(3, 'SMPK', '2022-03-17 18:51:22', '2022-03-17 18:51:22'),
(4, 'SMAK', '2022-03-17 18:51:22', '2022-03-17 18:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ukrj_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `ukrj_nama`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Admin SKY 1', 'admin1@sky.com', NULL, '$2y$10$bS6c1z/YnmAsq2CjPS.8IOzeDjaBYJoqMP2/y.HVAfpnBfi/yTSIm', 'admin', NULL, '2022-03-17 18:57:17', '2022-03-17 18:57:17', 1),
(2, 'Direktur 1 SKY', 'direktur1@sky.com', NULL, '$2y$10$LvTzn/BO./ZpJ2eoKbgqy.00Iw44EymgFc6wlh1TomXw3RJ3T3EmK', 'direktur', NULL, '2022-03-20 06:35:28', '2022-03-20 06:35:28', 2),
(3, 'Kepala TK', 'kepalatk@sky.com', NULL, '$2y$10$6PxVTmlCDc98FKmzbZ/YpO8NfNbUBu.8IZkek6KivTOi/2zOwtPjS', 'TKK', NULL, '2022-03-22 19:49:32', '2022-03-22 19:49:32', 3),
(4, 'Pegawai SKY 1', 'pegawai1@sky.com', NULL, '$2y$10$iST9eYbsdKSUYZBEQSzWtONcfmxmHjldqoI3In1Xmv5JqYuItn24i', 'TKK', NULL, '2022-03-22 20:07:22', '2022-03-22 20:07:22', 4),
(5, 'Join Karmila', 'joinkarmila@tksky.com', NULL, '$2y$10$t.0rk5nkuiAFs/heWaKvouEGoJfYXQx47nz5RTKRAdb8zecsDMHKu', 'TKK', NULL, '2022-03-22 22:18:30', '2022-03-22 22:18:30', 4),
(6, 'Rhoda Holder', 'fyxuqefe@mailinator.com', NULL, '$2y$10$KmAxYqmiazGPJbqFp.LESO6XKkC7YFRhfDeTlZgKXZwrLsq60lxjC', 'SDK', NULL, '2022-03-23 21:34:52', '2022-03-23 21:34:52', 4),
(7, 'Calista White', 'gedale@mailinator.com', NULL, '$2y$10$Vlw8HcN0Kts4IRrTk.Fd7uZnidVxEgQcNFCsWFfPPwQxbaSDsUMhW', 'SMPK', NULL, '2022-03-25 00:52:05', '2022-03-25 00:52:05', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`id_alamat`),
  ADD KEY `alamat_id_peg_foreign` (`id_peg`);

--
-- Indexes for table `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id_anak`),
  ADD KEY `anak_id_peg_foreign` (`id_peg`),
  ADD KEY `anak_kode_pdd_foreign` (`kode_pdd`);

--
-- Indexes for table `ciri_fisik`
--
ALTER TABLE `ciri_fisik`
  ADD PRIMARY KEY (`id_fisik`),
  ADD KEY `ciri_fisik_id_peg_foreign` (`id_peg`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `istri_suami`
--
ALTER TABLE `istri_suami`
  ADD PRIMARY KEY (`id_istrisuami`),
  ADD KEY `istri_suami_id_peg_foreign` (`id_peg`),
  ADD KEY `istri_suami_kode_pdd_foreign` (`kode_pdd`);

--
-- Indexes for table `kunjungan_luarnegeri`
--
ALTER TABLE `kunjungan_luarnegeri`
  ADD PRIMARY KEY (`id_kunjungan`),
  ADD KEY `kunjungan_luarnegeri_id_peg_foreign` (`id_peg`);

--
-- Indexes for table `mertua`
--
ALTER TABLE `mertua`
  ADD PRIMARY KEY (`id_mertua`),
  ADD KEY `mertua_id_peg_foreign` (`id_peg`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `naik_kgb`
--
ALTER TABLE `naik_kgb`
  ADD PRIMARY KEY (`id_naikkgb`),
  ADD KEY `naik_kgb_id_peg_foreign` (`id_peg`),
  ADD KEY `naik_kgb_kode_gapok_foreign` (`kode_gapok`);

--
-- Indexes for table `naik_pangkat`
--
ALTER TABLE `naik_pangkat`
  ADD PRIMARY KEY (`id_naikpangkat`),
  ADD KEY `naik_pangkat_id_peg_foreign` (`id_peg`),
  ADD KEY `naik_pangkat_kode_gol_foreign` (`kode_gol`);

--
-- Indexes for table `orangtua`
--
ALTER TABLE `orangtua`
  ADD PRIMARY KEY (`id_ortu`),
  ADD KEY `orangtua_id_peg_foreign` (`id_peg`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_peg`),
  ADD KEY `pegawai_kode_agama_foreign` (`kode_agama`),
  ADD KEY `pegawai_kode_unitkerja_foreign` (`kode_unitkerja`),
  ADD KEY `pegawai_kode_pdd_foreign` (`kode_pdd`),
  ADD KEY `pegawai_id_user_foreign` (`id_user`),
  ADD KEY `pegawai_kode_gol_foreign` (`kode_gol`),
  ADD KEY `pegawai_kode_jbts_foreign` (`kode_jbts`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pdd`),
  ADD KEY `pendidikan_id_peg_foreign` (`id_peg`),
  ADD KEY `pendidikan_kode_pdd_foreign` (`kode_pdd`);

--
-- Indexes for table `penghargaan`
--
ALTER TABLE `penghargaan`
  ADD PRIMARY KEY (`id_penghargaan`),
  ADD KEY `penghargaan_id_peg_foreign` (`id_peg`);

--
-- Indexes for table `pensiun`
--
ALTER TABLE `pensiun`
  ADD PRIMARY KEY (`id_pensiun`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `riwayat_diklat`
--
ALTER TABLE `riwayat_diklat`
  ADD PRIMARY KEY (`id_diklat`),
  ADD KEY `riwayat_diklat_id_peg_foreign` (`id_peg`),
  ADD KEY `riwayat_diklat_kode_diklat_foreign` (`kode_diklat`);

--
-- Indexes for table `riwayat_gapok`
--
ALTER TABLE `riwayat_gapok`
  ADD PRIMARY KEY (`id_gapok`),
  ADD KEY `riwayat_gapok_id_peg_foreign` (`id_peg`),
  ADD KEY `riwayat_gapok_kode_gapok_foreign` (`kode_gapok`);

--
-- Indexes for table `riwayat_indisipliner`
--
ALTER TABLE `riwayat_indisipliner`
  ADD PRIMARY KEY (`id_hukuman`),
  ADD KEY `riwayat_indisipliner_id_peg_foreign` (`id_peg`);

--
-- Indexes for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD PRIMARY KEY (`id_jabatan`),
  ADD KEY `riwayat_jabatan_id_peg_foreign` (`id_peg`),
  ADD KEY `riwayat_jabatan_kode_gol_foreign` (`kode_gol`),
  ADD KEY `riwayat_jabatan_kode_jbts_foreign` (`kode_jbts`);

--
-- Indexes for table `riwayat_jabatanftambahan`
--
ALTER TABLE `riwayat_jabatanftambahan`
  ADD PRIMARY KEY (`id_jbtft`),
  ADD KEY `riwayat_jabatanftambahan_id_peg_foreign` (`id_peg`),
  ADD KEY `riwayat_jabatanftambahan_kode_jbtft_foreign` (`kode_jbtft`);

--
-- Indexes for table `riwayat_jabatanfungsional`
--
ALTER TABLE `riwayat_jabatanfungsional`
  ADD PRIMARY KEY (`id_jabatanf`),
  ADD KEY `riwayat_jabatanfungsional_id_peg_foreign` (`id_peg`),
  ADD KEY `riwayat_jabatanfungsional_kode_gol_foreign` (`kode_gol`),
  ADD KEY `riwayat_jabatanfungsional_kode_jbtf_foreign` (`kode_jbtf`);

--
-- Indexes for table `riwayat_organisasi`
--
ALTER TABLE `riwayat_organisasi`
  ADD PRIMARY KEY (`id_org`),
  ADD KEY `riwayat_organisasi_id_peg_foreign` (`id_peg`);

--
-- Indexes for table `riwayat_pangkat`
--
ALTER TABLE `riwayat_pangkat`
  ADD PRIMARY KEY (`id_pangkat`),
  ADD KEY `riwayat_pangkat_id_peg_foreign` (`id_peg`),
  ADD KEY `riwayat_pangkat_kode_gol_foreign` (`kode_gol`);

--
-- Indexes for table `riwayat_satuankerja`
--
ALTER TABLE `riwayat_satuankerja`
  ADD PRIMARY KEY (`id_satuankerja`),
  ADD KEY `riwayat_satuankerja_id_peg_foreign` (`id_peg`),
  ADD KEY `riwayat_satuankerja_kode_unitkerja_foreign` (`kode_unitkerja`),
  ADD KEY `riwayat_satuankerja_kode_satuanorg_foreign` (`kode_satuanorg`);

--
-- Indexes for table `riwayat_stskepeg`
--
ALTER TABLE `riwayat_stskepeg`
  ADD PRIMARY KEY (`id_sts`),
  ADD KEY `riwayat_stskepeg_id_peg_foreign` (`id_peg`),
  ADD KEY `riwayat_stskepeg_kode_gol_foreign` (`kode_gol`),
  ADD KEY `riwayat_stskepeg_kode_jbts_foreign` (`kode_jbts`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saudara`
--
ALTER TABLE `saudara`
  ADD PRIMARY KEY (`id_saudara`),
  ADD KEY `saudara_id_peg_foreign` (`id_peg`);

--
-- Indexes for table `tm_agama`
--
ALTER TABLE `tm_agama`
  ADD PRIMARY KEY (`kode_agama`);

--
-- Indexes for table `tm_diklat`
--
ALTER TABLE `tm_diklat`
  ADD PRIMARY KEY (`kode_diklat`);

--
-- Indexes for table `tm_gapok`
--
ALTER TABLE `tm_gapok`
  ADD PRIMARY KEY (`kode_gapok`);

--
-- Indexes for table `tm_golongan`
--
ALTER TABLE `tm_golongan`
  ADD PRIMARY KEY (`kode_gol`);

--
-- Indexes for table `tm_jabatanf`
--
ALTER TABLE `tm_jabatanf`
  ADD PRIMARY KEY (`kode_jbtf`);

--
-- Indexes for table `tm_jabatanft`
--
ALTER TABLE `tm_jabatanft`
  ADD PRIMARY KEY (`kode_jbtft`);

--
-- Indexes for table `tm_jabatanstruktural`
--
ALTER TABLE `tm_jabatanstruktural`
  ADD PRIMARY KEY (`kode_jbts`);

--
-- Indexes for table `tm_pendidikan`
--
ALTER TABLE `tm_pendidikan`
  ADD PRIMARY KEY (`kode_pdd`);

--
-- Indexes for table `tm_ppkenaikangaji`
--
ALTER TABLE `tm_ppkenaikangaji`
  ADD PRIMARY KEY (`kode_ppgaji`);

--
-- Indexes for table `tm_satuanorganisasi`
--
ALTER TABLE `tm_satuanorganisasi`
  ADD PRIMARY KEY (`kode_satuanorg`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`kode_unitkerja`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alamat`
--
ALTER TABLE `alamat`
  MODIFY `id_alamat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anak`
--
ALTER TABLE `anak`
  MODIFY `id_anak` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ciri_fisik`
--
ALTER TABLE `ciri_fisik`
  MODIFY `id_fisik` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `istri_suami`
--
ALTER TABLE `istri_suami`
  MODIFY `id_istrisuami` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kunjungan_luarnegeri`
--
ALTER TABLE `kunjungan_luarnegeri`
  MODIFY `id_kunjungan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mertua`
--
ALTER TABLE `mertua`
  MODIFY `id_mertua` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `naik_kgb`
--
ALTER TABLE `naik_kgb`
  MODIFY `id_naikkgb` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `naik_pangkat`
--
ALTER TABLE `naik_pangkat`
  MODIFY `id_naikpangkat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orangtua`
--
ALTER TABLE `orangtua`
  MODIFY `id_ortu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_peg` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pdd` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penghargaan`
--
ALTER TABLE `penghargaan`
  MODIFY `id_penghargaan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pensiun`
--
ALTER TABLE `pensiun`
  MODIFY `id_pensiun` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_diklat`
--
ALTER TABLE `riwayat_diklat`
  MODIFY `id_diklat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_gapok`
--
ALTER TABLE `riwayat_gapok`
  MODIFY `id_gapok` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_indisipliner`
--
ALTER TABLE `riwayat_indisipliner`
  MODIFY `id_hukuman` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  MODIFY `id_jabatan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_jabatanftambahan`
--
ALTER TABLE `riwayat_jabatanftambahan`
  MODIFY `id_jbtft` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_jabatanfungsional`
--
ALTER TABLE `riwayat_jabatanfungsional`
  MODIFY `id_jabatanf` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_organisasi`
--
ALTER TABLE `riwayat_organisasi`
  MODIFY `id_org` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_pangkat`
--
ALTER TABLE `riwayat_pangkat`
  MODIFY `id_pangkat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_satuankerja`
--
ALTER TABLE `riwayat_satuankerja`
  MODIFY `id_satuankerja` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_stskepeg`
--
ALTER TABLE `riwayat_stskepeg`
  MODIFY `id_sts` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `saudara`
--
ALTER TABLE `saudara`
  MODIFY `id_saudara` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_agama`
--
ALTER TABLE `tm_agama`
  MODIFY `kode_agama` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tm_diklat`
--
ALTER TABLE `tm_diklat`
  MODIFY `kode_diklat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_gapok`
--
ALTER TABLE `tm_gapok`
  MODIFY `kode_gapok` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_golongan`
--
ALTER TABLE `tm_golongan`
  MODIFY `kode_gol` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_jabatanf`
--
ALTER TABLE `tm_jabatanf`
  MODIFY `kode_jbtf` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_jabatanft`
--
ALTER TABLE `tm_jabatanft`
  MODIFY `kode_jbtft` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_jabatanstruktural`
--
ALTER TABLE `tm_jabatanstruktural`
  MODIFY `kode_jbts` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tm_pendidikan`
--
ALTER TABLE `tm_pendidikan`
  MODIFY `kode_pdd` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tm_ppkenaikangaji`
--
ALTER TABLE `tm_ppkenaikangaji`
  MODIFY `kode_ppgaji` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_satuanorganisasi`
--
ALTER TABLE `tm_satuanorganisasi`
  MODIFY `kode_satuanorg` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `kode_unitkerja` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alamat`
--
ALTER TABLE `alamat`
  ADD CONSTRAINT `alamat_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE;

--
-- Constraints for table `anak`
--
ALTER TABLE `anak`
  ADD CONSTRAINT `anak_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `anak_kode_pdd_foreign` FOREIGN KEY (`kode_pdd`) REFERENCES `tm_pendidikan` (`kode_pdd`) ON DELETE CASCADE;

--
-- Constraints for table `ciri_fisik`
--
ALTER TABLE `ciri_fisik`
  ADD CONSTRAINT `ciri_fisik_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE;

--
-- Constraints for table `istri_suami`
--
ALTER TABLE `istri_suami`
  ADD CONSTRAINT `istri_suami_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `istri_suami_kode_pdd_foreign` FOREIGN KEY (`kode_pdd`) REFERENCES `tm_pendidikan` (`kode_pdd`) ON DELETE CASCADE;

--
-- Constraints for table `kunjungan_luarnegeri`
--
ALTER TABLE `kunjungan_luarnegeri`
  ADD CONSTRAINT `kunjungan_luarnegeri_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE;

--
-- Constraints for table `mertua`
--
ALTER TABLE `mertua`
  ADD CONSTRAINT `mertua_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE;

--
-- Constraints for table `naik_kgb`
--
ALTER TABLE `naik_kgb`
  ADD CONSTRAINT `naik_kgb_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `naik_kgb_kode_gapok_foreign` FOREIGN KEY (`kode_gapok`) REFERENCES `tm_gapok` (`kode_gapok`) ON DELETE CASCADE;

--
-- Constraints for table `naik_pangkat`
--
ALTER TABLE `naik_pangkat`
  ADD CONSTRAINT `naik_pangkat_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `naik_pangkat_kode_gol_foreign` FOREIGN KEY (`kode_gol`) REFERENCES `tm_golongan` (`kode_gol`) ON DELETE CASCADE;

--
-- Constraints for table `orangtua`
--
ALTER TABLE `orangtua`
  ADD CONSTRAINT `orangtua_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pegawai_kode_agama_foreign` FOREIGN KEY (`kode_agama`) REFERENCES `tm_agama` (`kode_agama`) ON DELETE CASCADE,
  ADD CONSTRAINT `pegawai_kode_gol_foreign` FOREIGN KEY (`kode_gol`) REFERENCES `tm_golongan` (`kode_gol`) ON DELETE CASCADE,
  ADD CONSTRAINT `pegawai_kode_jbts_foreign` FOREIGN KEY (`kode_jbts`) REFERENCES `tm_jabatanstruktural` (`kode_jbts`) ON DELETE CASCADE,
  ADD CONSTRAINT `pegawai_kode_pdd_foreign` FOREIGN KEY (`kode_pdd`) REFERENCES `tm_pendidikan` (`kode_pdd`) ON DELETE CASCADE,
  ADD CONSTRAINT `pegawai_kode_unitkerja_foreign` FOREIGN KEY (`kode_unitkerja`) REFERENCES `unit_kerja` (`kode_unitkerja`) ON DELETE CASCADE;

--
-- Constraints for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `pendidikan_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `pendidikan_kode_pdd_foreign` FOREIGN KEY (`kode_pdd`) REFERENCES `tm_pendidikan` (`kode_pdd`) ON DELETE CASCADE;

--
-- Constraints for table `penghargaan`
--
ALTER TABLE `penghargaan`
  ADD CONSTRAINT `penghargaan_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_diklat`
--
ALTER TABLE `riwayat_diklat`
  ADD CONSTRAINT `riwayat_diklat_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_diklat_kode_diklat_foreign` FOREIGN KEY (`kode_diklat`) REFERENCES `tm_diklat` (`kode_diklat`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_gapok`
--
ALTER TABLE `riwayat_gapok`
  ADD CONSTRAINT `riwayat_gapok_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_gapok_kode_gapok_foreign` FOREIGN KEY (`kode_gapok`) REFERENCES `tm_gapok` (`kode_gapok`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_indisipliner`
--
ALTER TABLE `riwayat_indisipliner`
  ADD CONSTRAINT `riwayat_indisipliner_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD CONSTRAINT `riwayat_jabatan_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_jabatan_kode_gol_foreign` FOREIGN KEY (`kode_gol`) REFERENCES `tm_golongan` (`kode_gol`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_jabatan_kode_jbts_foreign` FOREIGN KEY (`kode_jbts`) REFERENCES `tm_jabatanstruktural` (`kode_jbts`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_jabatanftambahan`
--
ALTER TABLE `riwayat_jabatanftambahan`
  ADD CONSTRAINT `riwayat_jabatanftambahan_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_jabatanftambahan_kode_jbtft_foreign` FOREIGN KEY (`kode_jbtft`) REFERENCES `tm_jabatanft` (`kode_jbtft`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_jabatanfungsional`
--
ALTER TABLE `riwayat_jabatanfungsional`
  ADD CONSTRAINT `riwayat_jabatanfungsional_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_jabatanfungsional_kode_gol_foreign` FOREIGN KEY (`kode_gol`) REFERENCES `tm_golongan` (`kode_gol`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_jabatanfungsional_kode_jbtf_foreign` FOREIGN KEY (`kode_jbtf`) REFERENCES `tm_jabatanf` (`kode_jbtf`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_organisasi`
--
ALTER TABLE `riwayat_organisasi`
  ADD CONSTRAINT `riwayat_organisasi_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_pangkat`
--
ALTER TABLE `riwayat_pangkat`
  ADD CONSTRAINT `riwayat_pangkat_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_pangkat_kode_gol_foreign` FOREIGN KEY (`kode_gol`) REFERENCES `tm_golongan` (`kode_gol`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_satuankerja`
--
ALTER TABLE `riwayat_satuankerja`
  ADD CONSTRAINT `riwayat_satuankerja_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_satuankerja_kode_satuanorg_foreign` FOREIGN KEY (`kode_satuanorg`) REFERENCES `tm_satuanorganisasi` (`kode_satuanorg`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_satuankerja_kode_unitkerja_foreign` FOREIGN KEY (`kode_unitkerja`) REFERENCES `unit_kerja` (`kode_unitkerja`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_stskepeg`
--
ALTER TABLE `riwayat_stskepeg`
  ADD CONSTRAINT `riwayat_stskepeg_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_stskepeg_kode_gol_foreign` FOREIGN KEY (`kode_gol`) REFERENCES `tm_golongan` (`kode_gol`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_stskepeg_kode_jbts_foreign` FOREIGN KEY (`kode_jbts`) REFERENCES `tm_jabatanstruktural` (`kode_jbts`) ON DELETE CASCADE;

--
-- Constraints for table `saudara`
--
ALTER TABLE `saudara`
  ADD CONSTRAINT `saudara_id_peg_foreign` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

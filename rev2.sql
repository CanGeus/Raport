-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 03:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rev2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'site administrator'),
(2, 'guru', 'site guru'),
(3, 'user', 'regular user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `role_id` int(11) NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`role_id`, `group_id`, `user_id`) VALUES
(12, 1, 20),
(19, 1, 30),
(8, 2, 15),
(9, 2, 16),
(10, 2, 17),
(11, 2, 18),
(18, 2, 29),
(21, 2, 32),
(2, 3, 7),
(3, 3, 8),
(4, 3, 9),
(5, 3, 10),
(6, 3, 11),
(20, 3, 31);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'canaditya07@gmail.com', 2, '2023-01-01 02:59:25', 1),
(2, '::1', 'canaditya07@gmail.com', 2, '2023-01-01 03:46:34', 1),
(3, '::1', 'cangeus07@gmail.com', 3, '2023-01-01 05:20:41', 1),
(4, '::1', 'cangeus07@gmail.com', 3, '2023-01-01 12:23:32', 1),
(5, '::1', 'canaditya07@gmail.com', 2, '2023-01-01 12:55:13', 1),
(6, '::1', 'cangeus07@gmail.com', 3, '2023-01-01 12:56:12', 1),
(7, '::1', 'cangeus07@gmail.com', 3, '2023-01-02 08:44:40', 1),
(8, '::1', 'canaditya07@gmail.com', 2, '2023-01-02 09:40:40', 1),
(9, '::1', 'cangeus07@gmail.com', 3, '2023-01-02 09:45:07', 1),
(10, '::1', 'canaditya07@gmail.com', 2, '2023-01-02 09:45:54', 1),
(11, '::1', 'cangeus07@gmail.com', 3, '2023-01-02 10:15:47', 1),
(12, '::1', 'cangeus07@gmail.com', 3, '2023-01-02 10:29:52', 1),
(13, '::1', 'canaditya07@gmail.com', 2, '2023-01-02 10:30:04', 1),
(14, '::1', 'cangeus07@gmail.com', 3, '2023-01-02 12:00:18', 1),
(15, '::1', 'cangeus07@gmail.com', 3, '2023-01-02 23:38:13', 1),
(16, '::1', 'canaditya07@gmail.com', 2, '2023-01-02 23:39:03', 1),
(17, '::1', 'canaditya15@gmail.com', 4, '2023-01-02 23:42:20', 1),
(18, '::1', 'canaditya15@gmail.com', 4, '2023-01-02 23:45:08', 1),
(19, '::1', 'dealokaputri@gmail.com', 5, '2023-01-02 23:47:56', 1),
(20, '::1', 'cangeus07@gmail.com', 3, '2023-01-02 23:53:26', 1),
(21, '::1', 'cangeus07@gmail.com', 3, '2023-01-03 00:04:13', 1),
(22, '::1', 'cangeus07@gmail.com', 3, '2023-01-03 05:06:50', 1),
(23, '::1', 'cangeus07@gmail.com', 3, '2023-01-03 09:53:04', 1),
(24, '::1', 'cangeus07@gmail.com', 3, '2023-01-03 22:25:52', 1),
(25, '::1', 'cangeus07@gmail.com', 3, '2023-01-04 09:04:08', 1),
(26, '::1', '19986910@gmail.com', 6, '2023-01-04 09:41:43', 1),
(27, '::1', 'cangeu2s', NULL, '2023-01-05 08:56:33', 0),
(28, '::1', 'cangeus2', NULL, '2023-01-05 09:00:54', 0),
(29, '::1', 'cangeus', NULL, '2023-01-05 09:01:09', 0),
(30, '::1', 'cangeus1', NULL, '2023-01-05 09:01:16', 0),
(31, '::1', 'cangeus', NULL, '2023-01-05 09:01:37', 0),
(32, '::1', 'cangeus', NULL, '2023-01-05 09:01:40', 0),
(33, '::1', '19986910', NULL, '2023-01-05 09:02:46', 0),
(34, '::1', 'cangeus', NULL, '2023-01-05 09:03:00', 0),
(35, '::1', '19986910@gmail.com', 6, '2023-01-05 09:03:06', 1),
(36, '::1', '19987006@gmail.com', 7, '2023-01-05 09:19:06', 1),
(37, '::1', '19986910@gmail.com', 6, '2023-01-05 10:14:48', 1),
(38, '::1', '19986976@gmail.com', 11, '2023-01-05 11:20:49', 1),
(39, '::1', '196703211990012004@gmail.com', 12, '2023-01-05 11:46:07', 1),
(40, '::1', '196703211990012004@gmail.com', 12, '2023-01-05 11:48:27', 1),
(41, '::1', '196703211990012004@gmail.com', 13, '2023-01-05 11:54:31', 1),
(42, '::1', '198008042006041004@gmail.com', 18, '2023-01-06 10:53:59', 1),
(43, '::1', '196703211990012004@gmail.com', 13, '2023-01-06 11:47:44', 1),
(44, '::1', '19986910@gmail.com', 6, '2023-01-06 12:03:04', 1),
(45, '::1', '196703211990012004@gmail.com', 13, '2023-01-06 12:09:10', 1),
(46, '::1', '196703211990012004@gmail.com', 13, '2023-01-07 01:23:43', 1),
(47, '::1', '19986910@gmail.com', 6, '2023-01-07 02:20:22', 1),
(48, '::1', '196703211990012004@gmail.com', 13, '2023-01-07 02:57:14', 1),
(49, '::1', '196703211990012004@gmail.com', 13, '2023-01-08 05:34:15', 1),
(50, '::1', '196703211990012004@gmail.com', 13, '2023-01-08 08:16:25', 1),
(51, '::1', '19986910@gmail.com', 6, '2023-01-08 13:10:07', 1),
(52, '::1', '196703211990012004@gmail.com', 13, '2023-01-08 16:13:38', 1),
(53, '::1', 'admin@gmail.com', 19, '2023-01-08 16:31:24', 1),
(54, '::1', '196703211990012004@gmail.com', 13, '2023-01-08 16:53:44', 1),
(55, '::1', 'admin', NULL, '2023-01-08 17:00:01', 0),
(56, '::1', 'admin', NULL, '2023-01-08 17:00:12', 0),
(57, '::1', 'admin', NULL, '2023-01-08 17:00:23', 0),
(58, '::1', 'admin', NULL, '2023-01-08 17:00:37', 0),
(59, '::1', 'admin', NULL, '2023-01-08 17:01:09', 0),
(60, '::1', 'admin@gmail.com', 20, '2023-01-08 17:01:36', 1),
(61, '::1', 'admin@gmail.com', 20, '2023-01-08 23:14:59', 1),
(62, '::1', 'admin@gmail.com', 20, '2023-01-09 05:12:30', 1),
(63, '::1', 'admin@gmail.com', 20, '2023-01-09 09:44:42', 1),
(64, '::1', '196703211990012004@gmail.com', 13, '2023-01-09 10:45:59', 1),
(65, '::1', 'admin@gmail.com', 20, '2023-01-09 17:02:34', 1),
(66, '::1', '196703211990012004@gmail.com', 13, '2023-01-09 17:02:50', 1),
(67, '::1', '19986910@gmail.com', 6, '2023-01-09 17:26:13', 1),
(68, '::1', '19986910@gmail.com', 6, '2023-01-09 21:21:37', 1),
(69, '::1', '196703211990012004@gmail.com', 13, '2023-01-09 21:26:54', 1),
(70, '::1', 'admin@gmail.com', 20, '2023-01-09 21:34:01', 1),
(71, '::1', 'admin@gmail.com', 20, '2023-01-10 00:31:20', 1),
(72, '::1', 'admin@gmail.com', 20, '2023-01-10 04:07:58', 1),
(73, '::1', 'admin@gmail.com', 20, '2023-01-10 07:26:51', 1),
(74, '::1', 'admin@gmail.com', 20, '2023-01-10 07:27:07', 1),
(75, '::1', '19986960@gmail.com', 10, '2023-01-10 10:51:30', 1),
(76, '::1', 'admin@gmail.com', 20, '2023-01-10 20:09:33', 1),
(77, '::1', 'ojak@gmail.com', 30, '2023-01-10 20:12:12', 1),
(78, '::1', '19986910@gmail.com', 6, '2023-01-10 20:27:52', 1),
(79, '::1', '196810151992032012@gmail.com', 15, '2023-01-10 20:30:57', 1),
(80, '::1', 'ojak@gmail.com', 30, '2023-01-10 20:35:10', 1),
(81, '::1', 'ojak@gmail.com', 30, '2023-01-11 04:54:49', 1),
(82, '::1', '196810151992032012@gmail.com', 15, '2023-01-11 04:58:16', 1),
(83, '::1', 'ojak@gmail.com', 30, '2023-01-11 05:07:18', 1),
(84, '::1', '19986948@gmail.com', 31, '2023-01-11 05:07:50', 1),
(85, '::1', 'ojak@gmail.com', 30, '2023-01-11 05:26:34', 1),
(86, '::1', '19986910@gmail.com', 6, '2023-01-11 10:16:48', 1),
(87, '::1', '19986910@gmail.com', 6, '2023-01-11 10:23:55', 1),
(88, '::1', 'admin@gmail.com', 20, '2023-01-11 10:26:09', 1),
(89, '::1', '196810151992032012@gmail.com', 15, '2023-01-11 10:26:53', 1),
(90, '::1', 'admin', NULL, '2023-01-11 10:27:11', 0),
(91, '::1', 'admin@gmail.com', 20, '2023-01-11 10:27:17', 1),
(92, '::1', '19986976@gmail.com', 11, '2023-01-11 10:28:57', 1),
(93, '::1', '19986976@gmail.com', 11, '2023-01-11 10:28:57', 1),
(94, '::1', 'ojak@gmail.com', 30, '2023-01-11 12:11:27', 1),
(95, '::1', '19987006@gmail.com', 7, '2023-01-11 12:28:10', 1),
(96, '::1', '19987006@gmail.com', 7, '2023-01-11 13:07:26', 1),
(97, '::1', 'ojak@gmail.com', 30, '2023-01-11 13:19:07', 1),
(98, '::1', 'ojak@gmail.com', 30, '2023-01-11 13:19:08', 1),
(99, '::1', '19987006@gmail.com', 7, '2023-01-11 13:19:55', 1),
(100, '::1', '19987006@gmail.com', 7, '2023-01-11 13:19:55', 1),
(101, '::1', '196703211990012004@gmail.com', 32, '2023-01-11 13:20:14', 1),
(102, '::1', '196703211990012004@gmail.com', 32, '2023-01-11 13:20:15', 1),
(103, '::1', '19987006@gmail.com', 7, '2023-01-11 13:23:05', 1),
(104, '::1', '19986976@gmail.com', 11, '2023-01-11 19:18:39', 1),
(105, '::1', 'ojak', NULL, '2023-01-11 20:51:16', 0),
(106, '::1', 'ojak@gmail.com', 30, '2023-01-11 20:51:26', 1),
(107, '::1', 'admin', NULL, '2023-01-11 20:52:17', 0),
(108, '::1', 'admin@gmail.com', 20, '2023-01-11 20:52:25', 1),
(109, '::1', '196810151992032012@gmail.com', 15, '2023-01-11 21:53:37', 1),
(110, '::1', '19986948@gmail.com', 31, '2023-01-11 21:56:19', 1),
(111, '::1', 'admin', NULL, '2023-01-11 22:01:07', 0),
(112, '::1', 'admin@gmail.com', 20, '2023-01-11 22:01:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-user', 'manage all users'),
(2, 'manage-profile', 'manage user\'s profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kelas` int(11) DEFAULT NULL,
  `jenis_kelamin` varchar(25) DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_tlp` varchar(15) DEFAULT NULL,
  `img` varchar(50) NOT NULL DEFAULT 'default.svg',
  `role` varchar(10) NOT NULL DEFAULT 'guru'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nip`, `nama`, `kelas`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `no_tlp`, `img`, `role`) VALUES
('196703211990012004', 'Istikomah, S.Pd.', 1, 'perempuan', 'surakarta', '1990-01-30', 'islam', 'surakarta', '088811122233', 'default.svg', 'guru'),
('196805011991011001', 'Aris Hendaris, S.Pd.', 2, 'laki - laki', 'surakarta', '1990-01-30', 'islam', 'surakarta', '088811122231', 'default.svg', 'guru'),
('196806121994121001', 'Yuni Susanto, S.Pd., M.Pd', NULL, 'perempuan', 'surakarta', '1990-01-30', 'islam', 'surakarta', '088811122240', 'default.svg', 'guru'),
('196810151992032012', 'Tuty Suprapti, S.Pd.', 3, 'perempuan', 'surakarta', '1990-01-30', 'islam', 'sukoharjo', '088811122232', 'IMG_5906.JPG', 'guru'),
('197004041995122004', 'Muliana Hertati, S.Pd.', NULL, 'perempuan', 'surakarta', '1990-01-30', 'islam', 'sukoharjo', '088811122241', 'default.svg', 'guru'),
('197702082006041004', 'Sarwo Widodo, S.Si.', 5, 'laki - laki', 'surakarta', '1990-01-30', 'islam', 'kartasura', '088811122236', 'default.svg', 'guru'),
('197708262008011004', 'Firmansyah, S.Pd.', 4, 'laki - laki', 'surakarta', '1990-01-30', 'islam', 'surakarta', '088811122234', 'default.svg', 'guru'),
('197903142009022003', 'Nur Alfianti, S.Pd.', NULL, 'perempuan', 'surakarta', '1990-01-30', 'islam', 'surakarta', '088811122239', 'default.svg', 'guru'),
('198008042006041004', 'Rohmat, S.Pd.I.', 6, 'laki - laki', 'surakarta', '1990-01-30', 'islam', 'surakarta', '088811122237', 'default.svg', 'guru');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode_mapel`, `mapel`) VALUES
(1, 'pai', 'agama'),
(2, 'bindo', 'bahasa indonesia'),
(3, 'bing', 'bahasa inggris'),
(4, 'bjawa', 'bahsa jawa'),
(5, 'ipa', 'ilmu pengetahuan alam'),
(6, 'ips', 'ilmu pengetahuan sosial'),
(7, 'mtk', 'matematika'),
(8, 'penja', 'olahraga'),
(9, 'ppkn', 'pendidikan kewarganegaraan'),
(10, 'sbk', 'seni dan budaya'),
(11, 'tik', 'teknologi informasi komputer');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1672561872, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `mapel` varchar(30) DEFAULT NULL,
  `satu` int(11) DEFAULT NULL,
  `dua` int(11) DEFAULT NULL,
  `tiga` int(11) DEFAULT NULL,
  `empat` int(11) DEFAULT NULL,
  `lima` int(11) DEFAULT NULL,
  `enam` int(11) DEFAULT NULL,
  `uts` int(11) DEFAULT NULL,
  `uas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `nisn`, `mapel`, `satu`, `dua`, `tiga`, `empat`, `lima`, `enam`, `uts`, `uas`) VALUES
(1, '19986910', 'agama', 75, 80, 85, 80, 80, 90, 98, 85),
(2, '19986911', 'agama', 90, 80, 80, 85, 80, 90, 80, 80),
(3, '19986912', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '19986912', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '19986912', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '19986912', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '19986912', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '19986912', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '19986912', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '19986912', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '19986912', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '19986912', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '19986913', 'agama', 90, NULL, NULL, NULL, NULL, NULL, 77, NULL),
(14, '19986913', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '19986913', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '19986913', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '19986913', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '19986913', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '19986913', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '19986913', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '19986913', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '19986913', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '19986914', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '19986914', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '19986914', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '19986914', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '19986914', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '19986914', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '19986914', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '19986914', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '19986914', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '19986914', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '19986915', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '19986915', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '19986915', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '19986915', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '19986915', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '19986915', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '19986915', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '19986915', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '19986915', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '19986915', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '19986916', 'agama', 0, NULL, NULL, NULL, NULL, NULL, 88, NULL),
(44, '19986916', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '19986916', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '19986916', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '19986916', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '19986916', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '19986916', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '19986916', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '19986916', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '19986916', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '19986917', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '19986917', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '19986917', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '19986917', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '19986917', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '19986917', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '19986917', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '19986917', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '19986917', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '19986917', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '19986918', 'agama', 80, NULL, NULL, NULL, NULL, NULL, 88, NULL),
(64, '19986918', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '19986918', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '19986918', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '19986918', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '19986918', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '19986918', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '19986918', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '19986918', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '19986918', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '19986919', 'agama', 91, 90, NULL, NULL, NULL, NULL, 90, NULL),
(74, '19986919', 'bahasa indonesia', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '19986919', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '19986919', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '19986919', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '19986919', 'bahasa inggris', 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '19986919', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '19986919', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '19986919', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '19986919', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '19986920', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '19986920', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '19986920', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '19986920', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '19986920', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '19986920', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '19986920', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '19986920', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '19986920', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '19986920', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '19986921', 'agama', 80, NULL, NULL, NULL, NULL, NULL, 75, NULL),
(94, '19986921', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '19986921', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '19986921', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '19986921', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '19986921', 'bahasa inggris', 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '19986921', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '19986921', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '19986921', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '19986921', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '19986922', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '19986922', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '19986922', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '19986922', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '19986922', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '19986922', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '19986922', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '19986922', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '19986922', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '19986922', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '19986923', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '19986923', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '19986923', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '19986923', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '19986923', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '19986923', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '19986923', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '19986923', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '19986923', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '19986923', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '19986924', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '19986924', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '19986924', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '19986924', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '19986924', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '19986924', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '19986924', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '19986924', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '19986924', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '19986924', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '19986925', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '19986925', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '19986925', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '19986925', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '19986925', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '19986925', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '19986925', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '19986925', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '19986925', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '19986925', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '19986926', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '19986926', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '19986926', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '19986926', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '19986926', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '19986926', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '19986926', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '19986926', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '19986926', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '19986926', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '19986927', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '19986927', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '19986927', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '19986927', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '19986927', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '19986927', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '19986927', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '19986927', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '19986927', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '19986927', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '19986928', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '19986928', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '19986928', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '19986928', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '19986928', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '19986928', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '19986928', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '19986928', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '19986928', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '19986928', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '19986929', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '19986929', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '19986929', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '19986929', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '19986929', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '19986929', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '19986929', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '19986929', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '19986929', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '19986929', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '19986930', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '19986930', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '19986930', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '19986930', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '19986930', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '19986930', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '19986930', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '19986930', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '19986930', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '19986930', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '19986931', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '19986931', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '19986931', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '19986931', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '19986931', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '19986931', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '19986931', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '19986931', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '19986931', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '19986931', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '19986932', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '19986932', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '19986932', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '19986932', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '19986932', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '19986932', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '19986932', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '19986932', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '19986932', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '19986932', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '19986933', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '19986933', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '19986933', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '19986933', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '19986933', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '19986933', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '19986933', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '19986933', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '19986933', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '19986933', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '19986934', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '19986934', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '19986934', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '19986934', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '19986934', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '19986934', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '19986934', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '19986934', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '19986934', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '19986934', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '19986935', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '19986935', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '19986935', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '19986935', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '19986935', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '19986935', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '19986935', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '19986935', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '19986935', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '19986935', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '19986936', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '19986936', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '19986936', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '19986936', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '19986936', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '19986936', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '19986936', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '19986936', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '19986936', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '19986936', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '19986937', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '19986937', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '19986937', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '19986937', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '19986937', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '19986937', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '19986937', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '19986937', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '19986937', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '19986937', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '19986938', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '19986938', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '19986938', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '19986938', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '19986938', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '19986938', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '19986938', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '19986938', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '19986938', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '19986938', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '19986939', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '19986939', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '19986939', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '19986939', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '19986939', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '19986939', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '19986939', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '19986939', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '19986939', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '19986939', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '19986940', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '19986940', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '19986940', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '19986940', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '19986940', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '19986940', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '19986940', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '19986940', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '19986940', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '19986940', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '19986941', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '19986941', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '19986941', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, '19986941', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '19986941', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '19986941', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, '19986941', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, '19986941', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, '19986941', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, '19986941', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, '19986942', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, '19986942', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, '19986942', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, '19986942', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, '19986942', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, '19986942', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, '19986942', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, '19986942', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '19986942', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, '19986942', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, '19986943', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, '19986943', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, '19986943', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, '19986943', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, '19986943', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, '19986943', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, '19986943', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, '19986943', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, '19986943', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, '19986943', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, '19986944', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, '19986944', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, '19986944', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, '19986944', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, '19986944', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, '19986944', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, '19986944', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, '19986944', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, '19986944', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, '19986944', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, '19986945', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, '19986945', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, '19986945', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, '19986945', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, '19986945', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, '19986945', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, '19986945', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, '19986945', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, '19986945', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, '19986945', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, '19986946', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, '19986946', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, '19986946', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, '19986946', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, '19986946', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, '19986946', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, '19986946', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, '19986946', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, '19986946', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, '19986946', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, '19986947', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, '19986947', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, '19986947', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, '19986947', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, '19986947', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, '19986947', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, '19986947', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, '19986947', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, '19986947', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, '19986947', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, '19986948', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, '19986948', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, '19986948', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, '19986948', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, '19986948', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, '19986948', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, '19986948', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, '19986948', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, '19986948', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, '19986948', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, '19986949', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, '19986949', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, '19986949', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, '19986949', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, '19986949', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, '19986949', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, '19986949', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, '19986949', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, '19986949', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, '19986949', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, '19986950', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, '19986950', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, '19986950', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, '19986950', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, '19986950', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, '19986950', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, '19986950', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, '19986950', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, '19986950', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, '19986950', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, '19986951', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, '19986951', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, '19986951', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, '19986951', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, '19986951', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, '19986951', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, '19986951', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, '19986951', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, '19986951', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, '19986951', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, '19986952', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, '19986952', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, '19986952', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, '19986952', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, '19986952', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, '19986952', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, '19986952', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, '19986952', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, '19986952', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, '19986952', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, '19986953', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, '19986953', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, '19986953', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, '19986953', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, '19986953', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, '19986953', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, '19986953', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, '19986953', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, '19986953', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, '19986953', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, '19986954', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, '19986954', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, '19986954', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, '19986954', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, '19986954', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, '19986954', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, '19986954', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, '19986954', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, '19986954', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, '19986954', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, '19986955', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, '19986955', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, '19986955', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, '19986955', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, '19986955', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, '19986955', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, '19986955', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, '19986955', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, '19986955', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, '19986955', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, '19986956', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, '19986956', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, '19986956', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, '19986956', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, '19986956', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, '19986956', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, '19986956', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, '19986956', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, '19986956', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, '19986956', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, '19986957', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, '19986957', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, '19986957', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, '19986957', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, '19986957', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, '19986957', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, '19986957', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, '19986957', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, '19986957', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, '19986957', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, '19986958', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, '19986958', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, '19986958', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, '19986958', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, '19986958', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, '19986958', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, '19986958', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, '19986958', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, '19986958', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, '19986958', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, '19986959', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, '19986959', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, '19986959', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, '19986959', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, '19986959', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, '19986959', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, '19986959', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, '19986959', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, '19986959', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, '19986959', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, '19986960', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, '19986960', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, '19986960', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, '19986960', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, '19986960', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, '19986960', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, '19986960', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, '19986960', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, '19986960', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, '19986960', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, '19986961', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, '19986961', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, '19986961', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, '19986961', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, '19986961', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, '19986961', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, '19986961', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, '19986961', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, '19986961', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, '19986961', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, '19986962', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, '19986962', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, '19986962', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, '19986962', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, '19986962', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, '19986962', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, '19986962', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, '19986962', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, '19986962', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, '19986962', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, '19986963', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, '19986963', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, '19986963', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, '19986963', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, '19986963', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, '19986963', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, '19986963', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, '19986963', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, '19986963', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, '19986963', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, '19986964', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, '19986964', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, '19986964', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, '19986964', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, '19986964', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, '19986964', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, '19986964', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, '19986964', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, '19986964', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, '19986964', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, '19986965', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, '19986965', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, '19986965', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, '19986965', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, '19986965', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, '19986965', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, '19986965', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, '19986965', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, '19986965', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, '19986965', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, '19986966', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, '19986966', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, '19986966', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, '19986966', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, '19986966', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, '19986966', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, '19986966', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, '19986966', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, '19986966', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, '19986966', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, '19986967', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, '19986967', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, '19986967', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, '19986967', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, '19986967', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, '19986967', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, '19986967', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, '19986967', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, '19986967', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, '19986967', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, '19986968', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, '19986968', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, '19986968', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, '19986968', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, '19986968', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, '19986968', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, '19986968', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, '19986968', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, '19986968', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, '19986968', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, '19986969', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, '19986969', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, '19986969', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, '19986969', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, '19986969', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, '19986969', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, '19986969', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, '19986969', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, '19986969', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, '19986969', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, '19986970', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, '19986970', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, '19986970', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, '19986970', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, '19986970', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, '19986970', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, '19986970', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, '19986970', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, '19986970', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, '19986970', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, '19986971', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `nilai` (`id`, `nisn`, `mapel`, `satu`, `dua`, `tiga`, `empat`, `lima`, `enam`, `uts`, `uas`) VALUES
(594, '19986971', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, '19986971', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, '19986971', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, '19986971', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, '19986971', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, '19986971', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, '19986971', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, '19986971', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, '19986971', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, '19986972', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, '19986972', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, '19986972', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, '19986972', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, '19986972', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, '19986972', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, '19986972', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, '19986972', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, '19986972', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, '19986972', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, '19986973', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, '19986973', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, '19986973', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, '19986973', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, '19986973', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, '19986973', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, '19986973', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, '19986973', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, '19986973', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, '19986973', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, '19986974', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, '19986974', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, '19986974', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, '19986974', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(627, '19986974', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, '19986974', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(629, '19986974', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, '19986974', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, '19986974', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, '19986974', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(633, '19986975', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, '19986975', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, '19986975', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, '19986975', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, '19986975', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, '19986975', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, '19986975', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, '19986975', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, '19986975', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, '19986975', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, '19986976', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, '19986976', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, '19986976', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, '19986976', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, '19986976', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, '19986976', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, '19986976', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, '19986976', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, '19986976', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, '19986976', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, '19986977', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, '19986977', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, '19986977', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, '19986977', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, '19986977', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, '19986977', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, '19986977', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, '19986977', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, '19986977', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, '19986977', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, '19986978', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, '19986978', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, '19986978', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, '19986978', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, '19986978', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, '19986978', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, '19986978', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, '19986978', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, '19986978', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, '19986978', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, '19986979', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, '19986979', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, '19986979', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, '19986979', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, '19986979', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, '19986979', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, '19986979', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, '19986979', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, '19986979', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, '19986979', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, '19986980', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, '19986980', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, '19986980', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, '19986980', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, '19986980', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(688, '19986980', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(689, '19986980', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(690, '19986980', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(691, '19986980', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(692, '19986980', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(693, '19986981', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(694, '19986981', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(695, '19986981', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(696, '19986981', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(697, '19986981', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(698, '19986981', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(699, '19986981', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, '19986981', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, '19986981', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, '19986981', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, '19986982', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, '19986982', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, '19986982', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, '19986982', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, '19986982', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, '19986982', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, '19986982', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, '19986982', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, '19986982', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, '19986982', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, '19986983', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(714, '19986983', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, '19986983', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(716, '19986983', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, '19986983', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, '19986983', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, '19986983', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, '19986983', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, '19986983', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, '19986983', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, '19986984', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, '19986984', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, '19986984', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, '19986984', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, '19986984', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, '19986984', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, '19986984', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, '19986984', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, '19986984', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, '19986984', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, '19986985', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, '19986985', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, '19986985', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, '19986985', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, '19986985', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, '19986985', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, '19986985', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, '19986985', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, '19986985', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, '19986985', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, '19986986', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, '19986986', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, '19986986', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(746, '19986986', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(747, '19986986', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(748, '19986986', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(749, '19986986', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(750, '19986986', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(751, '19986986', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(752, '19986986', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(753, '19986987', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(754, '19986987', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(755, '19986987', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(756, '19986987', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(757, '19986987', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(758, '19986987', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(759, '19986987', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, '19986987', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(761, '19986987', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(762, '19986987', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(763, '19986988', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(764, '19986988', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(765, '19986988', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(766, '19986988', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(767, '19986988', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(768, '19986988', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(769, '19986988', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(770, '19986988', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(771, '19986988', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(772, '19986988', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(773, '19986989', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(774, '19986989', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(775, '19986989', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(776, '19986989', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(777, '19986989', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(778, '19986989', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(779, '19986989', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(780, '19986989', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(781, '19986989', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(782, '19986989', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(783, '19986990', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(784, '19986990', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, '19986990', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, '19986990', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, '19986990', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(788, '19986990', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(789, '19986990', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(790, '19986990', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(791, '19986990', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(792, '19986990', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(793, '19986991', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(794, '19986991', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(795, '19986991', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(796, '19986991', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(797, '19986991', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(798, '19986991', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(799, '19986991', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(800, '19986991', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(801, '19986991', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(802, '19986991', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(803, '19986992', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(804, '19986992', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(805, '19986992', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(806, '19986992', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(807, '19986992', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(808, '19986992', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(809, '19986992', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(810, '19986992', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(811, '19986992', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(812, '19986992', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(813, '19986993', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(814, '19986993', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(815, '19986993', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(816, '19986993', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(817, '19986993', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(818, '19986993', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(819, '19986993', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(820, '19986993', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(821, '19986993', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(822, '19986993', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(823, '19986994', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(824, '19986994', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(825, '19986994', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(826, '19986994', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(827, '19986994', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(828, '19986994', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(829, '19986994', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(830, '19986994', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(831, '19986994', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(832, '19986994', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(833, '19986995', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(834, '19986995', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(835, '19986995', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(836, '19986995', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(837, '19986995', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(838, '19986995', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(839, '19986995', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(840, '19986995', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(841, '19986995', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(842, '19986995', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(843, '19986996', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(844, '19986996', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(845, '19986996', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(846, '19986996', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(847, '19986996', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(848, '19986996', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(849, '19986996', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850, '19986996', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851, '19986996', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(852, '19986996', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(853, '19986997', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(854, '19986997', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(855, '19986997', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(856, '19986997', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(857, '19986997', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(858, '19986997', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(859, '19986997', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(860, '19986997', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(861, '19986997', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(862, '19986997', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(863, '19986998', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(864, '19986998', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(865, '19986998', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(866, '19986998', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(867, '19986998', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(868, '19986998', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(869, '19986998', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(870, '19986998', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(871, '19986998', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(872, '19986998', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(873, '19986999', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(874, '19986999', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(875, '19986999', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(876, '19986999', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(877, '19986999', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(878, '19986999', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(879, '19986999', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(880, '19986999', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(881, '19986999', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(882, '19986999', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(883, '19987000', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(884, '19987000', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(885, '19987000', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(886, '19987000', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(887, '19987000', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(888, '19987000', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(889, '19987000', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(890, '19987000', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(891, '19987000', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(892, '19987000', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(893, '19987001', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(894, '19987001', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(895, '19987001', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(896, '19987001', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(897, '19987001', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(898, '19987001', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(899, '19987001', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(900, '19987001', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(901, '19987001', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(902, '19987001', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(903, '19987002', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(904, '19987002', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(905, '19987002', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(906, '19987002', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(907, '19987002', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(908, '19987002', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(909, '19987002', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(910, '19987002', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(911, '19987002', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(912, '19987002', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(913, '19987003', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(914, '19987003', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(915, '19987003', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(916, '19987003', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(917, '19987003', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(918, '19987003', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(919, '19987003', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(920, '19987003', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(921, '19987003', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(922, '19987003', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(923, '19987004', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(924, '19987004', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(925, '19987004', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(926, '19987004', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(927, '19987004', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(928, '19987004', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(929, '19987004', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(930, '19987004', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(931, '19987004', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(932, '19987004', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(933, '19987005', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(934, '19987005', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(935, '19987005', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(936, '19987005', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(937, '19987005', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(938, '19987005', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(939, '19987005', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(940, '19987005', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(941, '19987005', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(942, '19987005', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(943, '19987006', 'agama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(944, '19987006', 'bahasa indonesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(945, '19987006', 'matematika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(946, '19987006', 'ilmu pengetahuan alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(947, '19987006', 'pendidikan kewarganegaraan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(948, '19987006', 'bahasa inggris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(949, '19987006', 'seni dan budaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(950, '19987006', 'olahraga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(951, '19987006', 'teknologi informasi komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(952, '19987006', 'bahasa jawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(953, '19986910', 'bahasa indonesia', 75, 80, 80, 85, 80, 85, 75, 80),
(954, '19986910', 'matematika', 65, 70, 70, 80, 85, 80, 80, 75),
(955, '19986910', 'ilmu pengetahuan alam', 80, 80, 85, 90, 85, 80, 90, 80),
(956, '19986910', 'pendidikan kewarganegaraan', 75, 80, 70, 80, 75, 80, 70, 75),
(957, '19986910', 'bahasa inggris', 75, 75, 70, 90, 75, 80, 70, 80),
(958, '19986910', 'ilmu pengetahuan sosial', 80, 80, 70, 90, 75, 80, 70, 80),
(959, '19986910', 'seni dan budaya', 80, 75, 70, 60, 75, 80, 70, 80),
(960, '19986910', 'olahraga', 60, 70, 70, 80, 75, 80, 70, 80),
(961, '19986910', 'teknologi informasi komputer', 90, 90, 80, 90, 80, 80, 90, 80),
(962, '19986910', 'bahsa jawa', 80, 90, 80, 85, 75, 80, 70, 80);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kelas` int(11) DEFAULT NULL,
  `ketua` int(11) DEFAULT NULL,
  `img` varchar(50) NOT NULL DEFAULT 'default.svg',
  `jenis_kelamin` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(30) NOT NULL DEFAULT 'surakarta',
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(25) NOT NULL DEFAULT 'islam',
  `ibu` varchar(50) NOT NULL,
  `ayah` varchar(50) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_tlp` varchar(15) DEFAULT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'siswa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nama`, `kelas`, `ketua`, `img`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `ibu`, `ayah`, `alamat`, `no_tlp`, `role`) VALUES
('19986910', 'hilda nathaniela', 1, NULL, 'IMG_5862.JPG', 'perempuan', 'surakarta', '2014-04-04', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986911', 'Maulana Alif Anugrah', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986912', 'Nadya Saphira Esfandiari', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986913', 'Feggy Rizkiana Herman', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986914', 'Peter Sulaeman', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986915', 'Renaya Sarast', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986916', 'Lucky Wiratama Suganda', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986917', 'Yolanda Novitri Setiawan', 1, 1, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986918', 'Hazana Delfani', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986919', 'Aulia Rahmawaty', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986920', 'Rida Himyati Hasna', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986921', 'Denis Muhammad Irfan', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986922', 'Putri Medina Agrezta', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986923', 'Widi Dwi Adhawati', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986924', 'Meisa damayanti', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986925', 'Rosyanda Sastie Jagattri', 1, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986926', 'Rizky syaeful anwar ', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986927', 'Rendi Agus Tirtana', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986928', 'Annisa Maretiamy', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986929', 'Mita Amelia ', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986930', 'Deri Likandra Triputra', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986931', 'Dicky Sudrajat', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986932', 'Ana Muslimah', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986933', 'Evi Hafizah Rahma', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986934', 'Kirana Citra Destiyanti', 2, 1, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986935', 'Lassandra Kattyana Santos', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986936', 'Rizal Ermanto', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986937', 'Nur Devi Yusiawati Gumelar', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986938', 'Selisa Fatimah', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986939', 'Muhammad Rizki Alhafizh', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986940', 'Indri Zaqiah', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986941', 'Nurfa Resti Aulia ', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986942', 'zella zakiyah', 2, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986943', 'Agnes Dirgantini Hakim ', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986944', 'annisa dessetiani lee', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986945', 'Ristya ariyani', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986946', 'Bella Putri Nastiti', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986947', 'Susanti', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986948', 'yogie nugraha', 3, 1, 'IMG_5907.JPG', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986949', 'Erwin Bani Adam', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986950', 'annisa dessetiani lee', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986951', 'alamda verdiyana', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986952', 'lusianasaraswati dewi', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986953', 'furqon saefulloh', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986954', 'Novianti Warnerin', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986955', 'Zaenal Abidin', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986956', 'Nurhasannah Safitri', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986957', 'rani nuryati', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986958', 'Rivani Asri Pratiwi', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986959', 'juanita nurfadhillah hafyani ', 3, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986960', 'Bagus Rio Prasojo', 4, NULL, 'Ales_IMG_7144 4x6.jpg', 'perempuan', 'surakarta', '2011-12-01', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986961', 'Ajeng Gerhana Wulan', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986962', 'Ranti Prahastanti', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986963', 'Agus Setiana', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986964', 'Hilmy MaulanaRachmawan', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986965', 'winda ayulia agustina', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986966', 'Iman ', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986967', 'Adnan Saefulloh', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986968', 'Muni Ledia Astuti ', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986969', 'Rizky Irhas Firdaus', 4, 1, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986970', 'Ahmad Hasan N', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986971', 'Putri marytha setiadi', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986972', 'lestari pratiwi', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986973', 'Ninne Nuraida', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986974', 'Sri Dewi Cahyadi', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986975', 'Raka Gustiana', 4, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986976', 'Sri Dewi Cahyadi', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986977', 'Raka Gustiana', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986978', 'Neneng Royani', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986979', 'Ridwan Raynaldi Putra', 5, 1, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986980', 'Revina Sadiyyah Fatimah', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986981', 'Muhammad Itsal Septian Rahman', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986982', 'robbi sujana', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986983', 'Esya Swasti Sukmatia', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986984', 'Agus Setiana', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986985', 'Agus Setiana', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986986', 'Adi Darmawan', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986987', 'Siti Nurmala Asysyifa', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986988', 'Muhammad Itsal Septian Rahman', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986989', 'Anisa Ayu Parwati ', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986990', 'Kania Anisa Lestari', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986991', 'Hanasira Afifa', 5, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986992', 'Muhammad Itsal Septian Rahman', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986993', 'Anisa Ayu Parwati ', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986994', 'Kania Anisa Lestari ', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986995', 'Hanasira Afifa', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986996', 'Hanasira Afifa', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986997', 'Hanasira Afifa', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986998', 'Siti Nurjanah', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19986999', 'Yogi Rosi Prasetyo ', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19987000', 'Deri Fauzi', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19987001', 'Dwi Laksana Bhakti', 6, 1, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19987002', 'Muhamad Rifly Robiana', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19987003', 'Dwi wira surachandra', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19987004', 'Pinaandriyani ', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19987005', 'nita sukmala ', 6, NULL, 'default.svg', 'perempuan', 'surakarta', '2010-01-31', 'islam', 'utami', 'handi', 'Jl. Prof. DR. Supomo No.49, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '0887799661001', 'siswa'),
('19987006', 'aditya candra permana', 6, NULL, 'foto_kartu_mahasiswa__1_-removebg-preview.png', 'perempuan', 'sragen', '2002-07-14', 'islam', 'utami', 'handi', 'delepan, sidodai, masaran, sragen, Jawa Tengah', '0881287604', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `kelas` varchar(1) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `kelas`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, '19986910@gmail.com', '19986910', '1', '$2y$10$jDPukeluN/O6A10PCS1Cj.6MQTRLuctOMwr.WyRBQAnEtKaqHN2ty', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-04 09:41:35', '2023-01-04 09:41:35', NULL),
(7, '19987006@gmail.com', '19987006', '6', '$2y$10$DMzVMeVKcUwOXeUKBx2qs.wBMd9ir4JpnRoRi1v3.HARe.fhs.5GK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-05 09:16:58', '2023-01-05 09:16:58', NULL),
(8, '19986926@gmail.com', '19986926', '2', '$2y$10$25uO774hwqp2SaZNY2BnueHOR2ckaeN2FVV53eT4iPnm/bru20vWK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-05 11:18:15', '2023-01-05 11:18:15', NULL),
(9, '19986943@gmail.com', '19986943', '3', '$2y$10$Z5d/yjMO9ZNHhbLyD/MQkO7SPbHt3icHNmyRjeS9pQ6BpC79YI0nS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-05 11:19:15', '2023-01-05 11:19:15', NULL),
(10, '19986960@gmail.com', '19986960', '4', '$2y$10$aUbDFLGbV8FI0hOJvkcf.uplWPg3BzJmimUG8uzY/aThb/yBDvXJG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-05 11:19:49', '2023-01-05 11:19:49', NULL),
(11, '19986976@gmail.com', '19986976', '5', '$2y$10$MoEC3zwDuftIarV0H8icv.i3zMfZgkrMUTfYnm3r6U1n/OnBxfYbO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-05 11:20:09', '2023-01-05 11:20:09', NULL),
(15, '196810151992032012@gmail.com', '196810151992032012', '3', '$2y$10$4rlkvDX09E.QhZe7tfX2Gu9lgvNeAfi3Ydr9e7KykzP5NrWg14eUm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-06 10:52:00', '2023-01-06 10:52:00', NULL),
(16, '197708262008011004@gmail.com', '197708262008011004', '4', '$2y$10$6vUCTHtcl1FftnAmSfH6QeZyhSo2fWZ2Gg30MxKfb7JLRu4EDR7GW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-06 10:52:38', '2023-01-06 10:52:38', NULL),
(17, '197702082006041004@gmail.com', '197702082006041004', '5', '$2y$10$M9ZulCZutsFWSbo5NV8d4.iehZCPBpCLHqVKdQAamjuMf4W8czogy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-06 10:53:07', '2023-01-06 10:53:07', NULL),
(18, '198008042006041004@gmail.com', '198008042006041004', '6', '$2y$10$5708Pai.NCKnBX52X1T3De2c7XEd3RbExpCiuhhRG3lgYXNXnM0dO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-06 10:53:26', '2023-01-06 10:53:26', NULL),
(20, 'admin@gmail.com', 'admin', NULL, '$2y$10$ErW/iS.LZX1pKzVIsxL22OFSD0RNMjGXiJhb4U2b0IXzHVk9kvxZ6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-08 17:01:29', '2023-01-08 17:01:29', NULL),
(29, '196805011991011001@gmail.com', '196805011991011001', '2', '$2y$10$2wlxcI1uBjeWo8Mkb3wM3O0PPa1uVOXnHmqwXpgBDGcfPnoR6UNDK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-10 08:54:44', '2023-01-10 08:54:44', NULL),
(30, 'ojak@gmail.com', 'ojak', NULL, '$2y$10$pEO0spXskkf0WHz39FilT.Zzq5BVAZv3m4Egh0VwwKrJvRK8Giiq.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-10 20:11:45', '2023-01-10 20:11:45', NULL),
(31, '19986948@gmail.com', '19986948', NULL, '$2y$10$BS70dkjvM81SusjU2dzi/OfbFWT1OHxS4mt.iC6kK4a5HdWcmWWsy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-11 05:07:33', '2023-01-11 05:07:33', NULL),
(32, '196703211990012004@gmail.com', '196703211990012004', '1', '$2y$10$6tNP5kHFXxw6mkxpbeIYe.NI9f1Ug9ipFRpfrfKt2rMRg0BefkvPS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-11 05:41:57', '2023-01-11 05:41:57', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `nisn` (`nisn`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=973;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

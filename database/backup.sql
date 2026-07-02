-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 01, 2026 at 01:57 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seblak_bunda`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `price`, `category`, `image`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'Kerupuk Orange', 'Kerupuk orange topping seblak', 1000, 'kerupuk', 'menus/nSJuUOz1GAgIcQHmjmgp5aRXIqyfW14cN9DDi3ik.jpg', 1, '2026-06-22 02:59:03', '2026-06-22 04:03:33'),
(2, 'Cikur', 'Cikur (pilus)', 1000, 'kerupuk', 'menus/ANnX51zh6ftn2Wny4tG20CQKC14ljNgYfGPBAJBq.jpg', 1, '2026-06-22 03:57:33', '2026-06-22 03:57:33'),
(3, 'Siomay Kering', 'Siomay kering', 1000, 'kerupuk', 'menus/UPEon2n24TGtVUy6MUS5MXt4TSLVEBHx1kIjg12h.jpg', 1, '2026-06-22 03:58:06', '2026-06-22 03:58:06'),
(4, 'Cuanki', 'Cuanki', 1000, 'kerupuk', 'menus/nRDWqwLzbVZeX8eabostxmwPI9SrMyJAQ85cCacc.jpg', 1, '2026-06-22 03:58:37', '2026-06-22 03:58:37'),
(5, 'Dumpling Keju', 'Kulit kenyal isi keju leleh gurih.', 2000, 'frozen_food', 'menus/ZdxT9amKnCtpx69LgGdka4Xcxirv76yj4vj8UigG.jpg', 1, '2026-06-22 03:59:10', '2026-06-22 03:59:10'),
(6, 'Fish Roll', 'Gulungan ikan lembut berbumbu.', 2000, 'frozen_food', 'menus/4xuvvLvQVpIohtwCOjRzVHl5GmNBFxPdvq0K4GF3.jpg', 1, '2026-06-22 03:59:48', '2026-06-22 03:59:48'),
(7, 'Tulang Rangu', 'Tulang muda gurih mudah dimakan.', 3000, 'additional_topping', 'menus/8GH96JKApY1y8z6kNyh9hh2JtGlcKul9oGYpYu0I.jpg', 1, '2026-06-22 04:00:29', '2026-06-22 04:00:29'),
(8, 'Telur Ayam', 'Telur lembut penambah protein.', 3000, 'additional_topping', 'menus/lGrDdWzH4lVVp9MVuZTGjCQf3mv7hmnUTbSBhQaH.jpg', 0, '2026-06-22 04:01:13', '2026-06-22 04:01:13'),
(9, 'Telur Puyuh', 'Telur puyuh mini kenyal gurih.', 2000, 'additional_topping', 'menus/dD0cagn730Fvowtja8C1jEJMFLQpC4Dbf110MBmT.jpg', 1, '2026-06-22 04:01:52', '2026-06-22 04:01:52'),
(10, 'Kangkung', 'Kangkung muda lembut kaya serat.', 1000, 'sayur', 'menus/0LUqMHBHeJsNrFz0CGSQv9VVAjSJZU359Wp55nfL.jpg', 1, '2026-06-22 04:02:33', '2026-06-22 04:02:33'),
(11, 'Jamur Kuping', 'Jamur kenyal menyerap bumbu sempurna.', 1000, 'sayur', 'menus/mgRYJcwS7VHrHrs07samTtkQHPg4qqw5DV3ee2xB.jpg', 1, '2026-06-22 04:03:04', '2026-06-22 04:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_06_12_141152_create_menus_table', 1),
(5, '2026_06_21_110046_create_pengeluaran_table', 1),
(6, '2026_06_21_125403_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spicy_level` int NOT NULL DEFAULT '0',
  `order_type` enum('dine-in','take-away') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('qris','cash') COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending_payment','confirmed','processing','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'confirmed',
  `total` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `customer_name`, `customer_phone`, `spicy_level`, `order_type`, `payment_method`, `note`, `status`, `total`, `created_at`, `updated_at`) VALUES
(1, 'ORD-6A37E27DDEE9B', 'Ahmad Rizki', '081234567890', 3, 'dine-in', 'cash', 'Level pedas sedang', 'completed', 45000.00, '2026-06-21 04:09:17', '2026-06-21 06:09:17'),
(2, 'ORD-6A37E27DDF0EE', 'Siti Nurhaliza', '081234567891', 5, 'take-away', 'qris', 'Jangan pakai sawi', 'completed', 62000.00, '2026-06-21 01:09:17', '2026-06-21 06:09:18'),
(3, 'ORD-6A37E27DDF110', 'Budi Santoso', '081234567892', 2, 'dine-in', 'cash', NULL, 'completed', 38000.00, '2026-06-20 06:09:17', '2026-06-21 06:09:18'),
(4, 'ORD-6A37E27DDF123', 'Dewi Lestari', '081234567893', 4, 'take-away', 'qris', 'Tambah kerupuk', 'completed', 75000.00, '2026-06-19 06:09:17', '2026-06-21 06:09:18'),
(5, 'ORD-6A37E27DDF132', 'Eko Prasetyo', '081234567894', 1, 'dine-in', 'cash', 'Tidak pedas', 'completed', 42000.00, '2026-06-18 06:09:17', '2026-06-21 06:09:18'),
(6, 'ORD-6A37E27DDF140', 'Fitri Handayani', '081234567895', 3, 'take-away', 'qris', NULL, 'completed', 55000.00, '2026-06-16 06:09:17', '2026-06-21 06:09:18'),
(7, 'ORD-6A37E27DDF14D', 'Gunawan', '081234567896', 5, 'dine-in', 'cash', 'Super pedas!', 'completed', 68000.00, '2026-06-15 06:09:17', '2026-06-21 06:09:18'),
(8, 'ORD-6A37E27DDF15A', 'Hana Pertiwi', '081234567897', 2, 'take-away', 'qris', 'Banyak kuah', 'completed', 52000.00, '2026-06-11 06:09:17', '2026-06-21 06:09:18'),
(9, 'ORD-6A37E27DDF168', 'Indra Wijaya', '081234567898', 4, 'dine-in', 'cash', NULL, 'completed', 47000.00, '2026-06-09 06:09:17', '2026-06-21 06:09:18'),
(10, 'ORD-6A37E27DDF174', 'Joko Susilo', '081234567899', 3, 'take-away', 'qris', 'Tambah telor puyuh', 'completed', 85000.00, '2026-06-06 06:09:17', '2026-06-21 06:09:18'),
(11, 'ORD-6A37E27DDF181', 'Kartini', '081234567800', 2, 'dine-in', 'cash', NULL, 'completed', 43000.00, '2026-05-16 06:09:17', '2026-06-21 06:09:18'),
(12, 'ORD-6A37E27DDF19F', 'Lukman Hakim', '081234567801', 5, 'take-away', 'qris', 'Pedas maksimal', 'completed', 92000.00, '2026-05-11 06:09:17', '2026-06-21 06:09:18'),
(13, 'ORD-6A37E27DDF1B6', 'Maya Sari', '081234567802', 1, 'dine-in', 'cash', 'Sedikit pedas', 'completed', 35000.00, '2026-05-06 06:09:17', '2026-06-21 06:09:18'),
(14, 'ORD-6A37E27DDF1CE', 'Nugroho', '081234567803', 3, 'take-away', 'qris', NULL, 'completed', 58000.00, '2026-05-01 06:09:17', '2026-06-21 06:09:18'),
(15, 'ORD-6A37E27DDF1E5', 'Olivia', '081234567804', 4, 'dine-in', 'cash', 'Tambah bakso', 'completed', 72000.00, '2026-04-26 06:09:17', '2026-06-21 06:09:18'),
(16, 'ORD-6A37E27DDF1FB', 'Putra Perdana', '081234567805', 2, 'take-away', 'qris', NULL, 'completed', 48000.00, '2026-04-16 06:09:17', '2026-06-21 06:09:18'),
(17, 'ORD-6A37E27DDF212', 'Qori Azzahra', '081234567806', 3, 'dine-in', 'cash', 'Level sedang', 'completed', 55000.00, '2026-04-06 06:09:17', '2026-06-21 06:09:18'),
(18, 'ORD-6A37E27DDF228', 'Rudi Hartono', '081234567807', 5, 'take-away', 'qris', 'Extra pedas', 'completed', 88000.00, '2026-03-27 06:09:17', '2026-06-21 06:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluarans`
--

CREATE TABLE `pengeluarans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `expense_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluarans`
--

INSERT INTO `pengeluarans` (`id`, `name`, `amount`, `expense_date`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Frozen Sosis', 80000.00, '2026-06-21', NULL, '2026-06-21 04:48:19', '2026-06-21 04:48:19'),
(6, 'Beli Minyak Goreng', 25000.00, '2026-06-20', 'Minyak goreng 2 liter', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(7, 'Beli Cabai Merah', 45000.00, '2026-06-19', 'Cabai merah 2kg untuk sambal', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(8, 'Beli Sawi', 15000.00, '2026-06-18', 'Sawi hijau segar', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(9, 'Beli Telur Ayam', 35000.00, '2026-06-17', 'Telur ayam 1 tray', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(10, 'Beli Bawang Putih', 28000.00, '2026-06-16', 'Bawang putih 1kg', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(11, 'Beli Kerupuk', 18000.00, '2026-06-15', 'Kerupuk aneka rasa', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(12, 'Beli Bakso', 55000.00, '2026-06-13', 'Bakso sapi 3kg', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(13, 'Beli Sosis', 40000.00, '2026-06-12', 'Sosis ayam frozen', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(14, 'Beli Kangkung', 12000.00, '2026-06-11', 'Kangkung segar 2 ikat', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(15, 'Beli Kecap Manis', 22000.00, '2026-06-10', 'Kecap manis 1 botol besar', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(16, 'Beli Gas Elpiji', 24000.00, '2026-06-09', 'Gas 3kg', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(17, 'Beli Jamur Kuping', 30000.00, '2026-06-06', 'Jamur kuping kering 500gr', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(18, 'Beli Siomay', 35000.00, '2026-06-05', 'Siomay frozen 2 pack', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(19, 'Beli Kol', 10000.00, '2026-06-04', 'Kol 1 buah besar', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(20, 'Beli Dumpling', 45000.00, '2026-06-03', 'Dumpling keju frozen', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(21, 'Beli Crab Stick', 32000.00, '2026-06-02', 'Crab stick 1 pack', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(22, 'Beli Ceker Ayam', 50000.00, '2026-05-30', 'Ceker ayam 2kg', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(23, 'Beli Tulang Rangu', 38000.00, '2026-05-29', 'Tulang rangu frozen', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(24, 'Beli Telur Puyuh', 25000.00, '2026-05-28', 'Telur puyuh 1kg', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(25, 'Beli Saos Sambal', 18000.00, '2026-05-27', 'Saos sambal 2 botol', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(26, 'Beli Cuanki', 28000.00, '2026-05-26', 'Cuanki frozen 1 pack', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(27, 'Beli Daging Ayam', 150000.00, '2026-05-16', 'Ayam segar 5kg', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(28, 'Beli Mie', 80000.00, '2026-05-11', 'Mie instan 2 dus', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(29, 'Beli Bumbu Rempah', 65000.00, '2026-05-06', 'Kemiri, kunyit, jahe', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(30, 'Beli Plastik Kemasan', 45000.00, '2026-05-01', 'Plastik berbagai ukuran', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(31, 'Beli Fish Roll', 42000.00, '2026-04-26', 'Fish roll frozen 2 pack', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(32, 'Beli Peralatan Masak', 350000.00, '2026-04-16', 'Panci, wajan, spatula', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(33, 'Service Kompor', 150000.00, '2026-04-06', 'Perbaikan kompor gas', '2026-06-21 05:33:11', '2026-06-21 05:33:11'),
(34, 'Beli Freezer', 1500000.00, '2026-03-27', 'Freezer 1 pintu untuk stok', '2026-06-21 05:33:11', '2026-06-21 05:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('XzgUj9f4wrr9dnuOqYxq6SOXmmttXrcmvYImFMzc', 1, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'eyJfdG9rZW4iOiJOVFVsWjRxS0JKZXBldXdSV3FMeEtKdHRLb2RlMWtyUE5qTGJnTmRpIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDBcL3BlbmdlbHVhcmFuIiwicm91dGUiOiJpbmRleCJ9LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MX0=', 1782284280);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Seblak Bunda', 'admin@seblakbunda.com', NULL, '$2y$12$.jbU9KHS3zJVKzNL3VfdwOdSnru8b8p6PC39qg5NWddf313nGQ64m', NULL, '2026-06-22 02:30:23', '2026-06-22 02:30:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_category_index` (`category`),
  ADD KEY `menus_is_available_index` (`is_available`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_id_unique` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

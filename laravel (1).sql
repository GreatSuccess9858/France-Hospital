-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 01:49 AM
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
-- Database: `laravel`
--

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
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_23_025920_create_orders_table', 1),
(7, '2023_03_23_165415_add_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_name`, `created_at`, `updated_at`) VALUES
(1, 7, 'Hello', '2023-03-24 01:05:43', '2023-03-24 01:05:43'),
(2, 7, 'Hellog', '2023-03-24 01:06:28', '2023-03-24 01:06:28'),
(3, 7, 'Hellog', '2023-03-24 01:07:28', '2023-03-24 01:07:28'),
(4, 7, 'Hellog', '2023-03-24 01:07:32', '2023-03-24 01:07:32'),
(5, 6, 'asdfasd', '2023-03-24 01:08:05', '2023-03-24 01:08:05'),
(6, 7, 'ZXczxcvxzcvxz', '2023-03-24 01:17:13', '2023-03-24 01:17:13'),
(7, 7, 'sdfgdfg', '2023-03-24 01:19:35', '2023-03-24 01:19:35'),
(8, 7, 'sdfgsdfgsdfgsdfgsd', '2023-03-24 01:19:43', '2023-03-24 01:19:43'),
(9, 7, 'sdfgsdgdsfgsdfg', '2023-03-24 01:19:54', '2023-03-24 01:19:54'),
(10, 7, 'asdfasdf', '2023-03-24 01:47:48', '2023-03-24 01:47:48'),
(11, 2, '123', '2023-03-24 01:49:53', '2023-03-24 01:49:53'),
(12, 2, 'asdfasdfsadf', '2023-03-24 01:51:09', '2023-03-24 01:51:09'),
(13, 7, 'sdfasdfasdfasdfasdf', '2023-03-24 01:51:31', '2023-03-24 01:51:31'),
(14, 7, 'asdfsadf', '2023-03-24 01:51:52', '2023-03-24 01:51:52'),
(15, 7, 'asdfsadf', '2023-03-24 01:54:23', '2023-03-24 01:54:23'),
(16, 7, 'fffff', '2023-03-24 02:03:33', '2023-03-24 02:03:33'),
(17, 7, 'asss', '2023-03-24 02:05:10', '2023-03-24 02:05:10'),
(18, 7, 'afsdfdf', '2023-03-24 02:06:23', '2023-03-24 02:06:23'),
(19, 2, 'marry', '2023-03-24 05:21:13', '2023-03-24 05:21:13'),
(20, 2, 'sona', '2023-03-24 05:21:27', '2023-03-24 05:21:27'),
(21, 2, 'Joana', '2023-03-24 05:32:02', '2023-03-24 05:32:02'),
(22, 2, 'roman', '2023-03-24 05:35:23', '2023-03-24 05:35:23'),
(23, 2, 'roman', '2023-03-24 05:36:20', '2023-03-24 05:36:20'),
(24, 2, 'roman', '2023-03-24 05:41:30', '2023-03-24 05:41:30'),
(25, 2, 'roman', '2023-03-24 05:41:51', '2023-03-24 05:41:51'),
(26, 2, '123', '2023-03-24 05:42:14', '2023-03-24 05:42:14'),
(27, 2, 'jgjh', '2023-03-24 05:43:22', '2023-03-24 05:43:22'),
(28, 3, 'Messi', '2023-03-24 07:39:40', '2023-03-24 07:39:40'),
(29, 3, 'nansii', '2023-03-24 07:40:04', '2023-03-24 07:40:04'),
(30, 3, 'Messi', '2023-03-24 07:42:10', '2023-03-24 07:42:10');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'client@example.com', 'a045cf104755bbdb72468380e5e901249e75fef75391cdd27b8ab81919ac18f1', '[\"*\"]', '2023-03-24 00:54:27', '2023-03-24 00:54:27', '2023-03-24 00:54:27'),
(2, 'App\\Models\\User', 1, 'client@example.com', '724d311435171495b04259857bf2d25dbc8deded7a4825f375a2310cce175106', '[\"*\"]', '2023-03-24 01:04:19', '2023-03-24 01:02:33', '2023-03-24 01:04:19'),
(3, 'App\\Models\\User', 1, 'client@example.com', 'a9a79f68c8bd6418ca743046911d45a0e744e0d45c8acc923c873de9de2d1f3d', '[\"*\"]', '2023-03-24 01:07:32', '2023-03-24 01:05:26', '2023-03-24 01:07:32'),
(4, 'App\\Models\\User', 1, 'client@example.com', '086752b28c247ffef14d6542e8a942b76df077ec3f144cf5ee90091936b3108a', '[\"*\"]', '2023-03-24 01:08:05', '2023-03-24 01:07:55', '2023-03-24 01:08:05'),
(5, 'App\\Models\\User', 1, 'client@example.com', '2d7be4179c493e5fd7dab4afe2543e411b28609dabe2dcad1d785a5d6d5b799e', '[\"*\"]', '2023-03-24 01:13:30', '2023-03-24 01:10:30', '2023-03-24 01:13:30'),
(6, 'App\\Models\\User', 7, 'test@odontalia.com', '873aba2f08a66f7ec7b343ad8dfbdeb25289ae2ae6662422c48232b84c84b4ad', '[\"*\"]', '2023-03-24 01:13:16', '2023-03-24 01:13:16', '2023-03-24 01:13:16'),
(7, 'App\\Models\\User', 1, 'client@example.com', 'adae52d05fa6b343d73813b760cf22ddf2cbe8c085965912fabc9ca287f90fb1', '[\"*\"]', '2023-03-24 01:13:43', '2023-03-24 01:13:39', '2023-03-24 01:13:43'),
(8, 'App\\Models\\User', 7, 'test@odontalia.com', 'e55e1baa65f0702e2684c3a6dc02d984cbfe44476731f334e02a0903abd0b997', '[\"*\"]', '2023-03-24 01:13:52', '2023-03-24 01:13:51', '2023-03-24 01:13:52'),
(9, 'App\\Models\\User', 1, 'client@example.com', '8cb07671a885b56dff7529ea6e909c82af4ec78b8a14ec99b0753ea01d3a203b', '[\"*\"]', '2023-03-24 01:14:06', '2023-03-24 01:14:06', '2023-03-24 01:14:06'),
(10, 'App\\Models\\User', 1, 'client@example.com', '550570987065a74335dded784fa653b9eb8a909b7044c3c53a3308ec6dddf1f4', '[\"*\"]', '2023-03-24 01:14:43', '2023-03-24 01:14:42', '2023-03-24 01:14:43'),
(11, 'App\\Models\\User', 1, 'client@example.com', 'ac6be50d2e959470c7d409d1bee46ec5e1907c86c29a897c4979e2be771e6825', '[\"*\"]', '2023-03-24 01:15:24', '2023-03-24 01:15:23', '2023-03-24 01:15:24'),
(12, 'App\\Models\\User', 1, 'client@example.com', 'e11d29ae9ad501a4a4c112fb1de8d8d0b33d985f4eceb7b09b8ab3d36de047ee', '[\"*\"]', '2023-03-24 01:15:32', '2023-03-24 01:15:32', '2023-03-24 01:15:32'),
(13, 'App\\Models\\User', 1, 'client@example.com', 'fc47553131be90c7a3e497c2ef56085ea243444f77d96befb9f958c5e3e9c332', '[\"*\"]', '2023-03-24 01:16:30', '2023-03-24 01:16:30', '2023-03-24 01:16:30'),
(14, 'App\\Models\\User', 1, 'client@example.com', 'd0bf61296ceb3a5657bff03f39b044428a09a65397809e1bb885c5f82658ccc3', '[\"*\"]', '2023-03-24 01:17:13', '2023-03-24 01:17:03', '2023-03-24 01:17:13'),
(15, 'App\\Models\\User', 1, 'client@example.com', 'dfc244a72ba0260598075921fc905273bb0548c77297c0cce25d8be77abe0ae5', '[\"*\"]', NULL, '2023-03-24 01:19:30', '2023-03-24 01:19:30'),
(16, 'App\\Models\\User', 1, 'client@example.com', '979e2f709e661b7c81112e3143b9fb4a86108bf109015c086a204a50dcedbad5', '[\"*\"]', NULL, '2023-03-24 01:19:30', '2023-03-24 01:19:30'),
(17, 'App\\Models\\User', 1, 'client@example.com', '627aaf0a3801f2e76ed96cafeacb28e4219561d4dc19c0c6d5f000c5be175273', '[\"*\"]', '2023-03-24 01:19:54', '2023-03-24 01:19:31', '2023-03-24 01:19:54'),
(18, 'App\\Models\\User', 7, 'test@odontalia.com', 'f933f8b15e795ceee5beae88b6b852d831287ee86f8466c1f6ca288f5009feae', '[\"*\"]', '2023-03-24 01:20:28', '2023-03-24 01:20:27', '2023-03-24 01:20:28'),
(19, 'App\\Models\\User', 1, 'client@example.com', 'f7c3e318a8b8d759545800c8a144aa865a979d3ec2b8ccbc9e071a0a9895a984', '[\"*\"]', '2023-03-24 01:24:19', '2023-03-24 01:24:09', '2023-03-24 01:24:19'),
(20, 'App\\Models\\User', 1, 'client@example.com', '671cb2a88feb82dd8dfa2d9dea032fbba7900c2d0e8721371647c7310da0fd2e', '[\"*\"]', '2023-03-24 01:25:23', '2023-03-24 01:25:23', '2023-03-24 01:25:23'),
(21, 'App\\Models\\User', 7, 'test@odontalia.com', '61ab653304d4e91b3d0d9799e2615b853dc04890c6b5dede04fdb2a4d0c25422', '[\"*\"]', '2023-03-24 01:25:51', '2023-03-24 01:25:51', '2023-03-24 01:25:51'),
(22, 'App\\Models\\User', 1, 'client@example.com', '3a60da8aabba6f7d2a5706701b41773c7d208fcd9a3be6054e90867d75dbe14c', '[\"*\"]', '2023-03-24 01:27:22', '2023-03-24 01:27:21', '2023-03-24 01:27:22'),
(23, 'App\\Models\\User', 1, 'client@example.com', 'c20d62f5b4812f0668f223d4c2e605a3b79804a8bf0ffa97497c8bc391e13590', '[\"*\"]', '2023-03-24 01:27:28', '2023-03-24 01:27:27', '2023-03-24 01:27:28'),
(24, 'App\\Models\\User', 7, 'test@odontalia.com', '1439ee2254af653175bd0cd76efa8bd0285f49978c7ff263c5ba206767963db1', '[\"*\"]', '2023-03-24 01:27:42', '2023-03-24 01:27:41', '2023-03-24 01:27:42'),
(25, 'App\\Models\\User', 1, 'client@example.com', 'b2a9f860fcc28e8d0dd993637828604f2e617f0d35f85a82903b997106b6830a', '[\"*\"]', '2023-03-24 01:30:59', '2023-03-24 01:30:57', '2023-03-24 01:30:59'),
(26, 'App\\Models\\User', 1, 'client@example.com', 'ea7af199f6d2129aa0bbed75fdaef3c4640f3919c80592bd1a372e234c5a0195', '[\"*\"]', '2023-03-24 01:31:00', '2023-03-24 01:30:57', '2023-03-24 01:31:00'),
(27, 'App\\Models\\User', 1, 'client@example.com', '050aeead11ab448ab99a8727e0a9455d1ef9bb9da1fc0461fc265955a4114d89', '[\"*\"]', '2023-03-24 01:31:00', '2023-03-24 01:30:58', '2023-03-24 01:31:00'),
(28, 'App\\Models\\User', 1, 'client@example.com', '386ed5321d997e20387425345944885d067d2283dd4a1a7e5013ad5b25807b34', '[\"*\"]', '2023-03-24 01:31:24', '2023-03-24 01:31:23', '2023-03-24 01:31:24'),
(29, 'App\\Models\\User', 7, 'test@odontalia.com', '300784ecb5a6c50dd15e2a455531c1b338f9aa21305043986f14aafa29aa1c66', '[\"*\"]', '2023-03-24 01:31:51', '2023-03-24 01:31:50', '2023-03-24 01:31:51'),
(30, 'App\\Models\\User', 1, 'client@example.com', '98077dec75df16472433159f1d83e6c90a65a383d2f4878ca211906ad680fdda', '[\"*\"]', '2023-03-24 01:33:03', '2023-03-24 01:33:03', '2023-03-24 01:33:03'),
(31, 'App\\Models\\User', 7, 'test@odontalia.com', '251bc6171baf90b983bcd3fbfd9a35e26c22b798b892f1228eb2de0ba1892da5', '[\"*\"]', '2023-03-24 01:33:20', '2023-03-24 01:33:20', '2023-03-24 01:33:20'),
(32, 'App\\Models\\User', 1, 'client@example.com', '807789857b971c44681f3e64c866ab95a85b124bdb7f3ba9c3f0e74f47f32daa', '[\"*\"]', '2023-03-24 01:35:39', '2023-03-24 01:35:37', '2023-03-24 01:35:39'),
(33, 'App\\Models\\User', 1, 'client@example.com', '053e4d6e0009682767032a762fb6f08f2d5200855b13ce386e46795584e8acb2', '[\"*\"]', '2023-03-24 01:35:39', '2023-03-24 01:35:37', '2023-03-24 01:35:39'),
(34, 'App\\Models\\User', 7, 'test@odontalia.com', 'ddb715d330c8f631d7c6d2dbdf6cd2848143a3bc10957d6aa7449d0b2ba2c84e', '[\"*\"]', '2023-03-24 01:35:51', '2023-03-24 01:35:51', '2023-03-24 01:35:51'),
(35, 'App\\Models\\User', 1, 'client@example.com', '824446160eceaa0ca428dce5e7e11555fe99c8f66daa991f1c03581b518d85ac', '[\"*\"]', '2023-03-24 01:37:31', '2023-03-24 01:37:30', '2023-03-24 01:37:31'),
(36, 'App\\Models\\User', 1, 'client@example.com', '6bfd302477417f16777f15765c6f0b9b1b5ec15438ee92bcf6cbac3ccb7aae1d', '[\"*\"]', '2023-03-24 01:37:31', '2023-03-24 01:37:30', '2023-03-24 01:37:31'),
(37, 'App\\Models\\User', 1, 'client@example.com', 'bf31595f3003712cc77d06a26949c13adc4597b80fce46db76b68d99717740db', '[\"*\"]', '2023-03-24 01:38:59', '2023-03-24 01:38:59', '2023-03-24 01:38:59'),
(38, 'App\\Models\\User', 1, 'client@example.com', '84a74ceabbcb8ab46a9200a7c9184c01a20fe38ec18cc3cf74eac580c8c6fbe5', '[\"*\"]', '2023-03-24 01:39:15', '2023-03-24 01:39:15', '2023-03-24 01:39:15'),
(39, 'App\\Models\\User', 7, 'test@odontalia.com', '4f393f1e863fb115130f4507d5382e2498d779e0296375bf6820aa43f7c13f5e', '[\"*\"]', '2023-03-24 01:39:30', '2023-03-24 01:39:30', '2023-03-24 01:39:30'),
(40, 'App\\Models\\User', 1, 'client@example.com', '5bd980ff11a61d4dd2893719fb6b14c177cb9ca10f6560c2f5d75a2bcbb54a47', '[\"*\"]', '2023-03-24 01:39:54', '2023-03-24 01:39:54', '2023-03-24 01:39:54'),
(41, 'App\\Models\\User', 1, 'client@example.com', '6469d537abcd41131c8dc53989ad6f69a14606fc3dfdf7c379134d6f5404e4ed', '[\"*\"]', '2023-03-24 01:39:58', '2023-03-24 01:39:58', '2023-03-24 01:39:58'),
(42, 'App\\Models\\User', 7, 'test@odontalia.com', '7186cadfb5630b67473d493e8194d108751af25f04d977a0cb5de3d883fed6fa', '[\"*\"]', '2023-03-24 01:40:07', '2023-03-24 01:40:06', '2023-03-24 01:40:07'),
(43, 'App\\Models\\User', 1, 'client@example.com', '50ba1384b4310ef7bfd278265730687f5edcb80e374ec991d76f3c4bfd791ec5', '[\"*\"]', '2023-03-24 01:40:11', '2023-03-24 01:40:11', '2023-03-24 01:40:11'),
(44, 'App\\Models\\User', 1, 'client@example.com', '229e4cfbd332344027ab1b89c800f4ec7e6ebb7f3f5e15ea1eaaf793213592f4', '[\"*\"]', '2023-03-24 01:40:41', '2023-03-24 01:40:40', '2023-03-24 01:40:41'),
(45, 'App\\Models\\User', 1, 'client@example.com', 'f1018bfec84ddc68ad438de646be7dea0d96e2830a303ee508f1b7f0b93979bd', '[\"*\"]', '2023-03-24 01:40:53', '2023-03-24 01:40:53', '2023-03-24 01:40:53'),
(46, 'App\\Models\\User', 7, 'test@odontalia.com', 'fa48e3bfec3e63b68ba50d83aa5ab282aea6da9e6f0977ee428cc99d936d9160', '[\"*\"]', '2023-03-24 01:41:10', '2023-03-24 01:41:10', '2023-03-24 01:41:10'),
(47, 'App\\Models\\User', 1, 'client@example.com', '813a864a118a63ecc60c2de3627cee46c0449e3b6f51480222c00c8c4e8aad00', '[\"*\"]', '2023-03-24 01:41:58', '2023-03-24 01:41:57', '2023-03-24 01:41:58'),
(48, 'App\\Models\\User', 7, 'test@odontalia.com', 'd1d740381b64c4d3bc5a0bce373effb2e2e88fff3b5a8ca39ce05b85520aa089', '[\"*\"]', '2023-03-24 01:42:11', '2023-03-24 01:42:11', '2023-03-24 01:42:11'),
(49, 'App\\Models\\User', 1, 'client@example.com', '3df53fce08fd4742e67f9ff8b5079c37f3ab9f05e7c8f06cf7c9e0fc33f41492', '[\"*\"]', '2023-03-24 01:42:29', '2023-03-24 01:42:29', '2023-03-24 01:42:29'),
(50, 'App\\Models\\User', 1, 'client@example.com', '97ce5898a1073a6904e835bfdcc190cbd15145df1e1fadbaa31b90191eda3f2a', '[\"*\"]', '2023-03-24 01:42:46', '2023-03-24 01:42:45', '2023-03-24 01:42:46'),
(51, 'App\\Models\\User', 7, 'test@odontalia.com', '1a4a34ece397c672b4885c0bc4e8bc925a288f39a4f30bba41203e68b2120cb4', '[\"*\"]', '2023-03-24 01:42:57', '2023-03-24 01:42:57', '2023-03-24 01:42:57'),
(52, 'App\\Models\\User', 1, 'client@example.com', 'cbccdcca00fabf6bcca753f0bf710a39669696fbd3a051ff8eef3387341909cf', '[\"*\"]', '2023-03-24 01:43:54', '2023-03-24 01:43:54', '2023-03-24 01:43:54'),
(53, 'App\\Models\\User', 7, 'test@odontalia.com', 'bb58e8d3b6cacaec01ed6254afab5bb23bf8e72931f700412103f49a20fe1ac8', '[\"*\"]', '2023-03-24 01:44:07', '2023-03-24 01:44:07', '2023-03-24 01:44:07'),
(54, 'App\\Models\\User', 1, 'client@example.com', 'f1088f9f859b8409f63bab1bae589f369b7e69a37a68652a62d0300f32b6a4d6', '[\"*\"]', '2023-03-24 01:44:37', '2023-03-24 01:44:37', '2023-03-24 01:44:37'),
(55, 'App\\Models\\User', 7, 'test@odontalia.com', 'b9dce46eea903530ee48797da5041e78d54c0eb1f4d9340040b81e4ccbbf428f', '[\"*\"]', '2023-03-24 01:44:49', '2023-03-24 01:44:49', '2023-03-24 01:44:49'),
(56, 'App\\Models\\User', 1, 'client@example.com', 'de01b2978bb658d929b97a35c401c6cc901857cc7061b22f0640d14dd1c5f7f1', '[\"*\"]', '2023-03-24 01:45:49', '2023-03-24 01:45:48', '2023-03-24 01:45:49'),
(57, 'App\\Models\\User', 7, 'test@odontalia.com', 'd77d1878c4b3defb7dfed44153ce5bee6ef495b16db764439f50f7931aa83273', '[\"*\"]', '2023-03-24 01:46:02', '2023-03-24 01:46:02', '2023-03-24 01:46:02'),
(58, 'App\\Models\\User', 1, 'client@example.com', 'd23480a2d67372ecf06376ded127f91968143c9c6b2d346a4fd763747b37d9ee', '[\"*\"]', '2023-03-24 01:46:35', '2023-03-24 01:46:34', '2023-03-24 01:46:35'),
(59, 'App\\Models\\User', 1, 'client@example.com', '79c6600e0acb19ca0412ded8b62542d99c30781527b3ca9dec7f3c0c3002c543', '[\"*\"]', '2023-03-24 01:46:40', '2023-03-24 01:46:39', '2023-03-24 01:46:40'),
(60, 'App\\Models\\User', 7, 'test@odontalia.com', '7438add55866e5d34a0fba8da19f9b9e9511f5b11fb2095bfd847ab237a54337', '[\"*\"]', '2023-03-24 01:46:56', '2023-03-24 01:46:56', '2023-03-24 01:46:56'),
(61, 'App\\Models\\User', 1, 'client@example.com', '8e9e884ca998966be98b0363a0fcb73f0c37daa7325a74aa261b785badf687f9', '[\"*\"]', '2023-03-24 01:51:52', '2023-03-24 01:47:31', '2023-03-24 01:51:52'),
(62, 'App\\Models\\User', 7, 'test@odontalia.com', '28182d05224421e9f6738669dd8f5f63fcfff67f3dd9ae2f9a55b16b9b8c649f', '[\"*\"]', '2023-03-24 01:47:45', '2023-03-24 01:47:45', '2023-03-24 01:47:45'),
(63, 'App\\Models\\User', 2, 'RomainAbreu@odontaila.com', '7bfa09a62e43ef8ee04ce177c51ad81cb43aab197a253ea27ada5f0a4839b584', '[\"*\"]', '2023-03-24 01:49:34', '2023-03-24 01:49:34', '2023-03-24 01:49:34'),
(64, 'App\\Models\\User', 1, 'client@example.com', 'a3dda465dd83a21a5ca63c6d727831b3ec72e97166703d2687efb73c208342ed', '[\"*\"]', '2023-03-24 01:54:23', '2023-03-24 01:53:23', '2023-03-24 01:54:23'),
(65, 'App\\Models\\User', 7, 'test@odontalia.com', '3fdc72bc549f1f77f85d93ab5c4ff80cab36ae2709a6fb39ae7fad7640957e6e', '[\"*\"]', '2023-03-24 01:54:21', '2023-03-24 01:54:20', '2023-03-24 01:54:21'),
(66, 'App\\Models\\User', 1, 'client@example.com', '2954c8ac9351aec8201e58c5281ff4af6470cfc2ae366a3a01f469e9e0963caf', '[\"*\"]', '2023-03-24 01:55:42', '2023-03-24 01:55:41', '2023-03-24 01:55:42'),
(67, 'App\\Models\\User', 1, 'client@example.com', 'b068264ffd623a88991b766b94a888452150672113da5d3dbd9198e47f1d4b88', '[\"*\"]', '2023-03-24 01:58:50', '2023-03-24 01:58:49', '2023-03-24 01:58:50'),
(68, 'App\\Models\\User', 1, 'client@example.com', '254ee5d8c4b43bdd7b9c1aaaafc37b7d31b31a790f578d148f1622e03257f3c3', '[\"*\"]', '2023-03-24 01:59:18', '2023-03-24 01:59:18', '2023-03-24 01:59:18'),
(69, 'App\\Models\\User', 1, 'client@example.com', '2609fe1b2e64c71f8be14476d314b9174cfceebc8922ba21678e1524def33cb4', '[\"*\"]', '2023-03-24 02:04:34', '2023-03-24 02:00:50', '2023-03-24 02:04:34'),
(70, 'App\\Models\\User', 7, 'test@odontalia.com', '474faf05f9e8555860b2e0d882e7b1902433e2086c61ad5816110722d213e3e7', '[\"*\"]', '2023-03-24 02:03:24', '2023-03-24 02:03:24', '2023-03-24 02:03:24'),
(71, 'App\\Models\\User', 1, 'client@example.com', '51f592b682fa2da6e5fc3bc263e5969bd7193a9813c49590078f357d6856bf9b', '[\"*\"]', '2023-03-24 02:05:10', '2023-03-24 02:04:44', '2023-03-24 02:05:10'),
(72, 'App\\Models\\User', 7, 'test@odontalia.com', 'f89035696d39f44f1b9e1bdc36ece1dfc3339c98a63e1a046dd89538dbb7cdf8', '[\"*\"]', '2023-03-24 02:04:58', '2023-03-24 02:04:57', '2023-03-24 02:04:58'),
(73, 'App\\Models\\User', 1, 'client@example.com', '4835e12620078c4665bb6e52c3f3eec4e04ff0d5145dffbc25a63b6a7581934f', '[\"*\"]', '2023-03-24 02:06:23', '2023-03-24 02:05:58', '2023-03-24 02:06:23'),
(74, 'App\\Models\\User', 7, 'test@odontalia.com', 'f133da46044484165e1b14c3e79e2d77be5515a232781f48221cdaa8cf1232df', '[\"*\"]', '2023-03-24 02:06:15', '2023-03-24 02:06:15', '2023-03-24 02:06:15'),
(75, 'App\\Models\\User', 2, 'RomainAbreu@odontaila.com', 'c05f7131c0401e8ae8c01f33a01b1eddcafcdf9bb07540d5881cf6c0f1ffa60e', '[\"*\"]', '2023-03-24 02:06:55', '2023-03-24 02:06:54', '2023-03-24 02:06:55'),
(76, 'App\\Models\\User', 2, 'RomainAbreu@odontaila.com', 'a7a55ea849f7a1b3f42bc36474c285d18333edaff3e2e1887e1ac37ed1292102', '[\"*\"]', '2023-03-24 02:07:08', '2023-03-24 02:07:07', '2023-03-24 02:07:08'),
(77, 'App\\Models\\User', 1, 'client@example.com', '39cbd51b427acf1e0125bf3bd1c1cf396866594a3301eb4f8129478367b31f87', '[\"*\"]', '2023-03-24 02:09:23', '2023-03-24 02:09:22', '2023-03-24 02:09:23'),
(78, 'App\\Models\\User', 1, 'client@example.com', 'ef04e263959442961ee88f64123605b6bc0a73e28f06da97b810f9a02c74d77c', '[\"*\"]', '2023-03-24 02:10:02', '2023-03-24 02:10:02', '2023-03-24 02:10:02'),
(79, 'App\\Models\\User', 1, 'client@example.com', '914b26dbd467b9c3efabb74a4636f4446fb127295422e903c3701d1b15e64c5a', '[\"*\"]', '2023-03-24 05:08:43', '2023-03-24 05:08:43', '2023-03-24 05:08:43'),
(80, 'App\\Models\\User', 1, 'client@example.com', 'd96abcad3d5eb8e6f5529b07916e6aee42780c7ce1c57cc35cb245465a10a33b', '[\"*\"]', '2023-03-24 05:21:27', '2023-03-24 05:16:57', '2023-03-24 05:21:27'),
(81, 'App\\Models\\User', 2, 'RomainAbreu@odontaila.com', 'a66bf51543c89c366680b0b5be910a6e7d597639d42dadabb60a2614a516bf09', '[\"*\"]', '2023-03-24 05:21:02', '2023-03-24 05:21:00', '2023-03-24 05:21:02'),
(82, 'App\\Models\\User', 1, 'client@example.com', '2def739bbdcad9b452783079d67e0348382f38db893f9b0a4943e654518aed42', '[\"*\"]', '2023-03-24 05:43:22', '2023-03-24 05:25:52', '2023-03-24 05:43:22'),
(83, 'App\\Models\\User', 1, 'client@example.com', '221533242d860347664e9f6de10cac76433e868988ddc277269b3ae28e4e03ab', '[\"*\"]', '2023-03-24 05:32:02', '2023-03-24 05:30:17', '2023-03-24 05:32:02'),
(84, 'App\\Models\\User', 2, 'RomainAbreu@odontaila.com', 'b6a8390cfd3fc3164548ef2ebeb4e9300a60d95befa20b03f7eb873cba46eb64', '[\"*\"]', '2023-03-24 05:31:53', '2023-03-24 05:31:51', '2023-03-24 05:31:53'),
(85, 'App\\Models\\User', 1, 'client@example.com', '32fa8343f220d7ee0ee8d885a0063a3e92ffd1335de8f701861c9e6b62475324', '[\"*\"]', '2023-03-24 05:36:20', '2023-03-24 05:34:48', '2023-03-24 05:36:20'),
(86, 'App\\Models\\User', 2, 'RomainAbreu@odontaila.com', '37dea80ab7af5c6d7a4adc7e0df0b3d33a424350deebf2166e30c64f8a110a26', '[\"*\"]', '2023-03-24 05:35:17', '2023-03-24 05:35:16', '2023-03-24 05:35:17'),
(87, 'App\\Models\\User', 2, 'RomainAbreu@odontaila.com', 'ae0d3b334ea7d1bbca52f0f64b46d86b8d4892efd690ab1408aef02f64bdae2d', '[\"*\"]', '2023-03-24 05:40:56', '2023-03-24 05:40:55', '2023-03-24 05:40:56'),
(88, 'App\\Models\\User', 1, 'client@example.com', '28df2964385b555248a83141dd2c97ddd5d5c5fe47182336413aac4f7deffcd0', '[\"*\"]', '2023-03-24 05:42:14', '2023-03-24 05:41:06', '2023-03-24 05:42:14'),
(89, 'App\\Models\\User', 2, 'RomainAbreu@odontaila.com', '1861e90013482457764c62f77ea4a80b988a3c361c20a4fde10363525f8e0997', '[\"*\"]', '2023-03-24 05:41:24', '2023-03-24 05:41:22', '2023-03-24 05:41:24'),
(90, 'App\\Models\\User', 1, 'client@example.com', '542a064dfd0b90b84917cf09a56220d37147baa212fab2eb045e21fe2deabca7', '[\"*\"]', '2023-03-24 07:36:02', '2023-03-24 07:36:02', '2023-03-24 07:36:02'),
(91, 'App\\Models\\User', 3, 'CapucineDuflocq@odontaila.com', '26f3d9d569e1d256d3151d0b3973426ccddb3f085ca9f83a044730922a2e5b95', '[\"*\"]', '2023-03-24 07:38:46', '2023-03-24 07:38:46', '2023-03-24 07:38:46'),
(92, 'App\\Models\\User', 3, 'CapucineDuflocq@odontaila.com', 'd8beec2ebdf0256df60557232d6421ae3947d91012e001872362b197034b0ae7', '[\"*\"]', '2023-03-24 07:39:06', '2023-03-24 07:39:06', '2023-03-24 07:39:06'),
(93, 'App\\Models\\User', 1, 'client@example.com', 'c5ab08db7c1c9c3767ecf422cd367ca0d9de1cfd2214db4ebde11bd3a018e3fd', '[\"*\"]', '2023-03-24 07:40:04', '2023-03-24 07:39:11', '2023-03-24 07:40:04'),
(94, 'App\\Models\\User', 3, 'CapucineDuflocq@odontaila.com', '33acf39c1a3da1ed2f7baf2c076e1bad5014de3e288e8f5b7c3e189af4ba9ee2', '[\"*\"]', '2023-03-24 07:39:25', '2023-03-24 07:39:25', '2023-03-24 07:39:25'),
(95, 'App\\Models\\User', 1, 'client@example.com', '21ae504e1089417681ec04a7d25c214acbb125a34c348013505def84fc3de971', '[\"*\"]', '2023-03-24 07:42:10', '2023-03-24 07:41:47', '2023-03-24 07:42:10'),
(96, 'App\\Models\\User', 3, 'CapucineDuflocq@odontaila.com', 'eb9595eb51a4606f6bca69341dd1db009ed1aef8b50e16d37a5bca290b771121', '[\"*\"]', '2023-03-24 07:41:59', '2023-03-24 07:41:59', '2023-03-24 07:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`, `thumbnail`, `online_status`) VALUES
(1, 'client', 'client@example.com', NULL, '$2y$10$4zh11gCMzWgy/L1dAzTxE.iMR4Kvf67yXDh4WDbp3vV2crX10h/bC', NULL, '2023-03-24 00:53:55', '2023-03-24 00:53:55', 0, NULL, 0),
(2, 'Romain Abreu', 'RomainAbreu@odontaila.com', NULL, '$2y$10$3DQJijL1w2itYlDW2/vZcOerROo1XnuejiR1ui7XlNViRD1p5SrZC', NULL, '2023-03-24 00:57:03', '2023-03-24 00:57:03', 1, 'https://centre-dentaire-montrouge-odontalia.fr/sites/S_YV3EYAEBDZCENE23W2MIWX6BXY/files/styles/large/public/25/50CBF0C0-122B-4379-92EF-165B72D087D6_1_201_a.jpeg?itok=mBSRKOly', 0),
(3, 'Capucine Duflocq', 'CapucineDuflocq@odontaila.com', NULL, '$2y$10$eHgtxDfUSAsF/01TepBD7./2hl1TaQGOT1pL3kZau2Je13sTHAAYK', NULL, '2023-03-24 00:58:28', '2023-03-24 00:58:28', 1, 'https://centre-dentaire-montrouge-odontalia.fr/sites/S_YV3EYAEBDZCENE23W2MIWX6BXY/files/styles/large/public/1/montrouge.jpg?itok=y_b-rfzd', 0),
(4, 'Sylvain Deleris', 'SylvainDeleris@odontalia.com', NULL, '$2y$10$Ay7MejilxaP0OIepRTqsnOSKBzKuwEGfp7f4BD4mibx/8yofEKtce', NULL, '2023-03-24 00:59:28', '2023-03-24 00:59:28', 1, 'https://centre-dentaire-montrouge-odontalia.fr/sites/S_YV3EYAEBDZCENE23W2MIWX6BXY/files/styles/large/public/1/dr-dupond-pierre.jpeg?itok=u2-6E7Dm', 0),
(5, 'David Lapeña', 'DavidLapena@odontalia.com', NULL, '$2y$10$1aXynAeFZEwgIogCOSfZ9.RT/LmdgpYzy6XMdKEM8snnbs/VzSVwC', NULL, '2023-03-24 01:00:45', '2023-03-24 01:00:45', 1, 'https://centre-dentaire-montrouge-odontalia.fr/sites/S_YV3EYAEBDZCENE23W2MIWX6BXY/files/styles/large/public/1/Dr%20David%20Lape%C3%B1A.jpg?itok=3reU-uZw', 0),
(6, 'Yousra El Ouafi', 'YousraElOuafi@odontalia.com', NULL, '$2y$10$BGM5wRb5Mkje9R8SbfVB8uSP/xH4M6MP7cBjLcHq6qwp9.hSEbg6W', NULL, '2023-03-24 01:01:52', '2023-03-24 01:01:52', 1, 'https://centre-dentaire-montrouge-odontalia.fr/sites/S_YV3EYAEBDZCENE23W2MIWX6BXY/files/styles/large/public/1/Dr-Yousra-El-Ouafi-centre-montrouge.jpeg?itok=N7C9pyG5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

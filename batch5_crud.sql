-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2025 at 07:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batch5_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_26_134521_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `image`, `created_at`, `updated_at`) VALUES
(8, 'banana edit xcsd', 'A banana iss an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa.sde', '20250113141907.jpg', '2024-11-15 14:43:28', '2025-01-13 08:48:12'),
(9, 'বাঁশ', 'ইংরেজি থেকে অনুবাদ করা হয়েছে-বাঁশ হল অনেক চিরহরিৎ বহুবর্ষজীবী সপুষ্পক উদ্ভিদের একটি বৈচিত্র্যময় দল যা ঘাস পরিবার Poaceae-এর সাবফ্যামিলি Bambusoideae তৈরি করে। দৈত্যাকার বাঁশ হল ঘাস পরিবারের বৃহত্তম সদস্য, ডেনড্রোক্যালামাস সিনিকাসের ক্ষেত্রে পৃথক ডালপালা 46 মিটার দৈর্ঘ্য, 36 সেন্টিমিটার পুরু এবং 450 কিলোগ্রাম পর্যন্ত ওজনে পৌঁছায়।', '20241115204453.jpg', '2024-11-15 14:44:54', '2024-11-15 14:44:54'),
(10, 'দৈত্যাকার বাঁশ', 'দৈত্যাকার বাঁশ হল ঘাস পরিবারের বৃহত্তম সদস্য, ডেনড্রোক্যালামাস সাইনিকাসের ক্ষেত্রে পৃথক ডালপালা ( culms ) দৈর্ঘ্য 46 মিটার (151 ফুট), 36 সেন্টিমিটার (14 ইঞ্চি) পর্যন্ত ) পুরুত্বে এবং 450', '20241115204625.jpg', '2024-11-15 14:46:25', '2024-11-15 14:46:25'),
(11, 'বাঁশ যেমন তেমন', 'বাঁশ যেমন তেমন, কিন্তু কাজের সময় রাম বাঁশ! – বোঝাতে চায়, বাঁশের মতো জিনিস সহজে ছোট্ট হলেও, সঠিক কাজে ব্যবহৃত হলে তা খুব শক্তিশালী হয়ে ওঠে।', '20241115210036.jpg', '2024-11-15 14:48:09', '2024-11-15 15:00:36'),
(15, 'বাঁশ আর জীবনের সম্পর্কটা', 'বাঁশ আর জীবনের সম্পর্কটা এমন যে, সময়মতো বাঁশ পাওয়া গেলে, জীবনটা মধুর হয়ে যায়। আর বাঁশ না পেলে, কষ্টটাই বেড়ে যায়! ঠুস করে এসে ঠাস করে বাঁশ দিয়ে যাওয়ার নামই হল ভালবাসা । – কথাটি শুনে একটু চিন্তা করলে বুঝতে পারবেন, বাঁশ জীবনের অংশ হয়ে থেকেছে।', '20241115212433.jpg', '2024-11-15 15:24:33', '2024-11-15 15:24:33'),
(18, 'বাঁশ আর জীবনের সম্পর্কটা এমন', 'বাঁশ আর জীবনের সম্পর্কটা এমন  বাঁশ আর জীবনের সম্পর্কটা এমন বাঁশ আর জীবনের সম্পর্কটা এমন বাঁশ আর জীবনের সম্পর্কটা এমন বাঁশ আর জীবনের সম্পর্কটা এমন', '20241118095903.jpg', '2024-11-18 03:59:03', '2024-11-18 03:59:03'),
(19, 'বাঁশ আর জীবনের সম্পর্কটা', 'বাঁশ আর জীবনের সম্পর্কটা এমন যে, সময়মতো বাঁশ পাওয়া গেলে, জীবনটা মধুর হয়ে যায়। আর বাঁশ না পেলে, কষ্টটাই বেড়ে যায়! ঠুস করে এসে ঠাস করে বাঁশ দিয়ে যাওয়ার নামই হল ভালবাসা । – কথাটি শুনে একটু চিন্তা করলে বুঝতে পারবেন, বাঁশ জীবনের অংশ হয়ে থেকেছে।', '20241118105044.jpg', '2024-11-18 04:50:44', '2024-11-18 04:50:44'),
(20, 'বাঁশ আর জীবনের সম্পর্কটা', 'বাঁশ আর জীবনের সম্পর্কটা এমন যে, সময়মতো বাঁশ পাওয়া গেলে, জীবনটা মধুর হয়ে যায়। আর বাঁশ না পেলে, কষ্টটাই বেড়ে যায়! ঠুস করে এসে ঠাস করে বাঁশ দিয়ে যাওয়ার নামই হল ভালবাসা । – কথাটি শুনে একটু চিন্তা করলে বুঝতে পারবেন, বাঁশ জীবনের অংশ হয়ে থেকেছে।', '20241118105321.jpg', '2024-11-18 04:53:21', '2024-11-18 04:53:21'),
(21, 'test product', 'test product', '20250113141827.jpg', '2025-01-13 08:18:27', '2025-01-13 08:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1cq7hbLREFrUHTFuaHxu0fHDFZDzhDCHKgasCcCm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm5qYWx6NE5VdWQ4WkwxbkMwVFpJbjNLZGtOTVVBdWpHcFdZSGxwVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736781162),
('3aFykFWASZAm3M2wtB42WFcnYxbkDMeGJdXb2Rlj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3BWZEtYandGeFlwNEZrZzZUcnpFNkJzaE1td3BOMGs0WGNjemhTTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cz9zb3J0PWRlc2Mmc29ydEJ5PW5hbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736780453);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-11-15 14:00:07', '$2y$12$1RHWuhfKqjqTJI8lsbQrEu7l/80guQpW2EOUa9B48h4L27U6HtbMi', 'uvHQZYIKDY', '2024-11-15 14:00:07', '2024-11-15 14:00:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

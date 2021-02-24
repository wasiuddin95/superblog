-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2021 at 11:09 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(40, 'Dummy Category', '2020-12-22 13:54:49', '2020-12-22 13:54:49'),
(41, 'Dummy Category Two', '2020-12-22 13:54:54', '2020-12-22 13:54:54'),
(42, 'Dummy Category Three', '2020-12-22 13:54:57', '2020-12-22 13:54:57'),
(43, 'Dummy Category Four', '2020-12-22 13:55:04', '2020-12-22 13:55:04');

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
(3, '2020_12_05_182320_create_categories_table', 2),
(4, '2020_12_05_182517_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `user_id`, `comment_id`, `title`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 10, 7, 10, 'Pariatur quia odit voluptatem ut.', 'Nam eligendi rerum beatae. Maxime et et exercitationem numquam. Voluptatem adipisci asperiores consectetur non ut aliquam et autem.', 'https://lorempixel.com/640/480/?80628', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(2, 10, 10, 3, 'Distinctio necessitatibus enim consequuntur illum dolor qui.', 'Sunt necessitatibus quas quis harum ut est. Blanditiis nihil voluptatem voluptatem deserunt. Blanditiis quaerat non vel et dicta. Voluptate quas veritatis esse temporibus qui perferendis et. Et ut possimus consequatur recusandae aut doloribus.', 'https://lorempixel.com/640/480/?70994', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(3, 10, 2, 1, 'Sit qui voluptatem possimus.', 'Vitae nihil cumque eveniet. Blanditiis ut consequatur sint exercitationem odit quam. Id occaecati laboriosam nisi atque ipsum. Fugit aut molestiae voluptatem repellat voluptatem sit impedit consequatur.', 'https://lorempixel.com/640/480/?55021', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(4, 10, 4, 3, 'Fugit et explicabo quis quis tempora.', 'Corporis quos in illo porro pariatur praesentium. Nobis quasi aliquid eos qui quis facilis. Dolores eius inventore et in.', 'https://lorempixel.com/640/480/?98229', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(5, 2, 7, 6, 'Consequatur expedita non quae et non.', 'Neque iure natus qui velit. Aliquid est nobis minus asperiores neque placeat. Eius consequuntur architecto eaque consequuntur atque quo. Voluptatibus molestias aut magni aut. Vero quia quasi sint minus ducimus neque beatae.', 'https://lorempixel.com/640/480/?27359', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(6, 4, 10, 9, 'Harum doloribus earum ea omnis sit eum.', 'Et est dolorum accusamus recusandae accusamus. Deleniti ea est molestiae sit modi labore ipsum. Ducimus laborum praesentium explicabo labore sint illum ipsum sed.', 'https://lorempixel.com/640/480/?98872', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(7, 5, 2, 6, 'Fuga dolor exercitationem officiis non.', 'Enim quisquam qui dolorum dolores magni. Eligendi illum et aut optio molestias quo. Dignissimos repellendus laudantium aliquam aut. Magnam voluptatem dolor reiciendis reprehenderit.', 'https://lorempixel.com/640/480/?36655', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(8, 6, 3, 3, 'Quia commodi sed aut voluptate.', 'Corporis accusantium laboriosam consectetur. Inventore nihil veritatis hic soluta perspiciatis veritatis. Provident soluta facere doloremque ipsam non.', 'https://lorempixel.com/640/480/?38771', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(9, 1, 1, 7, 'Distinctio tempore repudiandae eveniet quod temporibus adipisci ut.', 'Quis et nisi quo veritatis iste enim. Quia dolorum nobis ab facilis aliquid. Quaerat consequatur sint aut. Cumque voluptatem est qui quia.', 'https://lorempixel.com/640/480/?51557', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(10, 5, 1, 1, 'Ut doloribus libero.', 'Non quibusdam modi dolores qui est sunt velit eos. Cupiditate aut et consequatur cumque illo. Qui dolores amet ut nihil.', '1608227486.jpeg', '2020-12-05 13:19:35', '2020-12-17 11:51:27'),
(14, 4, 1, NULL, 'Democracy', 'The first argument passed to the hasOne method is the name of the related model. Once the relationship is defined, we may retrieve the related record using Eloquent\'s dynamic properties. Dynamic properties allow you to access relationship methods as if they were properties defined on the model:', '1608109253.png', '2020-12-16 03:00:53', '2020-12-16 03:00:53'),
(15, 8, 1, NULL, 'Refund Policy', 'method is the name of the related model. Once the relationship is defined, we may retrieve the related record using Eloquent\'s dynamic properties. Dynamic properties allow you to access relationship methods as if they were properties defined on the model', '1608117825.png', '2020-12-16 05:23:45', '2020-12-16 05:23:45'),
(16, 41, 1, NULL, 'Dummy Post 3', 'method is the name of the related model. Once the relationship is defined, we may retrieve the related record using Eloquent\'s dynamic properties. Dynamic properties allow you to access relationship methods as if they were properties defined on the model', '1608118866.png', '2020-12-16 05:41:07', '2020-12-22 13:57:13'),
(17, 40, 1, NULL, 'Huawei Nova', 'Updated Huawei provide best quality smart phone worldwide.', '1608143364.jpeg', '2020-12-16 06:04:46', '2020-12-22 13:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Wasi Uddin', 'wuddin73@gmail.com', NULL, '$2y$10$CxVqIiNqIUKbgJVVvFX6ZuBoGxFxRtJN27fXVbapzZbdjWtAL5Khy', 'HhTxtK4cMyPrWUcSkjKUxC5YfPnRj4mVq8yPvrDZFD020Q3AuHDr4jRl4prN', '2020-12-02 12:30:42', '2020-12-02 12:30:42'),
(2, 'Maude Feil', 'wrogahn@example.net', '2020-12-05 13:19:35', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3mJzQzwixH', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(3, 'Mrs. Gloria Kiehn', 'consuelo75@example.org', '2020-12-05 13:19:35', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CeqMAOO1J3', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(4, 'Prof. Jonas Langosh', 'jaleel.spencer@example.org', '2020-12-05 13:19:35', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oGwiC42MSU', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(5, 'Ashley Lockman Sr.', 'cormier.edmund@example.net', '2020-12-05 13:19:35', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CEGkQM1SdS', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(6, 'Enrico Labadie', 'king.remington@example.org', '2020-12-05 13:19:35', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zOpEdNDQXC', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(7, 'Demetrius Collins Jr.', 'lewis.marquardt@example.org', '2020-12-05 13:19:35', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PLfT6ZsT8u', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(8, 'Effie Lind V', 'tanner.considine@example.net', '2020-12-05 13:19:35', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'eSNBoijZr0', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(9, 'Enos Senger', 'annetta.treutel@example.org', '2020-12-05 13:19:35', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gTjAuTvwei', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(10, 'Adelle Rice DDS', 'prosacco.murl@example.net', '2020-12-05 13:19:35', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LSR1XUkLqt', '2020-12-05 13:19:35', '2020-12-05 13:19:35'),
(11, 'Renee Leannon', 'raheem50@example.net', '2020-12-05 13:19:35', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xRu6NF1z1e', '2020-12-05 13:19:35', '2020-12-05 13:19:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

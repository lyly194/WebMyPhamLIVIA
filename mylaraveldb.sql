-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 06:19 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mylaraveldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'LIPSTICK', 'lipstick', '2021-11-23 00:17:51', '2021-12-08 01:18:59'),
(2, 'BACKGROUND MAKEUP POWDER', 'background-makeup-powder', '2021-11-23 00:17:51', '2021-12-08 01:22:04'),
(3, 'CREAM FOR BACKGROUND', 'cream-for-background', '2021-11-23 00:17:51', '2021-12-08 01:22:33'),
(4, 'MAKEUP EYES', 'makeup-eyes', '2021-11-23 00:17:51', '2021-12-08 01:23:25'),
(5, 'EYEBROW PENCIL', 'eyebrow-pencil', '2021-11-23 00:17:51', '2021-12-08 01:26:15'),
(6, 'EYELINER', 'eyeliner', '2021-11-23 00:17:51', '2021-12-08 01:25:56');

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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3', 8, '2021-11-30 10:04:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 'newnew1', 'neww1', '99', 'http://127.0.0.1:8000/', '1638114086.jpg', 1, '2021-11-28 08:41:26', '2021-12-06 08:00:18'),
(6, 'Hot', 'Hott', '100', 'http://127.0.0.1:8000/', '1638114262.jpg', 1, '2021-11-28 08:44:22', '2021-11-28 08:44:22'),
(7, 'li', 'li', '78', 'http://127.0.0.1:8000/', '1638801282.jpg', 1, '2021-12-06 07:34:42', '2021-12-06 07:57:41'),
(9, 'hotli', 'hot', '89', 'http://127.0.0.1:8000/', '1638802892.jpg', 1, '2021-12-06 08:01:32', '2021-12-06 08:01:32');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_11_12_160206_create_sessions_table', 1),
(7, '2021_11_14_050640_add_attribute_status_into_posts_table', 1),
(8, '2021_11_14_174601_create_categories_table', 1),
(9, '2021_11_14_174648_create_products_table', 1),
(10, '2021_11_27_024413_create_home_sliders_table', 2),
(11, '2021_11_30_094749_create_home_categories_table', 3),
(12, '2021_12_02_030623_create_sales_table', 4),
(13, '2021_12_05_041855_create_orders_table', 5),
(14, '2021_12_05_042014_create_order_items_table', 5),
(15, '2021_12_05_042142_create_shippings_table', 5),
(16, '2021_12_05_042217_create_transactions_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `first_name`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`) VALUES
(1, 2, '223.00', '0.00', '46.83', '269.83', 'Ly', 'Dinh', '2', 'admin@admin.com', 'Yen Binh', 'Yen Binh', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '50000', 'ordered', 0, '2021-12-05 07:02:29', '2021-12-05 07:02:29'),
(2, 2, '223.00', '0.00', '46.83', '269.83', 'Ly', 'Dinh', '13456789', 'exolyly99@gmail.com', 'Yen Binh', 'Yen Binh', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '435567', 'ordered', 0, '2021-12-05 18:44:59', '2021-12-05 18:44:59'),
(3, 5, '718.00', '0.00', '150.78', '868.78', 'Ly', 'Dinh', '1323456766', 'exolyly99@gmail.com', 'Yen Binh', 'Yen Binh', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '12345', 'ordered', 1, '2021-12-05 18:53:56', '2021-12-05 18:53:56'),
(4, 5, '718.00', '0.00', '150.78', '868.78', 'Ly', 'Dinh', '1323456766', 'exolyly99@gmail.com', 'Yen Binh', 'Yen Binh', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '12345', 'ordered', 1, '2021-12-05 18:54:23', '2021-12-05 18:54:23'),
(5, 5, '718.00', '0.00', '150.78', '868.78', 'Ly', 'Dinh', '1323456766', 'exolyly99@gmail.com', 'Yen Binh', 'Yen Binh', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '12345', 'ordered', 0, '2021-12-05 18:54:33', '2021-12-05 18:54:33'),
(6, 5, '223.00', '0.00', '46.83', '269.83', 'Ly', 'Dinh', '76543421', 'admin@gmail.com', 'Yen Binh', 'Yen Binh', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '3212323', 'ordered', 1, '2021-12-05 18:59:10', '2021-12-05 18:59:10'),
(7, 6, '223.00', '0.00', '46.83', '269.83', 'Ly', 'Dinh', '13456768', 'admin3@gmail.com', 'Yen Binh', 'Yen Binh', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '2354567', 'ordered', 1, '2021-12-05 19:05:34', '2021-12-05 19:05:34'),
(8, 7, '353.00', '0.00', '74.13', '427.13', 'Ly', 'Dinh', '433231121', 'admin2@gmail.com', 'Yen Binh', 'Yen Binh1', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '132465', 'ordered', 1, '2021-12-05 22:09:45', '2021-12-05 22:09:45'),
(9, 7, '353.00', '0.00', '74.13', '427.13', 'Ly', 'Dinh', '433231121', 'admin2@gmail.com', 'Yen Binh', 'Yen Binh1', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '132465', 'ordered', 1, '2021-12-05 22:09:51', '2021-12-05 22:09:51'),
(10, 7, '353.00', '0.00', '74.13', '427.13', 'Ly', 'Dinh', '433231121', 'admin2@gmail.com', 'Yen Binh', 'Yen Binh1', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '132465', 'ordered', 1, '2021-12-05 22:10:04', '2021-12-05 22:10:04'),
(11, 8, '409.00', '0.00', '85.89', '494.89', 'Ly', 'Dinh', '1234356676', 'admin8@gmail.com', 'Yen Binh', 'Yen Binh', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '231344', 'ordered', 1, '2021-12-06 06:32:55', '2021-12-06 06:32:55'),
(12, 8, '138.00', '0.00', '28.98', '166.98', 'Ly', 'Dinh', '132435', 'admin8@gmail.com', 'Yen Binh', 'Yen Binh', 'Hoa Tien', 'Quang Binh', 'Viet Nam', '13245', 'ordered', 0, '2021-12-08 20:48:25', '2021-12-08 20:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '223.00', 1, '2021-12-05 07:02:29', '2021-12-05 07:02:29'),
(2, 1, 2, '223.00', 1, '2021-12-05 18:44:59', '2021-12-05 18:44:59'),
(3, 3, 3, '359.00', 2, '2021-12-05 18:53:56', '2021-12-05 18:53:56'),
(4, 3, 4, '359.00', 2, '2021-12-05 18:54:23', '2021-12-05 18:54:23'),
(5, 3, 5, '359.00', 2, '2021-12-05 18:54:33', '2021-12-05 18:54:33'),
(6, 1, 6, '223.00', 1, '2021-12-05 18:59:10', '2021-12-05 18:59:10'),
(7, 1, 7, '223.00', 1, '2021-12-05 19:05:34', '2021-12-05 19:05:34'),
(8, 5, 8, '353.00', 1, '2021-12-05 22:09:45', '2021-12-05 22:09:45'),
(9, 5, 9, '353.00', 1, '2021-12-05 22:09:51', '2021-12-05 22:09:51'),
(10, 5, 10, '353.00', 1, '2021-12-05 22:10:04', '2021-12-05 22:10:04'),
(11, 2, 11, '409.00', 1, '2021-12-06 06:32:55', '2021-12-06 06:32:55'),
(12, 7, 12, '138.00', 1, '2021-12-08 20:48:25', '2021-12-08 20:48:25');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) NOT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','ourofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Cream for background1', 'cream-for-background1', 'Ea dolorem possimus facere qui laborum aspernatur voluptas. Earum velit vero voluptatum id eaque. Et ab ipsa ut reprehenderit.', 'Est non voluptatem et quia eveniet facilis. Exercitationem velit laborum ab corrupti. Eius dolorem quam tempora. Recusandae blanditiis maiores debitis facilis voluptatem aut. Libero at suscipit sunt eaque esse impedit ut ut. Dolorem porro eum voluptatum quae blanditiis. Aspernatur similique eos accusamus ab laudantium. Aut illo pariatur est non et vel molestiae. Autem qui asperiores laboriosam sint dolorem laudantium aut et.', '223.00', '99.00', 'DIGI499', 'instock', 1, 1831, 'digital_14.jpg', NULL, 3, '2021-11-23 00:17:51', '2021-12-01 11:30:37'),
(2, 'praesentium omnis enim necessitatibus', 'praesentium-omnis-enim-necessitatibus', 'Repellat et ea ipsa doloribus et. Dignissimos occaecati dolorum rerum qui ut a et. Animi similique aliquid rerum rem qui.', 'Quam non ullam odit qui molestiae. Aut aut quia dolores enim. Minus vitae omnis veniam. Voluptas nobis fuga velit. Et et voluptatibus qui deserunt unde id. Id nobis et saepe commodi voluptas aut. Rem quos adipisci fugit laboriosam nisi sequi reiciendis molestias. Dolor quibusdam dolores nobis ut voluptatem id error. Eaque eius temporibus sit eveniet. Aut qui quis sed illo ullam dolore. Est nam nihil sed.', '409.00', '68.00', 'DIGI462', 'instock', 0, 111, 'digital_3.jpg', NULL, 1, '2021-11-23 00:17:51', '2021-12-08 02:08:31'),
(3, 'dicta necessitatibus perferendis omnis', 'dicta-necessitatibus-perferendis-omnis', 'Repellendus explicabo sequi quod sunt soluta. Asperiores facere inventore ea libero.', 'Sit illo eos a dignissimos. Odio dolorem rem et libero. Qui dignissimos sit laborum et soluta voluptatibus deserunt aut. Eligendi voluptate vero excepturi quo incidunt. Atque id modi quod fugit autem. Eius cum nihil vitae consectetur. Nobis assumenda sit molestiae maxime autem iure occaecati. Consequatur hic vero quas sit. At doloremque pariatur ullam doloribus. Aspernatur culpa ad molestiae et placeat omnis. Doloremque vero in error culpa et autem.', '359.00', '359.00', 'DIGI356', 'instock', 0, 100, 'digital_9.jpg', NULL, 3, '2021-11-23 00:17:51', '2021-12-01 05:51:52'),
(4, 'omnis eius dolores est', 'omnis-eius-dolores-est', 'Corrupti sit minus minus nesciunt. Sed eius at unde aut ut quia. Ex porro expedita in dolores dolores. Delectus eius veniam et aut minima facere. Necessitatibus quasi odit quis error aspernatur.', 'Rerum quas eos enim et earum porro amet voluptatibus. Quod et dolores earum incidunt nam esse eveniet. Ab natus porro autem vel illum. Quam eveniet molestiae voluptates voluptatem eum temporibus. Veritatis nihil minima accusantium consequatur accusantium incidunt eos impedit. Quae sunt dolore qui eaque accusamus hic sint distinctio. Omnis quos omnis illo consequatur necessitatibus eius aut illo.', '374.00', '260.00', 'DIGI325', 'instock', 0, 166, 'digital_10.jpg', NULL, 4, '2021-11-23 00:17:51', '2021-12-08 02:12:16'),
(5, 'recusandae libero voluptatum tempore', 'recusandae-libero-voluptatum-tempore', 'Necessitatibus et amet aut eos debitis tempora. Maiores voluptatum quibusdam maxime at nihil. Porro non ut quis mollitia minus.', 'Assumenda incidunt voluptatum officiis officiis minima voluptates vel aut. Quisquam earum eligendi ab. Est accusamus tempore quibusdam qui. Omnis in nesciunt dignissimos. Sunt quas doloribus quia fugiat quod eum. Non similique necessitatibus aut unde dolores optio aut. Deleniti iste omnis sint quia rerum non.', '353.00', '353.00', 'DIGI360', 'instock', 0, 187, 'digital_12.jpg', NULL, 5, '2021-11-23 00:17:51', '2021-12-08 02:12:31'),
(6, 'quis iste velit voluptatem', 'quis-iste-velit-voluptatem', 'Animi labore explicabo aut cumque aliquam optio. Asperiores et explicabo et adipisci quae. Beatae esse excepturi vero sed iste accusamus. Ut nostrum quis perspiciatis ut quasi.', 'Doloremque in magni facere. Illo autem voluptatem quibusdam non amet ad sunt ducimus. Ratione architecto similique molestiae nisi eius corporis deleniti quam. Voluptatem dolor facilis impedit. Et nihil voluptatem consequuntur omnis. Enim maxime est tempora labore animi aut. Veritatis voluptatem voluptatum sit saepe. Quam quisquam molestias est. Ut dolores quo minus rerum vitae.', '335.00', '462.00', 'DIGI262', 'instock', 0, 106, 'digital_13.jpg', NULL, 2, '2021-11-23 00:17:51', '2021-12-08 02:12:53'),
(7, 'eum iure natus qui', 'eum-iure-natus-qui', 'Ut eum est blanditiis deleniti commodi quia. Et velit temporibus dolores neque voluptatem iure.', 'Fugit quia aliquid et voluptatum similique. Et quis impedit repudiandae rem. Omnis sequi fugit quia ex. Error vitae illum ut occaecati quod ipsam inventore. Natus autem corporis officiis fugiat odio. Quam sit et a laborum et iusto. Suscipit qui temporibus quod. Soluta iste ea autem cupiditate aliquam. Eos eaque in delectus. Maiores omnis non quia qui iste maxime et. Perferendis cumque itaque molestiae quam quis commodi.', '138.00', '127.00', 'DIGI361', 'instock', 0, 145, 'digital_19.jpg', NULL, 4, '2021-11-23 00:17:51', '2021-12-08 02:14:52'),
(8, 'accusamus et necessitatibus error', 'accusamus-et-necessitatibus-error', 'Et quasi voluptatem temporibus voluptas dolor dolorem aliquam quia. Cumque omnis dolor placeat quis qui voluptas. Maiores voluptatem quidem dolorem id consequuntur eum.', 'Qui nisi velit soluta. Libero assumenda optio ea quas nisi. Porro voluptate delectus debitis ex. Quasi ut necessitatibus provident rerum similique id sed. Quo et nisi impedit et. Iure maxime vero quisquam velit amet sit. Nihil harum sed nobis dicta autem voluptate vel. Occaecati provident et labore iure esse incidunt saepe. Harum libero consectetur et voluptatum aut. Ut accusantium consequuntur voluptas qui ut. Rerum totam dolor esse. Et reiciendis nam nobis tempore amet omnis.', '249.00', '247.00', 'DIGI403', 'instock', 0, 106, 'digital_22.jpg', NULL, 4, '2021-11-23 00:17:51', '2021-12-08 02:15:06'),
(9, 'praesentium vel optio alias', 'praesentium-vel-optio-alias', 'Aliquid aut autem modi dignissimos consequatur vero. Magni fugit aut sequi est. Molestias quia delectus nostrum quo.', 'Qui aut quo et possimus qui voluptatem et sit. Voluptas dolorum vero consectetur facere rerum possimus. Ipsam repellat nemo dignissimos fuga velit porro. Et quo optio maiores vero praesentium. Necessitatibus soluta occaecati reiciendis ut et rerum nam eligendi. Vel suscipit pariatur voluptates adipisci animi saepe eum. Voluptas et facere excepturi mollitia laudantium nemo. Molestias sed aut nisi aliquam voluptatum et consequatur.', '234.00', '336.00', 'DIGI355', 'instock', 0, 168, 'digital_1.jpg', NULL, 4, '2021-11-23 00:17:51', '2021-11-23 00:17:51'),
(10, 'sint animi qui quos', 'sint-animi-qui-quos', 'Voluptas ipsum qui non. Qui porro distinctio qui laboriosam harum ad consequatur. Consequatur et sed vitae iusto et nisi. Laborum a qui possimus corporis non qui est.', 'Ea aut ab doloremque ratione amet deserunt enim. Autem saepe at provident fuga quidem. Cumque provident et est qui. Libero vel quasi nobis eos iste. Assumenda quia rerum non ea. Dolor quidem beatae omnis nemo debitis. Ipsam tenetur iusto et iusto magni maxime. Aut iure consectetur aliquid. Laboriosam expedita aut provident ab accusamus ipsum. Ut magni laborum sequi illum qui. Laborum quam enim veritatis ratione. Exercitationem debitis deserunt et quos sit.', '275.00', '349.00', 'DIGI394', 'instock', 0, 186, 'digital_16.jpg', NULL, 2, '2021-11-23 00:17:51', '2021-12-08 02:15:26'),
(11, 'voluptatibus facilis et ullam', 'voluptatibus-facilis-et-ullam', 'Eum odit et aut tenetur iusto. Aspernatur ut corporis provident quia in. Vel consectetur aspernatur consectetur eum sit at vero. Ut aut est ipsum beatae.', 'Repudiandae magnam fugiat in nihil eum molestiae. Temporibus laudantium voluptas blanditiis repellendus ipsa illo. Architecto aut vitae pariatur consequuntur. Facilis dolorem consequatur ullam architecto rerum. Qui eius mollitia commodi sed eum dolores velit aut. Exercitationem debitis natus nihil neque dicta doloribus laudantium. Ducimus esse maxime nihil quisquam temporibus necessitatibus. Veritatis possimus est voluptas sapiente ratione ratione.', '260.00', '384.00', 'DIGI297', 'instock', 0, 161, 'digital_2.jpg', NULL, 3, '2021-11-23 00:17:51', '2021-11-23 00:17:51'),
(12, 'veniam omnis veritatis quisquam', 'veniam-omnis-veritatis-quisquam', 'Quod aut quaerat nemo aliquam minima commodi. Ut inventore aliquam ex quia. Accusantium accusamus illum vitae deserunt. Maxime provident praesentium iste.', 'Expedita praesentium aliquam sunt. Commodi ducimus quod voluptas quo delectus. Eius repudiandae commodi aut rem alias. Quidem qui sed vitae voluptas velit. Eos eum quos est tenetur et temporibus perferendis. Dolorem necessitatibus sapiente eos. Quam voluptate omnis maxime explicabo quae qui. Enim nihil provident placeat omnis. Nemo molestias dolor consequatur reprehenderit asperiores minus voluptatem.', '204.00', '490.00', 'DIGI401', 'instock', 0, 115, 'digital_21.jpg', NULL, 2, '2021-11-23 00:17:51', '2021-11-23 00:17:51'),
(13, 'nostrum neque qui ipsa', 'nostrum-neque-qui-ipsa', 'Occaecati sapiente harum qui. Totam quaerat reiciendis et atque praesentium. Quis veniam praesentium minus soluta sit autem quae. Voluptatem ullam ipsum cupiditate.', 'Odio et eius possimus ex itaque ut dolor. Ipsa reprehenderit nostrum magni nulla est consequatur dolorum. Laborum qui magni debitis nam voluptates sed rerum quas. Tempora deleniti commodi reprehenderit et eum. Et ratione qui hic rerum voluptates. Tenetur ea autem aut ratione. Eum natus quis necessitatibus praesentium corrupti iusto enim quas. Nihil voluptatem deserunt tempora at enim quo fugit. Facilis libero cupiditate dolorem libero reprehenderit.', '376.00', '224.00', 'DIGI440', 'instock', 0, 174, 'digital_20.jpg', NULL, 1, '2021-11-23 00:17:51', '2021-12-08 02:16:40'),
(14, 'quas similique omnis praesentium', 'quas-similique-omnis-praesentium', 'Blanditiis incidunt et ut et ut omnis ipsa. Enim laudantium et optio quo in ut labore culpa. Necessitatibus sunt tempore qui ipsam non fugit.', 'Provident inventore reprehenderit eius eum deleniti autem. Facere consequatur nobis ipsam rem ut corrupti nam. Consequatur ducimus officiis atque nihil id magnam mollitia. Veniam molestiae totam delectus a. Quo quas dolorem vitae error velit laudantium odio. Ullam cum quam qui harum incidunt dolores ullam. Ad non laborum voluptates quis amet quis. Exercitationem sit ex error quia voluptatem dolor. Sed ratione corporis consequatur ut.', '300.00', '309.00', 'DIGI219', 'instock', 0, 121, 'digital_5.jpg', NULL, 1, '2021-11-23 00:17:51', '2021-12-08 02:19:18'),
(15, 'mollitia in ut consequuntur', 'mollitia-in-ut-consequuntur', 'Et recusandae aut et maxime pariatur quaerat. Magni at molestiae earum. Et assumenda laudantium earum rerum quo.', 'Culpa accusamus maxime animi rem. Consectetur incidunt similique tempore reiciendis quidem officia omnis. Nulla et eum quibusdam deserunt ut accusamus. Voluptatum sed et sunt quis voluptatem magnam aperiam est. Error voluptas quasi assumenda eaque eius hic. Sit cupiditate ipsa ullam. Nulla eaque voluptas labore expedita suscipit in. Adipisci qui et dignissimos odio voluptate occaecati.', '421.00', '11.00', 'DIGI254', 'instock', 0, 124, 'digital_17.jpg', NULL, 2, '2021-11-23 00:17:51', '2021-12-08 02:19:32'),
(16, 'facere accusantium eligendi dicta', 'facere-accusantium-eligendi-dicta', 'Molestiae consequatur omnis enim aliquam quae aut numquam sed. Nam dolor at commodi deserunt aliquid. Consequatur quos quo amet est labore aut.', 'Nam quis quo sit minus voluptatem accusamus ad. Sunt nihil placeat eos ipsam enim. Ullam quod dolor dolor dolorum. Sed necessitatibus consequatur eius repellendus. Similique quo animi quos est atque. Fugit qui cupiditate enim quia impedit aliquam aut non. Officiis voluptatem cupiditate dolores sed dolorem tenetur hic. Tempore veritatis consequatur rerum amet porro ea. Sunt itaque excepturi ut ea ex ut autem. Libero animi beatae quibusdam in cumque. Non nisi ex voluptatem hic ut.', '475.00', '26.00', 'DIGI162', 'instock', 0, 182, 'digital_8.jpg', NULL, 3, '2021-11-23 00:17:51', '2021-12-08 02:19:46'),
(17, 'enim debitis voluptas nemo', 'enim-debitis-voluptas-nemo', 'Sint in atque magni neque inventore. Earum assumenda reprehenderit hic exercitationem. Fuga esse aperiam ab dolor. Vel illo aut aperiam ipsa.', 'Optio harum eveniet asperiores. Et ut laudantium veritatis id rem quas. Consequatur natus voluptatem ad debitis qui nulla. Aspernatur hic soluta omnis beatae non consequatur. Rerum earum error dolorem commodi voluptatem neque est. Et dolor reiciendis dolor qui optio a ad. Atque amet in debitis natus ut aut. Modi sit maxime neque aut pariatur et dolore. Praesentium est et explicabo ullam sapiente consectetur temporibus.', '474.00', '341.00', 'DIGI485', 'instock', 0, 144, 'digital_15.jpg', NULL, 2, '2021-11-23 00:17:51', '2021-11-23 00:17:51'),
(18, 'illo ducimus voluptatem reprehenderit', 'illo-ducimus-voluptatem-reprehenderit', 'Assumenda vel minus molestiae. Itaque iste earum aspernatur vel odio dolor. Quisquam ut aut amet dolores nemo dicta.', 'Est et ut eos occaecati ut et. Ut sunt voluptates voluptatem qui earum. Quod eius quis est voluptates est. Dolorem minus eum sit voluptas. Quis veritatis pariatur temporibus. Dolore et vel cum eligendi voluptatem sequi labore. Occaecati vitae quam quisquam aut quis praesentium beatae dolorem. Omnis provident aut vitae harum maiores ad.', '390.00', '87.00', 'DIGI344', 'instock', 0, 182, 'digital_4.jpg', NULL, 6, '2021-11-23 00:17:51', '2021-12-08 02:20:09'),
(19, 'facilis ducimus omnis quidem', 'facilis-ducimus-omnis-quidem', 'Optio beatae sequi qui cupiditate omnis necessitatibus recusandae. Eum modi inventore incidunt. Earum non saepe consequuntur vel.', 'Numquam necessitatibus nemo sit alias omnis temporibus consectetur atque. Aut quia ipsam quo et mollitia reprehenderit velit quo. Esse beatae perspiciatis est soluta dolor cupiditate fugit. Sit fugit quos molestiae. Reiciendis debitis libero quibusdam. Voluptas sint corporis corporis. Mollitia eligendi provident eos sint voluptatem commodi quos. Doloribus maxime ut consequatur beatae quia. Dolorum eaque vero consequatur quam ipsum.', '226.00', '221.00', 'DIGI213', 'instock', 0, 105, 'digital_7.jpg', NULL, 2, '2021-11-23 00:17:51', '2021-12-08 02:20:19'),
(20, 'commodi et rerum a', 'commodi-et-rerum-a', 'Nulla debitis et magni occaecati. Similique aut amet magni iste. Odio ut atque magnam.', 'Numquam id ex facere. Harum autem ut pariatur laudantium. Voluptate quia exercitationem reprehenderit quos eveniet neque sed. Neque qui maiores quaerat omnis consequatur dicta ad. Quis sit et perferendis ut. Rerum quas corrupti sit quod expedita. Quis alias cupiditate sequi aliquam. Aut quo doloremque ut et. Adipisci ullam qui beatae similique expedita sit quaerat.', '409.00', '27.00', 'DIGI478', 'instock', 0, 156, 'digital_11.jpg', NULL, 3, '2021-11-23 00:17:51', '2021-12-08 02:20:29'),
(21, 'aut voluptas omnis aperiam', 'aut-voluptas-omnis-aperiam', 'Quam neque animi sit. Omnis similique est ea temporibus. At rerum aliquam iste facere nihil. Quisquam aut non qui reiciendis sed.', 'Incidunt ut corporis quasi doloribus. Fugit et quo eos voluptates officiis. Optio eum distinctio qui quia et. Expedita et possimus dolores officiis amet velit est. Vero qui tempora velit et repellendus molestiae. Tempora molestiae non eveniet impedit amet culpa dolor odit. Dicta non est alias sed atque sed optio. Molestias porro repellendus dignissimos possimus eius tenetur.', '435.00', '479.00', 'DIGI200', 'instock', 0, 152, 'digital_6.jpg', NULL, 5, '2021-11-23 00:17:51', '2021-12-08 02:20:44'),
(22, 'minima quidem facere sequi', 'minima-quidem-facere-sequi', 'Consequatur qui praesentium quia culpa voluptatibus distinctio accusamus. Qui a quis tempore. Suscipit quasi veritatis molestias enim mollitia ipsa.', 'Quia voluptas totam voluptatem placeat. Ipsam soluta eos veniam excepturi ea. Odit dolorem impedit alias modi et. Nam est alias sint et quidem est sunt. Eveniet enim fuga veniam et. Sequi illum facere ipsum molestiae. Sed et voluptatem explicabo et laborum repellat tempore dolor. Fuga quod quo illum error vitae quia. Iure magnam sit aut. Rem rerum ut beatae aut.', '140.00', '487.00', 'DIGI488', 'instock', 0, 174, 'digital_18.jpg', NULL, 1, '2021-11-23 00:17:51', '2021-12-08 02:20:54'),
(24, 'er', 'er', 'sdfs', 'sdff', '123.00', '0.00', 'dfg', 'instock', 0, 123, '1637947697.jpg', NULL, 2, '2021-11-26 10:27:27', '2021-12-08 02:21:04'),
(27, 'test2', 'test2', 'zxczxc', 'zxczxczxc', '300.00', '0.00', 'zxczxc', 'instock', 0, 123, '1638094813.jpg', NULL, 1, '2021-11-28 03:20:13', '2021-12-08 02:21:16'),
(33, 'lipppp', 'lipppp', 'vxcsdf', 'adfad', '324.00', '234.00', 'dfad313', 'instock', 0, 1213, '1638769231.jpg', NULL, 4, '2021-12-05 22:40:31', '2021-12-08 02:21:45'),
(34, 'liplip1', 'liplip1', 'erge', 'ewf', '235.00', '123.00', 'sfdf123', 'instock', 0, 4332, '1638797828.jpg', NULL, 4, '2021-12-06 06:37:08', '2021-12-06 06:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2021-12-02 10:20:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('b61Q3rzpULAXp4r1IIUkwOnX9aQR6Ai5DQAIGVFB', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidmpTbVZHRkNoc3QzeDVpaVk5UEFOZ3R5NHg3dW1uYjZaR0t0dFRNbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkd0lpaG5Ieko0TEF5LjF3cy5tZEhyLndYRThHbFdpWU53TlNBdG5vaUZBTzhyUzE3bGF5RmUiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHdJaWhuSHpKNExBeS4xd3MubWRIci53WEU4R2xXaVlOd05TQXRub2lGQU84clMxN2xheUZlIjt9', 1639021923);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `first_name`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 6, 'Ly', 'Dinh', '4324313', 'exolyly99@gmail.com', 'Yen Binh', 'Yen Binh', 'Hoa Hop', 'Quang Binh', 'Viet Nam', '123243', '2021-12-05 18:59:10', '2021-12-05 18:59:10'),
(2, 7, 'Ly', 'Dinh', '12787654322', 'admin3@gmail.com', 'Yen Binh1', 'Yen Binh2', 'Hoa Hop', 'Quang Binh', 'Viet Nam', '12349', '2021-12-05 19:05:34', '2021-12-05 19:05:34'),
(3, 10, 'Ly', 'Dinh', '4242644', 'admin@gmail.com', 'Yen Binh', 'Yen Binh3', 'Hoa Hop', 'Quang Binh', 'Viet Nam', '243112', '2021-12-05 22:10:04', '2021-12-05 22:10:04'),
(4, 11, 'lyly', 'Dinh', '245466787', 'admin8@gmail.com', 'Yen Thanh', 'Yen Thanh1', 'Hoa Hop', 'Quang Binh', 'Viet Nam', '76432321', '2021-12-06 06:32:55', '2021-12-06 06:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'cod', 'pending', '2021-12-05 18:44:59', '2021-12-05 18:44:59'),
(2, 5, 5, 'cod', 'pending', '2021-12-05 18:54:33', '2021-12-05 18:54:33'),
(3, 5, 6, 'cod', 'pending', '2021-12-05 18:59:10', '2021-12-05 18:59:10'),
(4, 6, 7, 'cod', 'pending', '2021-12-05 19:05:34', '2021-12-05 19:05:34'),
(5, 7, 10, 'cod', 'pending', '2021-12-05 22:10:04', '2021-12-05 22:10:04'),
(6, 8, 11, 'cod', 'pending', '2021-12-06 06:32:55', '2021-12-06 06:32:55');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$wIihnHzJ4LAy.1ws.mdHr.wXE8GlWiYNwNSAtnoiFAO8rS17layFe', NULL, NULL, '0TkvzrE3e1PvjkXrMzi1jmcC3Z6sc7Mg4M6PSUO3ZlkZKcm5wREaQtTSrwBv', NULL, NULL, 'ADM', '2021-11-23 07:38:11', '2021-11-23 07:38:11'),
(2, 'ly', 'exolyly99@gmail.com', NULL, '$2y$10$YeCzFke0Qpi/TlL6dFwGpOkT/z8OL5FL2EiEKv9DgIpJ6KwOal4UO', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-11-23 08:51:42', '2021-11-23 08:51:42'),
(3, 'ly', 'admin@gmail.com', NULL, '$2y$10$xs4rBt4SHCvgaSBr2cfmPesMLXFE1m6tZwMiBlkKU4RATTivw/C36', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-11-23 18:42:46', '2021-11-23 18:42:46'),
(4, 'ly', 'admin1@gmail.com', NULL, '$2y$10$txkqejjcyUcJCLNgVJ2/Hu0fp8O/REdOPgzzCUKMbFK.heTXB8j/S', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-12-05 18:22:51', '2021-12-05 18:22:51'),
(5, 'lyly', 'admin2@gmail.com', NULL, '$2y$10$HODpBcY3seyUaDQHaUSjEu3o7DzWFB2veQge/QelXZp9qdBABUcJa', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-12-05 18:50:36', '2021-12-05 18:50:36'),
(6, 'lyly', 'admin3@gmail.com', NULL, '$2y$10$m4Cg0QF6SRe0P4cczHKljOzySODUcEsah4S04i1h58mnWI3hp1ZyK', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-12-05 19:01:30', '2021-12-05 19:01:30'),
(7, 'lylyly', 'admin4@gmail.com', NULL, '$2y$10$LgTqsFHngpjzC2WiAGLX..WdSVkdcgGU33Rmeknx7dRaeB./ztm66', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-12-05 22:06:24', '2021-12-05 22:06:24'),
(8, 'Lyly', 'admin8@gmail.com', NULL, '$2y$10$tLCnSkCJYmnuWuEyiRVi3OCKqzKhaso1Xgjrh4D7kHHkg5rvdoA2e', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-12-06 06:29:00', '2021-12-06 06:29:00'),
(9, 'Lyly', 'admin9@gmail.com', NULL, '$2y$10$XjVSAYDtABiZQNBfsuvj2.3NCB/BGMNvsqt2rYaE9i6wsJqIMqJ.y', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-12-08 20:44:17', '2021-12-08 20:44:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 11:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-docs`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `id_creator` int(11) DEFAULT NULL,
  `type_content` varchar(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `thumbnail` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `id_creator`, `type_content`, `title`, `thumbnail`, `description`, `source`, `status`, `id_product`, `createdAt`) VALUES
(1, 101, 'documentasi', 'Google Pixel Unboxing', 'https://storage.googleapis.com/e_doc/images/thumbnail1.jpg', 'Deskripsi untuk video dokumentasi Google Pixel Unboxing', 'https://storage.googleapis.com/e_doc/videos/video1.mp4', 'published', 1, '2023-12-25 08:00:00'),
(2, 102, 'documentasi', 'Exploring Google Pixel Camera Features', 'https://storage.googleapis.com/e_doc/images/thumbnail2.jpg', 'Deskripsi untuk video dokumentasi Exploring Google Pixel Camera Features', 'https://storage.googleapis.com/e_doc/videos/video2.mp4', 'published', 2, '2023-12-25 09:00:00'),
(3, 103, 'documentasi', 'Tips and Tricks with Google Pixel', 'https://storage.googleapis.com/e_doc/images/thumbnail3.jpg', 'Deskripsi untuk video dokumentasi Tips and Tricks with Google Pixel', 'https://storage.googleapis.com/e_doc/videos/video3.mp4', 'draft', 3, '2023-12-25 10:00:00'),
(4, 104, 'documentasi', 'Google Pixel Photo Editing Tutorial', 'https://storage.googleapis.com/e_doc/images/thumbnail4.jpg', 'Deskripsi untuk video dokumentasi Google Pixel Photo Editing Tutorial', 'https://storage.googleapis.com/e_doc/videos/video4.mp4', 'published', 1, '2023-12-25 11:00:00'),
(5, 105, 'documentasi', 'Capturing Moments with Google Pixel', 'https://storage.googleapis.com/e_doc/images/thumbnail5.jpg', 'Deskripsi untuk video dokumentasi Capturing Moments with Google Pixel', 'https://storage.googleapis.com/e_doc/videos/video5.mp4', 'published', 2, '2023-12-25 12:00:00'),
(6, 106, 'documentasi', 'Google Pixel Editing Apps Review', 'https://storage.googleapis.com/e_doc/images/thumbnail6.jpg', 'Deskripsi untuk video dokumentasi Google Pixel Editing Apps Review', 'https://storage.googleapis.com/e_doc/videos/video6.mp4', 'draft', 3, '2023-12-25 13:00:00'),
(7, 107, 'documentasi', 'Comparing Google Pixel Models', 'https://storage.googleapis.com/e_doc/images/thumbnail7.jpg', 'Deskripsi untuk video dokumentasi Comparing Google Pixel Models', 'https://storage.googleapis.com/e_doc/videos/video7.mp4', 'published', 1, '2023-12-25 14:00:00'),
(8, 108, 'documentasi', 'Google Pixel Cinematic Videography', 'https://storage.googleapis.com/e_doc/images/thumbnail8.jpg', 'Deskripsi untuk video dokumentasi Google Pixel Cinematic Videography', 'https://storage.googleapis.com/e_doc/videos/video8.mp4', 'published', 2, '2023-12-25 15:00:00'),
(9, 109, 'documentasi', 'Google Pixel Editing Tips', 'https://storage.googleapis.com/e_doc/images/thumbnail9.jpg', 'Deskripsi untuk video dokumentasi Google Pixel Editing Tips', 'https://storage.googleapis.com/e_doc/videos/video9.mp4', 'draft', 3, '2023-12-25 16:00:00'),
(10, 110, 'documentasi', 'Behind the Scenes: Google Pixel Photo Shoot', 'https://storage.googleapis.com/e_doc/images/thumbnail10.jpg', 'Deskripsi untuk video dokumentasi Behind the Scenes: Google Pixel Photo Shoot', 'https://storage.googleapis.com/e_doc/videos/video10.mp4', 'published', 1, '2023-12-25 17:00:00'),
(11, 101, 'documentasi', 'Panduan Penggunaan Macbook Pro', 'https://storage.googleapis.com/e_doc/images/thumbnail1.jpg', 'Dokumentasi tentang cara penggunaan Macbook Pro', 'https://storage.googleapis.com/e_doc/videos/video1.mp4', 'published', 1, '2023-01-01 00:00:00'),
(12, 102, 'documentasi', 'Rahasia Macbook Terungkap', 'https://storage.googleapis.com/e_doc/images/thumbnail2.jpg', 'Mengungkap rahasia tersembunyi di balik Macbook', 'https://storage.googleapis.com/e_doc/videos/video2.mp4', 'draft', 2, '2023-01-02 00:00:00'),
(13, 103, 'documentasi', 'Inovasi Macbook Terbaru', 'https://storage.googleapis.com/e_doc/images/thumbnail3.jpg', 'Dokumentasi inovasi terkini pada Macbook', 'https://storage.googleapis.com/e_doc/videos/video3.mp4', 'published', 3, '2023-01-03 00:00:00'),
(14, 104, 'documentasi', 'Macbook Pro vs Air', 'https://storage.googleapis.com/e_doc/images/thumbnail4.jpg', 'Perbandingan antara Macbook Pro dan Macbook Air', 'https://storage.googleapis.com/e_doc/videos/video4.mp4', 'published', 1, '2023-01-04 00:00:00'),
(15, 105, 'documentasi', 'Tips dan Trik Menggunakan Macbook', 'https://storage.googleapis.com/e_doc/images/thumbnail5.jpg', 'Berbagai tips dan trik untuk pengguna Macbook', 'https://storage.googleapis.com/e_doc/videos/video5.mp4', 'draft', 2, '2023-01-05 00:00:00'),
(16, 106, 'documentasi', 'Macbook: Melampaui Batas Kreativitas', 'https://storage.googleapis.com/e_doc/images/thumbnail6.jpg', 'Mengeksplorasi potensi kreativitas dengan Macbook', 'https://storage.googleapis.com/e_doc/videos/video6.mp4', 'published', 3, '2023-01-06 00:00:00'),
(17, 107, 'documentasi', 'Sisi Lain Macbook', 'https://storage.googleapis.com/e_doc/images/thumbnail7.jpg', 'Melihat sisi yang jarang diketahui dari Macbook', 'https://storage.googleapis.com/e_doc/videos/video7.mp4', 'draft', 1, '2023-01-07 00:00:00'),
(18, 108, 'documentasi', 'Macbook: Masa Depan Komputasi', 'https://storage.googleapis.com/e_doc/images/thumbnail8.jpg', 'Meramalkan masa depan komputasi dengan Macbook', 'https://storage.googleapis.com/e_doc/videos/video8.mp4', 'published', 2, '2023-01-08 00:00:00'),
(19, 109, 'documentasi', 'Macbook dalam Sejarah', 'https://storage.googleapis.com/e_doc/images/thumbnail9.jpg', 'Jejak sejarah perkembangan Macbook', 'https://storage.googleapis.com/e_doc/videos/video9.mp4', 'draft', 3, '2023-01-09 00:00:00'),
(20, 110, 'documentasi', 'Petualangan Macbook', 'https://storage.googleapis.com/e_doc/images/thumbnail10.jpg', 'Menjelajahi petualangan dengan Macbook', 'https://storage.googleapis.com/e_doc/videos/video10.mp4', 'published', 1, '2023-01-10 00:00:00'),
(21, 101, 'documentasi', 'Nikon Documentary 1', 'https://storage.googleapis.com/e_doc/images/thumbnail1.jpg', 'Deskripsi untuk Nikon Documentary 1', 'https://storage.googleapis.com/e_doc/videos/video1.mp4', 'active', 1, '2023-01-01 00:00:00'),
(22, 102, 'documentasi', 'Amazing Nikon Moments', 'https://storage.googleapis.com/e_doc/images/thumbnail2.jpg', 'Deskripsi untuk Amazing Nikon Moments', 'https://storage.googleapis.com/e_doc/videos/video2.mp4', 'active', 2, '2023-02-01 00:00:00'),
(23, 103, 'documentasi', 'Exploring with Nikon', 'https://storage.googleapis.com/e_doc/images/thumbnail3.jpg', 'Deskripsi untuk Exploring with Nikon', 'https://storage.googleapis.com/e_doc/videos/video3.mp4', 'active', 3, '2023-03-01 00:00:00'),
(24, 104, 'documentasi', 'Nikon in Focus', 'https://storage.googleapis.com/e_doc/images/thumbnail4.jpg', 'Deskripsi untuk Nikon in Focus', 'https://storage.googleapis.com/e_doc/videos/video4.mp4', 'active', 4, '2023-04-01 00:00:00'),
(25, 105, 'documentasi', 'Nikon World', 'https://storage.googleapis.com/e_doc/images/thumbnail5.jpg', 'Deskripsi untuk Nikon World', 'https://storage.googleapis.com/e_doc/videos/video5.mp4', 'active', 5, '2023-05-01 00:00:00'),
(26, 106, 'documentasi', 'Journey with Nikon', 'https://storage.googleapis.com/e_doc/images/thumbnail6.jpg', 'Deskripsi untuk Journey with Nikon', 'https://storage.googleapis.com/e_doc/videos/video6.mp4', 'active', 6, '2023-06-01 00:00:00'),
(27, 107, 'documentasi', 'Nikon Explorations', 'https://storage.googleapis.com/e_doc/images/thumbnail7.jpg', 'Deskripsi untuk Nikon Explorations', 'https://storage.googleapis.com/e_doc/videos/video7.mp4', 'active', 7, '2023-07-01 00:00:00'),
(28, 108, 'documentasi', 'Nikon Chronicles', 'https://storage.googleapis.com/e_doc/images/thumbnail8.jpg', 'Deskripsi untuk Nikon Chronicles', 'https://storage.googleapis.com/e_doc/videos/video8.mp4', 'active', 8, '2023-08-01 00:00:00'),
(29, 109, 'documentasi', 'Nikon Adventures', 'https://storage.googleapis.com/e_doc/images/thumbnail9.jpg', 'Deskripsi untuk Nikon Adventures', 'https://storage.googleapis.com/e_doc/videos/video9.mp4', 'active', 9, '2023-09-01 00:00:00'),
(30, 110, 'documentasi', 'Nikon Moments Captured', 'https://storage.googleapis.com/e_doc/images/thumbnail10.jpg', 'Deskripsi untuk Nikon Moments Captured', 'https://storage.googleapis.com/e_doc/videos/video10.mp4', 'active', 10, '2023-10-01 00:00:00'),
(31, 101, 'documentasi', 'Video Dokumentasi OXIMUS ZDP1118 - Part 1', 'https://storage.googleapis.com/e_doc/images/thumbnail1.jpg', 'Deskripsi video dokumentasi OXIMUS ZDP1118 - Part 1', 'https://storage.googleapis.com/e_doc/videos/video1.mp4', 'active', 1, '2023-01-01 00:00:00'),
(32, 102, 'documentasi', 'OXIMUS ZDP1118 Explained - A Comprehensive Guide', 'https://storage.googleapis.com/e_doc/images/thumbnail2.jpg', 'A deep dive into the features and functionality of OXIMUS ZDP1118', 'https://storage.googleapis.com/e_doc/videos/video2.mp4', 'active', 2, '2023-01-02 00:00:00'),
(33, 103, 'documentasi', 'Unboxing OXIMUS ZDP1118 - Whats Inside the Box', 'https://storage.googleapis.com/e_doc/images/thumbnail3.jpg', 'Discover the contents of the OXIMUS ZDP1118 package in this unboxing video', 'https://storage.googleapis.com/e_doc/videos/video3.mp4', 'inactive', 3, '2023-01-03 00:00:00'),
(34, 104, 'documentasi', 'OXIMUS ZDP1118 Tips and Tricks', 'https://storage.googleapis.com/e_doc/images/thumbnail4.jpg', 'Learn useful tips and tricks for maximizing your OXIMUS ZDP1118 experience', 'https://storage.googleapis.com/e_doc/videos/video4.mp4', 'active', 4, '2023-01-04 00:00:00'),
(35, 105, 'documentasi', 'Behind the Scenes: Creating OXIMUS ZDP1118', 'https://storage.googleapis.com/e_doc/images/thumbnail5.jpg', 'Get a glimpse of the production process behind the OXIMUS ZDP1118', 'https://storage.googleapis.com/e_doc/videos/video5.mp4', 'active', 5, '2023-01-05 00:00:00'),
(36, 106, 'documentasi', 'OXIMUS ZDP1118 Firmware Update Guide', 'https://storage.googleapis.com/e_doc/images/thumbnail6.jpg', 'Step-by-step instructions on how to update the firmware of your OXIMUS ZDP1118', 'https://storage.googleapis.com/e_doc/videos/video6.mp4', 'inactive', 6, '2023-01-06 00:00:00'),
(37, 107, 'documentasi', 'OXIMUS ZDP1118 in Action - Real-world Usage', 'https://storage.googleapis.com/e_doc/images/thumbnail7.jpg', 'See the OXIMUS ZDP1118 in action in various real-world scenarios', 'https://storage.googleapis.com/e_doc/videos/video7.mp4', 'active', 7, '2023-01-07 00:00:00'),
(38, 108, 'documentasi', 'Comparing OXIMUS ZDP1118 with Competitors', 'https://storage.googleapis.com/e_doc/images/thumbnail8.jpg', 'An in-depth comparison of the OXIMUS ZDP1118 with other similar products in the market', 'https://storage.googleapis.com/e_doc/videos/video8.mp4', 'inactive', 8, '2023-01-08 00:00:00'),
(39, 109, 'documentasi', 'Setting Up Your OXIMUS ZDP1118 for the First Time', 'https://storage.googleapis.com/e_doc/images/thumbnail9.jpg', 'A guide on setting up and configuring your OXIMUS ZDP1118 for the first use', 'https://storage.googleapis.com/e_doc/videos/video9.mp4', 'active', 9, '2023-01-09 00:00:00'),
(40, 110, 'documentasi', 'Exploring OXIMUS ZDP1118 Accessories', 'https://storage.googleapis.com/e_doc/images/thumbnail10.jpg', 'Discover the accessories that come with the OXIMUS ZDP1118 and how to use them', 'https://storage.googleapis.com/e_doc/videos/video10.mp4', 'active', 10, '2023-01-10 00:00:00'),
(41, 101, 'documentasi', 'Samsung Galaxy Unboxing', 'https://storage.googleapis.com/e_doc/images/thumbnail1.jpg', 'Dokumentasi tentang proses unboxing Samsung Galaxy.', 'https://storage.googleapis.com/e_doc/videos/video1.mp4', 'active', 1, '2023-01-01 00:00:00'),
(42, 102, 'documentasi', 'Samsung Galaxy Camera Test', 'https://storage.googleapis.com/e_doc/images/thumbnail2.jpg', 'Uji kamera Samsung Galaxy dalam berbagai kondisi.', 'https://storage.googleapis.com/e_doc/videos/video2.mp4', 'active', 2, '2023-01-02 00:00:00'),
(43, 103, 'documentasi', 'Samsung Galaxy Features Overview', 'https://storage.googleapis.com/e_doc/images/thumbnail3.jpg', 'Pemaparan fitur-fitur Samsung Galaxy secara menyeluruh.', 'https://storage.googleapis.com/e_doc/videos/video3.mp4', 'inactive', 3, '2023-01-03 00:00:00'),
(44, 104, 'documentasi', 'Exploring Samsung Galaxy UI', 'https://storage.googleapis.com/e_doc/images/thumbnail4.jpg', 'Eksplorasi antarmuka pengguna Samsung Galaxy.', 'https://storage.googleapis.com/e_doc/videos/video4.mp4', 'active', 4, '2023-01-04 00:00:00'),
(45, 105, 'documentasi', 'Samsung Galaxy Tips and Tricks', 'https://storage.googleapis.com/e_doc/images/thumbnail5.jpg', 'Berbagai tips dan trik penggunaan Samsung Galaxy.', 'https://storage.googleapis.com/e_doc/videos/video5.mp4', 'active', 5, '2023-01-05 00:00:00'),
(46, 106, 'documentasi', 'Samsung Galaxy Performance Test', 'https://storage.googleapis.com/e_doc/images/thumbnail6.jpg', 'Uji performa Samsung Galaxy dalam berbagai skenario.', 'https://storage.googleapis.com/e_doc/videos/video6.mp4', 'inactive', 6, '2023-01-06 00:00:00'),
(47, 107, 'documentasi', 'Samsung Galaxy Comparison', 'https://storage.googleapis.com/e_doc/images/thumbnail7.jpg', 'Perbandingan Samsung Galaxy dengan produk sejenis.', 'https://storage.googleapis.com/e_doc/videos/video7.mp4', 'active', 7, '2023-01-07 00:00:00'),
(48, 108, 'documentasi', 'Behind the Scenes: Samsung Galaxy Launch', 'https://storage.googleapis.com/e_doc/images/thumbnail8.jpg', 'Pandangan di balik layar peluncuran Samsung Galaxy.', 'https://storage.googleapis.com/e_doc/videos/video8.mp4', 'active', 8, '2023-01-08 00:00:00'),
(49, 109, 'documentasi', 'Samsung Galaxy User Experience', 'https://storage.googleapis.com/e_doc/images/thumbnail9.jpg', 'Pengalaman pengguna menggunakan Samsung Galaxy.', 'https://storage.googleapis.com/e_doc/videos/video9.mp4', 'inactive', 9, '2023-01-09 00:00:00'),
(50, 110, 'documentasi', 'Samsung Galaxy Maintenance Guide', 'https://storage.googleapis.com/e_doc/images/thumbnail10.jpg', 'Panduan perawatan Samsung Galaxy untuk pemilik.', 'https://storage.googleapis.com/e_doc/videos/video10.mp4', 'active', 10, '2023-01-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `content_reaction_logs`
--

CREATE TABLE `content_reaction_logs` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_content` int(11) DEFAULT NULL,
  `reaction` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `content_view_logs`
--

CREATE TABLE `content_view_logs` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_content` int(11) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `has_categories`
--

CREATE TABLE `has_categories` (
  `id` int(11) NOT NULL,
  `id_content` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_content` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20231124184213-create-users.js'),
('20231124184247-create-review.js'),
('20231124184306-create-categories.js'),
('20231124184504-create-content.js'),
('20231124184536-create-has-category.js'),
('20231124184614-create-content-reaction-logs.js'),
('20231124184642-create-content-view-logs.js'),
('20231128164004-create-banners.js'),
('20231205235315-create-products.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `type_role` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `address`, `birth_date`, `phone_number`, `type_role`) VALUES
(1, 'ilham', 'ilham123', '$2b$10$vaVpZnxLeW7M8PG8H4.WueJAouAsmBBzu3/e.KBm5Mm3aKlBJxC/C', 'ilham354@gmail.com', 'medan', '2002-08-05 00:00:00', '0823535', 'admin'),
(2, 'windi', 'windi89', '$2b$10$fqZRgCOn4WRE1zmfIeIxNeGp6cPqQjNmHOdCIR5WI1ayES3o4HJYq', 'windi@gmail.com', 'selong', '2002-08-05 00:00:00', '0823535', 'admin'),
(3, 'jhon', 'jhon', '$2b$10$dE3JMF2S0ctJXDP4IwU1BusSr0JOU0igDYx6waRhBYfxQVc/TztzW', 'jhon@gmail.com', 'selong', '2002-08-05 00:00:00', '0823535', 'user'),
(4, 'jhon2', 'jhon2', '$2b$10$n3XiIP0g/.6Mq9mRj6cc6OF8l94DDxOkZe2irCATOmFlnVqMK3dWm', 'jhon2@gmail.com', 'selong', '2002-08-05 00:00:00', '0823535', 'user'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_reaction_logs`
--
ALTER TABLE `content_reaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_view_logs`
--
ALTER TABLE `content_view_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `has_categories`
--
ALTER TABLE `has_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `content_reaction_logs`
--
ALTER TABLE `content_reaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_view_logs`
--
ALTER TABLE `content_view_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `has_categories`
--
ALTER TABLE `has_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

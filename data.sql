-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2025 at 11:27 AM
-- Server version: 10.11.8-MariaDB-0ubuntu0.23.10.1
-- PHP Version: 8.2.10-2ubuntu2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `in`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(222) DEFAULT NULL,
  `university_name` varchar(222) DEFAULT NULL,
  `major_name` varchar(222) DEFAULT NULL,
  `father_name` varchar(222) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `student_phone` varchar(100) DEFAULT NULL,
  `father_country` varchar(100) DEFAULT NULL,
  `target_country` varchar(100) DEFAULT NULL,
  `highschool_certificate` varchar(255) DEFAULT NULL,
  `university_certificate` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `personal_photo` varchar(255) DEFAULT NULL,
  `extra_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `university_name`, `major_name`, `father_name`, `father_phone`, `student_phone`, `father_country`, `target_country`, `highschool_certificate`, `university_certificate`, `passport`, `personal_photo`, `extra_file`) VALUES
(1, '2025-04-09 15:47:04', '2025-04-09 15:47:04', NULL, 'تنلا', 'Osama Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2025-04-09 15:50:08', '2025-04-09 15:50:08', NULL, 'ععععع', 'Osama Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2025-04-09 16:16:24', '2025-04-09 16:16:24', NULL, 'f', 'Osama Ahmed', NULL, NULL, NULL, NULL, '4', '3', NULL, NULL, NULL, NULL, NULL),
(4, '2025-04-09 16:22:32', '2025-04-09 16:22:32', NULL, 'Osama Ahmed', 'Osama Ahmed', NULL, NULL, NULL, NULL, 'Russia', 'Yemen', NULL, NULL, NULL, NULL, NULL),
(5, '2025-04-09 16:25:33', '2025-04-09 16:25:33', NULL, 'Osama Ahmed', 'Osama Ahmed', NULL, NULL, NULL, NULL, 'Yemen', 'Russia', NULL, NULL, NULL, NULL, NULL),
(6, '2025-04-10 04:08:44', '2025-04-10 04:08:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'applications/April2025/rvEWMDMmeQKCJKCLP5Ho.png', NULL, 'applications/April2025/32aWsT2c0Fsl7jKtPCj4.png', NULL),
(7, '2025-04-10 04:59:46', '2025-04-10 04:59:46', NULL, 'lihilk', 'Osama Ahmed', NULL, NULL, NULL, NULL, 'Russia', 'Yemen', NULL, NULL, NULL, NULL, NULL),
(8, '2025-04-10 05:09:02', '2025-04-10 05:09:02', NULL, 'lessons', 'Osama Ahmed', 'lessons', NULL, NULL, NULL, 'Yemen', 'Russia', NULL, NULL, NULL, NULL, NULL),
(9, '2025-04-10 06:53:01', '2025-04-10 06:53:01', NULL, 'Osama Ahmed', 'Osama Ahmed', 'lessons', NULL, '777777777', '0718323599', 'Yemen', 'Russia', NULL, NULL, NULL, NULL, NULL),
(10, '2025-04-10 13:43:37', '2025-04-10 13:43:37', NULL, 'Osama Ahmed', 'majors', 'lessons', NULL, '0718323599', '0718323599', 'Yemen', 'Andorra', NULL, NULL, NULL, NULL, NULL),
(11, '2025-04-10 14:18:44', '2025-04-10 14:18:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2025-04-10 14:19:02', '2025-04-10 14:19:02', NULL, 'John Doe', 'XYZ University', 'Computer Science', NULL, '1234567890', '0987654321', 'USA', 'Canada', NULL, NULL, NULL, NULL, NULL),
(13, '2025-04-10 14:19:36', '2025-04-10 14:19:36', NULL, 'John Doe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2025-04-10 14:19:37', '2025-04-10 14:19:37', NULL, 'John Doe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2025-04-10 14:20:10', '2025-04-10 14:20:10', NULL, 'Osama Ahmed', 'majors', 'lessons', NULL, '0718323599', '0718323599', 'Yemen', 'Algeria', NULL, NULL, NULL, NULL, NULL),
(16, '2025-04-10 14:21:27', '2025-04-10 14:21:27', NULL, 'Osama Ahmed', 'majors', 'lessons', NULL, '0718323599', '0718323599', 'Yemen', 'Albania', NULL, NULL, NULL, NULL, NULL),
(17, '2025-04-10 14:27:25', '2025-04-10 14:27:25', NULL, 'Osama Ahmed', 'majors', 'lessons', NULL, '0718323599', '0718323599', 'Yemen', 'Afghanistan', '7yo3acQSl2rM2NaqlT0Q.png', NULL, NULL, NULL, NULL),
(18, '2025-04-10 14:33:54', '2025-04-10 14:33:54', NULL, 'Osama Ahmed', 'majors', 'lessons', NULL, '0718323599', '0718323599', 'Yemen', 'Albania', '7yo3acQSl2rM2NaqlT0Q.png', NULL, NULL, NULL, NULL),
(19, '2025-04-10 14:36:49', '2025-04-10 14:36:49', NULL, 'Osama Ahmed', 'majors', 'lessons', NULL, '0718323599', '0718323599', 'Yemen', 'Afghanistan', 'apple-touch-icon.png', NULL, NULL, NULL, NULL),
(20, '2025-04-10 14:45:21', '2025-04-10 14:45:21', NULL, 'Osama Ahmed', 'majors', 'lessons', NULL, '0718323599', '0718323599', 'Yemen', 'Afghanistan', '7yo3acQSl2rM2NaqlT0Q.png', NULL, NULL, NULL, NULL),
(21, '2025-04-12 07:19:34', '2025-04-12 07:19:34', NULL, 'Osama Ahmed', 'majors', 'lessons', NULL, '0718323599', '0718323599', 'Venezuela', 'Afghanistan', '1.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_requests`
--

CREATE TABLE `application_requests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country_of_residence` varchar(255) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `city_of_residence` varchar(255) NOT NULL,
  `preferred_programme` varchar(255) NOT NULL,
  `guardian_name` varchar(255) NOT NULL,
  `guardian_email` varchar(255) NOT NULL,
  `guardian_contact` varchar(50) NOT NULL,
  `high_school_certificate` varchar(255) DEFAULT NULL,
  `white_background_photo` varchar(255) DEFAULT NULL,
  `additional_documents` varchar(255) DEFAULT NULL,
  `passport_info_page` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(2, NULL, 1, 'Category 2', 'category-2', '2025-03-26 18:18:10', '2025-03-26 18:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varbinary(222) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0x41666768616e697374616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(2, 0x416c62616e6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(3, 0x416c6765726961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(4, 0x416e646f727261, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(5, 0x416e676f6c61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(6, 0x416e746967756120616e642042617262756461, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(7, 0x417267656e74696e61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(8, 0x41726d656e6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(9, 0x4175737472616c6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(10, 0x41757374726961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(11, 0x417a65726261696a616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(12, 0x426168616d6173, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(13, 0x4261687261696e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(14, 0x42616e676c6164657368, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(15, 0x4261726261646f73, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(16, 0x42656c61727573, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(17, 0x42656c6769756d, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(18, 0x42656c697a65, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(19, 0x42656e696e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(20, 0x42687574616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(21, 0x426f6c69766961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(22, 0x426f736e696120616e64204865727a65676f76696e61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(23, 0x426f747377616e61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(24, 0x4272617a696c, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(25, 0x4272756e6569, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(26, 0x42756c6761726961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(27, 0x4275726b696e61204661736f, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(28, 0x427572756e6469, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(29, 0x4361626f205665726465, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(30, 0x43616d626f646961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(31, 0x43616d65726f6f6e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(32, 0x43616e616461, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(33, 0x43656e7472616c204166726963616e2052657075626c6963, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(34, 0x43686164, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(35, 0x4368696c65, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(36, 0x4368696e61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(37, 0x436f6c6f6d626961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(38, 0x436f6d6f726f73, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(39, 0x436f6e676f2028436f6e676f2d4272617a7a6176696c6c6529, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(40, 0x436f7374612052696361, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(41, 0x43726f61746961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(42, 0x43756261, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(43, 0x437970727573, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(44, 0x437a6563682052657075626c6963, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(45, 0x44656d6f6372617469632052657075626c6963206f662074686520436f6e676f, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(46, 0x44656e6d61726b, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(47, 0x446a69626f757469, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(48, 0x446f6d696e696361, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(49, 0x446f6d696e6963616e2052657075626c6963, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(50, 0x45637561646f72, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(51, 0x4567797074, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(52, 0x456c2053616c7661646f72, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(53, 0x45717561746f7269616c204775696e6561, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(54, 0x45726974726561, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(55, 0x4573746f6e6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(56, 0x4573776174696e69, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(57, 0x457468696f706961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(58, 0x46696a69, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(59, 0x46696e6c616e64, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(60, 0x4672616e6365, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(61, 0x4761626f6e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(62, 0x47616d626961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(63, 0x47656f72676961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(64, 0x4765726d616e79, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(65, 0x4768616e61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(66, 0x477265656365, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(67, 0x4772656e616461, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(68, 0x47756174656d616c61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(69, 0x4775696e6561, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(70, 0x4775696e65612d426973736175, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(71, 0x477579616e61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(72, 0x4861697469, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(73, 0x486f6e6475726173, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(74, 0x48756e67617279, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(75, 0x4963656c616e64, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(76, 0x496e646961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(77, 0x496e646f6e65736961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(78, 0x4972616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(79, 0x49726171, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(80, 0x4972656c616e64, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(81, 0x49737261656c, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(82, 0x4974616c79, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(83, 0x49766f727920436f617374, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(84, 0x4a616d61696361, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(85, 0x4a6170616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(86, 0x4a6f7264616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(87, 0x4b617a616b687374616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(88, 0x4b656e7961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(89, 0x4b69726962617469, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(90, 0x4b7577616974, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(91, 0x4b797267797a7374616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(92, 0x4c616f73, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(93, 0x4c6174766961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(94, 0x4c6562616e6f6e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(95, 0x4c65736f74686f, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(96, 0x4c696265726961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(97, 0x4c69627961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(98, 0x4c6965636874656e737465696e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(99, 0x4c69746875616e6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(100, 0x4c7578656d626f757267, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(101, 0x4d616461676173636172, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(102, 0x4d616c617769, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(103, 0x4d616c6179736961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(104, 0x4d616c6469766573, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(105, 0x4d616c69, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(106, 0x4d616c7461, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(107, 0x4d61727368616c6c2049736c616e6473, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(108, 0x4d6175726974616e6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(109, 0x4d6175726974697573, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(110, 0x4d657869636f, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(111, 0x4d6963726f6e65736961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(112, 0x4d6f6c646f7661, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(113, 0x4d6f6e61636f, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(114, 0x4d6f6e676f6c6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(115, 0x4d6f6e74656e6567726f, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(116, 0x4d6f726f63636f, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(117, 0x4d6f7a616d6269717565, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(118, 0x4d79616e6d6172, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(119, 0x4e616d69626961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(120, 0x4e61757275, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(121, 0x4e6570616c, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(122, 0x4e65746865726c616e6473, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(123, 0x4e6577205a65616c616e64, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(124, 0x4e6963617261677561, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(125, 0x4e69676572, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(126, 0x4e696765726961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(127, 0x4e6f727468204b6f726561, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(128, 0x4e6f727468204d616365646f6e6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(129, 0x4e6f72776179, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(130, 0x4f6d616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(131, 0x50616b697374616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(132, 0x50616c6175, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(133, 0x50616c657374696e65, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(134, 0x50616e616d61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(135, 0x5061707561204e6577204775696e6561, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(136, 0x5061726167756179, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(137, 0x50657275, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(138, 0x5068696c697070696e6573, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(139, 0x506f6c616e64, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(140, 0x506f72747567616c, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(141, 0x5161746172, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(142, 0x526f6d616e6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(143, 0x527573736961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(144, 0x5277616e6461, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(145, 0x5361696e74204b6974747320616e64204e65766973, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(146, 0x5361696e74204c75636961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(147, 0x5361696e742056696e63656e7420616e6420746865204772656e6164696e6573, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(148, 0x53616d6f61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(149, 0x53616e204d6172696e6f, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(150, 0x53616f20546f6d6520616e64205072696e63697065, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(151, 0x536175646920417261626961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(152, 0x53656e6567616c, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(153, 0x536572626961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(154, 0x5365796368656c6c6573, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(155, 0x536965727261204c656f6e65, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(156, 0x53696e6761706f7265, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(157, 0x536c6f76616b6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(158, 0x536c6f76656e6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(159, 0x536f6c6f6d6f6e2049736c616e6473, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(160, 0x536f6d616c6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(161, 0x536f75746820416672696361, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(162, 0x536f757468204b6f726561, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(163, 0x536f75746820537564616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(164, 0x537061696e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(165, 0x537269204c616e6b61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(166, 0x537564616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(167, 0x537572696e616d65, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(168, 0x53776564656e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(169, 0x537769747a65726c616e64, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(170, 0x5379726961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(171, 0x54616977616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(172, 0x54616a696b697374616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(173, 0x54616e7a616e6961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(174, 0x546861696c616e64, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(175, 0x54696d6f722d4c65737465, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(176, 0x546f676f, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(177, 0x546f6e6761, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(178, 0x5472696e6964616420616e6420546f6261676f, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(179, 0x54756e69736961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(180, 0x5475726b6579, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(181, 0x5475726b6d656e697374616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(182, 0x547576616c75, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(183, 0x5567616e6461, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(184, 0x556b7261696e65, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(185, 0x556e69746564204172616220456d697261746573, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(186, 0x556e69746564204b696e67646f6d, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(187, 0x556e6974656420537461746573206f6620416d6572696361, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(188, 0x55727567756179, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(189, 0x557a62656b697374616e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(190, 0x56616e75617475, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(191, 0x5661746963616e2043697479, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(192, 0x56656e657a75656c61, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(193, 0x566965746e616d, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(194, 0x59656d656e, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(195, 0x5a616d626961, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL),
(196, 0x5a696d6261627765, '2025-04-09 13:32:12', '2025-04-09 13:32:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varbinary(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`) VALUES
(2, '2025-03-27 05:33:00', '2025-03-27 05:34:47', NULL, 0x31),
(3, '2025-03-27 05:33:00', '2025-03-27 05:35:09', NULL, 0x32),
(4, '2025-03-27 05:33:00', '2025-03-27 05:35:19', NULL, 0x33),
(5, '2025-03-27 05:33:00', '2025-03-27 05:35:32', NULL, 0x34),
(6, '2025-03-27 05:33:35', '2025-03-27 05:33:35', NULL, 0x35),
(7, '2025-04-12 04:20:37', '2025-04-12 04:20:37', NULL, 0x4f73616d612041686d6564);

-- --------------------------------------------------------

--
-- Table structure for table `course_institutes`
--

CREATE TABLE `course_institutes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `institute_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_institutes`
--

INSERT INTO `course_institutes` (`id`, `created_at`, `updated_at`, `deleted_at`, `institute_id`, `course_id`) VALUES
(2, NULL, NULL, NULL, 3, 3),
(3, NULL, NULL, NULL, 3, 4),
(4, NULL, NULL, NULL, 3, 5),
(5, NULL, NULL, NULL, 3, 6),
(6, NULL, NULL, NULL, 1, 2),
(7, NULL, NULL, NULL, 2, 2),
(8, NULL, NULL, NULL, 3, 2),
(9, NULL, NULL, NULL, 2, 3),
(10, NULL, NULL, NULL, 1, 3),
(11, NULL, NULL, NULL, 1, 4),
(12, NULL, NULL, NULL, 2, 4),
(13, NULL, NULL, NULL, 1, 5),
(14, NULL, NULL, NULL, 2, 5),
(15, NULL, NULL, NULL, 2, 6),
(16, NULL, NULL, NULL, 1, 6),
(17, NULL, NULL, NULL, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(58, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(59, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 2),
(62, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(63, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 4),
(64, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(65, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 2),
(67, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(68, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 1, 1, 1, '{}', 4),
(69, 10, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(70, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(72, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(73, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 4),
(74, 12, 'major_id', 'text', 'Major Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(75, 12, 'university_id', 'text', 'University Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(76, 9, 'university_belongstomany_major_relationship', 'relationship', 'majors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Major\",\"table\":\"majors\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"major_universities\",\"pivot\":\"1\",\"taggable\":\"0\"}', 6),
(77, 10, 'major_belongstomany_university_relationship', 'relationship', 'universities', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\University\",\"table\":\"universities\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"major_universities\",\"pivot\":\"1\",\"taggable\":\"0\"}', 6),
(78, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 2),
(80, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(81, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 4),
(82, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(83, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 2),
(85, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(86, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 4),
(87, 14, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(88, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(89, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(90, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(91, 15, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 4),
(92, 15, 'institute_id', 'text', 'Institute Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(93, 15, 'course_id', 'text', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(94, 8, 'jop_belongstomany_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"course_institutes\",\"pivot\":\"1\",\"taggable\":\"0\"}', 5),
(95, 14, 'course_belongstomany_institute_relationship', 'relationship', 'institutes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Institute\",\"table\":\"institutes\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"course_institutes\",\"pivot\":\"1\",\"taggable\":\"0\"}', 6),
(96, 13, 'institute_belongstomany_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"course_institutes\",\"pivot\":\"1\",\"taggable\":\"0\"}', 6),
(97, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 2),
(99, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(100, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 1, 1, 1, '{}', 4),
(101, 16, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(102, 16, 'nationality', 'text', 'Nationality', 0, 1, 1, 1, 1, 1, '{}', 6),
(103, 16, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(104, 16, 'country_of_residence', 'text', 'Country Of Residence', 0, 1, 1, 1, 1, 1, '{}', 8),
(105, 16, 'contact_number', 'text', 'Contact Number', 0, 1, 1, 1, 1, 1, '{}', 9),
(106, 16, 'city_of_residence', 'text', 'City Of Residence', 0, 1, 1, 1, 1, 1, '{}', 10),
(107, 16, 'preferred_programme', 'text', 'Preferred Programme', 0, 1, 1, 1, 1, 1, '{}', 11),
(108, 16, 'guardian_name', 'text', 'Guardian Name', 0, 1, 1, 1, 1, 1, '{}', 12),
(109, 16, 'guardian_email', 'text', 'Guardian Email', 0, 1, 1, 1, 1, 1, '{}', 13),
(110, 16, 'guardian_contact', 'text', 'Guardian Contact', 0, 1, 1, 1, 1, 1, '{}', 14),
(111, 16, 'high_school_certificate', 'text', 'High School Certificate', 0, 1, 1, 1, 1, 1, '{}', 15),
(112, 16, 'white_background_photo', 'text', 'White Background Photo', 0, 1, 1, 1, 1, 1, '{}', 16),
(113, 16, 'additional_documents', 'text', 'Additional Documents', 0, 1, 1, 1, 1, 1, '{}', 17),
(114, 16, 'passport_info_page', 'text', 'Passport Info Page', 0, 1, 1, 1, 1, 1, '{}', 18),
(116, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 23, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(118, 23, 'nationality', 'text', 'Nationality', 1, 1, 1, 1, 1, 1, '{}', 3),
(119, 23, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(120, 23, 'country_of_residence', 'text', 'Country Of Residence', 1, 1, 1, 1, 1, 1, '{}', 5),
(121, 23, 'contact_number', 'text', 'Contact Number', 1, 1, 1, 1, 1, 1, '{}', 6),
(122, 23, 'city_of_residence', 'text', 'City Of Residence', 1, 1, 1, 1, 1, 1, '{}', 7),
(123, 23, 'preferred_programme', 'text', 'Preferred Programme', 1, 1, 1, 1, 1, 1, '{}', 8),
(124, 23, 'guardian_name', 'text', 'Guardian Name', 1, 1, 1, 1, 1, 1, '{}', 9),
(125, 23, 'guardian_email', 'text', 'Guardian Email', 1, 1, 1, 1, 1, 1, '{}', 10),
(126, 23, 'guardian_contact', 'text', 'Guardian Contact', 1, 1, 1, 1, 1, 1, '{}', 11),
(127, 23, 'high_school_certificate', 'text', 'High School Certificate', 0, 1, 1, 1, 1, 1, '{}', 12),
(128, 23, 'white_background_photo', 'text', 'White Background Photo', 0, 1, 1, 1, 1, 1, '{}', 13),
(129, 23, 'additional_documents', 'text', 'Additional Documents', 0, 1, 1, 1, 1, 1, '{}', 14),
(130, 23, 'passport_info_page', 'text', 'Passport Info Page', 0, 1, 1, 1, 1, 1, '{}', 15),
(131, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(132, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(133, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(134, 26, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 2),
(135, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(136, 26, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 1, 1, 1, '{}', 4),
(137, 26, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(138, 26, 'university_name', 'text', 'University Name', 0, 1, 1, 1, 1, 1, '{}', 6),
(139, 26, 'major_name', 'text', 'Major Name', 0, 1, 1, 1, 1, 1, '{}', 7),
(140, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(141, 9, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 7),
(142, 26, 'father_name', 'text', 'Father Name', 0, 1, 1, 1, 1, 1, '{}', 8),
(145, 26, 'father_country', 'text', 'Father Country', 0, 1, 1, 1, 1, 1, '{}', 11),
(148, 26, 'university_certificate', 'image', 'University Certificate', 0, 1, 1, 1, 1, 1, '{}', 14),
(150, 26, 'personal_photo', 'image', 'Personal Photo', 0, 1, 1, 1, 1, 1, '{}', 16),
(152, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(153, 27, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(154, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 3),
(155, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(156, 27, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 1, 0, 1, '{}', 5),
(157, 26, 'father_phone', 'number', 'Father Phone', 0, 1, 1, 1, 1, 1, '{}', 9),
(158, 26, 'student_phone', 'number', 'Student Phone', 0, 1, 1, 1, 1, 1, '{}', 10),
(159, 26, 'target_country', 'text', 'Target Country', 0, 1, 1, 1, 1, 1, '{}', 12),
(160, 26, 'highschool_certificate', 'image', 'Highschool Certificate', 0, 1, 1, 1, 1, 1, '{}', 13),
(161, 26, 'passport', 'image', 'Passport', 0, 1, 1, 1, 1, 1, '{}', 15),
(162, 26, 'extra_file', 'file', 'Extra File', 0, 1, 1, 1, 1, 1, '{}', 17),
(163, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(164, 28, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 0, 1, 1, 1, '{}', 2),
(165, 28, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 3),
(166, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(167, 28, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(168, 28, 'institute_name', 'text', 'Institute Name', 0, 1, 1, 1, 1, 1, '{}', 6),
(169, 28, 'course_name', 'text', 'Course Name', 0, 1, 1, 1, 1, 1, '{}', 7),
(170, 28, 'father_country', 'text', 'Father Country', 0, 1, 1, 1, 1, 1, '{}', 8),
(171, 28, 'target_country', 'text', 'Target Country', 0, 1, 1, 1, 1, 1, '{}', 9),
(172, 28, 'father_phone', 'text', 'Father Phone', 0, 1, 1, 1, 1, 1, '{}', 10),
(173, 28, 'student_phone', 'text', 'Student Phone', 0, 1, 1, 1, 1, 1, '{}', 11),
(174, 28, 'highschool_certificate', 'text', 'Highschool Certificate', 0, 1, 1, 1, 1, 1, '{}', 12),
(175, 28, 'university_certificate', 'text', 'University Certificate', 0, 1, 1, 1, 1, 1, '{}', 13),
(176, 28, 'passport', 'text', 'Passport', 0, 1, 1, 1, 1, 1, '{}', 14),
(177, 28, 'personal_photo', 'text', 'Personal Photo', 0, 1, 1, 1, 1, 1, '{}', 15),
(178, 28, 'extra_file', 'text', 'Extra File', 0, 1, 1, 1, 1, 1, '{}', 16);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(8, 'jops', 'jops', 'Jop', 'Jops', NULL, 'App\\Jop', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-26 18:24:17', '2025-03-27 05:28:30'),
(9, 'universities', 'universities', 'University', 'Universities', NULL, 'App\\University', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-26 18:27:36', '2025-04-09 12:54:38'),
(10, 'majors', 'majors', 'Major', 'Majors', NULL, 'App\\Major', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-26 18:28:17', '2025-03-27 05:17:48'),
(11, 'major_university', 'major-university', 'Major University', 'Major Universities', NULL, 'App\\MajorUniversity', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-26 18:29:45', '2025-03-26 18:29:45'),
(12, 'major_universities', 'major-universities', 'Major University', 'Major Universities', NULL, 'App\\MajorUniversity', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-26 18:30:55', '2025-03-26 18:30:55'),
(13, 'institutes', 'institutes', 'Institute', 'Institutes', NULL, 'App\\Institute', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-27 05:23:15', '2025-03-27 05:32:38'),
(14, 'courses', 'courses', 'Course', 'Courses', NULL, 'App\\Course', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-27 05:24:11', '2025-03-27 05:30:23'),
(15, 'course_institutes', 'course-institutes', 'Course Institute', 'Course Institutes', NULL, 'App\\CourseInstitute', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-27 05:27:21', '2025-03-27 05:27:21'),
(16, 'requests', 'requests', 'Request', 'Requests', NULL, 'App\\Request', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-27 06:31:45', '2025-03-27 06:33:38'),
(23, 'application_requests', 'application-requests', 'Application Request', 'Application Requests', NULL, 'App\\ApplicationRequest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-04-06 07:30:12', '2025-04-06 07:30:21'),
(26, 'applications', 'applications', 'Application', 'Applications', NULL, 'App\\Application', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-04-06 08:16:37', '2025-04-10 06:54:07'),
(27, 'countries', 'countries', 'Country', 'Countries', NULL, 'App\\Country', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-04-09 13:24:38', '2025-04-09 13:24:38'),
(28, 'messages', 'messages', 'Message', 'Messages', NULL, 'App\\Message', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-04-12 07:48:17', '2025-04-12 08:26:53');

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
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varbinary(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`) VALUES
(1, '2025-03-27 05:33:00', '2025-03-27 05:35:59', NULL, 0x31),
(2, '2025-03-27 05:33:00', '2025-03-27 05:35:51', NULL, 0x32),
(3, '2025-03-27 05:34:20', '2025-03-27 05:34:20', NULL, 0x33);

-- --------------------------------------------------------

--
-- Table structure for table `jops`
--

CREATE TABLE `jops` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varbinary(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`) VALUES
(1, '2025-03-26 18:39:20', '2025-03-26 18:39:20', NULL, 0x6c6573736f6e73),
(2, '2025-03-26 18:40:08', '2025-03-26 18:40:08', NULL, 0x31),
(3, '2025-03-26 18:40:15', '2025-03-26 18:40:15', NULL, 0x32),
(4, '2025-03-26 18:40:00', '2025-03-26 18:40:32', NULL, 0x33);

-- --------------------------------------------------------

--
-- Table structure for table `major_universities`
--

CREATE TABLE `major_universities` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `major_universities`
--

INSERT INTO `major_universities` (`id`, `created_at`, `updated_at`, `deleted_at`, `major_id`, `university_id`) VALUES
(1, NULL, NULL, NULL, 1, 3),
(2, NULL, NULL, NULL, 2, 3),
(3, NULL, NULL, NULL, 4, 1),
(4, NULL, NULL, NULL, 1, 1),
(5, NULL, NULL, NULL, 3, 1),
(6, NULL, NULL, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `major_university`
--

CREATE TABLE `major_university` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `major_university`
--

INSERT INTO `major_university` (`id`, `created_at`, `updated_at`, `deleted_at`, `university_id`, `major_id`) VALUES
(1, NULL, NULL, NULL, 1, 1),
(2, NULL, NULL, NULL, 1, 4),
(3, NULL, NULL, NULL, 1, 2),
(4, NULL, NULL, NULL, 1, 3),
(5, NULL, NULL, NULL, 2, 1),
(6, NULL, NULL, NULL, 2, 2),
(7, NULL, NULL, NULL, 2, 3),
(8, NULL, NULL, NULL, 2, 4),
(9, NULL, NULL, NULL, 3, 1),
(10, NULL, NULL, NULL, 3, 2),
(11, NULL, NULL, NULL, 3, 3),
(12, NULL, NULL, NULL, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2025-03-26 18:18:10', '2025-03-26 18:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2025-03-26 18:18:10', '2025-03-26 18:18:10', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2025-03-26 18:18:10', '2025-03-26 18:18:10', 'voyager.pages.index', NULL),
(14, 1, 'Jops', '', '_self', NULL, NULL, NULL, 15, '2025-03-26 18:24:17', '2025-03-26 18:24:17', 'voyager.jops.index', NULL),
(15, 1, 'Universities', '', '_self', NULL, NULL, NULL, 16, '2025-03-26 18:27:36', '2025-03-26 18:27:36', 'voyager.universities.index', NULL),
(16, 1, 'Majors', '', '_self', NULL, NULL, NULL, 17, '2025-03-26 18:28:17', '2025-03-26 18:28:17', 'voyager.majors.index', NULL),
(18, 1, 'Major Universities', '', '_self', NULL, NULL, NULL, 19, '2025-03-26 18:30:55', '2025-03-26 18:30:55', 'voyager.major-universities.index', NULL),
(19, 1, 'Institutes', '', '_self', NULL, NULL, NULL, 20, '2025-03-27 05:23:15', '2025-03-27 05:23:15', 'voyager.institutes.index', NULL),
(20, 1, 'Courses', '', '_self', NULL, NULL, NULL, 21, '2025-03-27 05:24:11', '2025-03-27 05:24:11', 'voyager.courses.index', NULL),
(21, 1, 'Course Institutes', '', '_self', NULL, NULL, NULL, 22, '2025-03-27 05:27:21', '2025-03-27 05:27:21', 'voyager.course-institutes.index', NULL),
(22, 1, 'Requests', '', '_self', NULL, NULL, NULL, 23, '2025-03-27 06:31:45', '2025-03-27 06:31:45', 'voyager.requests.index', NULL),
(23, 1, 'Application Requests', '', '_self', NULL, NULL, NULL, 24, '2025-04-06 07:30:12', '2025-04-06 07:30:12', 'voyager.application-requests.index', NULL),
(25, 1, 'Applications', '', '_self', NULL, NULL, NULL, 25, '2025-04-06 08:16:37', '2025-04-06 08:16:37', 'voyager.applications.index', NULL),
(26, 1, 'Countries', '', '_self', NULL, NULL, NULL, 26, '2025-04-09 13:24:38', '2025-04-09 13:24:38', 'voyager.countries.index', NULL),
(27, 1, 'Messages', '', '_self', NULL, NULL, NULL, 27, '2025-04-12 07:48:17', '2025-04-12 07:48:17', 'voyager.messages.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(222) DEFAULT NULL,
  `institute_name` varchar(222) DEFAULT NULL,
  `course_name` varchar(222) DEFAULT NULL,
  `father_country` varchar(100) DEFAULT NULL,
  `target_country` varchar(100) DEFAULT NULL,
  `father_phone` varchar(50) DEFAULT NULL,
  `student_phone` varchar(50) DEFAULT NULL,
  `highschool_certificate` varchar(255) DEFAULT NULL,
  `university_certificate` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `personal_photo` varchar(255) DEFAULT NULL,
  `extra_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `institute_name`, `course_name`, `father_country`, `target_country`, `father_phone`, `student_phone`, `highschool_certificate`, `university_certificate`, `passport`, `personal_photo`, `extra_file`) VALUES
(1, NULL, '2025-04-12 07:59:51', '2025-04-12 07:59:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '2025-04-12 08:00:41', '2025-04-12 08:00:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '2025-04-12 08:05:28', '2025-04-12 08:05:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '2025-04-12 08:07:14', '2025-04-12 08:07:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, '2025-04-12 08:07:42', '2025-04-12 08:07:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, '2025-04-12 08:07:54', '2025-04-12 08:07:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, '2025-04-12 08:10:07', '2025-04-12 08:10:07', 'Osama Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '2025-04-12 08:11:44', '2025-04-12 08:11:44', 'Osama Ahmed', NULL, NULL, 'Yemen', 'Andorra', '0718323599', '0718323599', '1.png', NULL, NULL, NULL, NULL),
(9, NULL, '2025-04-12 08:16:41', '2025-04-12 08:26:05', 'Osama Ahmed', '2', '3', 'Yemen', 'Angola', '0718323599', '0718323599', '1.png', NULL, NULL, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2025_03_26_211951_create_sessions_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2025-03-26 18:18:10', '2025-03-26 18:18:10');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(2, 'browse_bread', NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(3, 'browse_database', NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(4, 'browse_media', NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(5, 'browse_compass', NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(6, 'browse_menus', 'menus', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(7, 'read_menus', 'menus', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(8, 'edit_menus', 'menus', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(9, 'add_menus', 'menus', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(10, 'delete_menus', 'menus', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(11, 'browse_roles', 'roles', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(12, 'read_roles', 'roles', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(13, 'edit_roles', 'roles', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(14, 'add_roles', 'roles', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(15, 'delete_roles', 'roles', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(16, 'browse_users', 'users', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(17, 'read_users', 'users', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(18, 'edit_users', 'users', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(19, 'add_users', 'users', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(20, 'delete_users', 'users', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(21, 'browse_settings', 'settings', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(22, 'read_settings', 'settings', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(23, 'edit_settings', 'settings', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(24, 'add_settings', 'settings', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(25, 'delete_settings', 'settings', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(26, 'browse_categories', 'categories', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(27, 'read_categories', 'categories', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(28, 'edit_categories', 'categories', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(29, 'add_categories', 'categories', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(30, 'delete_categories', 'categories', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(31, 'browse_posts', 'posts', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(32, 'read_posts', 'posts', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(33, 'edit_posts', 'posts', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(34, 'add_posts', 'posts', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(35, 'delete_posts', 'posts', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(36, 'browse_pages', 'pages', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(37, 'read_pages', 'pages', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(38, 'edit_pages', 'pages', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(39, 'add_pages', 'pages', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(40, 'delete_pages', 'pages', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(41, 'browse_jops', 'jops', '2025-03-26 18:24:17', '2025-03-26 18:24:17'),
(42, 'read_jops', 'jops', '2025-03-26 18:24:17', '2025-03-26 18:24:17'),
(43, 'edit_jops', 'jops', '2025-03-26 18:24:17', '2025-03-26 18:24:17'),
(44, 'add_jops', 'jops', '2025-03-26 18:24:17', '2025-03-26 18:24:17'),
(45, 'delete_jops', 'jops', '2025-03-26 18:24:17', '2025-03-26 18:24:17'),
(46, 'browse_universities', 'universities', '2025-03-26 18:27:36', '2025-03-26 18:27:36'),
(47, 'read_universities', 'universities', '2025-03-26 18:27:36', '2025-03-26 18:27:36'),
(48, 'edit_universities', 'universities', '2025-03-26 18:27:36', '2025-03-26 18:27:36'),
(49, 'add_universities', 'universities', '2025-03-26 18:27:36', '2025-03-26 18:27:36'),
(50, 'delete_universities', 'universities', '2025-03-26 18:27:36', '2025-03-26 18:27:36'),
(51, 'browse_majors', 'majors', '2025-03-26 18:28:17', '2025-03-26 18:28:17'),
(52, 'read_majors', 'majors', '2025-03-26 18:28:17', '2025-03-26 18:28:17'),
(53, 'edit_majors', 'majors', '2025-03-26 18:28:17', '2025-03-26 18:28:17'),
(54, 'add_majors', 'majors', '2025-03-26 18:28:17', '2025-03-26 18:28:17'),
(55, 'delete_majors', 'majors', '2025-03-26 18:28:17', '2025-03-26 18:28:17'),
(56, 'browse_major_university', 'major_university', '2025-03-26 18:29:45', '2025-03-26 18:29:45'),
(57, 'read_major_university', 'major_university', '2025-03-26 18:29:45', '2025-03-26 18:29:45'),
(58, 'edit_major_university', 'major_university', '2025-03-26 18:29:45', '2025-03-26 18:29:45'),
(59, 'add_major_university', 'major_university', '2025-03-26 18:29:45', '2025-03-26 18:29:45'),
(60, 'delete_major_university', 'major_university', '2025-03-26 18:29:45', '2025-03-26 18:29:45'),
(61, 'browse_major_universities', 'major_universities', '2025-03-26 18:30:55', '2025-03-26 18:30:55'),
(62, 'read_major_universities', 'major_universities', '2025-03-26 18:30:55', '2025-03-26 18:30:55'),
(63, 'edit_major_universities', 'major_universities', '2025-03-26 18:30:55', '2025-03-26 18:30:55'),
(64, 'add_major_universities', 'major_universities', '2025-03-26 18:30:55', '2025-03-26 18:30:55'),
(65, 'delete_major_universities', 'major_universities', '2025-03-26 18:30:55', '2025-03-26 18:30:55'),
(66, 'browse_institutes', 'institutes', '2025-03-27 05:23:15', '2025-03-27 05:23:15'),
(67, 'read_institutes', 'institutes', '2025-03-27 05:23:15', '2025-03-27 05:23:15'),
(68, 'edit_institutes', 'institutes', '2025-03-27 05:23:15', '2025-03-27 05:23:15'),
(69, 'add_institutes', 'institutes', '2025-03-27 05:23:15', '2025-03-27 05:23:15'),
(70, 'delete_institutes', 'institutes', '2025-03-27 05:23:15', '2025-03-27 05:23:15'),
(71, 'browse_courses', 'courses', '2025-03-27 05:24:11', '2025-03-27 05:24:11'),
(72, 'read_courses', 'courses', '2025-03-27 05:24:11', '2025-03-27 05:24:11'),
(73, 'edit_courses', 'courses', '2025-03-27 05:24:11', '2025-03-27 05:24:11'),
(74, 'add_courses', 'courses', '2025-03-27 05:24:11', '2025-03-27 05:24:11'),
(75, 'delete_courses', 'courses', '2025-03-27 05:24:11', '2025-03-27 05:24:11'),
(76, 'browse_course_institutes', 'course_institutes', '2025-03-27 05:27:21', '2025-03-27 05:27:21'),
(77, 'read_course_institutes', 'course_institutes', '2025-03-27 05:27:21', '2025-03-27 05:27:21'),
(78, 'edit_course_institutes', 'course_institutes', '2025-03-27 05:27:21', '2025-03-27 05:27:21'),
(79, 'add_course_institutes', 'course_institutes', '2025-03-27 05:27:21', '2025-03-27 05:27:21'),
(80, 'delete_course_institutes', 'course_institutes', '2025-03-27 05:27:21', '2025-03-27 05:27:21'),
(81, 'browse_requests', 'requests', '2025-03-27 06:31:45', '2025-03-27 06:31:45'),
(82, 'read_requests', 'requests', '2025-03-27 06:31:45', '2025-03-27 06:31:45'),
(83, 'edit_requests', 'requests', '2025-03-27 06:31:45', '2025-03-27 06:31:45'),
(84, 'add_requests', 'requests', '2025-03-27 06:31:45', '2025-03-27 06:31:45'),
(85, 'delete_requests', 'requests', '2025-03-27 06:31:45', '2025-03-27 06:31:45'),
(86, 'browse_application_requests', 'application_requests', '2025-04-06 07:30:12', '2025-04-06 07:30:12'),
(87, 'read_application_requests', 'application_requests', '2025-04-06 07:30:12', '2025-04-06 07:30:12'),
(88, 'edit_application_requests', 'application_requests', '2025-04-06 07:30:12', '2025-04-06 07:30:12'),
(89, 'add_application_requests', 'application_requests', '2025-04-06 07:30:12', '2025-04-06 07:30:12'),
(90, 'delete_application_requests', 'application_requests', '2025-04-06 07:30:12', '2025-04-06 07:30:12'),
(96, 'browse_applications', 'applications', '2025-04-06 08:16:37', '2025-04-06 08:16:37'),
(97, 'read_applications', 'applications', '2025-04-06 08:16:37', '2025-04-06 08:16:37'),
(98, 'edit_applications', 'applications', '2025-04-06 08:16:37', '2025-04-06 08:16:37'),
(99, 'add_applications', 'applications', '2025-04-06 08:16:37', '2025-04-06 08:16:37'),
(100, 'delete_applications', 'applications', '2025-04-06 08:16:37', '2025-04-06 08:16:37'),
(101, 'browse_countries', 'countries', '2025-04-09 13:24:38', '2025-04-09 13:24:38'),
(102, 'read_countries', 'countries', '2025-04-09 13:24:38', '2025-04-09 13:24:38'),
(103, 'edit_countries', 'countries', '2025-04-09 13:24:38', '2025-04-09 13:24:38'),
(104, 'add_countries', 'countries', '2025-04-09 13:24:38', '2025-04-09 13:24:38'),
(105, 'delete_countries', 'countries', '2025-04-09 13:24:38', '2025-04-09 13:24:38'),
(106, 'browse_messages', 'messages', '2025-04-12 07:48:17', '2025-04-12 07:48:17'),
(107, 'read_messages', 'messages', '2025-04-12 07:48:17', '2025-04-12 07:48:17'),
(108, 'edit_messages', 'messages', '2025-04-12 07:48:17', '2025-04-12 07:48:17'),
(109, 'add_messages', 'messages', '2025-04-12 07:48:17', '2025-04-12 07:48:17'),
(110, 'delete_messages', 'messages', '2025-04-12 07:48:17', '2025-04-12 07:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2025-03-26 18:18:10', '2025-03-26 18:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(222) DEFAULT NULL,
  `nationality` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `country_of_residence` varchar(222) DEFAULT NULL,
  `contact_number` int(11) DEFAULT NULL,
  `city_of_residence` varchar(222) DEFAULT NULL,
  `preferred_programme` varchar(222) DEFAULT NULL,
  `guardian_name` varchar(222) DEFAULT NULL,
  `guardian_email` varchar(222) DEFAULT NULL,
  `guardian_contact` int(11) DEFAULT NULL,
  `high_school_certificate` varchar(222) DEFAULT NULL,
  `white_background_photo` varchar(222) DEFAULT NULL,
  `additional_documents` varchar(222) DEFAULT NULL,
  `passport_info_page` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(2, 'user', 'Normal User', '2025-03-26 18:18:10', '2025-03-26 18:18:10');

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
('AjQnFTEqxUoFwohj48aTlUT9g3VlGfB0eZBBpQC5', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRmZrZEViTkZRdEY5eld6bE81VkVLcmFBeFJPNE5NTUY4d3A1QldDZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9tZXNzYWdlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1744457217),
('c4kq8u8DosJpolk7aoEaYWdARuL3IxyGGRJ4HOsY', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiczlXSkpaallWanVSRU1QZWRpWXZnMTNNTmJoeDBFR2RwMlM5TldDeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hcHBsaWNhdGlvbnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1744442679),
('gwvJooxIDLJY16a2HMAiUJPIp8ymuJTpPy78z6dJ', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWNYQVd2dlNOQVo1d1lWMXc0eUx1NHBwQkk0amJ3VkNQZ1B2ZmlPSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1744441462);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2025-03-26 18:18:10', '2025-03-26 18:18:10'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2025-03-26 18:18:10', '2025-03-26 18:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varbinary(222) DEFAULT NULL,
  `image` varchar(222) DEFAULT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `image`, `body`) VALUES
(1, '2025-03-26 18:39:00', '2025-03-26 18:40:49', NULL, 0x4f73616d612041686d6564, NULL, NULL),
(3, '2025-03-26 18:44:00', '2025-03-27 05:18:25', NULL, 0x6d616a6f7273, NULL, NULL),
(4, '2025-03-27 06:10:00', '2025-04-09 12:58:13', NULL, 0xd8acd8a7d985d8b9d98720d8b9d8afd986, 'universities/April2025/P43MMLtvgL8D2osYSqVt.png', '<p>جامعه <span style=\"color: rgb(0, 0, 0); background-color: rgb(236, 240, 241);\">ممتازه</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$12$McZ/a09FKkeNaE9ZgEUfFesrX6dEpHWxgIAKHkK.XMJSDwTYvgmp2', 'hsONOMzznETP05Kr8okER7f6243sWndqt2LaN0csl48ZSvqhhG8KGg1RP0Qx', NULL, '2025-03-26 18:18:10', '2025-03-26 18:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_requests`
--
ALTER TABLE `application_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_institutes`
--
ALTER TABLE `course_institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jops`
--
ALTER TABLE `jops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `major_universities`
--
ALTER TABLE `major_universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `major_university`
--
ALTER TABLE `major_university`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `application_requests`
--
ALTER TABLE `application_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course_institutes`
--
ALTER TABLE `course_institutes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jops`
--
ALTER TABLE `jops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `major_universities`
--
ALTER TABLE `major_universities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `major_university`
--
ALTER TABLE `major_university`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
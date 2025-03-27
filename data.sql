-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2025 at 11:49 AM
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
(6, '2025-03-27 05:33:35', '2025-03-27 05:33:35', NULL, 0x35);

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
(16, NULL, NULL, NULL, 1, 6);

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
(114, 16, 'passport_info_page', 'text', 'Passport Info Page', 0, 1, 1, 1, 1, 1, '{}', 18);

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
(9, 'universities', 'universities', 'University', 'Universities', NULL, 'App\\University', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-26 18:27:36', '2025-03-27 05:18:13'),
(10, 'majors', 'majors', 'Major', 'Majors', NULL, 'App\\Major', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-26 18:28:17', '2025-03-27 05:17:48'),
(11, 'major_university', 'major-university', 'Major University', 'Major Universities', NULL, 'App\\MajorUniversity', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-26 18:29:45', '2025-03-26 18:29:45'),
(12, 'major_universities', 'major-universities', 'Major University', 'Major Universities', NULL, 'App\\MajorUniversity', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-26 18:30:55', '2025-03-26 18:30:55'),
(13, 'institutes', 'institutes', 'Institute', 'Institutes', NULL, 'App\\Institute', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-27 05:23:15', '2025-03-27 05:32:38'),
(14, 'courses', 'courses', 'Course', 'Courses', NULL, 'App\\Course', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-27 05:24:11', '2025-03-27 05:30:23'),
(15, 'course_institutes', 'course-institutes', 'Course Institute', 'Course Institutes', NULL, 'App\\CourseInstitute', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-27 05:27:21', '2025-03-27 05:27:21'),
(16, 'requests', 'requests', 'Request', 'Requests', NULL, 'App\\Request', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-27 06:31:45', '2025-03-27 06:33:38');

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
(22, 1, 'Requests', '', '_self', NULL, NULL, NULL, 23, '2025-03-27 06:31:45', '2025-03-27 06:31:45', 'voyager.requests.index', NULL);

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
(85, 'delete_requests', 'requests', '2025-03-27 06:31:45', '2025-03-27 06:31:45');

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
(85, 1);

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
('aTOsHhA35UezVxS2blJ0rlfPax3J9RDENnnwmSAO', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ01oakg1OFoyUTlxYXBMNUhqenRZdUxPYkFrN0M1MHZJa0JYU29GTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91bml2ZXJzaXRpZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743065690),
('Rsc8hkoZRHmbgUdzGtBdkgrG8nuk6UZDf7thOMsK', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT2pkdzB1VmpKMFh0SmgxS3hWU21BdHRPaXNCemFZVDcwZnk1SnkyVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXF1ZXN0LzEvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1743071027);

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
  `name` varbinary(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`) VALUES
(1, '2025-03-26 18:39:00', '2025-03-26 18:40:49', NULL, 0x4f73616d612041686d6564),
(3, '2025-03-26 18:44:00', '2025-03-27 05:18:25', NULL, 0x6d616a6f7273),
(4, '2025-03-27 06:10:46', '2025-03-27 06:10:46', NULL, 0xd8acd8a7d985d8b9d98720d8b9d8afd986);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_institutes`
--
ALTER TABLE `course_institutes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

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
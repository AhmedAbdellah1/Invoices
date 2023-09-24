-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 07:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoices`
--

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `invoice_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'A4040', '2023-09-16', '2023-12-17', 'البطاقة العقارية', 1, '80000.00', '25000.00', '3000.00', '1100.00', '5%', '23100.00', 'مدفوعة', 1, 'اول فاتوره مضافة', NULL, NULL, '2023-09-17 10:01:04', '2023-09-18 12:31:45'),
(2, 'm2020', '2023-09-17', '2023-09-30', 'البطاقات التحولية', 2, '64000.00', '15000.00', '2000.00', '1300.00', '10%', '14300.00', 'مدفوعة جزئيا', 3, 'ثانى فاتوره مضافه', NULL, NULL, '2023-09-17 10:02:55', '2023-09-17 10:05:57'),
(3, 'ُAlx203', '2023-09-18', '2024-10-17', 'البطاقة الزراعيه', 3, '66000.00', '31000.00', '2000.00', '2900.00', '10%', '31900.00', 'غير مدفوعة', 2, 'ثالث فاتوره مضافة', NULL, NULL, '2023-09-17 10:04:27', '2023-09-18 12:32:02'),
(4, 'f7080', '2023-09-17', '2023-11-17', 'البطاقات التحوليه الشخصيه', 4, '88000.00', '18000.00', '3000.00', '1500.00', '10%', '16500.00', 'مدفوعة', 1, 'رابع فاتوره', NULL, NULL, '2023-09-17 10:07:15', '2023-09-18 12:30:11'),
(5, 'h8800', '2023-09-21', '2023-12-11', 'البطاقة العقارية', 1, '150000.00', '20000.00', '5000.00', '750.00', '5%', '15750.00', 'غير مدفوعة', 2, 'خامس فاتوره', NULL, NULL, '2023-09-21 07:58:51', '2023-09-21 07:58:51'),
(6, 'R3344', '2023-09-21', '2024-05-21', 'البطاقات التحوليه الشخصيه', 4, '24500.00', '2000.00', '300.00', '170.00', '10%', '1870.00', 'مدفوعة', 1, 'سادس فاتوره', NULL, NULL, '2023-09-21 08:48:46', '2023-09-21 09:09:42'),
(7, 'T7676', '2023-09-21', '2025-09-21', 'البطاقات التحولية', 2, '66220.00', '4000.00', '400.00', '360.00', '10%', '3960.00', 'غير مدفوعة', 2, 'سابع فاتوره', NULL, NULL, '2023-09-21 09:06:56', '2023-09-21 09:06:56'),
(8, 'q7979', '2023-09-22', '2023-11-22', 'البطاقات الائتمانيه الضربيه', 1, '70000.00', '2000.00', '500.00', '150.00', '10%', '1650.00', 'مدفوعة جزئيا', 3, 'ثامن فاتوره', NULL, NULL, '2023-09-22 04:00:15', '2023-09-22 04:53:53'),
(9, 't7693', '2023-09-22', '2024-09-22', 'البطاقات التحوليه الشخصيه', 4, '54300.00', '5042.00', '1000.00', '404.20', '10%', '4446.20', 'غير مدفوعة', 2, 'تاسع فاتوره', NULL, NULL, '2023-09-22 04:04:58', '2023-09-22 04:04:58'),
(10, 'ww5638', '2023-09-22', '2024-02-22', 'البطاقة العقارية', 1, '100000.00', '10000.00', '1000.00', '900.00', '10%', '9900.00', 'غير مدفوعة', 2, 'عاشر فاتوره', NULL, NULL, '2023-09-22 04:07:40', '2023-09-22 04:07:40'),
(11, 'pp5369', '2023-09-22', '2024-03-22', 'البطاقات التحولية', 2, '87960.00', '5000.00', '1500.00', '350.00', '10%', '3850.00', 'مدفوعة', 1, 'احدى عشر فاتوره', NULL, NULL, '2023-09-22 04:10:45', '2023-09-22 04:29:14'),
(17, 'AA7373', '2023-09-22', '2024-02-22', 'البطاقات التحولية', 2, '64900.00', '4000.00', '200.00', '380.00', '10%', '4180.00', 'غير مدفوعة', 2, 'اثنى عشر فاتوره', NULL, NULL, '2023-09-22 04:53:02', '2023-09-22 04:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_details`
--

CREATE TABLE `invoices_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `section` varchar(999) NOT NULL,
  `status` varchar(50) NOT NULL,
  `value_Status` int(11) NOT NULL,
  `payment_Date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `user` varchar(300) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_details`
--

INSERT INTO `invoices_details` (`id`, `invoice_id`, `invoice_number`, `product`, `section`, `status`, `value_Status`, `payment_Date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(1, 1, 'A4040', 'البطاقة العقارية', '1', 'غير مدفوعة', 2, NULL, 'اول فاتوره مضافة', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 10:01:04', '2023-09-17 10:01:04'),
(2, 2, 'm2020', 'البطاقات التحولية', '2', 'غير مدفوعة', 2, NULL, 'ثانى فاتوره مضافه', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 10:02:55', '2023-09-17 10:02:55'),
(3, 3, 'ُAlx203', 'البطاقة الزراعيه', '3', 'غير مدفوعة', 2, NULL, 'ثالث فاتوره مضافة', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 10:04:27', '2023-09-17 10:04:27'),
(4, 1, 'A4040', 'البطاقة العقارية', '1', 'مدفوعة', 1, NULL, 'اول فاتوره مضافة', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 10:05:29', '2023-09-17 10:05:29'),
(5, 2, 'm2020', 'البطاقات التحولية', '2', 'مدفوعة جزئيا', 3, NULL, 'ثانى فاتوره مضافه', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 10:05:57', '2023-09-17 10:05:57'),
(6, 4, 'f7080', 'البطاقات التحوليه الشخصيه', '4', 'غير مدفوعة', 2, NULL, 'رابع فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 10:07:15', '2023-09-17 10:07:15'),
(7, 4, 'f7080', 'البطاقات التحوليه الشخصيه', '4', 'مدفوعة', 1, NULL, 'رابع فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 10:07:41', '2023-09-17 10:07:41'),
(8, 5, 'h8800', 'البطاقة العقارية', '1', 'غير مدفوعة', 2, NULL, 'خامس فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-21 07:58:51', '2023-09-21 07:58:51'),
(9, 6, 'R3344', 'البطاقات التحوليه الشخصيه', '4', 'غير مدفوعة', 2, NULL, 'سادس فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-21 08:48:46', '2023-09-21 08:48:46'),
(10, 6, 'R3344', 'البطاقات التحوليه الشخصيه', '4', 'مدفوعة جزئيا', 3, NULL, 'سادس فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-21 08:55:55', '2023-09-21 08:55:55'),
(11, 7, 'T7676', 'البطاقات التحولية', '2', 'غير مدفوعة', 2, NULL, 'سابع فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-21 09:06:56', '2023-09-21 09:06:56'),
(12, 6, 'R3344', 'البطاقات التحوليه الشخصيه', '4', 'مدفوعة', 1, NULL, 'سادس فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-21 09:09:42', '2023-09-21 09:09:42'),
(13, 8, 'q7979', 'البطاقات الائتمانيه الضربيه', '1', 'غير مدفوعة', 2, NULL, 'ثامن فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-22 04:00:15', '2023-09-22 04:00:15'),
(14, 9, 't7693', 'البطاقات التحوليه الشخصيه', '4', 'غير مدفوعة', 2, NULL, 'تاسع فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-22 04:04:58', '2023-09-22 04:04:58'),
(15, 10, 'ww5638', 'البطاقة العقارية', '1', 'غير مدفوعة', 2, NULL, 'عاشر فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-22 04:07:40', '2023-09-22 04:07:40'),
(16, 11, 'pp5369', 'البطاقات التحولية', '2', 'غير مدفوعة', 2, NULL, 'احدى عشر فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-22 04:10:45', '2023-09-22 04:10:45'),
(22, 11, 'pp5369', 'البطاقات التحولية', '2', 'مدفوعة', 1, NULL, 'احدى عشر فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-22 04:29:14', '2023-09-22 04:29:14'),
(23, 17, 'AA7373', 'البطاقات التحولية', '2', 'غير مدفوعة', 2, NULL, 'اثنى عشر فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-22 04:53:02', '2023-09-22 04:53:02'),
(24, 8, 'q7979', 'البطاقات الائتمانيه الضربيه', '1', 'مدفوعة جزئيا', 3, NULL, 'ثامن فاتوره', 'Ahmed Abdellah Nouer Eldin', '2023-09-22 04:53:53', '2023-09-22 04:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachments`
--

CREATE TABLE `invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `Created_by` varchar(999) NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_attachments`
--

INSERT INTO `invoice_attachments` (`id`, `file_name`, `invoice_number`, `Created_by`, `invoice_id`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Abdulla Nour-Elden cv.pdf', 'A4040', 'Ahmed Abdellah Nouer Eldin', 1, '2023-09-17 10:01:04', '2023-09-17 10:01:04'),
(2, 'Hosting and Domain.pdf', 'm2020', 'Ahmed Abdellah Nouer Eldin', 2, '2023-09-17 10:02:55', '2023-09-17 10:02:55'),
(3, 'Hosting and Domain.pdf', 'ُAlx203', 'Ahmed Abdellah Nouer Eldin', 3, '2023-09-17 10:04:27', '2023-09-17 10:04:27'),
(4, 'CSS div centering.pdf', 'f7080', 'Ahmed Abdellah Nouer Eldin', 4, '2023-09-17 10:07:15', '2023-09-17 10:07:15'),
(5, 'Ahmed Abdulla Nour-Elden cv.pdf', 'h8800', 'Ahmed Abdellah Nouer Eldin', 5, '2023-09-21 07:58:51', '2023-09-21 07:58:51'),
(6, 'Ahmed Abdulla Nour-Elden cv.pdf', 'R3344', 'Ahmed Abdellah Nouer Eldin', 6, '2023-09-21 08:48:46', '2023-09-21 08:48:46'),
(7, 'Ahmed Abdulla Nour-Elden cv.pdf', 'T7676', 'Ahmed Abdellah Nouer Eldin', 7, '2023-09-21 09:06:56', '2023-09-21 09:06:56');

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
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_27_165313_create_sections_table', 1),
(7, '2023_08_28_191800_create_invoices_table', 1),
(8, '2023_09_03_153948_create_products_table', 1),
(9, '2023_09_05_171455_create_invoices_details_table', 1),
(10, '2023_09_05_183927_create_invoice_attachments_table', 1),
(11, '2023_09_15_081415_create_permission_tables', 1),
(12, '2023_09_16_124338_add_teams_fields', 1),
(13, '2023_09_22_060714_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0467a918-3216-4834-aebe-962d297c8512', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 2, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', NULL, '2023-09-22 05:47:37', '2023-09-22 05:47:37'),
('1d1d76f0-6aeb-4054-8d71-cbe99d5bc2f1', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":35,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', '2023-09-22 15:39:10', '2023-09-22 15:39:07', '2023-09-22 15:39:10'),
('2e01423e-c0a9-4bbf-84a3-53f9e92cd42d', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Ahmed Abdellah Nouer Eldin\"}', '2023-09-22 15:05:53', '2023-09-22 15:00:00', '2023-09-22 15:05:53'),
('3a07bfdf-acc9-4223-850e-934e7d70dfab', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":39,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', '2023-09-22 15:47:07', '2023-09-22 15:45:10', '2023-09-22 15:47:07'),
('48848bd5-2b61-4644-bfba-a1232b814f85', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', '2023-09-22 12:59:40', '2023-09-22 12:59:03', '2023-09-22 12:59:40'),
('5000e819-9e1d-477c-8d71-1efefdc8ff71', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Ahmed Abdellah Nouer Eldin\"}', '2023-09-22 15:37:26', '2023-09-22 15:37:26', '2023-09-22 15:37:26'),
('56c72f86-62f3-4b16-bc99-27310516569a', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Ahmed Abdellah Nouer Eldin\"}', '2023-09-22 12:25:10', '2023-09-22 12:24:58', '2023-09-22 12:25:10'),
('61753937-0428-419d-a4db-cef95335533d', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 2, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', NULL, '2023-09-22 12:26:26', '2023-09-22 12:26:26'),
('6beeab7b-d2da-45c4-8bad-1ea5727718e1', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', '2023-09-22 15:35:23', '2023-09-22 15:35:18', '2023-09-22 15:35:23'),
('77ad16d4-e699-4687-aa66-7615e81ff022', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Ahmed Abdellah Nouer Eldin\"}', '2023-09-22 12:21:33', '2023-09-22 04:53:02', '2023-09-22 12:21:33'),
('7b70f28b-7760-4711-b296-6b98c6692174', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Ahmed Abdellah Nouer Eldin\"}', '2023-09-22 13:21:41', '2023-09-22 13:16:00', '2023-09-22 13:21:41'),
('7cb81944-1377-4d51-bc2b-4eda68aaf15b', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', '2023-09-22 13:21:41', '2023-09-22 13:15:06', '2023-09-22 13:21:41'),
('946bba73-a146-4f92-8cac-239e1271bf70', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":38,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', '2023-09-22 15:47:07', '2023-09-22 15:44:47', '2023-09-22 15:47:07'),
('9e85d96d-b5f6-4c59-bf52-f1d3d1132d11', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":36,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', '2023-09-22 15:42:48', '2023-09-22 15:41:51', '2023-09-22 15:42:48'),
('bad7d576-5af4-43e7-bec5-191b6535ba11', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', '2023-09-22 15:42:48', '2023-09-22 15:42:23', '2023-09-22 15:42:48'),
('c984be7a-c889-47c4-b7b7-d75cb8eae58c', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Ahmed Abdellah Nouer Eldin\"}', '2023-09-22 15:13:05', '2023-09-22 15:13:05', '2023-09-22 15:13:05'),
('d992928e-c8bf-4c8a-aba1-1351f610992d', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Ahmed Abdellah Nouer Eldin\"}', '2023-09-22 14:56:18', '2023-09-22 14:56:06', '2023-09-22 14:56:18'),
('e7e5a506-ef1b-4eb3-ad84-5d3eda3f18be', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":40,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', '2023-09-22 15:47:07', '2023-09-22 15:46:16', '2023-09-22 15:47:07'),
('ee798cec-0c39-479f-8530-b1d55a639304', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Ahmed Abdellah Nouer Eldin\"}', '2023-09-22 15:05:53', '2023-09-22 15:02:39', '2023-09-22 15:05:53'),
('f7407225-33dd-4f2b-908f-23a55bac5f63', 'App\\Notifications\\Add_invoice_database', 'App\\Models\\User', 1, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Hager Ahmed\"}', '2023-09-22 15:37:52', '2023-09-22 15:37:51', '2023-09-22 15:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'الفواتير', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(2, 'قائمة الفواتير', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(3, 'الفواتير المدفوعة', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(4, 'الفواتير المدفوعة جزئيا', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(5, 'الفواتير الغير مدفوعة', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(6, 'ارشيف الفواتير', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(7, 'التقارير', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(8, 'تقرير الفواتير', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(9, 'تقرير العملاء', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(10, 'المستخدمين', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(11, 'قائمة المستخدمين', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(12, 'صلاحيات المستخدمين', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(13, 'الاعدادات', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(14, 'المنتجات', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(15, 'الاقسام', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(16, 'اضافة فاتورة', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(17, 'حذف الفاتورة', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(18, 'تصدير EXCEL', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(19, 'تغير حالة الدفع', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(20, 'تعديل الفاتورة', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(21, 'ارشفة الفاتورة', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(22, 'طباعةالفاتورة', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(23, 'اضافة مرفق', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(24, 'حذف المرفق', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(25, 'اضافة مستخدم', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(26, 'تعديل مستخدم', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(27, 'حذف مستخدم', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(28, 'عرض صلاحية', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(29, 'اضافة صلاحية', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(30, 'تعديل صلاحية', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(31, 'حذف صلاحية', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(32, 'اضافة منتج', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(33, 'تعديل منتج', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(34, 'حذف منتج', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(35, 'اضافة قسم', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(36, 'تعديل قسم', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(37, 'حذف قسم', 'web', '2023-09-17 07:24:12', '2023-09-17 07:24:12'),
(38, 'الاشعارات', 'web', '2023-09-17 07:24:13', '2023-09-17 07:24:13');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(999) NOT NULL,
  `product_description` text DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'البطاقات التحولية الشخصيه', 'اول منتج تم اضافة لبنك الاهلى', 1, '2023-09-17 09:56:10', '2023-09-17 09:56:10'),
(2, 'البطاقة العقارية', 'ثانى منتج تم اضافة لبنك الاهلى', 1, '2023-09-17 09:56:55', '2023-09-17 09:56:55'),
(3, 'البطاقات الائتمانيه الضربيه', 'ثالث منتج تم اضافة لبنك الاهلى', 1, '2023-09-17 09:57:17', '2023-09-17 09:57:17'),
(4, 'البطاقات التحولية', 'اول منتج تم اضافة لبنك مصر', 2, '2023-09-17 09:57:47', '2023-09-17 09:57:47'),
(5, 'البطاقة الزراعيه', 'اول منتج تم اضافة لبنك الاسكندريه', 3, '2023-09-17 09:58:06', '2023-09-17 09:58:06'),
(6, 'البطاقات التحوليه الشخصيه', 'اول منتج تم اضافة لبنك فيصل', 4, '2023-09-17 09:58:39', '2023-09-17 09:58:39'),
(7, 'البطاقات الائتمانيه', 'ثانى منتج تم اضافة لبنك مصر', 2, '2023-09-17 09:59:13', '2023-09-17 09:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2023-09-17 07:24:17', '2023-09-17 07:24:17'),
(2, 'user', 'web', '2023-09-17 08:07:18', '2023-09-17 08:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
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
(38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) NOT NULL,
  `section_description` text DEFAULT NULL,
  `created_by` varchar(999) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `section_description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'البنك الاهلى', 'اول بنك تم اضافته بنك كل اهل مصر', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 09:54:06', '2023-09-17 09:54:06'),
(2, 'بنك مصر', 'ثانى بنك تم اضافتة', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 09:54:32', '2023-09-17 09:54:32'),
(3, 'بنك الاسكندرية', 'ثالث بنك تم اضافته', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 09:55:03', '2023-09-17 09:55:03'),
(4, 'بنك فيصل', 'رابع بنك تم اضافتة', 'Ahmed Abdellah Nouer Eldin', '2023-09-17 09:55:24', '2023-09-17 09:55:24');

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
  `roles_name` text NOT NULL,
  `Status` varchar(10) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Abdellah Nouer Eldin', 'ahmed.abdellah664@gmail.com', NULL, '$2y$10$EqMiJ61g64V33swFN/ryhOjWr7WsVMWLRcIMXIH0XCDar736O1aCy', '[\"owner\"]', 'مفعل', 'lmWaiIArptdiCdYB9Rk9c0NNFfZe35Tu8n8Sfltvr8PFEm71QSetTMKflu16', '2023-09-17 07:24:17', '2023-09-17 07:24:17'),
(2, 'Hager Ahmed', 'ha@yahoo.com', NULL, '$2y$10$2smx/istRVUGoGNiyD/nOecalUxYD8u9lL8nYSx.D.sTidvwh9pPe', '[\"user\"]', 'مفعل', 'O5kJXuRXngA2xkN3TaklcCoiMYhI8z1D1gxlbiRT8pkrWQ9XiWqawb3XDfIe', '2023-09-17 08:07:57', '2023-09-22 05:22:56');

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
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Indexes for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_details_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_attachments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
  ADD KEY `products_section_id_foreign` (`section_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `invoices_details`
--
ALTER TABLE `invoices_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD CONSTRAINT `invoices_details_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD CONSTRAINT `invoice_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

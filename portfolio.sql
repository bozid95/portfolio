-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 19, 2020 at 04:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_activations`
--

CREATE TABLE `admin_activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `forbidden` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `forbidden`, `language`, `deleted_at`, `created_at`, `updated_at`, `last_login_at`) VALUES
(1, 'Administrator', 'Administrator', 'widodo@admin.com', '$2y$10$PMwZVMEZZBWt9Zr378HdOuRgWOdhvt9BOFtFSbM4mCy3y9TcTb6De', 'S9kmvoXaLCtDgJULs43olf9d8uPaKpottVcUDQNvFJWmDBtuuCIKTugTLbqU', 1, 0, 'en', '2020-11-19 07:59:38', '2020-11-14 21:29:02', '2020-11-19 07:59:38', '2020-11-19 07:59:02'),
(2, 'widodo', 'bozid', 'admin@admin.com', '$2y$10$EkBswehCuQs6r3hapf6Xf.ilo3LnHC6SjXMIQM0Qu3Eaocl7Sj2hS', '7krr8UsGl2BARno8fOce9eLzuwrYmiT3H8opPiL85SrcH3nOeuImlTQdm8qS', 1, 0, 'en', '2020-11-15 08:15:10', '2020-11-14 21:42:07', '2020-11-15 08:15:10', '2020-11-15 00:28:47'),
(3, 'widodo', 'bozid', 'demo@admin.com', '$2y$10$g4YYqZH/67lyDGuPS2fKo.00gZvsbTigCPt1sCebJ1w.8z2IL.r0a', 'wVVMmwHT69Hl7VTqxzQQafbAGp4QAkkgddqJJMeTVV3XgWnEmuCQjwWMfnpm', 1, 0, 'en', NULL, '2020-11-16 06:04:21', '2020-11-19 08:00:00', '2020-11-19 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `no_hp` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `nama`, `tempat_lahir`, `tgl_lahir`, `alamat`, `keterangan`, `created_at`, `updated_at`, `no_hp`, `email`) VALUES
(6, 'Widodo', 'Kebumen', '1995-02-06', 'Jalan Wadaslintang KM 7 Padureso Kebumen', 'Saya adalah prorammer NUB yang sedang belajar !', '2020-11-14 22:41:00', '2020-11-15 08:08:53', '089765656565', 'admin@gmail.com');

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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_24_000000_create_activations_table', 1),
(4, '2017_08_24_000000_create_admin_activations_table', 1),
(5, '2017_08_24_000000_create_admin_password_resets_table', 1),
(6, '2017_08_24_000000_create_admin_users_table', 1),
(7, '2018_07_18_000000_create_wysiwyg_media_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_10_21_000000_add_last_login_at_timestamp_to_admin_users_table', 1),
(10, '2020_11_15_042837_create_media_table', 1),
(11, '2020_11_15_042837_create_permission_tables', 1),
(12, '2020_11_15_042842_fill_default_admin_user_and_permissions', 1),
(13, '2020_11_15_042837_create_translations_table', 2),
(14, '2020_11_15_043738_create_biodata_table', 3),
(15, '2020_11_15_044048_fill_permissions_for_biodatum', 4),
(18, '2020_11_15_052451_create_skill_user', 5),
(19, '2020_11_15_052548_create_skill_table', 6),
(20, '2020_11_15_053356_fill_permissions_for_skill', 7),
(21, '2020_11_15_053619_create_project_table', 8),
(22, '2020_11_15_053928_fill_permissions_for_project', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'Brackets\\AdminAuth\\Models\\AdminUser', 1),
(1, 'Brackets\\AdminAuth\\Models\\AdminUser', 2),
(1, 'Brackets\\AdminAuth\\Models\\AdminUser', 3);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02'),
(2, 'admin.translation.index', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02'),
(3, 'admin.translation.edit', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02'),
(4, 'admin.translation.rescan', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02'),
(5, 'admin.admin-user.index', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02'),
(6, 'admin.admin-user.create', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02'),
(7, 'admin.admin-user.edit', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02'),
(8, 'admin.admin-user.delete', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02'),
(9, 'admin.upload', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02'),
(10, 'admin.admin-user.impersonal-login', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02'),
(11, 'admin.biodatum', 'admin', '2020-11-14 21:40:56', '2020-11-14 21:40:56'),
(12, 'admin.biodatum.index', 'admin', '2020-11-14 21:40:56', '2020-11-14 21:40:56'),
(13, 'admin.biodatum.create', 'admin', '2020-11-14 21:40:56', '2020-11-14 21:40:56'),
(14, 'admin.biodatum.show', 'admin', '2020-11-14 21:40:56', '2020-11-14 21:40:56'),
(15, 'admin.biodatum.edit', 'admin', '2020-11-14 21:40:56', '2020-11-14 21:40:56'),
(16, 'admin.biodatum.delete', 'admin', '2020-11-14 21:40:56', '2020-11-14 21:40:56'),
(17, 'admin.biodatum.bulk-delete', 'admin', '2020-11-14 21:40:56', '2020-11-14 21:40:56'),
(18, 'admin.skill', 'admin', '2020-11-14 22:33:58', '2020-11-14 22:33:58'),
(19, 'admin.skill.index', 'admin', '2020-11-14 22:33:58', '2020-11-14 22:33:58'),
(20, 'admin.skill.create', 'admin', '2020-11-14 22:33:58', '2020-11-14 22:33:58'),
(21, 'admin.skill.show', 'admin', '2020-11-14 22:33:58', '2020-11-14 22:33:58'),
(22, 'admin.skill.edit', 'admin', '2020-11-14 22:33:58', '2020-11-14 22:33:58'),
(23, 'admin.skill.delete', 'admin', '2020-11-14 22:33:58', '2020-11-14 22:33:58'),
(24, 'admin.skill.bulk-delete', 'admin', '2020-11-14 22:33:58', '2020-11-14 22:33:58'),
(25, 'admin.project', 'admin', '2020-11-14 22:39:31', '2020-11-14 22:39:31'),
(26, 'admin.project.index', 'admin', '2020-11-14 22:39:31', '2020-11-14 22:39:31'),
(27, 'admin.project.create', 'admin', '2020-11-14 22:39:31', '2020-11-14 22:39:31'),
(28, 'admin.project.show', 'admin', '2020-11-14 22:39:31', '2020-11-14 22:39:31'),
(29, 'admin.project.edit', 'admin', '2020-11-14 22:39:31', '2020-11-14 22:39:31'),
(30, 'admin.project.delete', 'admin', '2020-11-14 22:39:31', '2020-11-14 22:39:31'),
(31, 'admin.project.bulk-delete', 'admin', '2020-11-14 22:39:31', '2020-11-14 22:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `judul`, `link`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Aplikasi E-Vote', 'https://www.youtube.com/playlist?list=PLce3Eyp7oY9_hXzGACf988F1ojvQlYmB0', '<p style=\"text-align: center;\"><a href=\"http://widodo.my.id/\" title=\"Aplikasi E-Vote\">E-vote Demo</a><br></p><p style=\"text-align: center;\"><img src=\"https://getcraftable.com/\" alt=\"\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWwAAACLCAMAAAByd1MFAAAAzFBMVEX////wggASiZ7wfgDwgADwhAD617L98+r//Pf0qWoAhZvwfQD1rWkTi6C22eBurbv97+Tr8/X4/f3X6e373Lzxhwz4x5bznkEbkKT4w4p4s8D1r3TykhZwsr75zJv++fHzm072uoVToLGEv8vylSv738T86NL62Lr2tXvxiwD98N3xix31r2v0pVz85cnxixrymUb4x5L0okT4yJ7ylDnxkDD50a/86Nf1rF75y5f62bL0p1P3wJL85MXi8fSpztY+nK2r0tr3vn/I4eYLcN5pAAAJxklEQVR4nO2df0PaPhDG2zVApcyhwsDNwabABMTh8Me+0/nz/b+nLyiU9rkmTRvKoLvnX5t4+RCuyeUuWBaLxWKxWCwWi6Wp2vMhqKbb1G1h01Y7S1O3Xy3hiJC8n7pNB1fY9LKapanbr1LDsUMSBd3pWSuIcFPn1M3U1u3XBGDbTlGz5Tf8mOraHuhfVW+I8/OzXkP6nbjkiR2j9ogwG2g1vLHhU/LOMjY1B/rogR8R37XaHWI7r5expTlQyUE/ojdDj6CZ6LAXiRfxvX0dagMyse8ytzQHKhJsOusR9CKi3s3c0hyo2k/hR1x8rzpfS9mbuv1yP6MfuYrf1/Su8BP6tgZTc6BrcCOiEL87uQbWtnO+BktzoEHyWepW8NtwtA5L86AzJNeJiyiVMC7iXazF0hyoRvY1cSsLXMEIcZONaW4Rte2reRfXI7E771+4FvmZUSi72i+EJbY+jHuKE7Wgfr5NoleTjCyrFgQEzbce9nXCOAeGssWPrHY0VRI033rYJM7q/ad8noSyx1kdiOUQtruDPnikepyEZTVjVymUQ9hWC0N4Vyo/ctPBL8LvrAzLI+xSHWlfK55GFx/3PjVQHmFbP4ljUKxnycLvV2Z25RI22aX0FUE8AkDvbCeNcgm7hAcviqA2bjhFhvkiuYTt4r7GuZU+i6EU5zQ7u3IJm+5T6rJRVS/hSVs30ySF8gkbEdpChrAGKxcxzDDFL5+wrTP0IzLncLe+tUhuYf8hr73oZJ02nsZ7WZ705hQ2LuiEHQ0RM6GUi0RjbTjs/T197QcbYnKCxD08w2MenqG5JW216c4JWt8Q2D3aTdT+y22bWKGl+92T48fmez01Hz89HCzb9nBqFyKN6OBToS9AqXY36vQLto4K/UZlcg7/pNvXahvi3yKku5OKvhWdX3fd5O/4/ZPH9+Vy+Z22yuXml3uf01d0xlGH7AMBsMdB134xLniQIq+U4wxH4WP5LpwWEDi0Ew9h/x7VnWRW1MdJl68vj0lA+7x3F+21lhkXih1N9dbDxMFYCcc7DE7uLh7RxQtm9nR/lsaKSqJXz0EzOepXPcw7uMZX3yX9/yTyHZj+g0tMrNccaDAabgy7jVkWmvJuE7x6Dx5Tsn5XntMeDHETSf3IDeSYCMeflqV0rKd9eM8rhH2b0grbG2nP7b3UrKd6eeuDBD3oMe41PtJY/KWNgVd9CbH8R6awSdq4vvSz+U8MWJeP9177wHCeUyEvaSTq+ZiuI15muhI//K+wIezej/RW2J5mCt19Mz3rKe23l6R7hPsVTL0hTywpdVJP7NkwfUdiBpsEL5N1pDx5XerJhPW78pe37c033LCgH6miF6ksXHbPZJS26KwGNgnLJ7NiqDe1Pxl4kamab167C/saBytQWxhA8T8NA18568deDNMMdtfICrvwrLOZ3Ds2Yv2u/PQ2McbhmSsccNr49+HiEH6A4amE8gO6ZrAxlpDUCq0sugMjlz2FffLWD2bfwOYMk3mWxzl/TF5Ms2Eu/pEZ7NTrvrkVHZ3V36pg96Q++VUT6UElnigkHubHlcA2/X6tFTYJM4WSdXD7KGz/W7c62IVwVIM+SWMjy1y5vwS7rJQUNjq9UAVqtSPzIhGwhaMSedqHfRQW4XFE1FfM7IRWpINdPv6i0Afy+AI2xo9DfuQ7bnqWaVMU9visItcZVpb4sEGkxMFR4qD19EoryLlrStgHqsf3j2Ww2/CKEf3A+xm2j6Kz3PMQ2EKdsU1qciSwE57UkCM7dXUQKebMAjZZKfqwFe9AcnDm7CxnfVLY5HqCvwKbOM01w8YCx4Bf/o2mBXJXGbZUCtiIQQz9/w9xB1EPWMawpVLBJpuwhR8pjaVznmFP34My3Stgn5Nknbln7gLPUOrlRsNuS7RS2A/HMr2Xw7ZgC+fnqE5wRxMc9ibD7o2/SkQWoAaw9UOBQdgYZ51XoGImlNMIBm02GXbXk52qk01NYy2wn5Z9Yf6I98bhRln6uNmwbU2J21RRv4Swm4H3aQnXI2+BfdgAQOljLmCLwoVOPNsQdtCLWNYd7msGEeNwvobsygfsK62L3wxhzw9q5jpHPzIL9LgQyvYOQwbkAranV0JhBjs8sacmw4J6dg5agwweLzwJ8gBb92ZUM9jN+3BvF+CeZ0FtyE3Dy1xyAFvEmOzLDPYu9FbFPLQJybr0AM72wxbeZ83UYQPY5bDDnsmFWKozcmE9SDJKth62ENo1b6lhl8uPEVEUSDIT/dIkbLAzAve23bCF4/Un2inxMtgxet/88LIf0R3GWb0inikgys2GrTwbcxx72NBaYM8liY18UurkYfde0l8F9zVhlst8kYU2GfbNzmeVTu+uk13ZKwmxSsN+r1L0RzKfMDiFDTYZtuUqpbQzSgnj2bFy8XJsGAOpYtlo2CvWqmGTKzHCZAQJjjFsAynzJJ1b8t37t2G/xDjsGP9N6g9DA6bX7FDYLaWrTA97QPtdPk5hq/11KgdOM6KOPyTSE3RI7twKginQ2t+IJJ0dlXSTdAhsMSLLiZ1l6Q9N0lFaQXSaMtcvbo0d1gn2iPkjwRGMaSRyZelncbBt2pcq109tBelpvYmVvshVf4HhRmxsV5ZYGQs7wp5tzWJdSp7qHFX5mxlsjQziAGzlIkrDCi3YJDfBHDbmPy0t6kcYMGgYwpYsXkoa/a6w8kAL9v4Xs5qaCNglWaldZLmgi3fDJBylLbmM3sXazAgFYJMfy0hohhZs62HlsEnJoz+2yHtIyB3cyUYpvfpI8aL2DQpUiyWvWwiZoQfbrA4yEjYW8y4Miqhon8moKE5eXEt+yYIqWAep8UVQSBO2ZeZHomCTG1fnXCSbsjuDqa26WL4S22+wwreoDurE2aEJ27DENwK2dRo1S6RXZZcMKrVUv2jRjvUMQdhmJb66sK1dzN8zhl2MGqX8quxean/p/VIdaxfjltqhiwLaJmXd2rCtpxRXuyhht6PWzsHrKkC1Qrr7RrwjdQpBK+YKgvAVGL1O+rmtD9vaTXu7iwQ2uepvJtUF/b2Gl3xyC3EWl65RHCo/RbhJZzBKYcXcFn3Y1sGHtJM7GnZU+mfUjsZXtSJkGaOyRFKtk9abM0/RLx5ltL/1E11UFbAmAewp7hPtu89CioZd6tgF/OUSuRd51eCwMaxjI5nq9eFtUW94vefLH7J+BTk3arduh3VtM5ayE8G2rL2Xl90Uij5rOCc/yVOMvUip3avRVtGq/RnonwCWzqX9RqRDur0/2mYELdr2nxxisVgsFovFYrFYLBaLxWKxWCwWi8VisVgsFovFYrFYLBaLxWKxWCwWi8VisVgsFovFYrFYrOT6H6nyNxmhYjfxAAAAAElFTkSuQmCC\" style=\"font-size: 0.875rem; text-align: left;\" alt=\"\"><br></p>', '2020-11-15 06:53:45', '2020-11-15 06:53:45'),
(2, 'Aplikasi POS', 'https://www.youtube.com/playlist?list=PLce3Eyp7oY9_hXzGACf988F1ojvQlYmB0', '<p style=\"text-align: center; \">Aplikasi POS</p><p style=\"text-align: center; \"><img src=\"data:image/jpeg;base64,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\" alt=\"\"><br></p>', '2020-11-15 06:55:58', '2020-11-15 06:55:58'),
(3, 'Aplikasi ERP', 'https://www.youtube.com/playlist?list=PLce3Eyp7oY9_hXzGACf988F1ojvQlYmB0', '<p style=\"text-align: center; \"><img src=\"data:image/png;base64,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\" alt=\"\"><br></p>', '2020-11-15 06:57:10', '2020-11-15 06:57:10'),
(4, 'Aplikasi Kasir', 'https://www.youtube.com/playlist?list=PLce3Eyp7oY9_hXzGACf988F1ojvQlYmB0', '<p style=\"text-align: center;\"><img src=\"data:image/jpeg;base64,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\" alt=\"\"></p>', '2020-11-15 07:37:46', '2020-11-15 07:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2020-11-14 21:29:02', '2020-11-14 21:29:02');

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
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
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
(31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_skill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persentase` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `nama_skill`, `persentase`, `created_at`, `updated_at`) VALUES
(4, 'Desain Grafis - PHP -Laravel - CodeIgniter', '78', '2020-11-14 22:41:24', '2020-11-15 00:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`text`)),
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `namespace`, `group`, `key`, `text`, `metadata`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'brackets/admin-ui', 'admin', 'operation.succeeded', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(2, 'brackets/admin-ui', 'admin', 'operation.failed', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(3, 'brackets/admin-ui', 'admin', 'operation.not_allowed', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(4, '*', 'admin', 'admin-user.columns.first_name', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(5, '*', 'admin', 'admin-user.columns.last_name', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(6, '*', 'admin', 'admin-user.columns.email', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(7, '*', 'admin', 'admin-user.columns.password', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(8, '*', 'admin', 'admin-user.columns.password_repeat', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(9, '*', 'admin', 'admin-user.columns.activated', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(10, '*', 'admin', 'admin-user.columns.forbidden', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(11, '*', 'admin', 'admin-user.columns.language', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(12, 'brackets/admin-ui', 'admin', 'forms.select_an_option', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(13, '*', 'admin', 'admin-user.columns.roles', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(14, 'brackets/admin-ui', 'admin', 'forms.select_options', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(15, '*', 'admin', 'admin-user.actions.create', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(16, 'brackets/admin-ui', 'admin', 'btn.save', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(17, '*', 'admin', 'admin-user.actions.edit', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(18, '*', 'admin', 'admin-user.actions.index', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(19, 'brackets/admin-ui', 'admin', 'placeholder.search', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(20, 'brackets/admin-ui', 'admin', 'btn.search', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(21, '*', 'admin', 'admin-user.columns.id', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(22, '*', 'admin', 'admin-user.columns.last_login_at', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(23, 'brackets/admin-ui', 'admin', 'btn.edit', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(24, 'brackets/admin-ui', 'admin', 'btn.delete', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(25, 'brackets/admin-ui', 'admin', 'pagination.overview', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(26, 'brackets/admin-ui', 'admin', 'index.no_items', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(27, 'brackets/admin-ui', 'admin', 'index.try_changing_items', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(28, 'brackets/admin-ui', 'admin', 'btn.new', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(29, 'brackets/admin-ui', 'admin', 'profile_dropdown.account', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(30, 'brackets/admin-auth', 'admin', 'profile_dropdown.profile', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(31, 'brackets/admin-auth', 'admin', 'profile_dropdown.password', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(32, 'brackets/admin-auth', 'admin', 'profile_dropdown.logout', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(33, 'brackets/admin-ui', 'admin', 'sidebar.content', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(34, 'brackets/admin-ui', 'admin', 'sidebar.settings', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(35, '*', 'admin', 'admin-user.actions.edit_password', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(36, '*', 'admin', 'admin-user.actions.edit_profile', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(37, 'brackets/admin-auth', 'activations', 'email.line', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(38, 'brackets/admin-auth', 'activations', 'email.action', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(39, 'brackets/admin-auth', 'activations', 'email.notRequested', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(40, 'brackets/admin-auth', 'admin', 'activations.activated', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(41, 'brackets/admin-auth', 'admin', 'activations.invalid_request', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(42, 'brackets/admin-auth', 'admin', 'activations.disabled', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(43, 'brackets/admin-auth', 'admin', 'activations.sent', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(44, 'brackets/admin-auth', 'admin', 'passwords.sent', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(45, 'brackets/admin-auth', 'admin', 'passwords.reset', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(46, 'brackets/admin-auth', 'admin', 'passwords.invalid_token', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(47, 'brackets/admin-auth', 'admin', 'passwords.invalid_user', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(48, 'brackets/admin-auth', 'admin', 'passwords.invalid_password', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(49, 'brackets/admin-auth', 'resets', 'email.line', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(50, 'brackets/admin-auth', 'resets', 'email.action', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(51, 'brackets/admin-auth', 'resets', 'email.notRequested', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(52, '*', 'auth', 'failed', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(53, '*', 'auth', 'throttle', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(54, 'brackets/admin-auth', 'admin', 'activation_form.title', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(55, 'brackets/admin-auth', 'admin', 'activation_form.note', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(56, 'brackets/admin-auth', 'admin', 'auth_global.email', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(57, 'brackets/admin-auth', 'admin', 'activation_form.button', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(58, 'brackets/admin-auth', 'admin', 'login.title', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(59, 'brackets/admin-auth', 'admin', 'login.sign_in_text', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(60, 'brackets/admin-auth', 'admin', 'auth_global.password', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(61, 'brackets/admin-auth', 'admin', 'login.button', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(62, 'brackets/admin-auth', 'admin', 'login.forgot_password', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(63, 'brackets/admin-auth', 'admin', 'forgot_password.title', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(64, 'brackets/admin-auth', 'admin', 'forgot_password.note', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(65, 'brackets/admin-auth', 'admin', 'forgot_password.button', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(66, 'brackets/admin-auth', 'admin', 'password_reset.title', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(67, 'brackets/admin-auth', 'admin', 'password_reset.note', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(68, 'brackets/admin-auth', 'admin', 'auth_global.password_confirm', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(69, 'brackets/admin-auth', 'admin', 'password_reset.button', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(70, '*', '*', 'Manage access', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(71, '*', '*', 'Translations', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL),
(72, '*', '*', 'Configuration', '[]', NULL, '2020-11-14 21:29:19', '2020-11-14 21:29:19', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wysiwyg_media`
--

CREATE TABLE `wysiwyg_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wysiwygable_id` int(10) UNSIGNED DEFAULT NULL,
  `wysiwygable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD KEY `activations_email_index` (`email`);

--
-- Indexes for table `admin_activations`
--
ALTER TABLE `admin_activations`
  ADD KEY `admin_activations_email_index` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_deleted_at_unique` (`email`,`deleted_at`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_namespace_index` (`namespace`),
  ADD KEY `translations_group_index` (`group`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wysiwyg_media`
--
ALTER TABLE `wysiwyg_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wysiwyg_media_wysiwygable_id_index` (`wysiwygable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wysiwyg_media`
--
ALTER TABLE `wysiwyg_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

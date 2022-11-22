-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2022 pada 07.12
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linkedin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-11-18 04:34:27', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-11-18 05:40:57', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-11-18 05:51:33', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-11-18 05:52:19', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-11-18 05:52:35', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-11-18 05:53:29', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-11-18 05:53:47', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-11-18 05:54:00', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/add-save', 'Add New Data 61c0112d-5729-4944-9b2e-78c004dd23bf at Scrapy Setting', '', 1, '2022-11-18 06:04:18', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/add-save', 'Add New Data hgnmg at Scrapy Setting', '', 1, '2022-11-18 06:34:58', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-11-18 16:42:28', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/add-save', 'Add New Data 47cSf at Scrapy Setting', '', 1, '2022-11-18 17:15:17', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/edit-save/bcca8d29-30b8-49ac-8361-222bbb70b084', 'Update data  at Scrapy Setting', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>code</td><td>47cSf</td><td></td></tr><tr><td>max</td><td>0</td><td>10</td></tr></tbody></table>', 1, '2022-11-18 17:56:03', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/edit-save/1f75405a-5148-496b-b785-927d2cc15c0d', 'Update data  at Scrapy Setting', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>code</td><td>hgnmg</td><td></td></tr><tr><td>max</td><td>0</td><td>10</td></tr></tbody></table>', 1, '2022-11-18 17:56:10', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/add-save', 'Add New Data NdCD9 at Scrapy Setting', '', 1, '2022-11-18 18:13:49', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/edit-save/f8ca704b-4bd8-4834-a47d-e3376212dde3', 'Update data  at Scrapy Setting', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>code</td><td>NdCD9</td><td></td></tr><tr><td>end</td><td>5</td><td>2</td></tr></tbody></table>', 1, '2022-11-18 18:26:32', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/edit-save/f8ca704b-4bd8-4834-a47d-e3376212dde3', 'Update data  at Scrapy Setting', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>code</td><td>NdCD9</td><td></td></tr><tr><td>username</td><td>harikarinjani@gmail.com</td><td>nikofigit99@gmail.com</td></tr><tr><td>link_pass</td><td>LaravelPython</td><td>Juni200610!</td></tr></tbody></table>', 1, '2022-11-18 18:46:53', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/add-save', 'Add New Data Fy0ub at Scrapy Setting', '', 1, '2022-11-18 19:17:52', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/add-save', 'Add New Data 9zwfP at Scrapy Setting', '', 1, '2022-11-18 22:17:25', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/edit-save/b58a1684-64ed-49d7-a329-ce7368057440', 'Update data  at Scrapy Setting', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>code</td><td>9zwfP</td><td></td></tr><tr><td>username</td><td>nikofigit99@gmail.com</td><td>xxxx@gmail.com</td></tr><tr><td>link_pass</td><td>Juni200610!</td><td>xxxx</td></tr></tbody></table>', 1, '2022-11-18 23:11:43', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/edit-save/adf55787-195c-4a16-8f28-0bbf658e5b94', 'Update data  at Scrapy Setting', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>code</td><td>Fy0ub</td><td></td></tr><tr><td>username</td><td>nikofigit99@gmail.com</td><td>xxxx@gmail.com</td></tr><tr><td>link_pass</td><td>Juni200610!</td><td>xxxx</td></tr></tbody></table>', 1, '2022-11-18 23:11:51', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/crap/edit-save/f8ca704b-4bd8-4834-a47d-e3376212dde3', 'Update data  at Scrapy Setting', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>code</td><td>NdCD9</td><td></td></tr><tr><td>username</td><td>nikofigit99@gmail.com</td><td>xxx@gmail.com</td></tr><tr><td>link_pass</td><td>Juni200610!</td><td>xxx</td></tr></tbody></table>', 1, '2022-11-18 23:11:59', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Scrapy Setting', 'Route', 'AdminCrapControllerGetIndex', NULL, 'fa fa-gear', 0, 1, 0, 1, 1, '2022-11-18 05:44:55', NULL),
(2, 'Scrapy Result', 'Route', 'AdminResultControllerGetIndex', NULL, 'fa fa-book', 0, 1, 0, 1, 2, '2022-11-18 05:45:57', NULL),
(3, 'Transpool Data', 'Route', 'AdminTranspoolControllerGetIndex', NULL, 'fa fa-database', 0, 1, 0, 1, 3, '2022-11-18 12:16:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-11-18 04:34:27', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-11-18 04:34:27', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-11-18 04:34:27', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-11-18 04:34:27', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-11-18 04:34:27', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-11-18 04:34:27', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-11-18 04:34:27', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-11-18 04:34:27', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-11-18 04:34:27', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-11-18 04:34:27', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-11-18 04:34:27', NULL, NULL),
(12, 'Scrapy Setting', 'fa fa-gear', 'crap', 'crap', 'AdminCrapController', 0, 0, '2022-11-18 05:44:55', NULL, NULL),
(13, 'Scrapy Result', 'fa fa-book', 'result', 'result', 'AdminResultController', 0, 0, '2022-11-18 05:45:57', NULL, NULL),
(14, 'Transpool Data', 'fa fa-database', 'transpool', 'transpool', 'AdminTranspoolController', 0, 0, '2022-11-18 12:16:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-blue-light', '2022-11-18 04:34:27', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(12, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2022-11-18 04:34:27', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2022-11-18 04:34:27', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2022-11/3a797dd7a0038e069391075e8f5a1395.jpg', 'upload_image', NULL, NULL, '2022-11-18 04:34:27', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2022-11-18 04:34:27', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2022-11-18 04:34:27', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2022-11-18 04:34:27', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2022-11-18 04:34:27', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2022-11-18 04:34:27', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2022-11-18 04:34:27', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'linkedin', 'text', NULL, NULL, '2022-11-18 04:34:27', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-11-18 04:34:27', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2022-11/76bc57e8f8b28114bbf90494404404c2.webp', 'upload_image', NULL, NULL, '2022-11-18 04:34:27', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2022-11-18 04:34:27', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2022-11-18 04:34:27', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2022-11-18 04:34:27', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2022-11-18 04:34:27', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$kcGKfIE1M6FU9gP1AApxgeIjlzETbg18o.8NbSWYjmdFVbD841yNS', 1, '2022-11-18 04:34:27', NULL, 'Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `crap`
--

CREATE TABLE `crap` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `crap`
--

INSERT INTO `crap` (`id`, `code`, `username`, `link_pass`, `url`, `kategori`, `start`, `end`, `max`, `created_at`, `updated_at`) VALUES
('adf55787-195c-4a16-8f28-0bbf658e5b94', 'Fy0ub', 'xxxx@gmail.com', 'xxxx', 'https://www.linkedin.com/search/results/people/?geoUrn=%5B%2290010101%22%5D&keywords=manager&origin=FACETED_SEARCH', 'manager', 1, 2, 10, '2022-11-18 19:17:52', '2022-11-18 23:11:51'),
('b58a1684-64ed-49d7-a329-ce7368057440', '9zwfP', 'xxxx@gmail.com', 'xxxx', 'https://www.linkedin.com/search/results/people/?geoUrn=%5B%2290010101%22%5D&heroEntityKey=urn%3Ali%3Aautocomplete%3A-1758644285&keywords=finance&origin=FACETED_SEARCH', 'finance', 1, 3, 20, '2022-11-18 22:17:25', '2022-11-18 23:11:43'),
('f8ca704b-4bd8-4834-a47d-e3376212dde3', 'NdCD9', 'xxx@gmail.com', 'xxx', 'https://www.linkedin.com/search/results/people/?keywords=geologi&origin=SWITCH_SEARCH_VERTICAL&sid=CVW', 'geologi', 1, 2, 10, '2022-11-18 18:13:49', '2022-11-18 23:11:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2022_11_18_122719_create_crap_table', 2),
(36, '2022_11_18_122832_create_result_table', 2),
(37, '2022_11_18_190750_create_transpool_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `result`
--

CREATE TABLE `result` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crap_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_profile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_overlay` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tentang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `result`
--

INSERT INTO `result` (`id`, `crap_id`, `url_profile`, `html_profile`, `url_overlay`, `html`, `folder`, `nama`, `jabatan`, `tentang`, `hp`, `email`, `link`, `web`, `pengalaman`, `created_at`, `updated_at`) VALUES
('5b13a42e-c2ce-4bbb-93b7-84db18e9788f', 'adf55787-195c-4a16-8f28-0bbf658e5b94', 'https://www.linkedin.com/in/sesiliavanessaaudelia?miniProfileUrn=urn%3Ali%3Afs_miniProfile%3AACoAACmZLsMBKO7TsQsktXECxC_1nSwSPjr2Ncg', 'Fy0ub10.html', 'https://www.linkedin.com/in/sesiliavanessaaudelia/overlay/contact-info/', 'Fy0ub1.html', 'Fy0ub', 'Sesilia Vanessa Audelia', 'Bank MegaBank Mega', NULL, 'N/A', 'N/A', 'linkedin.com/in/sesiliavanessaaudelia', 'N/A', '[\"( PT : 5 thn 3 bln5 thn 3 bln > JABATAN : PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk. > MASA KERJA : 5 thn 3 bln5 thn 3 bln )\",\"( PT : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. > JABATAN : Regional Project SupervisorRegional Project Supervisor > MASA KERJA : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. )( PT : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia > JABATAN : Project SupervisorProject Supervisor > MASA KERJA : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia )( PT : 1 thn 1 bln1 thn 1 bln > JABATAN : PT. Grasindo PratamaPT. Grasindo Pratama > MASA KERJA : 1 thn 1 bln1 thn 1 bln )( PT : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang > JABATAN : Engineer InternEngineer Intern > MASA KERJA : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang )\",\"( PT : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu > JABATAN : ManagerManager > MASA KERJA : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu )\",\"( PT : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan > JABATAN : ManagementManagement > MASA KERJA : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan )\",\"( PT : 5 bln5 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : 5 bln5 bln )( PT : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) > JABATAN : TrainerTrainer > MASA KERJA : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )( PT : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu > JABATAN : Assistant of Numerical Weather Prediction Method IIAssistant of Numerical Weather Prediction Method II > MASA KERJA : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )\",\"( PT : Purnawaktu 4 thn 2 blnPurnawaktu 4 thn 2 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : Purnawaktu 4 thn 2 blnPurnawaktu 4 thn 2 bln )( PT : Purnawaktu 2 thn 10 blnPurnawaktu 2 thn 10 bln > JABATAN : PT. Astra Graphia Information Technology (AGIT)PT. Astra Graphia Information Technology (AGIT) > MASA KERJA : Purnawaktu 2 thn 10 blnPurnawaktu 2 thn 10 bln )( PT : EAD LaboratoryEAD Laboratory > JABATAN : Laboratory AssistantLaboratory Assistant > MASA KERJA : EAD LaboratoryEAD Laboratory )( PT : PT Thortech Asia Software \\u00b7 Pekerja LepasPT Thortech Asia Software \\u00b7 Pekerja Lepas > JABATAN : Android Developer (Freelance)Android Developer (Freelance) > MASA KERJA : PT Thortech Asia Software \\u00b7 Pekerja LepasPT Thortech Asia Software \\u00b7 Pekerja Lepas )( PT : Telkomsel \\u00b7 MagangTelkomsel \\u00b7 Magang > JABATAN : Software Engineer (Internship)Software Engineer (Internship) > MASA KERJA : Telkomsel \\u00b7 MagangTelkomsel \\u00b7 Magang )\",\"( PT : Komerce \\u00b7 PurnawaktuKomerce \\u00b7 Purnawaktu > JABATAN : Associate Product ManagerAssociate Product Manager > MASA KERJA : Komerce \\u00b7 PurnawaktuKomerce \\u00b7 Purnawaktu )( PT : Gifera Odo Technology \\u00b7 PurnawaktuGifera Odo Technology \\u00b7 Purnawaktu > JABATAN : Website DeveloperWebsite Developer > MASA KERJA : Gifera Odo Technology \\u00b7 PurnawaktuGifera Odo Technology \\u00b7 Purnawaktu )( PT : Ivosights \\u00b7 MagangIvosights \\u00b7 Magang > JABATAN : User Interface DesignerUser Interface Designer > MASA KERJA : Ivosights \\u00b7 MagangIvosights \\u00b7 Magang )( PT : Universitas Sebelas Maret \\u00b7 MagangUniversitas Sebelas Maret \\u00b7 Magang > JABATAN : Network EngineerNetwork Engineer > MASA KERJA : Universitas Sebelas Maret \\u00b7 MagangUniversitas Sebelas Maret \\u00b7 Magang )\",\"( PT : Ericsson \\u00b7 PurnawaktuEricsson \\u00b7 Purnawaktu > JABATAN : Head of Network Support & Repair CU IDHead of Network Support & Repair CU ID > MASA KERJA : Ericsson \\u00b7 PurnawaktuEricsson \\u00b7 Purnawaktu )( PT : Ericcson IndonesiaEriccson Indonesia > JABATAN : ManagerManager > MASA KERJA : Ericcson IndonesiaEriccson Indonesia )\",\"( PT : Purnawaktu 1 thn 2 blnPurnawaktu 1 thn 2 bln > JABATAN : PT. PATIGENI KONSTRUKSI TELEKOMUNIKASIPT. PATIGENI KONSTRUKSI TELEKOMUNIKASI > MASA KERJA : Purnawaktu 1 thn 2 blnPurnawaktu 1 thn 2 bln )( PT : PT Wijaya Karya (Persero) TbkPT Wijaya Karya (Persero) Tbk > JABATAN : Technical Support System EngineerTechnical Support System Engineer > MASA KERJA : PT Wijaya Karya (Persero) TbkPT Wijaya Karya (Persero) Tbk )( PT : 6 thn 10 bln6 thn 10 bln > JABATAN : PT. Ericsson IndonesiaPT. Ericsson Indonesia > MASA KERJA : 6 thn 10 bln6 thn 10 bln )( PT : PT. CIPTAKOMUNINDO PRADIPTAPT. CIPTAKOMUNINDO PRADIPTA > JABATAN : Project CoordinatorProject Coordinator > MASA KERJA : PT. CIPTAKOMUNINDO PRADIPTAPT. CIPTAKOMUNINDO PRADIPTA )\",\"( PT : Purnawaktu 2 thn 5 blnPurnawaktu 2 thn 5 bln > JABATAN : Bank MegaBank Mega > MASA KERJA : Purnawaktu 2 thn 5 blnPurnawaktu 2 thn 5 bln )\"]', NULL, '2022-11-18 23:04:20'),
('63af74b1-d9eb-4e20-bf9f-a415293cbaa2', 'adf55787-195c-4a16-8f28-0bbf658e5b94', 'https://www.linkedin.com/in/deddy-triarvianto-09601340?miniProfileUrn=urn%3Ali%3Afs_miniProfile%3AACoAAAiLZbIBtqL7jHVHPmXvVzMZGgIyzWhGALA', 'Fy0ub3.html', 'https://www.linkedin.com/in/deddy-triarvianto-09601340/overlay/contact-info/', 'Fy0ub1.html', 'Fy0ub', 'Deddy Triarvianto', 'ManagerManager', 'Site Manager Kebersihan Gedung zona B DPR RI 2021 - 2022\nBuilding Manager Komisi Yudisial RI 2020\nOperation Manager PT.Sarana Tata Solusi\n\nAhli K3 Umum (HSE) \nGreenship Associate (green building council Indonesia) \nGreen Expert trainee\nK3 Penanggulangan Kebakaran (D) \nothers certificate of management (OHSAS) \nSKA Madya Pemeliharaan bangunan gedung (Jakarta) \nK3 Elevator trainee (disnaker jakarta pusat) \nCertificate of BHD & K3RS, PIRS (RS.Pelabuhan Jakarta)', 'N/A', 'N/A', 'linkedin.com/in/deddy-triarvianto-09601340', 'N/A', '[\"( PT : 5 thn 3 bln5 thn 3 bln > JABATAN : PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk. > MASA KERJA : 5 thn 3 bln5 thn 3 bln )\",\"( PT : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. > JABATAN : Regional Project SupervisorRegional Project Supervisor > MASA KERJA : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. )( PT : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia > JABATAN : Project SupervisorProject Supervisor > MASA KERJA : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia )( PT : 1 thn 1 bln1 thn 1 bln > JABATAN : PT. Grasindo PratamaPT. Grasindo Pratama > MASA KERJA : 1 thn 1 bln1 thn 1 bln )( PT : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang > JABATAN : Engineer InternEngineer Intern > MASA KERJA : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang )\",\"( PT : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu > JABATAN : ManagerManager > MASA KERJA : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu )\"]', NULL, '2022-11-18 23:04:19'),
('845d1d05-237c-4b30-abb3-9afaa13e80a8', 'adf55787-195c-4a16-8f28-0bbf658e5b94', 'https://www.linkedin.com/in/ACoAADRfDoMBRLEB_guq7944ZFB49L17s8sEroA?miniProfileUrn=urn%3Ali%3Afs_miniProfile%3AACoAADRfDoMBRLEB_guq7944ZFB49L17s8sEroA', 'Fy0ub4.html', 'https://www.linkedin.com/in/iqbal-kosasih-05730b206/overlay/contact-info/', 'Fy0ub1.html', 'Fy0ub', 'Iqbal Kosasih', 'ManagementManagement', NULL, '081211560334', 'iqbalkosasih06@gmail.com', 'linkedin.com/in/iqbal-kosasih-05730b206', 'baitulyataamafadlan.org', '[\"( PT : 5 thn 3 bln5 thn 3 bln > JABATAN : PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk. > MASA KERJA : 5 thn 3 bln5 thn 3 bln )\",\"( PT : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. > JABATAN : Regional Project SupervisorRegional Project Supervisor > MASA KERJA : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. )( PT : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia > JABATAN : Project SupervisorProject Supervisor > MASA KERJA : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia )( PT : 1 thn 1 bln1 thn 1 bln > JABATAN : PT. Grasindo PratamaPT. Grasindo Pratama > MASA KERJA : 1 thn 1 bln1 thn 1 bln )( PT : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang > JABATAN : Engineer InternEngineer Intern > MASA KERJA : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang )\",\"( PT : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu > JABATAN : ManagerManager > MASA KERJA : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu )\",\"( PT : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan > JABATAN : ManagementManagement > MASA KERJA : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan )\"]', NULL, '2022-11-18 23:04:19'),
('86cfc05c-0055-417c-a8d4-9deec99a98ff', 'adf55787-195c-4a16-8f28-0bbf658e5b94', 'https://www.linkedin.com/in/intan-ramadhanti-7960b7114?miniProfileUrn=urn%3Ali%3Afs_miniProfile%3AACoAABx9rqIBOc3D7PnuTNYvFGpU6S0pdOd7GFU', 'Fy0ub1.html', 'https://www.linkedin.com/in/intan-ramadhanti-7960b7114/overlay/contact-info/', 'Fy0ub1.html', 'Fy0ub', 'Intan Ramadhanti', 'PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk.', NULL, 'N/A', 'N/A', 'linkedin.com/in/intan-ramadhanti-7960b7114', 'N/A', '[\"( PT : 5 thn 3 bln5 thn 3 bln > JABATAN : PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk. > MASA KERJA : 5 thn 3 bln5 thn 3 bln )\"]', NULL, '2022-11-18 23:04:18'),
('ad11edad-42e6-4329-a124-8703eb1d8994', 'adf55787-195c-4a16-8f28-0bbf658e5b94', 'https://www.linkedin.com/in/ACoAAAhbW3QBl0BTb-xq42n_FLXpmLrFEXZUU68?miniProfileUrn=urn%3Ali%3Afs_miniProfile%3AACoAAAhbW3QBl0BTb-xq42n_FLXpmLrFEXZUU68', 'Fy0ub2.html', 'https://www.linkedin.com/in/bobby-s-hermawan/overlay/contact-info/', 'Fy0ub1.html', 'Fy0ub', 'Bobby Subroto Hermawan, B.Eng.', 'Engineer InternEngineer Intern', 'Experience in project management, mine building, and tower construction, store channel development construction project in retail industries. Solid organizational experience, accustomed to a fast-paced environment. Passionate about empowering people to achieve company goals and enabling strategies.\n\nGraduated from Universitas Diponegoro (UNDIP) with bachelor\'s degrees in Civil Engineering (B.Eng. / S.T.). Mainly focused on Construction Sector to improve skills of leadership, decision making, problem solving and project managing.', '081281831900', 'N/A', 'linkedin.com/in/bobby-s-hermawan', 'N/A', '[\"( PT : 5 thn 3 bln5 thn 3 bln > JABATAN : PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk. > MASA KERJA : 5 thn 3 bln5 thn 3 bln )\",\"( PT : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. > JABATAN : Regional Project SupervisorRegional Project Supervisor > MASA KERJA : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. )( PT : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia > JABATAN : Project SupervisorProject Supervisor > MASA KERJA : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia )( PT : 1 thn 1 bln1 thn 1 bln > JABATAN : PT. Grasindo PratamaPT. Grasindo Pratama > MASA KERJA : 1 thn 1 bln1 thn 1 bln )( PT : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang > JABATAN : Engineer InternEngineer Intern > MASA KERJA : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang )\"]', NULL, '2022-11-18 23:04:18'),
('b1a876cf-a882-41d0-bdb2-6c824cb5a15d', 'adf55787-195c-4a16-8f28-0bbf658e5b94', 'https://www.linkedin.com/in/ACoAAC_FQvcB464bfaz3bs-ATggIDb0l6KuFeDw?miniProfileUrn=urn%3Ali%3Afs_miniProfile%3AACoAAC_FQvcB464bfaz3bs-ATggIDb0l6KuFeDw', 'Fy0ub7.html', 'https://www.linkedin.com/in/somatighfar/overlay/contact-info/', 'Fy0ub1.html', 'Fy0ub', 'Soma Tighfar Abadi', 'Network EngineerNetwork Engineer', 'An enthusiast who has great interests in Product Management, Skills in project planning, is highly organized, problem solver, and has effective communication skills.\n\nI am very proud to be a Product Manager role because I can help many people solve their problems. Digital products that have many benefits will be used by many people. By participating in product development, it will be very meaningful for me to be able to contribute to communities in need. This makes the profession a very meaningful one. \n\nThank you. May the good news always be with us! \n\nOur Product in shipping sector Komship.id & Kompack.id in fullfillment service.', '089629873470', 'somatighfarabadi@gmail.com', 'linkedin.com/in/somatighfar', 'somatighfar.blogspot.com/', '[\"( PT : 5 thn 3 bln5 thn 3 bln > JABATAN : PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk. > MASA KERJA : 5 thn 3 bln5 thn 3 bln )\",\"( PT : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. > JABATAN : Regional Project SupervisorRegional Project Supervisor > MASA KERJA : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. )( PT : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia > JABATAN : Project SupervisorProject Supervisor > MASA KERJA : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia )( PT : 1 thn 1 bln1 thn 1 bln > JABATAN : PT. Grasindo PratamaPT. Grasindo Pratama > MASA KERJA : 1 thn 1 bln1 thn 1 bln )( PT : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang > JABATAN : Engineer InternEngineer Intern > MASA KERJA : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang )\",\"( PT : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu > JABATAN : ManagerManager > MASA KERJA : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu )\",\"( PT : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan > JABATAN : ManagementManagement > MASA KERJA : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan )\",\"( PT : 5 bln5 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : 5 bln5 bln )( PT : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) > JABATAN : TrainerTrainer > MASA KERJA : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )( PT : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu > JABATAN : Assistant of Numerical Weather Prediction Method IIAssistant of Numerical Weather Prediction Method II > MASA KERJA : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )\",\"( PT : Purnawaktu 4 thn 2 blnPurnawaktu 4 thn 2 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : Purnawaktu 4 thn 2 blnPurnawaktu 4 thn 2 bln )( PT : Purnawaktu 2 thn 10 blnPurnawaktu 2 thn 10 bln > JABATAN : PT. Astra Graphia Information Technology (AGIT)PT. Astra Graphia Information Technology (AGIT) > MASA KERJA : Purnawaktu 2 thn 10 blnPurnawaktu 2 thn 10 bln )( PT : EAD LaboratoryEAD Laboratory > JABATAN : Laboratory AssistantLaboratory Assistant > MASA KERJA : EAD LaboratoryEAD Laboratory )( PT : PT Thortech Asia Software \\u00b7 Pekerja LepasPT Thortech Asia Software \\u00b7 Pekerja Lepas > JABATAN : Android Developer (Freelance)Android Developer (Freelance) > MASA KERJA : PT Thortech Asia Software \\u00b7 Pekerja LepasPT Thortech Asia Software \\u00b7 Pekerja Lepas )( PT : Telkomsel \\u00b7 MagangTelkomsel \\u00b7 Magang > JABATAN : Software Engineer (Internship)Software Engineer (Internship) > MASA KERJA : Telkomsel \\u00b7 MagangTelkomsel \\u00b7 Magang )\",\"( PT : Komerce \\u00b7 PurnawaktuKomerce \\u00b7 Purnawaktu > JABATAN : Associate Product ManagerAssociate Product Manager > MASA KERJA : Komerce \\u00b7 PurnawaktuKomerce \\u00b7 Purnawaktu )( PT : Gifera Odo Technology \\u00b7 PurnawaktuGifera Odo Technology \\u00b7 Purnawaktu > JABATAN : Website DeveloperWebsite Developer > MASA KERJA : Gifera Odo Technology \\u00b7 PurnawaktuGifera Odo Technology \\u00b7 Purnawaktu )( PT : Ivosights \\u00b7 MagangIvosights \\u00b7 Magang > JABATAN : User Interface DesignerUser Interface Designer > MASA KERJA : Ivosights \\u00b7 MagangIvosights \\u00b7 Magang )( PT : Universitas Sebelas Maret \\u00b7 MagangUniversitas Sebelas Maret \\u00b7 Magang > JABATAN : Network EngineerNetwork Engineer > MASA KERJA : Universitas Sebelas Maret \\u00b7 MagangUniversitas Sebelas Maret \\u00b7 Magang )\"]', NULL, '2022-11-18 23:04:19'),
('ccdcb08d-4d7c-44da-9fe6-5d5ad16c8e4c', 'adf55787-195c-4a16-8f28-0bbf658e5b94', 'https://www.linkedin.com/in/ACoAAB8UwF0Bo-PdlQwZRu6BYRHra4PJ04J23mw?miniProfileUrn=urn%3Ali%3Afs_miniProfile%3AACoAAB8UwF0Bo-PdlQwZRu6BYRHra4PJ04J23mw', 'Fy0ub6.html', 'https://www.linkedin.com/in/abdulaziz050196/overlay/contact-info/', 'Fy0ub1.html', 'Fy0ub', 'Abdul Aziz', 'Software Engineer (Internship)Software Engineer (Internship)', 'Motivate to learn something new based on my passion and industry needed in team or independent, interest to upgrade my knowledge about everything both technical and non technical.', 'N/A', 'abdulaziz733@gmail.com', 'linkedin.com/in/abdulaziz050196', 'N/A', '[\"( PT : 5 thn 3 bln5 thn 3 bln > JABATAN : PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk. > MASA KERJA : 5 thn 3 bln5 thn 3 bln )\",\"( PT : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. > JABATAN : Regional Project SupervisorRegional Project Supervisor > MASA KERJA : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. )( PT : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia > JABATAN : Project SupervisorProject Supervisor > MASA KERJA : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia )( PT : 1 thn 1 bln1 thn 1 bln > JABATAN : PT. Grasindo PratamaPT. Grasindo Pratama > MASA KERJA : 1 thn 1 bln1 thn 1 bln )( PT : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang > JABATAN : Engineer InternEngineer Intern > MASA KERJA : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang )\",\"( PT : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu > JABATAN : ManagerManager > MASA KERJA : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu )\",\"( PT : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan > JABATAN : ManagementManagement > MASA KERJA : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan )\",\"( PT : 5 bln5 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : 5 bln5 bln )( PT : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) > JABATAN : TrainerTrainer > MASA KERJA : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )( PT : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu > JABATAN : Assistant of Numerical Weather Prediction Method IIAssistant of Numerical Weather Prediction Method II > MASA KERJA : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )\",\"( PT : Purnawaktu 4 thn 2 blnPurnawaktu 4 thn 2 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : Purnawaktu 4 thn 2 blnPurnawaktu 4 thn 2 bln )( PT : Purnawaktu 2 thn 10 blnPurnawaktu 2 thn 10 bln > JABATAN : PT. Astra Graphia Information Technology (AGIT)PT. Astra Graphia Information Technology (AGIT) > MASA KERJA : Purnawaktu 2 thn 10 blnPurnawaktu 2 thn 10 bln )( PT : EAD LaboratoryEAD Laboratory > JABATAN : Laboratory AssistantLaboratory Assistant > MASA KERJA : EAD LaboratoryEAD Laboratory )( PT : PT Thortech Asia Software \\u00b7 Pekerja LepasPT Thortech Asia Software \\u00b7 Pekerja Lepas > JABATAN : Android Developer (Freelance)Android Developer (Freelance) > MASA KERJA : PT Thortech Asia Software \\u00b7 Pekerja LepasPT Thortech Asia Software \\u00b7 Pekerja Lepas )( PT : Telkomsel \\u00b7 MagangTelkomsel \\u00b7 Magang > JABATAN : Software Engineer (Internship)Software Engineer (Internship) > MASA KERJA : Telkomsel \\u00b7 MagangTelkomsel \\u00b7 Magang )\"]', NULL, '2022-11-18 23:04:19'),
('e0d492df-f85a-479d-b49e-39cfe2412fb6', 'adf55787-195c-4a16-8f28-0bbf658e5b94', 'https://www.linkedin.com/in/ACoAAAi7NYEBDsj2fCMnkSyEwe2te9WwWivXwOg?miniProfileUrn=urn%3Ali%3Afs_miniProfile%3AACoAAAi7NYEBDsj2fCMnkSyEwe2te9WwWivXwOg', 'Fy0ub9.html', 'https://www.linkedin.com/in/irawan-45508441/overlay/contact-info/', 'Fy0ub1.html', 'Fy0ub', 'Irawan .', 'Project CoordinatorProject Coordinator', 'Professional experienced service engineer having wide experiences in both technical hardware and software\nstrong leadership,good communication, and problem solving capability\nAble to work with minimal supervision\n\nSpecialties: Network Implementation\nMS (Managed Services)\nGRAN (GSM Radio Access Network)\nWRAN (WCDMA Radio Access Network)\nTransmission System', '+62 8112818899', 'irawansmg@gmail.com', 'linkedin.com/in/irawan-45508441', 'N/A', '[\"( PT : 5 thn 3 bln5 thn 3 bln > JABATAN : PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk. > MASA KERJA : 5 thn 3 bln5 thn 3 bln )\",\"( PT : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. > JABATAN : Regional Project SupervisorRegional Project Supervisor > MASA KERJA : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. )( PT : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia > JABATAN : Project SupervisorProject Supervisor > MASA KERJA : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia )( PT : 1 thn 1 bln1 thn 1 bln > JABATAN : PT. Grasindo PratamaPT. Grasindo Pratama > MASA KERJA : 1 thn 1 bln1 thn 1 bln )( PT : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang > JABATAN : Engineer InternEngineer Intern > MASA KERJA : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang )\",\"( PT : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu > JABATAN : ManagerManager > MASA KERJA : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu )\",\"( PT : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan > JABATAN : ManagementManagement > MASA KERJA : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan )\",\"( PT : 5 bln5 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : 5 bln5 bln )( PT : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) > JABATAN : TrainerTrainer > MASA KERJA : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )( PT : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu > JABATAN : Assistant of Numerical Weather Prediction Method IIAssistant of Numerical Weather Prediction Method II > MASA KERJA : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )\",\"( PT : Purnawaktu 4 thn 2 blnPurnawaktu 4 thn 2 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : Purnawaktu 4 thn 2 blnPurnawaktu 4 thn 2 bln )( PT : Purnawaktu 2 thn 10 blnPurnawaktu 2 thn 10 bln > JABATAN : PT. Astra Graphia Information Technology (AGIT)PT. Astra Graphia Information Technology (AGIT) > MASA KERJA : Purnawaktu 2 thn 10 blnPurnawaktu 2 thn 10 bln )( PT : EAD LaboratoryEAD Laboratory > JABATAN : Laboratory AssistantLaboratory Assistant > MASA KERJA : EAD LaboratoryEAD Laboratory )( PT : PT Thortech Asia Software \\u00b7 Pekerja LepasPT Thortech Asia Software \\u00b7 Pekerja Lepas > JABATAN : Android Developer (Freelance)Android Developer (Freelance) > MASA KERJA : PT Thortech Asia Software \\u00b7 Pekerja LepasPT Thortech Asia Software \\u00b7 Pekerja Lepas )( PT : Telkomsel \\u00b7 MagangTelkomsel \\u00b7 Magang > JABATAN : Software Engineer (Internship)Software Engineer (Internship) > MASA KERJA : Telkomsel \\u00b7 MagangTelkomsel \\u00b7 Magang )\",\"( PT : Komerce \\u00b7 PurnawaktuKomerce \\u00b7 Purnawaktu > JABATAN : Associate Product ManagerAssociate Product Manager > MASA KERJA : Komerce \\u00b7 PurnawaktuKomerce \\u00b7 Purnawaktu )( PT : Gifera Odo Technology \\u00b7 PurnawaktuGifera Odo Technology \\u00b7 Purnawaktu > JABATAN : Website DeveloperWebsite Developer > MASA KERJA : Gifera Odo Technology \\u00b7 PurnawaktuGifera Odo Technology \\u00b7 Purnawaktu )( PT : Ivosights \\u00b7 MagangIvosights \\u00b7 Magang > JABATAN : User Interface DesignerUser Interface Designer > MASA KERJA : Ivosights \\u00b7 MagangIvosights \\u00b7 Magang )( PT : Universitas Sebelas Maret \\u00b7 MagangUniversitas Sebelas Maret \\u00b7 Magang > JABATAN : Network EngineerNetwork Engineer > MASA KERJA : Universitas Sebelas Maret \\u00b7 MagangUniversitas Sebelas Maret \\u00b7 Magang )\",\"( PT : Ericsson \\u00b7 PurnawaktuEricsson \\u00b7 Purnawaktu > JABATAN : Head of Network Support & Repair CU IDHead of Network Support & Repair CU ID > MASA KERJA : Ericsson \\u00b7 PurnawaktuEricsson \\u00b7 Purnawaktu )( PT : Ericcson IndonesiaEriccson Indonesia > JABATAN : ManagerManager > MASA KERJA : Ericcson IndonesiaEriccson Indonesia )\",\"( PT : Purnawaktu 1 thn 2 blnPurnawaktu 1 thn 2 bln > JABATAN : PT. PATIGENI KONSTRUKSI TELEKOMUNIKASIPT. PATIGENI KONSTRUKSI TELEKOMUNIKASI > MASA KERJA : Purnawaktu 1 thn 2 blnPurnawaktu 1 thn 2 bln )( PT : PT Wijaya Karya (Persero) TbkPT Wijaya Karya (Persero) Tbk > JABATAN : Technical Support System EngineerTechnical Support System Engineer > MASA KERJA : PT Wijaya Karya (Persero) TbkPT Wijaya Karya (Persero) Tbk )( PT : 6 thn 10 bln6 thn 10 bln > JABATAN : PT. Ericsson IndonesiaPT. Ericsson Indonesia > MASA KERJA : 6 thn 10 bln6 thn 10 bln )( PT : PT. CIPTAKOMUNINDO PRADIPTAPT. CIPTAKOMUNINDO PRADIPTA > JABATAN : Project CoordinatorProject Coordinator > MASA KERJA : PT. CIPTAKOMUNINDO PRADIPTAPT. CIPTAKOMUNINDO PRADIPTA )\"]', NULL, '2022-11-18 23:04:20'),
('f03843a9-5919-4c69-97fb-6b10a9963631', 'adf55787-195c-4a16-8f28-0bbf658e5b94', 'https://www.linkedin.com/in/nabila-alfi-al-halimy?miniProfileUrn=urn%3Ali%3Afs_miniProfile%3AACoAADJ3SS8BW-a4H_SXOMii9TYnVCOMLoKlIIE', 'Fy0ub5.html', 'https://www.linkedin.com/in/nabila-alfi-al-halimy/overlay/contact-info/', 'Fy0ub1.html', 'Fy0ub', 'Nabila Alfi Al Halimy', 'Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB)', NULL, 'N/A', 'N/A', 'linkedin.com/in/nabila-alfi-al-halimy', 'N/A', '[\"( PT : 5 thn 3 bln5 thn 3 bln > JABATAN : PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk. > MASA KERJA : 5 thn 3 bln5 thn 3 bln )\",\"( PT : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. > JABATAN : Regional Project SupervisorRegional Project Supervisor > MASA KERJA : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. )( PT : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia > JABATAN : Project SupervisorProject Supervisor > MASA KERJA : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia )( PT : 1 thn 1 bln1 thn 1 bln > JABATAN : PT. Grasindo PratamaPT. Grasindo Pratama > MASA KERJA : 1 thn 1 bln1 thn 1 bln )( PT : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang > JABATAN : Engineer InternEngineer Intern > MASA KERJA : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang )\",\"( PT : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu > JABATAN : ManagerManager > MASA KERJA : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu )\",\"( PT : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan > JABATAN : ManagementManagement > MASA KERJA : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan )\",\"( PT : 5 bln5 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : 5 bln5 bln )( PT : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) > JABATAN : TrainerTrainer > MASA KERJA : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )( PT : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu > JABATAN : Assistant of Numerical Weather Prediction Method IIAssistant of Numerical Weather Prediction Method II > MASA KERJA : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )\"]', NULL, '2022-11-18 23:04:19'),
('f69980b6-fdd6-4d24-adcd-7381af3580a0', 'adf55787-195c-4a16-8f28-0bbf658e5b94', 'https://www.linkedin.com/in/maming-yunianto-55a0839?miniProfileUrn=urn%3Ali%3Afs_miniProfile%3AACoAAAGcr1YBeTW0hMsyxnNOzblj8UJxtFtGKzE', 'Fy0ub8.html', 'https://www.linkedin.com/in/maming-yunianto-55a0839/overlay/contact-info/', 'Fy0ub1.html', 'Fy0ub', 'Maming Yunianto', 'ManagerManager', NULL, 'N/A', 'N/A', 'linkedin.com/in/maming-yunianto-55a0839', 'N/A', '[\"( PT : 5 thn 3 bln5 thn 3 bln > JABATAN : PT. BANK NEGARA INDONESIA (Persero) Tbk.PT. BANK NEGARA INDONESIA (Persero) Tbk. > MASA KERJA : 5 thn 3 bln5 thn 3 bln )\",\"( PT : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. > JABATAN : Regional Project SupervisorRegional Project Supervisor > MASA KERJA : PT. Erajaya Swasembada, Tbk.PT. Erajaya Swasembada, Tbk. )( PT : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia > JABATAN : Project SupervisorProject Supervisor > MASA KERJA : PT. ZMG Telekomunikasi Servise IndonesiaPT. ZMG Telekomunikasi Servise Indonesia )( PT : 1 thn 1 bln1 thn 1 bln > JABATAN : PT. Grasindo PratamaPT. Grasindo Pratama > MASA KERJA : 1 thn 1 bln1 thn 1 bln )( PT : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang > JABATAN : Engineer InternEngineer Intern > MASA KERJA : PT. Catur Bangun Mandiri \\u00b7 MagangPT. Catur Bangun Mandiri \\u00b7 Magang )\",\"( PT : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu > JABATAN : ManagerManager > MASA KERJA : PT Sarana Tata Solusi \\u00b7 PurnawaktuPT Sarana Tata Solusi \\u00b7 Purnawaktu )\",\"( PT : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan > JABATAN : ManagementManagement > MASA KERJA : Yayasan Baitul Yataama FadlanYayasan Baitul Yataama Fadlan )\",\"( PT : 5 bln5 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : 5 bln5 bln )( PT : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) > JABATAN : TrainerTrainer > MASA KERJA : Badan Meteorologi Klimatologi dan Geofisika (BMKG)Badan Meteorologi Klimatologi dan Geofisika (BMKG) )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )( PT : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu > JABATAN : Assistant of Numerical Weather Prediction Method IIAssistant of Numerical Weather Prediction Method II > MASA KERJA : Institut Teknologi Bandung (ITB) \\u00b7 Paruh WaktuInstitut Teknologi Bandung (ITB) \\u00b7 Paruh Waktu )( PT : Paruh Waktu 10 blnParuh Waktu 10 bln > JABATAN : Institut Teknologi Bandung (ITB)Institut Teknologi Bandung (ITB) > MASA KERJA : Paruh Waktu 10 blnParuh Waktu 10 bln )\",\"( PT : Purnawaktu 4 thn 2 blnPurnawaktu 4 thn 2 bln > JABATAN : PT Astra International TbkPT Astra International Tbk > MASA KERJA : Purnawaktu 4 thn 2 blnPurnawaktu 4 thn 2 bln )( PT : Purnawaktu 2 thn 10 blnPurnawaktu 2 thn 10 bln > JABATAN : PT. Astra Graphia Information Technology (AGIT)PT. Astra Graphia Information Technology (AGIT) > MASA KERJA : Purnawaktu 2 thn 10 blnPurnawaktu 2 thn 10 bln )( PT : EAD LaboratoryEAD Laboratory > JABATAN : Laboratory AssistantLaboratory Assistant > MASA KERJA : EAD LaboratoryEAD Laboratory )( PT : PT Thortech Asia Software \\u00b7 Pekerja LepasPT Thortech Asia Software \\u00b7 Pekerja Lepas > JABATAN : Android Developer (Freelance)Android Developer (Freelance) > MASA KERJA : PT Thortech Asia Software \\u00b7 Pekerja LepasPT Thortech Asia Software \\u00b7 Pekerja Lepas )( PT : Telkomsel \\u00b7 MagangTelkomsel \\u00b7 Magang > JABATAN : Software Engineer (Internship)Software Engineer (Internship) > MASA KERJA : Telkomsel \\u00b7 MagangTelkomsel \\u00b7 Magang )\",\"( PT : Komerce \\u00b7 PurnawaktuKomerce \\u00b7 Purnawaktu > JABATAN : Associate Product ManagerAssociate Product Manager > MASA KERJA : Komerce \\u00b7 PurnawaktuKomerce \\u00b7 Purnawaktu )( PT : Gifera Odo Technology \\u00b7 PurnawaktuGifera Odo Technology \\u00b7 Purnawaktu > JABATAN : Website DeveloperWebsite Developer > MASA KERJA : Gifera Odo Technology \\u00b7 PurnawaktuGifera Odo Technology \\u00b7 Purnawaktu )( PT : Ivosights \\u00b7 MagangIvosights \\u00b7 Magang > JABATAN : User Interface DesignerUser Interface Designer > MASA KERJA : Ivosights \\u00b7 MagangIvosights \\u00b7 Magang )( PT : Universitas Sebelas Maret \\u00b7 MagangUniversitas Sebelas Maret \\u00b7 Magang > JABATAN : Network EngineerNetwork Engineer > MASA KERJA : Universitas Sebelas Maret \\u00b7 MagangUniversitas Sebelas Maret \\u00b7 Magang )\",\"( PT : Ericsson \\u00b7 PurnawaktuEricsson \\u00b7 Purnawaktu > JABATAN : Head of Network Support & Repair CU IDHead of Network Support & Repair CU ID > MASA KERJA : Ericsson \\u00b7 PurnawaktuEricsson \\u00b7 Purnawaktu )( PT : Ericcson IndonesiaEriccson Indonesia > JABATAN : ManagerManager > MASA KERJA : Ericcson IndonesiaEriccson Indonesia )\"]', NULL, '2022-11-18 23:04:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transpool`
--

CREATE TABLE `transpool` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_profile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_overlay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `crap`
--
ALTER TABLE `crap`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transpool`
--
ALTER TABLE `transpool`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `transpool`
--
ALTER TABLE `transpool`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

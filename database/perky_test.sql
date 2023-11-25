-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2023 at 05:16 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perky_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Problem solving', NULL, NULL),
(2, 'Supporting a loved one', NULL, NULL),
(3, 'Sports accomplishments ', NULL, NULL),
(4, 'Overcome a challenge', NULL, NULL),
(5, 'Realize your goals', NULL, NULL),
(6, 'Help you land a job interview', NULL, NULL),
(7, 'Facilitate a career change', NULL, NULL),
(8, 'Land your first job after college', NULL, NULL),
(9, 'Learned a new language', NULL, NULL),
(10, 'Organized an event to raise money for charity', NULL, NULL),
(11, 'Earned a new degree or certification while working full-time', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `achievement_employee`
--

CREATE TABLE `achievement_employee` (
  `id` bigint UNSIGNED NOT NULL,
  `achievement_id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `achievement_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievement_employee`
--

INSERT INTO `achievement_employee` (`id`, `achievement_id`, `employee_id`, `achievement_date`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2023-11-25', NULL, NULL),
(2, 8, 1, '2023-11-25', NULL, NULL),
(3, 6, 1, '2023-11-25', NULL, NULL),
(4, 3, 1, '2023-11-25', NULL, NULL),
(5, 7, 1, '2023-11-25', NULL, NULL),
(6, 11, 1, '2023-11-25', NULL, NULL),
(7, 2, 1, '2023-11-25', NULL, NULL),
(8, 10, 1, '2023-11-25', NULL, NULL),
(9, 9, 1, '2023-11-25', NULL, NULL),
(10, 5, 1, '2023-11-25', NULL, NULL),
(11, 2, 2, '2023-11-25', NULL, NULL),
(12, 2, 3, '2023-11-25', NULL, NULL),
(13, 8, 3, '2023-11-25', NULL, NULL),
(14, 3, 3, '2023-11-25', NULL, NULL),
(15, 6, 3, '2023-11-25', NULL, NULL),
(16, 4, 3, '2023-11-25', NULL, NULL),
(17, 11, 3, '2023-11-25', NULL, NULL),
(18, 6, 4, '2023-11-25', NULL, NULL),
(19, 8, 4, '2023-11-25', NULL, NULL),
(20, 5, 4, '2023-11-25', NULL, NULL),
(21, 7, 4, '2023-11-25', NULL, NULL),
(22, 10, 4, '2023-11-25', NULL, NULL),
(23, 5, 5, '2023-11-25', NULL, NULL),
(24, 11, 5, '2023-11-25', NULL, NULL),
(25, 7, 5, '2023-11-25', NULL, NULL),
(26, 1, 5, '2023-11-25', NULL, NULL),
(27, 4, 5, '2023-11-25', NULL, NULL),
(28, 6, 6, '2023-11-25', NULL, NULL),
(29, 9, 6, '2023-11-25', NULL, NULL),
(30, 9, 7, '2023-11-25', NULL, NULL),
(31, 1, 7, '2023-11-25', NULL, NULL),
(32, 3, 7, '2023-11-25', NULL, NULL),
(33, 7, 7, '2023-11-25', NULL, NULL),
(34, 10, 8, '2023-11-25', NULL, NULL),
(35, 11, 8, '2023-11-25', NULL, NULL),
(36, 1, 8, '2023-11-25', NULL, NULL),
(37, 5, 8, '2023-11-25', NULL, NULL),
(38, 5, 9, '2023-11-25', NULL, NULL),
(39, 7, 10, '2023-11-25', NULL, NULL),
(40, 9, 10, '2023-11-25', NULL, NULL),
(41, 6, 10, '2023-11-25', NULL, NULL),
(42, 8, 10, '2023-11-25', NULL, NULL),
(43, 1, 10, '2023-11-25', NULL, NULL),
(44, 7, 11, '2023-11-25', NULL, NULL),
(45, 2, 11, '2023-11-25', NULL, NULL),
(46, 6, 11, '2023-11-25', NULL, NULL),
(47, 9, 11, '2023-11-25', NULL, NULL),
(48, 11, 12, '2023-11-25', NULL, NULL),
(49, 9, 12, '2023-11-25', NULL, NULL),
(50, 10, 13, '2023-11-25', NULL, NULL),
(51, 11, 13, '2023-11-25', NULL, NULL),
(52, 2, 13, '2023-11-25', NULL, NULL),
(53, 1, 13, '2023-11-25', NULL, NULL),
(54, 7, 13, '2023-11-25', NULL, NULL),
(55, 8, 13, '2023-11-25', NULL, NULL),
(56, 4, 13, '2023-11-25', NULL, NULL),
(57, 6, 13, '2023-11-25', NULL, NULL),
(58, 1, 14, '2023-11-25', NULL, NULL),
(59, 11, 14, '2023-11-25', NULL, NULL),
(60, 3, 14, '2023-11-25', NULL, NULL),
(61, 5, 14, '2023-11-25', NULL, NULL),
(62, 9, 14, '2023-11-25', NULL, NULL),
(63, 6, 14, '2023-11-25', NULL, NULL),
(64, 2, 14, '2023-11-25', NULL, NULL),
(65, 8, 14, '2023-11-25', NULL, NULL),
(66, 10, 14, '2023-11-25', NULL, NULL),
(67, 11, 15, '2023-11-25', NULL, NULL),
(68, 5, 15, '2023-11-25', NULL, NULL),
(69, 8, 15, '2023-11-25', NULL, NULL),
(70, 3, 15, '2023-11-25', NULL, NULL),
(71, 9, 15, '2023-11-25', NULL, NULL),
(72, 7, 15, '2023-11-25', NULL, NULL),
(73, 10, 15, '2023-11-25', NULL, NULL),
(74, 4, 15, '2023-11-25', NULL, NULL),
(75, 6, 15, '2023-11-25', NULL, NULL),
(76, 4, 16, '2023-11-25', NULL, NULL),
(77, 1, 16, '2023-11-25', NULL, NULL),
(78, 6, 16, '2023-11-25', NULL, NULL),
(79, 3, 16, '2023-11-25', NULL, NULL),
(80, 11, 16, '2023-11-25', NULL, NULL),
(81, 5, 16, '2023-11-25', NULL, NULL),
(82, 7, 16, '2023-11-25', NULL, NULL),
(83, 2, 16, '2023-11-25', NULL, NULL),
(84, 9, 16, '2023-11-25', NULL, NULL),
(85, 10, 16, '2023-11-25', NULL, NULL),
(86, 4, 17, '2023-11-25', NULL, NULL),
(87, 9, 17, '2023-11-25', NULL, NULL),
(88, 8, 18, '2023-11-25', NULL, NULL),
(89, 6, 19, '2023-11-25', NULL, NULL),
(90, 11, 19, '2023-11-25', NULL, NULL),
(91, 9, 19, '2023-11-25', NULL, NULL),
(92, 8, 19, '2023-11-25', NULL, NULL),
(93, 1, 19, '2023-11-25', NULL, NULL),
(104, 7, 21, '2023-11-25', NULL, NULL),
(105, 10, 21, '2023-11-25', NULL, NULL),
(106, 6, 21, '2023-11-25', NULL, NULL),
(107, 11, 21, '2023-11-25', NULL, NULL),
(108, 5, 21, '2023-11-25', NULL, NULL),
(109, 4, 21, '2023-11-25', NULL, NULL),
(110, 6, 22, '2023-11-25', NULL, NULL),
(111, 11, 22, '2023-11-25', NULL, NULL),
(112, 10, 22, '2023-11-25', NULL, NULL),
(113, 10, 23, '2023-11-25', NULL, NULL),
(114, 8, 23, '2023-11-25', NULL, NULL),
(115, 1, 23, '2023-11-25', NULL, NULL),
(116, 11, 23, '2023-11-25', NULL, NULL),
(117, 9, 23, '2023-11-25', NULL, NULL),
(118, 6, 24, '2023-11-25', NULL, NULL),
(119, 8, 24, '2023-11-25', NULL, NULL),
(120, 7, 24, '2023-11-25', NULL, NULL),
(121, 10, 24, '2023-11-25', NULL, NULL),
(122, 8, 25, '2023-11-25', NULL, NULL),
(123, 6, 25, '2023-11-25', NULL, NULL),
(124, 10, 25, '2023-11-25', NULL, NULL),
(125, 5, 25, '2023-11-25', NULL, NULL),
(126, 9, 25, '2023-11-25', NULL, NULL),
(127, 1, 25, '2023-11-25', NULL, NULL),
(128, 4, 25, '2023-11-25', NULL, NULL),
(129, 11, 25, '2023-11-25', NULL, NULL),
(134, 2, 27, '2023-11-25', NULL, NULL),
(135, 1, 27, '2023-11-25', NULL, NULL),
(136, 5, 27, '2023-11-25', NULL, NULL),
(137, 8, 27, '2023-11-25', NULL, NULL),
(138, 10, 27, '2023-11-25', NULL, NULL),
(139, 9, 27, '2023-11-25', NULL, NULL),
(140, 7, 27, '2023-11-25', NULL, NULL),
(141, 8, 28, '2023-11-25', NULL, NULL),
(142, 5, 28, '2023-11-25', NULL, NULL),
(143, 1, 28, '2023-11-25', NULL, NULL),
(144, 7, 28, '2023-11-25', NULL, NULL),
(145, 2, 28, '2023-11-25', NULL, NULL),
(146, 3, 28, '2023-11-25', NULL, NULL),
(147, 10, 28, '2023-11-25', NULL, NULL),
(148, 3, 29, '2023-11-25', NULL, NULL),
(149, 11, 29, '2023-11-25', NULL, NULL),
(150, 1, 29, '2023-11-25', NULL, NULL),
(151, 7, 29, '2023-11-25', NULL, NULL),
(152, 5, 29, '2023-11-25', NULL, NULL),
(153, 10, 29, '2023-11-25', NULL, NULL),
(154, 6, 29, '2023-11-25', NULL, NULL),
(155, 8, 29, '2023-11-25', NULL, NULL),
(156, 2, 29, '2023-11-25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departmets`
--

CREATE TABLE `departmets` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departmets`
--

INSERT INTO `departmets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HR', NULL, NULL),
(2, 'Software Department', NULL, NULL),
(3, 'Civil Department', NULL, NULL),
(4, 'Android Department', NULL, NULL),
(5, 'SQA', NULL, NULL),
(6, 'Data Entry', NULL, NULL),
(7, 'Artificial intelligence (AI)', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `department_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'Aaliyah Smith MD', 'travon86@example.org', '1-714-521-2846', 'Quidem explicabo quia dolorum ut architecto quia.', 5, '2023-11-25 09:59:15', '2023-11-25 09:59:15'),
(2, 'Mr. Wilburn Greenfelder V', 'mohammad.trantow@example.com', '+1-920-332-1201', 'Quas ex sequi est voluptas quos provident.', 5, '2023-11-25 09:59:16', '2023-11-25 09:59:16'),
(3, 'Magali Parisian', 'ledner.claud@example.net', '856-756-4916', 'Harum eos sed sit culpa ex nam.', 5, '2023-11-25 09:59:16', '2023-11-25 09:59:16'),
(4, 'Prof. Murphy Conroy PhD', 'belle38@example.net', '+1-956-596-0859', 'Sint architecto laborum qui delectus molestias aut in.', 4, '2023-11-25 09:59:17', '2023-11-25 09:59:17'),
(5, 'Jalyn Heller', 'nhomenick@example.com', '(680) 819-1381', 'Unde temporibus eos dolorem rerum.', 4, '2023-11-25 09:59:18', '2023-11-25 09:59:18'),
(6, 'Mrs. Chaya Barrows Sr.', 'aortiz@example.org', '725.322.0769', 'Rerum ratione rerum consequatur porro.', 1, '2023-11-25 09:59:19', '2023-11-25 09:59:19'),
(7, 'Kenya Kohler II', 'emmanuelle91@example.net', '540.947.1903', 'Asperiores minima in architecto sed enim magnam rerum dolorem.', 1, '2023-11-25 09:59:19', '2023-11-25 09:59:19'),
(8, 'Dr. Maximilian White', 'vernon.breitenberg@example.net', '(678) 381-5475', 'Porro corporis animi omnis consequatur sunt.', 4, '2023-11-25 09:59:20', '2023-11-25 09:59:20'),
(9, 'Kole Kunze', 'windler.hollie@example.net', '815-228-5857', 'Et totam facere sed occaecati non enim ut eligendi.', 2, '2023-11-25 09:59:21', '2023-11-25 09:59:21'),
(10, 'Ransom Stokes', 'kgleason@example.net', '818-414-4369', 'Quasi fuga sit aut id est ea aut.', 1, '2023-11-25 09:59:22', '2023-11-25 09:59:22'),
(11, 'Josie Jacobi II', 'catalina24@example.com', '(541) 541-8466', 'Enim molestias omnis modi voluptates blanditiis sed.', 2, '2023-11-25 09:59:23', '2023-11-25 09:59:23'),
(12, 'Aiyana Wisoky IV', 'kyle65@example.com', '+1 (860) 214-8721', 'Natus eum hic quasi ad.', 2, '2023-11-25 09:59:24', '2023-11-25 09:59:24'),
(13, 'Beth Fay', 'federico.predovic@example.com', '+1-304-365-9802', 'Et nihil ea pariatur impedit repellat quidem.', 3, '2023-11-25 09:59:24', '2023-11-25 09:59:24'),
(14, 'Wyman Sipes II', 'anderson.sincere@example.org', '+1 (435) 688-2358', 'Vel ipsum nulla ut voluptas vitae alias dolorem.', 4, '2023-11-25 09:59:25', '2023-11-25 09:59:25'),
(15, 'Mrs. Lilliana Gerhold', 'tbalistreri@example.org', '1-430-870-5300', 'Quo voluptatem aut voluptate quia labore sed quibusdam.', 3, '2023-11-25 09:59:26', '2023-11-25 09:59:26'),
(16, 'Violette Powlowski', 'schroeder.luther@example.com', '+1.231.214.5177', 'Assumenda perferendis officiis omnis totam repellendus laborum expedita.', 4, '2023-11-25 09:59:27', '2023-11-25 09:59:27'),
(17, 'Jayden Glover', 'marks.lera@example.com', '(737) 619-6018', 'Rerum explicabo eligendi adipisci explicabo.', 3, '2023-11-25 09:59:28', '2023-11-25 09:59:28'),
(18, 'Dr. Mario Smitham', 'ybergstrom@example.org', '(507) 887-4765', 'Voluptates et voluptatibus corporis.', 2, '2023-11-25 09:59:28', '2023-11-25 09:59:28'),
(19, 'Jessyca Mueller', 'stoltenberg.meagan@example.org', '+13057696146', 'Nihil totam voluptates sed dolores accusantium voluptas.', 4, '2023-11-25 09:59:28', '2023-11-25 09:59:28'),
(20, 'Kaycee Breitenberg', 'dach.darion@example.net', '+1-754-417-1794', 'Veniam tempora provident similique.', 3, '2023-11-25 09:59:29', '2023-11-25 11:13:56'),
(21, 'Reanna Cummings', 'zelma68@example.com', '+1.802.998.0743', 'Expedita delectus vitae est non.', 3, '2023-11-25 09:59:29', '2023-11-25 09:59:29'),
(22, 'Roman Bechtelar', 'ladarius.waelchi@example.com', '+1-628-221-2201', 'Pariatur nihil iure quo voluptas enim aut.', 2, '2023-11-25 09:59:30', '2023-11-25 09:59:30'),
(23, 'Prof. Angel Kunde', 'karson79@example.net', '+1 (408) 806-5786', 'A est cupiditate harum minima et beatae aut.', 4, '2023-11-25 09:59:30', '2023-11-25 09:59:30'),
(24, 'Jimmy Kiehn', 'jaylon10@example.com', '585.284.5032', 'Aut corporis occaecati consequatur perspiciatis in.', 5, '2023-11-25 09:59:31', '2023-11-25 09:59:31'),
(25, 'Lillie Kozey', 'hthiel@example.org', '1-785-815-2816', 'Sunt dolore veniam sit velit.', 4, '2023-11-25 09:59:31', '2023-11-25 09:59:31'),
(26, 'Freddie Ondricka', 'walker.molly@example.org', '276.673.7971', 'Aut dolores et ad quia rerum dicta.', 6, '2023-11-25 09:59:32', '2023-11-25 11:13:32'),
(27, 'Miss Carlotta Beatty', 'ferry.pearlie@example.net', '262.441.6479', 'Numquam sit dolorem at porro distinctio molestias qui.', 1, '2023-11-25 09:59:32', '2023-11-25 09:59:32'),
(28, 'Cleta Nitzsche', 'lilla89@example.org', '747.784.3373', 'Veniam exercitationem est dolorem impedit debitis aut animi.', 3, '2023-11-25 09:59:33', '2023-11-25 09:59:33'),
(29, 'Dr. Lowell Aufderhar PhD', 'dayne.ward@example.com', '1-412-565-3143', 'Animi laborum quis autem laudantium dignissimos possimus.', 2, '2023-11-25 09:59:34', '2023-11-25 09:59:34'),
(30, 'Lydia Giles', 'poqofa@mailinator.com', '+1 (354) 268-3616', 'Qui consectetur sit', 1, '2023-11-25 10:12:17', '2023-11-25 11:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_23_162151_create_employees_table', 1),
(6, '2023_11_23_162417_create_departmets_table', 1),
(7, '2023_11_23_162524_create_achievements_table', 1),
(8, '2023_11_23_162616_create_achievement_employee_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Super Admin', 'superadmin@gmail.com', NULL, '$2y$12$VR2Q9ttNckQYQjj5ZavTGudVqkkZunncqPowbl/m493DaXAM1LZV6', NULL, NULL, NULL),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$12$S4QZOHBjFjpkmnOQTbuvVuhsicCKhllWblfXp5Bgx21YnFh4LyRIq', NULL, NULL, NULL),
(3, 'Guest', 'guest@gmail.com', NULL, '$2y$12$G7R4o0222N90kY583FA0H.2Lp.UL3SwI69ctR7gwcy1K3ZoZA1Uaq', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achievement_employee`
--
ALTER TABLE `achievement_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `achievement_employee_achievement_id_foreign` (`achievement_id`),
  ADD KEY `achievement_employee_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `departmets`
--
ALTER TABLE `departmets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `achievement_employee`
--
ALTER TABLE `achievement_employee`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `departmets`
--
ALTER TABLE `departmets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achievement_employee`
--
ALTER TABLE `achievement_employee`
  ADD CONSTRAINT `achievement_employee_achievement_id_foreign` FOREIGN KEY (`achievement_id`) REFERENCES `achievements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `achievement_employee_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

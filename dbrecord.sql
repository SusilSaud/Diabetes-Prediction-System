-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 01:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrecord`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add diabetes data', 7, 'add_diabetesdata'),
(26, 'Can change diabetes data', 7, 'change_diabetesdata'),
(27, 'Can delete diabetes data', 7, 'delete_diabetesdata'),
(28, 'Can view diabetes data', 7, 'view_diabetesdata');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(5, '2023-06-28 13:29:36.681096', '9', 'susil', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Age\", \"Gender\"]}}]', 6, 9),
(6, '2023-06-28 13:30:51.190602', '6', 'rama', 3, '', 6, 9),
(7, '2023-06-28 13:31:03.373918', '5', 'raj', 3, '', 6, 9),
(8, '2023-06-28 13:31:03.377968', '4', 'sita', 3, '', 6, 9),
(9, '2023-06-28 13:31:03.380309', '2', 'ram', 3, '', 6, 9),
(10, '2023-06-28 13:31:03.385728', '1', 'amrit', 3, '', 6, 9),
(11, '2023-07-01 07:57:48.969580', '3', 'DiabetesData object (3)', 3, '', 7, 9),
(12, '2023-07-01 07:57:48.979083', '2', 'DiabetesData object (2)', 3, '', 7, 9),
(13, '2023-07-01 07:57:48.983647', '1', 'DiabetesData object (1)', 3, '', 7, 9),
(14, '2023-07-01 08:11:18.174777', '6', 'DiabetesData - ID: 6, User: amrit', 3, '', 7, 9),
(15, '2023-07-01 08:12:16.268909', '7', 'DiabetesData - ID: 7, User: susil', 3, '', 7, 9),
(16, '2023-07-03 15:14:06.840258', '11', 'amrit', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 9),
(17, '2023-07-03 15:20:59.149671', '11', 'amrit', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 9),
(18, '2023-07-10 18:54:05.617549', '11', 'amrit', 2, '[{\"changed\": {\"fields\": [\"Profile image\"]}}]', 6, 9),
(19, '2023-07-10 18:59:00.451302', '15', 'shanta', 2, '[{\"changed\": {\"fields\": [\"Profile image\"]}}]', 6, 9),
(20, '2023-07-10 20:08:53.302648', '18', 'ram', 3, '', 6, 9),
(21, '2023-07-10 20:09:11.588619', '15', 'shanta', 2, '[{\"changed\": {\"fields\": [\"Profile image\"]}}]', 6, 9),
(22, '2023-07-10 20:09:24.061085', '15', 'shanta', 2, '[{\"changed\": {\"fields\": [\"Profile image\"]}}]', 6, 9),
(23, '2023-07-15 12:09:36.626266', '9', 'susil', 2, '[{\"changed\": {\"fields\": [\"Profile image\"]}}]', 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'webapp', 'customuser'),
(7, 'webapp', 'diabetesdata');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-27 04:12:22.687967'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-06-27 04:12:22.759716'),
(3, 'auth', '0001_initial', '2023-06-27 04:12:23.079664'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-06-27 04:12:23.154952'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-06-27 04:12:23.195979'),
(6, 'auth', '0004_alter_user_username_opts', '2023-06-27 04:12:23.205672'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-06-27 04:12:23.214664'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-06-27 04:12:23.218028'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-06-27 04:12:23.227476'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-06-27 04:12:23.236933'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-06-27 04:12:23.244934'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-06-27 04:12:23.273251'),
(13, 'auth', '0011_update_proxy_permissions', '2023-06-27 04:12:23.285040'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-06-27 04:12:23.295623'),
(15, 'webapp', '0001_initial', '2023-06-27 04:12:23.767560'),
(16, 'admin', '0001_initial', '2023-06-27 04:12:23.935523'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-06-27 04:12:23.955526'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-27 04:12:23.969113'),
(19, 'sessions', '0001_initial', '2023-06-27 04:12:24.115418'),
(20, 'webapp', '0002_alter_customuser_email', '2023-06-27 04:16:49.527548'),
(21, 'webapp', '0003_alter_customuser_age', '2023-06-27 04:42:22.458267'),
(22, 'webapp', '0004_alter_customuser_password', '2023-06-28 13:16:05.832609'),
(23, 'webapp', '0005_alter_customuser_password', '2023-06-28 13:18:49.922094'),
(24, 'webapp', '0004_diabetesdata', '2023-07-01 06:54:48.812267'),
(25, 'webapp', '0005_alter_diabetesdata_outcome', '2023-07-01 07:44:30.386282'),
(26, 'webapp', '0006_diabetesdata_user', '2023-07-01 07:57:07.795853'),
(27, 'webapp', '0007_alter_diabetesdata_user', '2023-07-01 08:07:01.476203'),
(28, 'webapp', '0008_alter_customuser_options_alter_diabetesdata_options_and_more', '2023-07-03 15:56:41.846762'),
(29, 'webapp', '0009_customuser_profile_image', '2023-07-10 18:35:17.418929');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5ayouklgq19yos49bmoooe9a7a6jlc4u', '.eJxVjDsOwjAQRO_iGlmO_6GkzxmsXXuNA8iW4qRC3J1ESgHdaN6bebMA21rC1mkJc2JXNhh2-S0R4pPqQdID6r3x2Oq6zMgPhZ-086klet1O9--gQC_72jilR7RC70HFKCiR905aSNJSBodEWUvvR1IWpRHo5KBUsjJHFGAj-3wB-sI4Cg:1qKEZR:Ib6v93zTDi7UhVIMmXi1rH15yebS9RJ3St26580Uty8', '2023-07-28 08:54:37.451864');

-- --------------------------------------------------------

--
-- Table structure for table `webapp_customuser`
--

CREATE TABLE `webapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(150) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `age` int(10) UNSIGNED DEFAULT NULL,
  `profile_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webapp_customuser`
--

INSERT INTO `webapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `name`, `gender`, `age`, `profile_image`) VALUES
(7, 'pbkdf2_sha256$600000$o4NPCx1chMz9xJfz8veoK9$j9ILTGG1Xma0HgECWHdjZY+gKmYSUnOZk3/pxOWdMw4=', '2023-07-03 16:20:42.652122', 0, 'naira', '', '', 'naira@gmail.com', 0, 1, '2023-06-28 13:27:00.845299', 'Naira khadka', 'F', 44, NULL),
(9, 'pbkdf2_sha256$600000$PAsimymSiqqlndpR1JcdMI$L/af+6RVkdysJ+iZeJgOVAILdWxFJDgSCZ8akU5MK64=', '2023-07-18 13:14:02.212736', 1, 'susil', '', '', 'admin@gmail.com', 1, 1, '2023-06-28 13:29:13.000000', 'Susil Saud', 'M', 22, 'profile_images/coder_PiPCevy.jpg'),
(11, 'pbkdf2_sha256$600000$0rc8kZT32s5O2D69VB0OWf$IaHN9GmtWs9JlUxcHo8mYItS1wn+l9qhqPi8cXh9Z+4=', '2023-07-21 05:34:42.681232', 0, 'amrit', '', '', 'amrit@gmail.com', 0, 1, '2023-07-01 05:44:39.000000', 'Amrit Raj Raya', 'M', 22, 'profile_images/coder_HoVKzGm.jpg'),
(13, 'pbkdf2_sha256$600000$GdNGv9A4nKEOAvtcUukJz7$akraODJa9J5mUw7gZxtxJ3gp2W4hTivrlZCIunguMog=', '2023-07-03 16:05:54.907431', 0, 'sam', '', '', 'sam@gmail.com', 0, 1, '2023-07-03 16:05:44.359545', 'Sam Sharma', 'M', 33, NULL),
(14, 'pbkdf2_sha256$600000$VmPkaqgspasRkl4UNO8HLj$ADNfbLTT8GDH6ssS9ExctadvzjqFMh7fwvK+Ibe2kBc=', '2023-07-11 17:10:08.684937', 0, 'ashok', '', '', 'ashok@gmail.com', 0, 1, '2023-07-08 15:50:39.326576', 'Ashok Raj', 'M', 33, 'profile_images/coder_h3DR8DG.jpg'),
(15, 'pbkdf2_sha256$600000$8RclzkgKyLohAzonZCDVp7$mJCvJ2U0PILjmouxlLclvKM52HDAPlMAhIqSL+6KxaU=', '2023-07-21 11:16:10.854218', 0, 'shanta', '', '', 'shanta@gmail.com', 0, 1, '2023-07-08 16:07:13.000000', 'shanta chetry', 'F', 23, 'profile_images/R_2_yRJq3Id.png'),
(16, 'pbkdf2_sha256$600000$AjoOVqXmXhqOADZ4wZxCxt$CBWLxqCdjIpfzXhP+yPY3MvUVmGaBatYAV+Pc2TVR/8=', '2023-07-08 16:11:02.000715', 0, 'niky', '', '', 'niky@gmail.com', 0, 1, '2023-07-08 16:10:52.385916', 'Nisha rai', 'O', 33, NULL),
(17, 'pbkdf2_sha256$600000$vm5N8jnCsD0DskIk3lE7w4$vcu8kuJVI5TxMXjX8yeK7KeGLjkVss1Qm0DARYN5bzs=', '2023-07-09 03:03:56.694869', 0, 'netra', '', '', 'netra@gmail.com', 0, 1, '2023-07-09 02:19:36.061870', 'Netra Khadka', 'M', 29, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webapp_customuser_groups`
--

CREATE TABLE `webapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `webapp_customuser_user_permissions`
--

CREATE TABLE `webapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `webapp_diabetesdata`
--

CREATE TABLE `webapp_diabetesdata` (
  `id` bigint(20) NOT NULL,
  `pregnancies` int(11) NOT NULL,
  `glucose` double NOT NULL,
  `blood_pressure` double NOT NULL,
  `skin_thickness` double NOT NULL,
  `insulin` double NOT NULL,
  `bmi` double NOT NULL,
  `diabetes_pedigree` double NOT NULL,
  `age` int(11) NOT NULL,
  `outcome` varchar(10) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webapp_diabetesdata`
--

INSERT INTO `webapp_diabetesdata` (`id`, `pregnancies`, `glucose`, `blood_pressure`, `skin_thickness`, `insulin`, `bmi`, `diabetes_pedigree`, `age`, `outcome`, `user_id`) VALUES
(8, 0, 78, 88, 29, 40, 36.9, 0.434, 21, 'Negative', 11),
(10, 2, 144, 58, 33, 135, 31.6, 0.422, 25, 'Negative', 7),
(13, 5, 115, 98, 0, 0, 52.9, 0.209, 28, 'Positive', 7),
(14, 0, 115, 112, 23, 230, 25.8, 2.288, 31, 'Negative', 11),
(15, -8, 2, 3, 3, 3, 3, 3, 3, 'Negative', 11),
(16, 0, 80, 22, 2, 3, 4, 5, 23, 'Negative', 11),
(17, 0, 80, 22, 2, 3, 4, 5, 23, 'Negative', 11),
(18, 0, 167, 0, 0, 0, 32.3, 0.839, 30, 'Positive', 11),
(19, 0, 167, 0, 0, 0, 32.3, 0.839, 30, 'Positive', 11),
(20, 0, 123, 134, 21, 230, 32.3, 2.288, 33, 'Negative', 11),
(21, 0, 123, 134, 21, 230, 32.3, 2.288, 33, 'Negative', 11),
(22, 0, 123, 134, 21, 230, 32.3, 2.288, 33, 'Negative', 11),
(23, 0, 123, 134, 21, 230, 32.3, 2.288, 33, 'Negative', 11),
(24, 0, 256, 112, 26, 33, 36.6, 0.839, 29, 'Positive', 11),
(25, 0, 256, 112, 26, 33, 36.6, 0.839, 29, 'Positive', 11),
(26, 3, 235, 44, 43, 34, 27.8, 2.288, 44, 'Positive', 15),
(27, 0, 148, 123, 23, 43, 34, 3, 33, 'Positive', 14),
(28, 0, 165, 76, 43, 255, 47.9, 0.259, 26, 'Negative', 11),
(29, 5, 115, 76, 0, 0, 31.2, 0.343, 44, 'Negative', 15),
(30, 9, 152, 78, 34, 171, 34.2, 0.893, 33, 'Negative', 15),
(31, 7, 178, 84, 0, 0, 39.9, 0.331, 41, 'Negative', 15),
(32, 5, 0, 84, 0, 0, 39.9, 0.331, 41, 'Negative', 15),
(33, 5, 0, 80, 32, 0, 41, 0.346, 37, 'Negative', 15),
(34, 9, 165, 88, 0, 0, 30.4, 0.302, 49, 'Negative', 15),
(35, 1, 196, 76, 36, 249, 36.5, 0.875, 29, 'Negative', 15),
(36, 5, 189, 64, 33, 325, 31.2, 0.583, 29, 'Negative', 11),
(37, 1, 196, 76, 36, 249, 36.5, 0.875, 29, 'Positive', 15),
(38, 9, 165, 88, 0, 0, 30.4, 0.302, 49, 'Positive', 15),
(39, 1, 90, 62, 12, 43, 27.2, 0.58, 24, 'Positive', 15),
(40, 3, 61, 82, 28, 0, 34.4, 0.243, 46, 'Positive', 15),
(41, 3, 61, 82, 28, 0, 34.4, 0.243, 46, 'Positive', 15),
(42, 5, 6, 77, 43, 2, 3, 0.43, 4, 'Negative', 15),
(43, 1, 90, 62, 12, 43, 27.2, 0.58, 24, 'Positive', 15),
(44, 3, 90, 78, 0, 0, 42.7, 0.559, 21, 'Positive', 15),
(45, 1, 90, 62, 12, 43, 27.2, 0.58, 24, 'Positive', 15),
(46, 1, 90, 62, 12, 43, 27.2, 0.58, 24, 'Negative', 15),
(47, 5, 189, 64, 33, 325, 31.2, 0.583, 29, 'Positive', 15),
(48, 7, 178, 84, 0, 0, 39.9, 0.331, 41, 'Positive', 15),
(49, 0, 93, 100, 39, 72, 43.4, 1.021, 35, 'Negative', 15),
(50, 1, 109, 60, 8, 182, 25.4, 0.947, 21, 'Negative', 15),
(51, 8, 105, 100, 36, 0, 43.3, 0.239, 45, 'Negative', 15),
(52, 5, 144, 82, 26, 285, 32, 0.452, 58, 'Negative', 15),
(53, 4, 158, 78, 0, 0, 32.9, 0.803, 31, 'Positive', 15),
(54, 0, 148, 145, 26, 115, 25.8, 0.454, 34, 'Negative', 11),
(55, 0, 128, 120, 29, 116, 80, 0.627, 12, 'Positive', 11),
(56, 1, 128, 120, 29, 116, 80, 0.627, 12, 'Positive', 11),
(57, 1, 128, 120, 29, 116, 80, 0.627, 10, 'Positive', 11),
(58, 1, 128, 120, 29, 116, 80, 0.627, 5, 'Positive', 11),
(59, 12, 23, 23, 23, 25, 12, 2, 21, 'Negative', 15),
(60, 1, 23, 23, 26, 58, 67, 2.2, 55, 'Positive', 15),
(61, 0, 1, 1, 1, 22, 67, 1, 81, 'Positive', 15),
(62, 3, 123, 121, 23, 22, 67, 2, 23, 'Positive', 15),
(63, 3, 123, 121, 28, 22, 25, 2, 29, 'Negative', 15),
(64, 4, 3, 4, 5, 2, 22, 2, 22, 'Negative', 15),
(65, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(66, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(67, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(68, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(69, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(70, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(71, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(72, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(73, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(74, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(75, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(76, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(77, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(78, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(79, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(80, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(81, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(82, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(83, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(84, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(85, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(86, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(87, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(88, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(89, 3, 4, 5, 55, 556, 55, 2, 24, 'Negative', 15),
(90, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(91, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(92, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(93, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(94, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(95, 3, 4, 5, 55, 55, 55, 2, 24, 'Negative', 15),
(96, 3, 4, 44, 55, 55, 55, 2, 24, 'Negative', 15),
(97, 3, 4, 5, 5, 5, 55, 2, 52, 'Negative', 15),
(98, 3, 4, 5, 5, 5, 55, 2, 52, 'Negative', 15),
(99, 3, 4, 5, 5, 5, 55, 2, 52, 'Negative', 15),
(100, 3, 4, 5, 5, 5, 55, 2, 52, 'Negative', 15),
(101, 3, 4, 5, 5, 5, 55, 2, 52, 'Negative', 15),
(102, 3, 4, 5, 5, 5, 55, 2, 52, 'Negative', 15),
(103, 3, 34, 77, 65, 466, 54, 2, 34, 'Negative', 15),
(104, 4, 89, 112, 62, 466, 54, 2, 34, 'Positive', 15),
(105, 4, 89, 112, 62, 466, 54, 2, 34, 'Positive', 15),
(106, 4, 89, 112, 62, 466, 54, 2, 34, 'Positive', 15),
(107, 3, 34, 77, 65, 466, 54, 2, 34, 'Negative', 15),
(108, 4, 89, 112, 62, 466, 54, 2, 34, 'Positive', 15),
(109, 4, 89, 112, 62, 466, 54, 2, 34, 'Positive', 15),
(110, 3, 34, 77, 65, 466, 54, 2, 34, 'Negative', 15),
(111, 3, 34, 77, 65, 466, 54, 2, 34, 'Negative', 15),
(112, 3, 34, 77, 65, 466, 54, 2, 34, 'Negative', 15),
(113, 4, 89, 112, 62, 466, 54, 2, 34, 'Positive', 15),
(114, 3, 34, 77, 65, 466, 54, 2, 34, 'Negative', 15),
(115, 3, 34, 77, 65, 466, 54, 2, 34, 'Negative', 15),
(116, 3, 34, 77, 65, 466, 54, 2, 34, 'Negative', 15),
(117, 3, 4, 5, 5, 5, 55, 2, 52, 'Negative', 15),
(118, 3, 4, 5, 5, 5, 55, 2, 55, 'Positive', 15),
(119, 3, 4, 5, 5, 5, 55, 1, 52, 'Negative', 15),
(120, 3, 4, 5, 5, 5, 55, 1, 52, 'Negative', 15),
(121, 3, 4, 5, 5, 54, 55, 1, 52, 'Negative', 15),
(122, 3, 45, 58, 5, 54, 55, 1, 52, 'Negative', 15),
(123, 1, 128, 88, 39, 110, 36.5, 1.057, 37, 'Negative', 15),
(124, 0, 181, 88, 44, 510, 43.3, 0.222, 26, 'Positive', 15),
(125, 0, 181, 88, 44, 510, 43.3, 0.222, 26, 'Positive', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_webapp_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `webapp_customuser`
--
ALTER TABLE `webapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `webapp_customuser_email_16f2011b_uniq` (`email`);

--
-- Indexes for table `webapp_customuser_groups`
--
ALTER TABLE `webapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `webapp_customuser_groups_customuser_id_group_id_6f1beafa_uniq` (`customuser_id`,`group_id`),
  ADD KEY `webapp_customuser_groups_group_id_75a6a723_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `webapp_customuser_user_permissions`
--
ALTER TABLE `webapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `webapp_customuser_user_p_customuser_id_permission_e68095cd_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `webapp_customuser_us_permission_id_61d62465_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `webapp_diabetesdata`
--
ALTER TABLE `webapp_diabetesdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webapp_diabetesdata_user_id_3c405424_fk_webapp_customuser_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `webapp_customuser`
--
ALTER TABLE `webapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `webapp_customuser_groups`
--
ALTER TABLE `webapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webapp_customuser_user_permissions`
--
ALTER TABLE `webapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webapp_diabetesdata`
--
ALTER TABLE `webapp_diabetesdata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_webapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `webapp_customuser` (`id`);

--
-- Constraints for table `webapp_customuser_groups`
--
ALTER TABLE `webapp_customuser_groups`
  ADD CONSTRAINT `webapp_customuser_gr_customuser_id_c7e0e1f4_fk_webapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `webapp_customuser` (`id`),
  ADD CONSTRAINT `webapp_customuser_groups_group_id_75a6a723_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `webapp_customuser_user_permissions`
--
ALTER TABLE `webapp_customuser_user_permissions`
  ADD CONSTRAINT `webapp_customuser_us_customuser_id_526ae841_fk_webapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `webapp_customuser` (`id`),
  ADD CONSTRAINT `webapp_customuser_us_permission_id_61d62465_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `webapp_diabetesdata`
--
ALTER TABLE `webapp_diabetesdata`
  ADD CONSTRAINT `webapp_diabetesdata_user_id_3c405424_fk_webapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `webapp_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

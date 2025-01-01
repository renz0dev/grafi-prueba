-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_grafitacnaact
CREATE DATABASE IF NOT EXISTS `db_grafitacnaact` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_grafitacnaact`;

-- Volcando estructura para tabla db_grafitacnaact.authtoken_token
CREATE TABLE IF NOT EXISTS `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.authtoken_token: ~0 rows (aproximadamente)
INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
	('5e58a170a0b599511b621cbe713a18540ea4710a', '2024-12-07 01:42:39.019712', 2);

-- Volcando estructura para tabla db_grafitacnaact.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.auth_group: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacnaact.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.auth_group_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacnaact.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.auth_permission: ~64 rows (aproximadamente)
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
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add page visit', 7, 'add_pagevisit'),
	(26, 'Can change page visit', 7, 'change_pagevisit'),
	(27, 'Can delete page visit', 7, 'delete_pagevisit'),
	(28, 'Can view page visit', 7, 'view_pagevisit'),
	(29, 'Can add product', 8, 'add_product'),
	(30, 'Can change product', 8, 'change_product'),
	(31, 'Can delete product', 8, 'delete_product'),
	(32, 'Can view product', 8, 'view_product'),
	(33, 'Can add inventory movement', 9, 'add_inventorymovement'),
	(34, 'Can change inventory movement', 9, 'change_inventorymovement'),
	(35, 'Can delete inventory movement', 9, 'delete_inventorymovement'),
	(36, 'Can view inventory movement', 9, 'view_inventorymovement'),
	(37, 'Can add whats app query', 10, 'add_whatsappquery'),
	(38, 'Can change whats app query', 10, 'change_whatsappquery'),
	(39, 'Can delete whats app query', 10, 'delete_whatsappquery'),
	(40, 'Can view whats app query', 10, 'view_whatsappquery'),
	(41, 'Can add invitation code', 11, 'add_invitationcode'),
	(42, 'Can change invitation code', 11, 'change_invitationcode'),
	(43, 'Can delete invitation code', 11, 'delete_invitationcode'),
	(44, 'Can view invitation code', 11, 'view_invitationcode'),
	(45, 'Can add Categoría', 12, 'add_category'),
	(46, 'Can change Categoría', 12, 'change_category'),
	(47, 'Can delete Categoría', 12, 'delete_category'),
	(48, 'Can view Categoría', 12, 'view_category'),
	(49, 'Can add technical service', 13, 'add_technicalservice'),
	(50, 'Can change technical service', 13, 'change_technicalservice'),
	(51, 'Can delete technical service', 13, 'delete_technicalservice'),
	(52, 'Can view technical service', 13, 'view_technicalservice'),
	(53, 'Can add product image', 14, 'add_productimage'),
	(54, 'Can change product image', 14, 'change_productimage'),
	(55, 'Can delete product image', 14, 'delete_productimage'),
	(56, 'Can view product image', 14, 'view_productimage'),
	(57, 'Can add Token', 15, 'add_token'),
	(58, 'Can change Token', 15, 'change_token'),
	(59, 'Can delete Token', 15, 'delete_token'),
	(60, 'Can view Token', 15, 'view_token'),
	(61, 'Can add Token', 16, 'add_tokenproxy'),
	(62, 'Can change Token', 16, 'change_tokenproxy'),
	(63, 'Can delete Token', 16, 'delete_tokenproxy'),
	(64, 'Can view Token', 16, 'view_tokenproxy');

-- Volcando estructura para tabla db_grafitacnaact.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.auth_user: ~2 rows (aproximadamente)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$870000$k3ZX567KVh4niYdOFLMEbs$oCWLIngQfDJ8Dzfe77iPuK5A076qgpYM8U5RjpGZflY=', '2024-12-07 01:40:22.218608', 1, 'Sebastian', '', '', 'lupacaccosisebastian@gmail.com', 1, 1, '2024-12-04 04:55:44.800325'),
	(2, 'pbkdf2_sha256$870000$sjc43yNS2IEDSkss3cNes5$7klgvobFbcGhoKWs9sKkxYtIp94G56sR5xNIcx5/pvY=', '2024-12-15 15:11:04.289832', 1, 'yatorow', '', '', 'yatorow@gmail.com', 1, 1, '2024-12-07 01:42:08.345218');

-- Volcando estructura para tabla db_grafitacnaact.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.auth_user_groups: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacnaact.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.auth_user_user_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacnaact.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.django_admin_log: ~0 rows (aproximadamente)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2024-12-07 01:42:39.020284', '2', '5e58a170a0b599511b621cbe713a18540ea4710a', 1, '[{"added": {}}]', 16, 2);

-- Volcando estructura para tabla db_grafitacnaact.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.django_content_type: ~16 rows (aproximadamente)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(15, 'authtoken', 'token'),
	(16, 'authtoken', 'tokenproxy'),
	(5, 'contenttypes', 'contenttype'),
	(12, 'inventory', 'category'),
	(9, 'inventory', 'inventorymovement'),
	(11, 'inventory', 'invitationcode'),
	(7, 'inventory', 'pagevisit'),
	(8, 'inventory', 'product'),
	(14, 'inventory', 'productimage'),
	(13, 'inventory', 'technicalservice'),
	(10, 'inventory', 'whatsappquery'),
	(6, 'sessions', 'session');

-- Volcando estructura para tabla db_grafitacnaact.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.django_migrations: ~37 rows (aproximadamente)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2024-12-04 04:54:21.006056'),
	(2, 'auth', '0001_initial', '2024-12-04 04:54:21.401819'),
	(3, 'admin', '0001_initial', '2024-12-04 04:54:21.506199'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2024-12-04 04:54:21.544784'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-12-04 04:54:21.552740'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2024-12-04 04:54:21.624417'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2024-12-04 04:54:21.686825'),
	(8, 'auth', '0003_alter_user_email_max_length', '2024-12-04 04:54:21.719525'),
	(9, 'auth', '0004_alter_user_username_opts', '2024-12-04 04:54:21.727526'),
	(10, 'auth', '0005_alter_user_last_login_null', '2024-12-04 04:54:21.818595'),
	(11, 'auth', '0006_require_contenttypes_0002', '2024-12-04 04:54:21.820919'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2024-12-04 04:54:21.827917'),
	(13, 'auth', '0008_alter_user_username_max_length', '2024-12-04 04:54:21.879326'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2024-12-04 04:54:21.933887'),
	(15, 'auth', '0010_alter_group_name_max_length', '2024-12-04 04:54:21.951877'),
	(16, 'auth', '0011_update_proxy_permissions', '2024-12-04 04:54:21.959910'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2024-12-04 04:54:22.016036'),
	(18, 'authtoken', '0001_initial', '2024-12-04 04:54:22.091303'),
	(19, 'authtoken', '0002_auto_20160226_1747', '2024-12-04 04:54:22.113691'),
	(20, 'authtoken', '0003_tokenproxy', '2024-12-04 04:54:22.115682'),
	(21, 'authtoken', '0004_alter_tokenproxy_options', '2024-12-04 04:54:22.120682'),
	(22, 'inventory', '0001_initial', '2024-12-04 04:54:22.299409'),
	(23, 'inventory', '0002_invitationcode', '2024-12-04 04:54:22.381964'),
	(24, 'inventory', '0003_category', '2024-12-04 04:54:22.395109'),
	(25, 'inventory', '0004_product_category', '2024-12-04 04:54:22.455278'),
	(26, 'inventory', '0005_technicalservice', '2024-12-04 04:54:22.578868'),
	(27, 'inventory', '0006_alter_technicalservice_options_and_more', '2024-12-04 04:54:22.604893'),
	(28, 'inventory', '0007_alter_technicalservice_options_and_more', '2024-12-04 04:54:22.630902'),
	(29, 'inventory', '0008_alter_technicalservice_options_and_more', '2024-12-04 04:54:22.764791'),
	(30, 'inventory', '0009_technicalservice_client_name_and_more', '2024-12-04 04:54:22.814689'),
	(31, 'inventory', '0010_technicalservice_client_phone_and_more', '2024-12-04 04:54:22.846649'),
	(32, 'inventory', '0011_alter_product_price', '2024-12-04 04:54:22.860661'),
	(33, 'inventory', '0012_productimage_alter_inventorymovement_options_and_more', '2024-12-04 04:54:22.957637'),
	(34, 'inventory', '0013_remove_product_category_remove_product_created_at_and_more', '2024-12-04 04:54:23.352564'),
	(35, 'inventory', '0014_product_category_product_created_at_product_image_and_more', '2024-12-04 04:54:23.777752'),
	(36, 'inventory', '0015_remove_product_product_image_and_more', '2024-12-04 04:54:23.898871'),
	(37, 'sessions', '0001_initial', '2024-12-04 04:54:23.943931');

-- Volcando estructura para tabla db_grafitacnaact.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.django_session: ~4 rows (aproximadamente)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('dtt05yibp13af6vpsou42436w3ifhwoq', '.eJxVjDsOwyAQBe9CHSE-C5iU6X0GxLIQnERYMnYV5e6xJRdJ-2bmvVmI21rD1vMSJmJXJtnld8OYnrkdgB6x3Wee5rYuE_JD4SftfJwpv26n-3dQY697XRCMtgpIeEhojYlFZ1BOo5DoNYGA6AgHEjBkZwskBQ6NT3ukdZLs8wXRyjc5:1tIhQV:S_fAwIqfkIRWNnBASMKhBBdrT8fxcKx3vE1mrMU_eaA', '2024-12-18 04:55:51.072521'),
	('h0qtzpft5h8qqdeo8443fc6casiyrzy3', '.eJxVjEEOwiAQRe_C2pBBoIBL9z0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIizuL0uxHyI7cdpDu22yx5busykdwVedAuxznl5_Vw_w4q9vqtMbAhm5GULcgEyTunLAB5k4yxxSqdnXMA7AZN5GFgrbnYwIAheS_eH-5ZN84:1tMqGu:XkGza4SS2zogUpbMb1zH6pxctruRPjDwe26w7d8YSu0', '2024-12-29 15:11:04.340771'),
	('n6r65szm1lw0uh0lix5dfxyel2yau492', '.eJxVjEEOwiAQRe_C2pBBoIBL9z0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIizuL0uxHyI7cdpDu22yx5busykdwVedAuxznl5_Vw_w4q9vqtMbAhm5GULcgEyTunLAB5k4yxxSqdnXMA7AZN5GFgrbnYwIAheS_eH-5ZN84:1tMXpa:kqOUfFGndLW4Jr7DalAq6vBztz9VgEaESvbDmhFzAl0', '2024-12-28 19:29:38.483462'),
	('nplv7sngpw2zpuvcdzcjzq3qyigpwfn3', '.eJxVjEEOwiAQRe_C2pBBoIBL9z0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIizuL0uxHyI7cdpDu22yx5busykdwVedAuxznl5_Vw_w4q9vqtMbAhm5GULcgEyTunLAB5k4yxxSqdnXMA7AZN5GFgrbnYwIAheS_eH-5ZN84:1tJjpm:bcRKH7hsEo-EX7vTfu5Kc7eltvN12q2pzU8_gvzhiFA', '2024-12-21 01:42:14.802206');

-- Volcando estructura para tabla db_grafitacnaact.inventory_category
CREATE TABLE IF NOT EXISTS `inventory_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.inventory_category: ~6 rows (aproximadamente)
INSERT INTO `inventory_category` (`id`, `name`, `description`, `created_at`) VALUES
	(1, 'Impresoras', NULL, '2024-12-04 04:56:02.994677'),
	(6, 'Tintas', '', '2024-12-14 19:33:39.235085'),
	(7, 'Laptops', '', '2024-12-14 19:33:46.171499'),
	(8, 'Monitores', '', '2024-12-14 19:33:50.505982'),
	(9, 'Periféricos', '', '2024-12-14 19:33:57.788774'),
	(10, 'Procesadores', '', '2024-12-14 19:34:06.411430');

-- Volcando estructura para tabla db_grafitacnaact.inventory_inventorymovement
CREATE TABLE IF NOT EXISTS `inventory_inventorymovement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity_changed` int NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `notes` longtext,
  `user_id` int NOT NULL,
  `product_id` bigint NOT NULL,
  `changed_fields` json NOT NULL DEFAULT (_utf8mb3'{}'),
  PRIMARY KEY (`id`),
  KEY `inventory_inventorymovement_user_id_456fb874_fk_auth_user_id` (`user_id`),
  KEY `inventory_inventorym_product_id_74123ceb_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_inventorym_product_id_74123ceb_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_product` (`id`),
  CONSTRAINT `inventory_inventorymovement_user_id_456fb874_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.inventory_inventorymovement: ~0 rows (aproximadamente)
INSERT INTO `inventory_inventorymovement` (`id`, `quantity_changed`, `timestamp`, `notes`, `user_id`, `product_id`, `changed_fields`) VALUES
	(21, 0, '2024-12-24 02:11:29.838109', '1\nStock actualizado de 10 a 10. Cambio: 0', 2, 45, '{}');

-- Volcando estructura para tabla db_grafitacnaact.inventory_invitationcode
CREATE TABLE IF NOT EXISTS `inventory_invitationcode` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `is_used` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_staff_invitation` tinyint(1) NOT NULL,
  `used_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `used_by_id` (`used_by_id`),
  CONSTRAINT `inventory_invitationcode_used_by_id_2c6cca9e_fk_auth_user_id` FOREIGN KEY (`used_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.inventory_invitationcode: ~2 rows (aproximadamente)
INSERT INTO `inventory_invitationcode` (`id`, `code`, `is_used`, `created_at`, `is_staff_invitation`, `used_by_id`) VALUES
	(1, 'MB5PPPSX', 1, '2024-12-04 04:55:17.935581', 1, 1),
	(2, 'MVSJNRZI', 1, '2024-12-07 01:41:53.778886', 1, 2);

-- Volcando estructura para tabla db_grafitacnaact.inventory_pagevisit
CREATE TABLE IF NOT EXISTS `inventory_pagevisit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `duration` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.inventory_pagevisit: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacnaact.inventory_product
CREATE TABLE IF NOT EXISTS `inventory_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `views` int NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_product_category_id_c907876e_fk_inventory_category_id` (`category_id`),
  CONSTRAINT `inventory_product_category_id_c907876e_fk_inventory_category_id` FOREIGN KEY (`category_id`) REFERENCES `inventory_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.inventory_product: ~26 rows (aproximadamente)
INSERT INTO `inventory_product` (`id`, `name`, `description`, `price`, `stock`, `views`, `category_id`, `created_at`, `image`) VALUES
	(22, 'Impresora Multifuncional Epson EcoTank L5590', '• Impresión, Escaneo, Copia y Envío de Faxes\r\n\r\n• Compatible con Wi-Fi Direct y USB 2.0\r\n\r\n•7,500 páginas en blanco y negro y 6,000 en color con una sola carga de tinta\r\n\r\n• Pantalla LCD de 2.4”\r\n\r\n• 15 páginas por minuto (ppm) en negro y 8 ppm en color\r\n\r\n• Resolución máxima de 4800 x 1200 dpi para impresiones de calidad profesional\r\n\r\n• Wi-Fi 6 + BT5.1 + Bluetooth® 5.2', 1090.00, 5, 0, 1, '2024-12-14 19:36:25.655447', 'products/l5590_FkRkaA0.jpg'),
	(23, 'Impresora Multifuncional Brother DCPT520W', '• Multifuncional de tinta\r\n• Orientado a: Casa, pequeñas oficinas\r\n• Impresion, Copiado, Escaneado en full color\r\n• Resolucion: 6.000 dpi x 1.200 dpi\r\n• Velocidad: Negro 30 ppm y color 12 ppm\r\n• Botellas de tinta de llenado automático, fáciles de usar', 799.00, 5, 0, 1, '2024-12-14 19:38:10.859280', 'products/DCPT520W.jpg'),
	(24, 'Impresora Monofuncion Epson EcoTank L1250', 'Impresión, escaneo y copia\r\nConectividad Wi-Fi Direct y USB 2.0\r\nHasta 7.500 páginas a color y 4.500 en negro por juego de botellas\r\nPantalla LCD de 2.4 pulgadas\r\nVelocidad de impresión ISO: 10 ppm en negro y 5 ppm en color\r\nResolución máxima de 5760 x 1440 dpi\r\nCompatible con Epson Smart Panel', 599.00, 5, 0, 1, '2024-12-14 19:39:49.638539', 'products/l1250.jpg'),
	(25, 'Impresora Laser HP Laserjet M111W', 'Impresión: Monocromática (blanco y negro)\r\nConectividad: Wi-Fi, USB 2.0, Bluetooth\r\nVelocidad de impresión: Hasta 20 ppm (páginas por minuto)\r\nResolución: Hasta 600 x 600 ppp\r\nCapacidad de papel: 150 hojas\r\nCiclo de trabajo mensual: Hasta 8000 páginas\r\nTamaño compacto: Ideal para espacios reducidos\r\nImpresión móvil: Compatible con la app HP Smart', 449.00, 5, 0, 1, '2024-12-14 19:40:19.254679', 'products/m111w.jpg'),
	(26, 'Tinta Epson T544 Ecotank 65Ml Cyan', 'Tipo de tinta: Tinta pigmentada cian\r\nCapacidad: 65 ml\r\nCompatibilidad: Diseñada específicamente para impresoras Epson EcoTank, incluyendo modelos como L1110, L1210, L3110, L3210, L3150, L3250, L3160, L3260, L5190 y L5290.\r\nRendimiento: Aproximadamente 7500 páginas', 55.00, 5, 0, 6, '2024-12-14 19:41:59.126292', 'products/cian544.jpg'),
	(27, 'Tinta Epson T544 Ecotank 65Ml Negro', '• Tipo de tinta: Tinta pigmentada negra\r\n• Capacidad: 65 ml\r\n• Compatibilidad: Diseñada específicamente para impresoras Epson EcoTank, incluyendo modelos como L1110, L1210, L3110, L3210, L3150, L3250, L3160, L3260, L5190 y L5290.\r\n• Rendimiento: Aproximadamente 4500 páginas', 55.00, 5, 0, 6, '2024-12-14 19:42:16.643136', 'products/blk544.jpg'),
	(29, 'Tinta Epson T664 Ecotank 70Ml Amarillo', '• Tipo de tinta: Pigmentada amarilla\r\n• Capacidad: 70 ml\r\n• Compatibilidad: Diseñada específicamente para una amplia gama de impresoras Epson EcoTank, incluyendo modelos como L3250, L3260, L5290, y muchos otros.\r\n• Rendimiento: Aproximadamente 6500 páginas', 55.00, 5, 0, 6, '2024-12-14 19:42:57.775133', 'products/yellow664.jpg'),
	(30, 'Laptop HP 15-fd0006la, Intel Core i7-1355U, 12GB, SSD 512GB, FHD 15.6", FreeDOS, 1Y (802N8LA)', 'Este modelo destaca por su diseño estilizado y moderno, con acabados elegantes y un peso relativamente ligero, lo que facilita su transporte. Su pantalla de 15,6 pulgadas Full HD', 2800.00, 5, 0, 7, '2024-12-14 19:46:36.420029', 'products/laptop5.jpg'),
	(31, 'Laptop Dell Inspiron 3520, Intel Core i5-1235U, 8GB DDR4, SSD 512GB, 15.6" FHD, Ubuntu, 1Y (HKG75)', 'Experimente un rendimiento silencioso y receptivo, con procesadores Intel® Core™ de 12° generación combinados con opciones de SSD PCIe. ¿Quieres acelerar los gráficos? Hay gráficos discretos NVIDIA® opcionales disponibles.', 1800.00, 5, 0, 7, '2024-12-14 19:48:32.419395', 'products/laptop-6.jpg'),
	(32, 'Laptop Lenovo V15 G4 AMN Ryzen 3 7320U G4 RAM 8GB Disco 256GB SSD 15.6 FHD FreeDos', '• Processor: AMD Ryzen 3 7320U\r\n• Memory: 8GB RAM\r\n• Storage: 256GB SSD\r\n• Display: 15.6-inch Full HD (1920 x 1080)\r\n• Operating System: FreeDOS (No pre-installed OS)', 1249.00, 5, 0, 7, '2024-12-14 19:49:11.323820', 'products/laptop1.jpg'),
	(33, 'Laptop Lenovo IdeaPad Slim 3 15IAH8 Intel Core i5 12450H Ram 16GB Disco 512GB SSD 15.6 FHD FreeDos', '• Processor: Intel Core i5-12450H\r\n• Memory: 16GB RAM\r\n• Storage: 512GB SSD\r\n• Display: 15.6-inch Full HD (1920 x 1080)\r\n• Operating System: FreeDOS (No pre-installed OS)', 1699.00, 5, 0, 7, '2024-12-14 19:50:56.910021', 'products/laptop2.jpg'),
	(34, 'Tinta Epson T664 Ecotank 70Ml Magento', '• Tipo de tinta: Tinta pigmentada magenta\r\n• Capacidad: 70 ml', 55.00, 5, 0, 6, '2024-12-14 19:59:23.363698', 'products/magenta664_RO7Szsp.jpg'),
	(35, 'PROCESADOR INTEL CORE I7-14700 2.10GHZ/5.40GHZ 33MB 20 CORE LGA1700', 'SOCKET 	: 	LGA1700 INTEL\r\nVELOCIDAD BASE 	: 	2.10 GHZ\r\nVELOCIDAD MAX.   	: 	5.40 GHZ\r\nCACHE 	: 	33MB Intel® Smart Cache', 1400.00, 10, 0, 10, '2024-12-16 17:34:32.139130', 'products/procesador-intel-core-i7-14700-210ghz540ghz-33mb-20-core-lga1700-pnbx8071514700.jpg'),
	(36, 'PROCESADOR INTEL CORE I5-14400 2.50GHZ/4.70GHZ 20MB 10 CORE LGA1700', 'SOCKET 	: 	LGA1700 INTEL\r\nVELOCIDAD BASE 	: 	2.50 GHZ\r\nVELOCIDAD MAX.   	: 	4.70 GHZ\r\nCACHE 	: 	20MB Intel® Smart Cache', 780.00, 10, 0, 10, '2024-12-16 17:35:10.213846', 'products/procesador-intel-core-i5-14400-250ghz470ghz-20mb-10-core-lga1700-pnbx8071514400.jpg'),
	(37, 'PROCESADOR INTEL CORE I3-14100 3.50GHZ/4.70GHZ 12MB 4 CORE LGA1700', 'SOCKET 	: 	LGA1700 INTEL\r\nVELOCIDAD BASE 	: 	3.50 GHZ\r\nVELOCIDAD MAX.   	: 	4.70 GHZ\r\nCACHE 	: 	12MB Intel® Smart Cache', 410.00, 10, 0, 10, '2024-12-16 17:35:36.744336', 'products/procesador-intel-core-i3-14100-350ghz470ghz-12mb-4-core-lga1700-pnbx8071514700.jpg'),
	(38, 'PROCESADOR INTEL CORE I9 14900KF 3.20GHZ/6.00GHZ 36MB 24 CORE LGA1700', 'SOCKET 	: 	LGA1700 INTEL\r\nVELOCIDAD BASE 	: 	2.40 GHZ\r\nVELOCIDAD MAXIMA   	: 	6.00 GHZ\r\nCACHE 	: 	36MB Intel® Smart Cache', 2200.00, 10, 0, 10, '2024-12-16 17:36:06.054233', 'products/procesador-intel-core-i9-14900kf-320ghz600ghz-36mb-24-core-lga1700-pnbx8071514900kf.jpg'),
	(39, 'PROCESADOR AMD RYZEN 7 5700G 3.8GHz 16MB 8CORE AM4', 'NÚCLEOS CPU 	: 	8 	\r\nRELOJ BASE 	: 	3.8GHz 	\r\nRELOJ MAX 	: 	4.6GHz 	\r\nCACHÉ TOTAL 	: 	16MB', 660.00, 10, 0, 10, '2024-12-16 17:36:53.507226', 'products/procesador-amd-ryzen-7-5700g-38ghz-16mb-8core-am4-.jpg'),
	(40, 'PROCESADOR AMD RYZEN 7 5700X 3.4GHZ 32MB 8CORE AM4', 'NÚCLEOS CPU 	: 	8\r\nN HILOS 	: 	16\r\nRELOJ BASE 	: 	3.4GHz\r\nRELOJ AUMENTO 	: 	4.6GHz\r\nCACHÉ TOTAL 	: 	32MB', 770.00, 10, 0, 10, '2024-12-16 17:37:17.150887', 'products/procesador-amd-ryzen-7-5700x-34ghz-32mb-8core-am4-pn100-100000926wof.jpg'),
	(41, 'PROCESADOR AMD RYZEN 5 5500 3.6GHz/4.2GHz 16MB 6 CORE AM4', 'NÚCLEOS CPU 	: 	6\r\nRELOJ BASE 	: 	3.6GHz\r\nRELOJ AUMENTO 	: 	4.2GHz\r\nTDP 	: 	65W', 330.00, 10, 0, 10, '2024-12-16 17:37:37.521109', 'products/procesador-amd-ryzen-5-5500-36ghz42ghz-16mb-6-core-am4-pn100-100000457box.jpg'),
	(42, 'PROCESADOR AMD RYZEN 9 7950X3D 4.2GHZ/5.7GHZ 144MB 16CORE AM5', 'SOCKET 	: 	LGA1700 INTEL\r\nVELOCIDAD BASE 	: 	2.40 GHZ\r\nVELOCIDAD MAXIMA   	: 	6.00 GHZ\r\nCACHE 	: 	36MB Intel® Smart Cache', 2830.00, 10, 0, 10, '2024-12-16 17:38:09.845558', 'products/procesador-amd-ryzen-9-7950x3d-42ghz57ghz-144mb-16core-am5-pn100-100000908wof.jpg'),
	(43, 'Auricular Gamer MSI Immerse Gh20 con micrófono usb', 'Marca: MSI\r\nModelo: GH20\r\nPeso: 492.5 gr\r\nIncluye: adaptador jack 3.5 y manual\r\nConexión Bluetooth: No\r\nConexión Wi Fi: No\r\nNúmero de entradas USB: No\r\nGarantía: 12 Meses\r\nLargo: 12\r\nAlto: 22\r\nAncho: 20\r\nCaracterísticas: Gamer, 40 mm, impedancia de 32\r\nPotencia: 95 db', 200.00, 10, 0, 9, '2024-12-24 01:45:56.694435', 'products/image-9257308774a5430caa28027511d629ca.jpg'),
	(44, 'MOUSE RAZER VIPER V2 PRO WIRELESS HYPERSPEED 30K WHITE', 'Marca: Razer\r\nProducto: Viper v2 pro\r\nBotones: 6\r\nSensor: Óptico Focus Pro \r\nTiempo de Respuesta: 1ms / 1000hz\r\nDuración de Batería: 90 hrs\r\nDimensiones: 126,5 x 66,2 x 37,8 mm\r\nPeso: 58g\r\nConexión: USB Receptor Wireless, USB', 510.00, 10, 0, 9, '2024-12-24 01:46:27.887067', 'products/razer-viper-v2-pro-hyperspeed-wireless-gaming-mouse-white-1500-v1-0006-510x510.jpg'),
	(45, 'KIT INALAMBRICO TECLADO + MOUSE TEROS TE-4061N', 'Marca: Teros\r\n• Modelo: TE-4061N\r\n• Teclado:\r\n• Teclas multimedia\r\n• Teclas de acción suave\r\n• Idioma Español\r\n• Mouse:\r\n• Sensor Óptico\r\n• 1000 DPI\r\n• 2 Botones\r\n• Interfaz: Inalámbrico USB Receptor\r\n• Frecuencia: 2.4 Ghz\r\n• Rango de distancia: 10 Mts\r\n• Compatible: Windows y Linux', 60.00, 10, 0, 9, '2024-12-24 01:47:03.419983', 'products/kbmswste4061n-510x510.jpg'),
	(46, 'KIT ANTRYX GC-5100 RGB BLACK TECLADO MECANICO SWITCH PURPLE + MOUSE RGB', 'Marca: Antryx\r\nModelo: GC-5100 \r\nIluminación: Rainbow\r\nTeclado:\r\nTeclado mecánico Switch Purple\r\nTeclas doble inyección\r\nIdioma Español\r\nMouse:\r\nSensor Pixart PMW3325\r\n10 000 DPI\r\n8 Botones\r\n10 millones de clicks micro interruptores Huano\r\nInterfaz Usb', 215.00, 10, 0, 9, '2024-12-24 01:47:28.787325', 'products/GC-5100-1-510x510.jpg'),
	(47, 'AUDIFONO C/MICROF. TEROS TE-8171N RGB BLACK/SILVER', 'Marca: Teros\r\nProducto: TE-8171N\r\nFrecuencia del Auricular: 20 Hz – 20 kHz\r\nSensibilidad Auricular: 113dB ± 3dB\r\nSensibilidad del Micrófono: -42 ± 3dB\r\nFrecuencia del Micrófono: 100 Hz – 10 Khz\r\nCaptación del Micrófono: Cardioide\r\nConexión: USB / Jack 3.5mm\r\nCompatibilidad: PC', 75.00, 10, 0, 9, '2024-12-24 02:05:40.420338', 'products/8171N-1-510x510.jpg'),
	(48, 'TECLADO GAMING ANTRYX CHROME STORM SK570 RGB BLACK', 'Marca : Antryx\r\nModelo : Chrome Storm SK570\r\nProducto: Teclado Gamer\r\nTipo de Teclado: Semi-Mecánico \r\nTamaño: Full Size 100%\r\nIluminación: RGB\r\nIdioma: Español\r\nInterfaz: USB 2.0\r\nLongitud del Cable: 1,8m\r\nCompatible: Windows', 110.00, 10, 0, 9, '2024-12-24 02:06:08.463443', 'products/SK570-1-510x510.jpg');

-- Volcando estructura para tabla db_grafitacnaact.inventory_productimage
CREATE TABLE IF NOT EXISTS `inventory_productimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.inventory_productimage: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacnaact.inventory_technicalservice
CREATE TABLE IF NOT EXISTS `inventory_technicalservice` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `service_name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.inventory_technicalservice: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacnaact.inventory_technicalservice_parts
CREATE TABLE IF NOT EXISTS `inventory_technicalservice_parts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `technicalservice_id` int NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_technicalservi_technicalservice_id_prod_782dddf1_uniq` (`technicalservice_id`,`product_id`),
  KEY `inventory_technicals_product_id_e9c179c4_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_technicals_product_id_e9c179c4_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_product` (`id`),
  CONSTRAINT `inventory_technicals_technicalservice_id_bcacccb9_fk_inventory` FOREIGN KEY (`technicalservice_id`) REFERENCES `inventory_technicalservice` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.inventory_technicalservice_parts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacnaact.inventory_whatsappquery
CREATE TABLE IF NOT EXISTS `inventory_whatsappquery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `query_type` varchar(10) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `resolved` tinyint(1) NOT NULL,
  `notes` longtext,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_whatsappqu_product_id_7f47e678_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_whatsappqu_product_id_7f47e678_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacnaact.inventory_whatsappquery: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

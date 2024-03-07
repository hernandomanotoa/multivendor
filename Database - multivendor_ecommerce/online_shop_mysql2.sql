-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 07-03-2024 a las 15:54:25
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `online_shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `name`, `type`, `vendor_id`, `mobile`, `email`, `password`, `image`, `confirm`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'superadmin', 0, '9800000000', 'admin@admin.com', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', '', 'Yes', 1, NULL, NULL),
(2, 'Vendedor', 'vendor', 1, '9700000000', 'john@admin.com', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', '', 'Yes', 1, NULL, NULL),
(3, 'Hernando', 'superadmin', 0, '9700000000', 'hernando@admin.com', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', '', 'Yes', 1, NULL, NULL),
(4, 'Raul', 'superadmin', 0, '9700000000', 'raul@admin.com', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', '', 'Yes', 1, NULL, NULL),
(5, 'Mauricio', 'superadmin', 0, '9700000000', 'mauricio@admin.com', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', '', 'Yes', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `image`, `type`, `link`, `title`, `alt`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banner-1.jpg', 'Slider', 'spring-collection', 'Spring Collection', 'Spring Collection', 1, NULL, NULL),
(2, 'banner-2.jpg', 'Slider', 'tops', 'Tops', 'Tops', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Arrow', 1, NULL, NULL),
(2, 'Gap', 1, NULL, NULL),
(3, 'Lee', 1, NULL, NULL),
(4, 'Samsung', 1, NULL, NULL),
(5, 'LG', 1, NULL, NULL),
(6, 'Lenovo', 1, NULL, NULL),
(7, 'MI', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` int NOT NULL,
  `section_id` int NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_discount` double NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `section_id`, `category_name`, `category_image`, `category_discount`, `description`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Men', '', 0, '', 'men', '', '', '', 1, NULL, NULL),
(2, 0, 1, 'Women', '', 0, '', 'women', '', '', '', 1, NULL, NULL),
(3, 0, 1, 'Kids', '', 0, '', 'kids', '', '', '', 1, NULL, NULL),
(4, 0, 1, 'Kid2', '', 0, '', 'kids2', '', '', '', 1, NULL, NULL),
(5, 0, 1, 'Kids3', '', 0, '', 'kids3', '', '', '', 1, NULL, NULL),
(6, 0, 1, 'Kids4', '', 0, '', 'kids4', '', '', '', 1, NULL, NULL),
(7, 0, 1, 'Kids5', '', 0, '', 'kids5', '', '', '', 1, NULL, NULL),
(8, 0, 1, 'Categoria8', '', 0, '', 'Categoria8', '', '', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cod_pincodes`
--

CREATE TABLE `cod_pincodes` (
  `id` bigint UNSIGNED NOT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'US', 'United States', 1, NULL, NULL),
(2, 'CA', 'Canada', 1, NULL, NULL),
(3, 'AF', 'Afghanistan', 1, NULL, NULL),
(4, 'AL', 'Albania', 1, NULL, NULL),
(5, 'DZ', 'Algeria', 1, NULL, NULL),
(6, 'AS', 'American Samoa', 1, NULL, NULL),
(7, 'AD', 'Andorra', 1, NULL, NULL),
(8, 'AO', 'Angola', 1, NULL, NULL),
(9, 'AI', 'Anguilla', 1, NULL, NULL),
(10, 'AQ', 'Antarctica', 1, NULL, NULL),
(11, 'AG', 'Antigua and/or Barbuda', 1, NULL, NULL),
(12, 'AR', 'Argentina', 1, NULL, NULL),
(13, 'AM', 'Armenia', 1, NULL, NULL),
(14, 'AW', 'Aruba', 1, NULL, NULL),
(15, 'AU', 'Australia', 1, NULL, NULL),
(16, 'AT', 'Austria', 1, NULL, NULL),
(17, 'AZ', 'Azerbaijan', 1, NULL, NULL),
(18, 'BS', 'Bahamas', 1, NULL, NULL),
(19, 'BH', 'Bahrain', 1, NULL, NULL),
(20, 'BD', 'Bangladesh', 1, NULL, NULL),
(21, 'BB', 'Barbados', 1, NULL, NULL),
(22, 'BY', 'Belarus', 1, NULL, NULL),
(23, 'BE', 'Belgium', 1, NULL, NULL),
(24, 'BZ', 'Belize', 1, NULL, NULL),
(25, 'BJ', 'Benin', 1, NULL, NULL),
(26, 'BM', 'Bermuda', 1, NULL, NULL),
(27, 'BT', 'Bhutan', 1, NULL, NULL),
(28, 'BO', 'Bolivia', 1, NULL, NULL),
(29, 'BA', 'Bosnia and Herzegovina', 1, NULL, NULL),
(30, 'BW', 'Botswana', 1, NULL, NULL),
(31, 'BV', 'Bouvet Island', 1, NULL, NULL),
(32, 'BR', 'Brazil', 1, NULL, NULL),
(33, 'IO', 'British lndian Ocean Territory', 1, NULL, NULL),
(34, 'BN', 'Brunei Darussalam', 1, NULL, NULL),
(35, 'BG', 'Bulgaria', 1, NULL, NULL),
(36, 'BF', 'Burkina Faso', 1, NULL, NULL),
(37, 'BI', 'Burundi', 1, NULL, NULL),
(38, 'KH', 'Cambodia', 1, NULL, NULL),
(39, 'CM', 'Cameroon', 1, NULL, NULL),
(40, 'CV', 'Cape Verde', 1, NULL, NULL),
(41, 'KY', 'Cayman Islands', 1, NULL, NULL),
(42, 'CF', 'Central African Republic', 1, NULL, NULL),
(43, 'TD', 'Chad', 1, NULL, NULL),
(44, 'CL', 'Chile', 1, NULL, NULL),
(45, 'CN', 'China', 1, NULL, NULL),
(46, 'CX', 'Christmas Island', 1, NULL, NULL),
(47, 'CC', 'Cocos (Keeling) Islands', 1, NULL, NULL),
(48, 'CO', 'Colombia', 1, NULL, NULL),
(49, 'KM', 'Comoros', 1, NULL, NULL),
(50, 'CG', 'Congo', 1, NULL, NULL),
(51, 'CK', 'Cook Islands', 1, NULL, NULL),
(52, 'CR', 'Costa Rica', 1, NULL, NULL),
(53, 'HR', 'Croatia (Hrvatska)', 1, NULL, NULL),
(54, 'CU', 'Cuba', 1, NULL, NULL),
(55, 'CY', 'Cyprus', 1, NULL, NULL),
(56, 'CZ', 'Czech Republic', 1, NULL, NULL),
(57, 'CD', 'Democratic Republic of Congo', 1, NULL, NULL),
(58, 'DK', 'Denmark', 1, NULL, NULL),
(59, 'DJ', 'Djibouti', 1, NULL, NULL),
(60, 'DM', 'Dominica', 1, NULL, NULL),
(61, 'DO', 'Dominican Republic', 1, NULL, NULL),
(62, 'TP', 'East Timor', 1, NULL, NULL),
(63, 'EC', 'Ecudaor', 1, NULL, NULL),
(64, 'EG', 'Egypt', 1, NULL, NULL),
(65, 'SV', 'El Salvador', 1, NULL, NULL),
(66, 'GQ', 'Equatorial Guinea', 1, NULL, NULL),
(67, 'ER', 'Eritrea', 1, NULL, NULL),
(68, 'EE', 'Estonia', 1, NULL, NULL),
(69, 'ET', 'Ethiopia', 1, NULL, NULL),
(70, 'FK', 'Falkland Islands (Malvinas)', 1, NULL, NULL),
(71, 'FO', 'Faroe Islands', 1, NULL, NULL),
(72, 'FJ', 'Fiji', 1, NULL, NULL),
(73, 'FI', 'Finland', 1, NULL, NULL),
(74, 'FR', 'France', 1, NULL, NULL),
(75, 'FX', 'France, Metropolitan', 1, NULL, NULL),
(76, 'GF', 'French Guiana', 1, NULL, NULL),
(77, 'PF', 'French Polynesia', 1, NULL, NULL),
(78, 'TF', 'French Southern Territories', 1, NULL, NULL),
(79, 'GA', 'Gabon', 1, NULL, NULL),
(80, 'GM', 'Gambia', 1, NULL, NULL),
(81, 'GE', 'Georgia', 1, NULL, NULL),
(82, 'DE', 'Germany', 1, NULL, NULL),
(83, 'GH', 'Ghana', 1, NULL, NULL),
(84, 'GI', 'Gibraltar', 1, NULL, NULL),
(85, 'GR', 'Greece', 1, NULL, NULL),
(86, 'GL', 'Greenland', 1, NULL, NULL),
(87, 'GD', 'Grenada', 1, NULL, NULL),
(88, 'GP', 'Guadeloupe', 1, NULL, NULL),
(89, 'GU', 'Guam', 1, NULL, NULL),
(90, 'GT', 'Guatemala', 1, NULL, NULL),
(91, 'GN', 'Guinea', 1, NULL, NULL),
(92, 'GW', 'Guinea-Bissau', 1, NULL, NULL),
(93, 'GY', 'Guyana', 1, NULL, NULL),
(94, 'HT', 'Haiti', 1, NULL, NULL),
(95, 'HM', 'Heard and Mc Donald Islands', 1, NULL, NULL),
(96, 'HN', 'Honduras', 1, NULL, NULL),
(97, 'HK', 'Hong Kong', 1, NULL, NULL),
(98, 'HU', 'Hungary', 1, NULL, NULL),
(99, 'IS', 'Iceland', 1, NULL, NULL),
(100, 'IN', 'India', 1, NULL, NULL),
(101, 'ID', 'Indonesia', 1, NULL, NULL),
(102, 'IR', 'Iran (Islamic Republic of)', 1, NULL, NULL),
(103, 'IQ', 'Iraq', 1, NULL, NULL),
(104, 'IE', 'Ireland', 1, NULL, NULL),
(105, 'IL', 'Israel', 1, NULL, NULL),
(106, 'IT', 'Italy', 1, NULL, NULL),
(107, 'CI', 'Ivory Coast', 1, NULL, NULL),
(108, 'JM', 'Jamaica', 1, NULL, NULL),
(109, 'JP', 'Japan', 1, NULL, NULL),
(110, 'JO', 'Jordan', 1, NULL, NULL),
(111, 'KZ', 'Kazakhstan', 1, NULL, NULL),
(112, 'KE', 'Kenya', 1, NULL, NULL),
(113, 'KI', 'Kiribati', 1, NULL, NULL),
(114, 'KP', 'Korea, Democratic People\'s Republic of', 1, NULL, NULL),
(115, 'KR', 'Korea, Republic of', 1, NULL, NULL),
(116, 'KW', 'Kuwait', 1, NULL, NULL),
(117, 'KG', 'Kyrgyzstan', 1, NULL, NULL),
(118, 'LA', 'Lao People\'s Democratic Republic', 1, NULL, NULL),
(119, 'LV', 'Latvia', 1, NULL, NULL),
(120, 'LB', 'Lebanon', 1, NULL, NULL),
(121, 'LS', 'Lesotho', 1, NULL, NULL),
(122, 'LR', 'Liberia', 1, NULL, NULL),
(123, 'LY', 'Libyan Arab Jamahiriya', 1, NULL, NULL),
(124, 'LI', 'Liechtenstein', 1, NULL, NULL),
(125, 'LT', 'Lithuania', 1, NULL, NULL),
(126, 'LU', 'Luxembourg', 1, NULL, NULL),
(127, 'MO', 'Macau', 1, NULL, NULL),
(128, 'MK', 'Macedonia', 1, NULL, NULL),
(129, 'MG', 'Madagascar', 1, NULL, NULL),
(130, 'MW', 'Malawi', 1, NULL, NULL),
(131, 'MY', 'Malaysia', 1, NULL, NULL),
(132, 'MV', 'Maldives', 1, NULL, NULL),
(133, 'ML', 'Mali', 1, NULL, NULL),
(134, 'MT', 'Malta', 1, NULL, NULL),
(135, 'MH', 'Marshall Islands', 1, NULL, NULL),
(136, 'MQ', 'Martinique', 1, NULL, NULL),
(137, 'MR', 'Mauritania', 1, NULL, NULL),
(138, 'MU', 'Mauritius', 1, NULL, NULL),
(139, 'TY', 'Mayotte', 1, NULL, NULL),
(140, 'MX', 'Mexico', 1, NULL, NULL),
(141, 'FM', 'Micronesia, Federated States of', 1, NULL, NULL),
(142, 'MD', 'Moldova, Republic of', 1, NULL, NULL),
(143, 'MC', 'Monaco', 1, NULL, NULL),
(144, 'MN', 'Mongolia', 1, NULL, NULL),
(145, 'MS', 'Montserrat', 1, NULL, NULL),
(146, 'MA', 'Morocco', 1, NULL, NULL),
(147, 'MZ', 'Mozambique', 1, NULL, NULL),
(148, 'MM', 'Myanmar', 1, NULL, NULL),
(149, 'NA', 'Namibia', 1, NULL, NULL),
(150, 'NR', 'Nauru', 1, NULL, NULL),
(151, 'NP', 'Nepal', 1, NULL, NULL),
(152, 'NL', 'Netherlands', 1, NULL, NULL),
(153, 'AN', 'Netherlands Antilles', 1, NULL, NULL),
(154, 'NC', 'New Caledonia', 1, NULL, NULL),
(155, 'NZ', 'New Zealand', 1, NULL, NULL),
(156, 'NI', 'Nicaragua', 1, NULL, NULL),
(157, 'NE', 'Niger', 1, NULL, NULL),
(158, 'NG', 'Nigeria', 1, NULL, NULL),
(159, 'NU', 'Niue', 1, NULL, NULL),
(160, 'NF', 'Norfork Island', 1, NULL, NULL),
(161, 'MP', 'Northern Mariana Islands', 1, NULL, NULL),
(162, 'NO', 'Norway', 1, NULL, NULL),
(163, 'OM', 'Oman', 1, NULL, NULL),
(164, 'PK', 'Pakistan', 1, NULL, NULL),
(165, 'PW', 'Palau', 1, NULL, NULL),
(166, 'PA', 'Panama', 1, NULL, NULL),
(167, 'PG', 'Papua New Guinea', 1, NULL, NULL),
(168, 'PY', 'Paraguay', 1, NULL, NULL),
(169, 'PE', 'Peru', 1, NULL, NULL),
(170, 'PH', 'Philippines', 1, NULL, NULL),
(171, 'PN', 'Pitcairn', 1, NULL, NULL),
(172, 'PL', 'Poland', 1, NULL, NULL),
(173, 'PT', 'Portugal', 1, NULL, NULL),
(174, 'PR', 'Puerto Rico', 1, NULL, NULL),
(175, 'QA', 'Qatar', 1, NULL, NULL),
(176, 'SS', 'Republic of South Sudan', 1, NULL, NULL),
(177, 'RE', 'Reunion', 1, NULL, NULL),
(178, 'RO', 'Romania', 1, NULL, NULL),
(179, 'RU', 'Russian Federation', 1, NULL, NULL),
(180, 'RW', 'Rwanda', 1, NULL, NULL),
(181, 'KN', 'Saint Kitts and Nevis', 1, NULL, NULL),
(182, 'LC', 'Saint Lucia', 1, NULL, NULL),
(183, 'VC', 'Saint Vincent and the Grenadines', 1, NULL, NULL),
(184, 'WS', 'Samoa', 1, NULL, NULL),
(185, 'SM', 'San Marino', 1, NULL, NULL),
(186, 'ST', 'Sao Tome and Principe', 1, NULL, NULL),
(187, 'SA', 'Saudi Arabia', 1, NULL, NULL),
(188, 'SN', 'Senegal', 1, NULL, NULL),
(189, 'RS', 'Serbia', 1, NULL, NULL),
(190, 'SC', 'Seychelles', 1, NULL, NULL),
(191, 'SL', 'Sierra Leone', 1, NULL, NULL),
(192, 'SG', 'Singapore', 1, NULL, NULL),
(193, 'SK', 'Slovakia', 1, NULL, NULL),
(194, 'SI', 'Slovenia', 1, NULL, NULL),
(195, 'SB', 'Solomon Islands', 1, NULL, NULL),
(196, 'SO', 'Somalia', 1, NULL, NULL),
(197, 'ZA', 'South Africa', 1, NULL, NULL),
(198, 'GS', 'South Georgia South Sandwich Islands', 1, NULL, NULL),
(199, 'ES', 'Spain', 1, NULL, NULL),
(200, 'LK', 'Sri Lanka', 1, NULL, NULL),
(201, 'SH', 'St. Helena', 1, NULL, NULL),
(202, 'PM', 'St. Pierre and Miquelon', 1, NULL, NULL),
(203, 'SD', 'Sudan', 1, NULL, NULL),
(204, 'SR', 'Suriname', 1, NULL, NULL),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands', 1, NULL, NULL),
(206, 'SZ', 'Swaziland', 1, NULL, NULL),
(207, 'SE', 'Sweden', 1, NULL, NULL),
(208, 'CH', 'Switzerland', 1, NULL, NULL),
(209, 'SY', 'Syrian Arab Republic', 1, NULL, NULL),
(210, 'TW', 'Taiwan', 1, NULL, NULL),
(211, 'TJ', 'Tajikistan', 1, NULL, NULL),
(212, 'TZ', 'Tanzania, United Republic of', 1, NULL, NULL),
(213, 'TH', 'Thailand', 1, NULL, NULL),
(214, 'TG', 'Togo', 1, NULL, NULL),
(215, 'TK', 'Tokelau', 1, NULL, NULL),
(216, 'TO', 'Tonga', 1, NULL, NULL),
(217, 'TT', 'Trinidad and Tobago', 1, NULL, NULL),
(218, 'TN', 'Tunisia', 1, NULL, NULL),
(219, 'TR', 'Turkey', 1, NULL, NULL),
(220, 'TM', 'Turkmenistan', 1, NULL, NULL),
(221, 'TC', 'Turks and Caicos Islands', 1, NULL, NULL),
(222, 'TV', 'Tuvalu', 1, NULL, NULL),
(223, 'UG', 'Uganda', 1, NULL, NULL),
(224, 'UA', 'Ukraine', 1, NULL, NULL),
(225, 'AE', 'United Arab Emirates', 1, NULL, NULL),
(226, 'GB', 'United Kingdom', 1, NULL, NULL),
(227, 'UM', 'United States minor outlying islands', 1, NULL, NULL),
(228, 'UY', 'Uruguay', 1, NULL, NULL),
(229, 'UZ', 'Uzbekistan', 1, NULL, NULL),
(230, 'VU', 'Vanuatu', 1, NULL, NULL),
(231, 'VA', 'Vatican City State', 1, NULL, NULL),
(232, 'VE', 'Venezuela', 1, NULL, NULL),
(233, 'VN', 'Vietnam', 1, NULL, NULL),
(234, 'VG', 'Virgin Islands (British)', 1, NULL, NULL),
(235, 'VI', 'Virgin Islands (U.S.)', 1, NULL, NULL),
(236, 'WF', 'Wallis and Futuna Islands', 1, NULL, NULL),
(237, 'EH', 'Western Sahara', 1, NULL, NULL),
(238, 'YE', 'Yemen', 1, NULL, NULL),
(239, 'YU', 'Yugoslavia', 1, NULL, NULL),
(240, 'ZR', 'Zaire', 1, NULL, NULL),
(241, 'ZM', 'Zambia', 1, NULL, NULL),
(242, 'ZW', 'Zimbabwe', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `vendor_id` int NOT NULL,
  `coupon_option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brands` text COLLATE utf8mb4_unicode_ci,
  `users` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `coupons`
--

INSERT INTO `coupons` (`id`, `vendor_id`, `coupon_option`, `coupon_code`, `categories`, `brands`, `users`, `coupon_type`, `amount_type`, `amount`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Manual', 'test10', '1', NULL, '', 'Single Time', 'Percentage', 10.00, '2022-12-31', 1, NULL, NULL),
(2, 1, 'Manual', 'test20', '1', NULL, '', 'Single Time', 'Percentage', 20.00, '2022-12-31', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ahmed Yahya', '37 Salah Salem', 'Cairo', 'Cairo', 'Egypt', '10001', '1255642718', 1, NULL, NULL),
(2, 1, 'Ahmed Yahya', '15 Fouaad St.', 'Alexandria', 'Alexandria', 'Egypt', '141001', '1095632526', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_08_09_172927_create_vendors_table', 1),
(11, '2022_08_09_175014_create_admins_table', 1),
(12, '2022_08_14_013126_create_vendors_business_details_table', 1),
(13, '2022_08_14_125705_create_vendors_bank_details_table', 1),
(14, '2022_08_18_133204_create_sections_table', 1),
(15, '2022_08_20_154959_create_categories_table', 1),
(16, '2022_08_26_235606_create_brands_table', 1),
(17, '2022_08_28_003445_create_products_table', 1),
(18, '2022_09_06_163819_create_products_attributes_table', 1),
(19, '2022_09_17_195644_create_products_images_table', 1),
(20, '2022_09_24_150406_create_banners_table', 1),
(21, '2022_09_26_142845_update_banners_table', 1),
(22, '2022_09_27_134607_update_products_table', 1),
(23, '2022_10_02_142913_create_products_filters_table', 1),
(24, '2022_10_02_143716_create_products_filters_values_table', 1),
(25, '2022_11_02_215937_create_recently_viewed_products_table', 1),
(26, '2022_11_03_143550_create_carts_table', 1),
(27, '2022_11_09_144019_add_columns_to_users', 1),
(28, '2022_12_14_025719_create_coupons_table', 1),
(29, '2023_01_14_012938_create_delivery_addresses_table', 1),
(30, '2023_02_27_200827_create_orders_table', 1),
(31, '2023_02_27_201841_create_orders_products_table', 1),
(32, '2023_03_04_161126_create_order_statuses_table', 1),
(33, '2023_03_05_000428_create_order_item_statuses_table', 1),
(34, '2023_03_08_003018_create_orders_logs_table', 1),
(35, '2023_03_09_144122_update_orders_table', 1),
(36, '2023_03_09_235853_update_orders_products_table', 1),
(37, '2023_03_10_001719_update_orders_logs_table', 1),
(38, '2023_03_29_151313_create_payments_table', 1),
(39, '2023_04_01_140344_create_shipping_charges_table', 1),
(40, '2023_04_04_234905_drop_column_from_shipping_charges_table', 1),
(41, '2023_04_04_235424_add_columns_to_shipping_charges_table', 1),
(42, '2023_04_12_002719_create_cod_pincodes_table', 1),
(43, '2023_04_12_194813_create_prepaid_pincodes_table', 1),
(44, '2023_04_14_154108_add_commission_column_to_vendors_table', 1),
(45, '2023_04_16_211726_add_is_pushed_column_to_orders_table', 1),
(46, '2023_04_23_225334_add_access_token_column_to_users_table', 1),
(47, '2023_05_26_233039_create_newsletter_subscribers_table', 1),
(48, '2023_07_05_112943_create_ratings_table', 1),
(49, '2024_02_28_032011_create_countries_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'yasser100@yopmail.com', 1, NULL, NULL),
(2, 'fouaad@gmail.com', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` double(8,2) DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `courier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_pushed` tinyint NOT NULL DEFAULT '0' COMMENT 'Order pushed to Shiprocket or NOT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_logs`
--

CREATE TABLE `orders_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `order_item_id` int DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_qty` int NOT NULL,
  `item_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_item_statuses`
--

CREATE TABLE `order_item_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_item_statuses`
--

INSERT INTO `order_item_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, NULL, NULL),
(2, 'In Progress', 1, NULL, NULL),
(3, 'Shipped', 1, NULL, NULL),
(4, 'Delivered', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New', 1, NULL, NULL),
(2, 'Pending', 1, NULL, NULL),
(3, 'Canceled', 1, NULL, NULL),
(4, 'In Progress', 1, NULL, NULL),
(5, 'Shipped', 1, NULL, NULL),
(6, 'Partially Shipped', 1, NULL, NULL),
(7, 'Delivered', 1, NULL, NULL),
(8, 'Partially Delivered', 1, NULL, NULL),
(9, 'Paid', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `prepaid_pincodes`
--

CREATE TABLE `prepaid_pincodes` (
  `id` bigint UNSIGNED NOT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `section_id` int NOT NULL,
  `category_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `admin_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_discount` double(8,2) NOT NULL,
  `product_weight` int NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bestseller` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `section_id`, `category_id`, `brand_id`, `vendor_id`, `admin_id`, `admin_type`, `product_name`, `product_code`, `product_color`, `product_price`, `product_discount`, `product_weight`, `product_image`, `product_video`, `group_code`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `is_featured`, `is_bestseller`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 7, 1, 2, 'vendor', 'Redmi Note 11', 'RN11', 'Blue', 15000.00, 10.00, 500, '', '', NULL, NULL, '', '', '', 'Yes', 'Yes', 1, NULL, NULL),
(2, 1, 2, 2, 0, 1, 'superadmin', 'Red Casual T-Shirt', 'RC001', 'Red', 1000.00, 20.00, 500, '', '', NULL, NULL, '', '', '', 'Yes', 'No', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `size`, `price`, `stock`, `sku`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Small', 1000.00, 10, 'RC001-S', 1, NULL, NULL),
(2, 2, 'Medium', 1100.00, 15, 'RC001-M', 1, NULL, NULL),
(3, 2, 'Large', 1200.00, 20, 'RC001-L', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_filters`
--

CREATE TABLE `products_filters` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter_column` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products_filters`
--

INSERT INTO `products_filters` (`id`, `cat_ids`, `filter_name`, `filter_column`, `status`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,6,7,8', 'Fabric', 'fabric', 1, NULL, NULL),
(2, '4,5', 'RAM', 'ram', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_filters_values`
--

CREATE TABLE `products_filters_values` (
  `id` bigint UNSIGNED NOT NULL,
  `filter_id` int NOT NULL,
  `filter_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products_filters_values`
--

INSERT INTO `products_filters_values` (`id`, `filter_id`, `filter_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'cotton', 1, NULL, NULL),
(2, 1, 'polyester', 1, NULL, NULL),
(3, 2, '4 GB', 1, NULL, NULL),
(4, 2, '8 GB', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'It\'s a great mobile phone!', 4, 1, NULL, NULL),
(2, 2, 2, 'Awesome product!', 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recently_viewed_products`
--

CREATE TABLE `recently_viewed_products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Clothing', 1, NULL, NULL),
(2, 'Electronics', 1, NULL, NULL),
(3, 'Appliances', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `0_500g` double(8,2) NOT NULL,
  `501g_1000g` double(8,2) NOT NULL,
  `1001_2000g` double(8,2) NOT NULL,
  `2001g_5000g` double(8,2) NOT NULL,
  `above_5000g` double(8,2) NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `access_token`, `created_at`, `updated_at`) VALUES
(1, 'Jimena Leiva Tercero', NULL, NULL, NULL, NULL, NULL, NULL, 'adam80@example.org', '2024-03-07 15:53:45', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', 1, 'xct7xL7TZ9', NULL, '2024-03-07 15:53:45', '2024-03-07 15:53:45'),
(2, 'Héctor Calderón', NULL, NULL, NULL, NULL, NULL, NULL, 'aitana70@example.org', '2024-03-07 15:53:45', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', 1, 'IP59TqZI1m', NULL, '2024-03-07 15:53:45', '2024-03-07 15:53:45'),
(3, 'María Carrasquillo', NULL, NULL, NULL, NULL, NULL, NULL, 'nflores@example.com', '2024-03-07 15:53:45', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', 1, 'SEqh1SzEeB', NULL, '2024-03-07 15:53:45', '2024-03-07 15:53:45'),
(4, 'Jorge Calero', NULL, NULL, NULL, NULL, NULL, NULL, 'gloria28@example.net', '2024-03-07 15:53:45', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', 1, 'pWJOIzmnED', NULL, '2024-03-07 15:53:45', '2024-03-07 15:53:45'),
(5, 'Sra. Vera Plaza', NULL, NULL, NULL, NULL, NULL, NULL, 'gerard.duenas@example.com', '2024-03-07 15:53:45', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', 1, 'aW1xAIooxJ', NULL, '2024-03-07 15:53:45', '2024-03-07 15:53:45'),
(6, 'Jon Castaño', NULL, NULL, NULL, NULL, NULL, NULL, 'madrid.roberto@example.net', '2024-03-07 15:53:45', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', 1, '06XmVGnZ40', NULL, '2024-03-07 15:53:45', '2024-03-07 15:53:45'),
(7, 'Ignacio Roldán', NULL, NULL, NULL, NULL, NULL, NULL, 'ngodoy@example.com', '2024-03-07 15:53:45', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', 1, 'Xa07Owe9DZ', NULL, '2024-03-07 15:53:45', '2024-03-07 15:53:45'),
(8, 'Esther Ferrer', NULL, NULL, NULL, NULL, NULL, NULL, 'mcuenca@example.org', '2024-03-07 15:53:45', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', 1, 'P7iP31FPJH', NULL, '2024-03-07 15:53:45', '2024-03-07 15:53:45'),
(9, 'D. Héctor Véliz Hijo', NULL, NULL, NULL, NULL, NULL, NULL, 'paz.nuria@example.com', '2024-03-07 15:53:45', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', 1, 'nzzB0RZLAv', NULL, '2024-03-07 15:53:45', '2024-03-07 15:53:45'),
(10, 'Juana Rosas', NULL, NULL, NULL, NULL, NULL, NULL, 'varela.irene@example.net', '2024-03-07 15:53:45', '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', 1, 'Hacx6UoJSH', NULL, '2024-03-07 15:53:45', '2024-03-07 15:53:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` double(8,2) DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `confirm`, `commission`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Yasser Fouaad - Vendor', '17 El-Salam St.', 'Maadi', 'Cairo', 'Egypt', '110001', '9700000000', 'yasser@admin.com', 'No', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendors_bank_details`
--

CREATE TABLE `vendors_bank_details` (
  `id` bigint UNSIGNED NOT NULL,
  `vendor_id` int NOT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vendors_bank_details`
--

INSERT INTO `vendors_bank_details` (`id`, `vendor_id`, `account_holder_name`, `bank_name`, `account_number`, `bank_ifsc_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'John Cena', 'ICICI', '021546545454541545454', '36546655', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendors_business_details`
--

CREATE TABLE `vendors_business_details` (
  `id` bigint UNSIGNED NOT NULL,
  `vendor_id` int NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_proof_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_license_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vendors_business_details`
--

INSERT INTO `vendors_business_details` (`id`, `vendor_id`, `shop_name`, `shop_address`, `shop_city`, `shop_state`, `shop_country`, `shop_pincode`, `shop_mobile`, `shop_website`, `shop_email`, `address_proof`, `address_proof_image`, `business_license_number`, `gst_number`, `pan_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'John Electronics Store', '12 Mahmoud Saeed St.', 'New Cairo', 'Cairo', 'Egypt', '110001', '1253247745', 'amazon.com.eg', 'john@admin.com', 'Passport', 'test.jpg', '1234556', '446444664', '2135446', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cod_pincodes`
--
ALTER TABLE `cod_pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders_logs`
--
ALTER TABLE `orders_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_item_statuses`
--
ALTER TABLE `order_item_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `prepaid_pincodes`
--
ALTER TABLE `prepaid_pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products_filters`
--
ALTER TABLE `products_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products_filters_values`
--
ALTER TABLE `products_filters_values`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recently_viewed_products`
--
ALTER TABLE `recently_viewed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indices de la tabla `vendors_bank_details`
--
ALTER TABLE `vendors_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vendors_business_details`
--
ALTER TABLE `vendors_business_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cod_pincodes`
--
ALTER TABLE `cod_pincodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT de la tabla `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orders_logs`
--
ALTER TABLE `orders_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_item_statuses`
--
ALTER TABLE `order_item_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prepaid_pincodes`
--
ALTER TABLE `prepaid_pincodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `products_filters`
--
ALTER TABLE `products_filters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `products_filters_values`
--
ALTER TABLE `products_filters_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `recently_viewed_products`
--
ALTER TABLE `recently_viewed_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vendors_bank_details`
--
ALTER TABLE `vendors_bank_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vendors_business_details`
--
ALTER TABLE `vendors_business_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

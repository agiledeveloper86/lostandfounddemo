-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 16, 2012 at 07:29 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lostandfounddemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(8) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `eu_member` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=249 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(1, 'IE', 'Ireland', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(2, 'UK', 'United Kingdom', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(3, 'US', 'United States', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(4, 'CH', 'Switzerland', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(5, 'LV', 'Latvia', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(6, 'RU', 'Russia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(7, '', 'United Kingdom Not EU', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(8, 'AF', 'Afghanistan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(9, 'AX', '&ETH;', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(10, 'AL', 'Albania', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(11, 'DZ', 'Algeria', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(12, 'AS', 'American Samoa', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(13, 'AD', 'Andorra', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(14, 'AO', 'Angola', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(15, 'AI', 'Anguilla', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(16, 'AQ', 'Antarctica', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(17, 'AG', 'Antigua And Barbuda', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(18, 'AR', 'Argentina', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(19, 'AM', 'Armenia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(20, 'AW', 'Aruba', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(21, 'AU', 'Australia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(22, 'AT', 'Austria', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(23, 'AZ', 'Azerbaijan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(24, 'BS', 'Bahamas', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(25, 'BH', 'Bahrain', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(26, 'BD', 'Bangladesh', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(27, 'BB', 'Barbados', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(28, 'BY', 'Belarus', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(29, 'BE', 'Belgium', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(30, 'BZ', 'Belize', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(31, 'BJ', 'Benin', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(32, 'BM', 'Bermuda', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(33, 'BT', 'Bhutan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(34, 'BO', 'Bolivia, Plurinational State Of', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(35, 'BA', 'Bosnia And Herzegovina', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(36, 'BW', 'Botswana', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(37, 'BV', 'Bouvet Island', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(38, 'BR', 'Brazil', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(39, 'IO', 'British Indian Ocean Territory', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(40, 'BN', 'Brunei Darussalam', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(41, 'BG', 'Bulgaria', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(42, 'BF', 'Burkina Faso', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(43, 'BI', 'Burundi', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(44, 'KH', 'Cambodia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(45, 'CM', 'Cameroon', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(46, 'CA', 'Canada', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(47, 'CV', 'Cape Verde', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(48, 'KY', 'Cayman Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(49, 'CF', 'Central African Republic', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(50, 'TD', 'Chad', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(51, 'CL', 'Chile', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(52, 'CN', 'China', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(53, 'CX', 'Christmas Island', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(54, 'CC', 'Cocos (keeling) Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(55, 'CO', 'Colombia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(56, 'KM', 'Comoros', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(57, 'CG', 'Congo', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(58, 'CD', 'Congo, The Democratic Republic Of The', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(59, 'CK', 'Cook Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(60, 'CR', 'Costa Rica', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(61, 'CI', 'C&ETH;&curren;te D''ivoire', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(62, 'HR', 'Croatia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(63, 'CU', 'Cuba', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(64, 'CY', 'Cyprus', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(65, 'CZ', 'Czech Republic', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(66, 'DK', 'Denmark', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(67, 'DJ', 'Djibouti', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(68, 'DM', 'Dominica', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(69, 'DO', 'Dominican Republic', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(70, 'EC', 'Ecuador', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(71, 'EG', 'Egypt', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(72, 'SV', 'El Salvador', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(73, 'GQ', 'Equatorial Guinea', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(74, 'ER', 'Eritrea', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(75, 'EE', 'Estonia', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(76, 'ET', 'Ethiopia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(77, 'FK', 'Falkland Islands (malvinas)', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(78, 'FO', 'Faroe Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(79, 'FJ', 'Fiji', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(80, 'FI', 'Finland', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(81, 'FR', 'France', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(82, 'GF', 'French Guiana', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(83, 'PF', 'French Polynesia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(84, 'TF', 'French Southern Territories', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(85, 'GA', 'Gabon', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(86, 'GM', 'Gambia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(87, 'GE', 'Georgia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(88, 'DE', 'Germany', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(89, 'GH', 'Ghana', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(90, 'GI', 'Gibraltar', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(91, 'GR', 'Greece', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(92, 'GL', 'Greenland', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(93, 'GD', 'Grenada', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(94, 'GP', 'Guadeloupe', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(95, 'GU', 'Guam', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(96, 'GT', 'Guatemala', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(97, 'GG', 'Guernsey', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(98, 'GN', 'Guinea', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(99, 'GW', 'Guinea-bissau', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(100, 'GY', 'Guyana', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(101, 'HT', 'Haiti', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(102, 'HM', 'Heard Island And Mcdonald Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(103, 'VA', 'Holy See (vatican City State)', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(104, 'HN', 'Honduras', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(105, 'HK', 'Hong Kong', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(106, 'HU', 'Hungary', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(107, 'IS', 'Iceland', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(108, 'IN', 'India', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(109, 'ID', 'Indonesia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(110, 'IR', 'Iran, Islamic Republic Of', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(111, 'IQ', 'Iraq', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(112, 'IM', 'Isle Of Man', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(113, 'IL', 'Israel', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(114, 'IT', 'Italy', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(115, 'JM', 'Jamaica', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(116, 'JP', 'Japan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(117, 'JE', 'Jersey', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(118, 'JO', 'Jordan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(119, 'KZ', 'Kazakhstan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(120, 'KE', 'Kenya', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(121, 'KI', 'Kiribati', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(122, 'KP', 'Korea, Democratic People''s Republic Of', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(123, 'KR', 'Korea, Republic Of', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(124, 'KW', 'Kuwait', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(125, 'KG', 'Kyrgyzstan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(126, 'LA', 'Lao People''s Democratic Republic', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(127, 'LB', 'Lebanon', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(128, 'LS', 'Lesotho', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(129, 'LR', 'Liberia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(130, 'LY', 'Libyan Arab Jamahiriya', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(131, 'LI', 'Liechtenstein', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(132, 'LT', 'Lithuania', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(133, 'LU', 'Luxembourg', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(134, 'MO', 'Macao', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(135, 'MK', 'Macedonia, The Former Yugoslav Republic Of', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(136, 'MG', 'Madagascar', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(137, 'MW', 'Malawi', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(138, 'MY', 'Malaysia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(139, 'MV', 'Maldives', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(140, 'ML', 'Mali', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(141, 'MT', 'Malta', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(142, 'MH', 'Marshall Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(143, 'MQ', 'Martinique', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(144, 'MR', 'Mauritania', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(145, 'MU', 'Mauritius', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(146, 'YT', 'Mayotte', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(147, 'MX', 'Mexico', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(148, 'FM', 'Micronesia, Federated States Of', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(149, 'MD', 'Moldova, Republic Of', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(150, 'MC', 'Monaco', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(151, 'MN', 'Mongolia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(152, 'ME', 'Montenegro', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(153, 'MS', 'Montserrat', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(154, 'MA', 'Morocco', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(155, 'MZ', 'Mozambique', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(156, 'MM', 'Myanmar', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(157, 'NA', 'Namibia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(158, 'NR', 'Nauru', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(159, 'NP', 'Nepal', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(160, 'NL', 'Netherlands', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(161, 'AN', 'Netherlands Antilles', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(162, 'NC', 'New Caledonia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(163, 'NZ', 'New Zealand', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(164, 'NI', 'Nicaragua', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(165, 'NE', 'Niger', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(166, 'NG', 'Nigeria', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(167, 'NU', 'Niue', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(168, 'NF', 'Norfolk Island', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(169, 'MP', 'Northern Mariana Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(170, 'NO', 'Norway', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(171, 'OM', 'Oman', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(172, 'PK', 'Pakistan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(173, 'PW', 'Palau', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(174, 'PS', 'Palestinian Territory, Occupied', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(175, 'PA', 'Panama', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(176, 'PG', 'Papua New Guinea', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(177, 'PY', 'Paraguay', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(178, 'PE', 'Peru', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(179, 'PH', 'Philippines', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(180, 'PN', 'Pitcairn', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(181, 'PL', 'Poland', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(182, 'PT', 'Portugal', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(183, 'PR', 'Puerto Rico', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(184, 'QA', 'Qatar', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(185, 'RE', 'Reunion', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(186, 'RO', 'Romania', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(187, 'RW', 'Rwanda', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(188, 'BL', 'Saint Barth&ETH;', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(189, 'SH', 'Saint Helena', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(190, 'KN', 'Saint Kitts And Nevis', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(191, 'LC', 'Saint Lucia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(192, 'MF', 'Saint Martin', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(193, 'PM', 'Saint Pierre And Miquelon', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(194, 'VC', 'Saint Vincent And The Grenadines', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(195, 'WS', 'Samoa', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(196, 'SM', 'San Marino', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(197, 'ST', 'Sao Tome And Principe', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(198, 'SA', 'Saudi Arabia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(199, 'SN', 'Senegal', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(200, 'RS', 'Serbia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(201, 'SC', 'Seychelles', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(202, 'SL', 'Sierra Leone', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(203, 'SG', 'Singapore', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(204, 'SK', 'Slovakia', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(205, 'SI', 'Slovenia', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(206, 'SB', 'Solomon Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(207, 'SO', 'Somalia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(208, 'ZA', 'South Africa', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(209, 'GS', 'South Georgia And The South Sandwich Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(210, 'ES', 'Spain', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(211, 'LK', 'Sri Lanka', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(212, 'SD', 'Sudan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(213, 'SR', 'Suriname', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(214, 'SJ', 'Svalbard And Jan Mayen', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(215, 'SZ', 'Swaziland', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(216, 'SE', 'Sweden', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(217, 'SY', 'Syrian Arab Republic', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(218, 'TW', 'Taiwan, Province Of China', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(219, 'TJ', 'Tajikistan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(220, 'TZ', 'Tanzania, United Republic Of', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(221, 'TH', 'Thailand', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(222, 'TL', 'Timor-leste', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(223, 'TG', 'Togo', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(224, 'TK', 'Tokelau', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(225, 'TO', 'Tonga', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(226, 'TT', 'Trinidad And Tobago', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(227, 'TN', 'Tunisia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(228, 'TR', 'Turkey', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(229, 'TM', 'Turkmenistan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(230, 'TC', 'Turks And Caicos Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(231, 'TV', 'Tuvalu', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(232, 'UG', 'Uganda', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(233, 'UA', 'Ukraine', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(234, 'AE', 'United Arab Emirates', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(235, 'GB', 'United Kingdom', 1);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(236, 'UM', 'United States Minor Outlying Islands', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(237, 'UY', 'Uruguay', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(238, 'UZ', 'Uzbekistan', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(239, 'VU', 'Vanuatu', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(240, 'VE', 'Venezuela', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(241, 'VN', 'Viet Nam', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(242, 'VG', 'Virgin Islands, British', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(243, 'VI', 'Virgin Islands, U.s.', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(244, 'WF', 'Wallis And Futuna', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(245, 'EH', 'Western Sahara', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(246, 'YE', 'Yemen', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(247, 'ZM', 'Zambia', 0);
INSERT INTO `country` (`id`, `code`, `name`, `eu_member`) VALUES(248, 'ZW', 'Zimbabwe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id of item',
  `title` varchar(64) DEFAULT NULL COMMENT 'for example "red purse", "black belt", "green gucci shoes"',
  `state` enum('lost','found') DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_type_id` int(1) DEFAULT NULL,
  `description` text COMMENT 'detailed description of item',
  `spot` varchar(128) DEFAULT NULL COMMENT 'Name of place where item was found/lost',
  `street` varchar(128) DEFAULT NULL COMMENT 'Street where item was found or lost (depending on type of item)',
  `city` varchar(128) DEFAULT NULL COMMENT 'city where item was lost/found',
  `zip` varchar(16) DEFAULT NULL COMMENT 'postcode',
  `country_id` int(11) DEFAULT NULL COMMENT 'id of country',
  `created` datetime DEFAULT NULL,
  `is_found` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_item_country` (`country_id`),
  KEY `fk_item_item_type1` (`item_type_id`),
  KEY `fk_item_user1` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `title`, `state`, `user_id`, `item_type_id`, `description`, `spot`, `street`, `city`, `zip`, `country_id`, `created`, `is_found`) VALUES(1, 'Blue Umbrella', 'lost', 4, 3, 'I think i left it in the Costa Coffee.', NULL, NULL, NULL, NULL, 3, NULL, 0);
INSERT INTO `item` (`id`, `title`, `state`, `user_id`, `item_type_id`, `description`, `spot`, `street`, `city`, `zip`, `country_id`, `created`, `is_found`) VALUES(2, 'Car Key', 'lost', 1, 2, 'PLEASE return them, my aunt is locked in my ferrari.', NULL, NULL, NULL, NULL, 1, NULL, 0);
INSERT INTO `item` (`id`, `title`, `state`, `user_id`, `item_type_id`, `description`, `spot`, `street`, `city`, `zip`, `country_id`, `created`, `is_found`) VALUES(3, 'Wallet with $500 Inside', 'lost', 4, 1, 'I am on a holiday in Germany and I''ve lost my money. Please keep the money but return my driver license.', NULL, NULL, NULL, NULL, 88, NULL, 0);
INSERT INTO `item` (`id`, `title`, `state`, `user_id`, `item_type_id`, `description`, `spot`, `street`, `city`, `zip`, `country_id`, `created`, `is_found`) VALUES(4, 'Girlfriend', 'found', 2, 2, 'aoeu', NULL, NULL, NULL, NULL, 8, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE IF NOT EXISTS `item_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`id`, `name`) VALUES(1, 'Wallet');
INSERT INTO `item_type` (`id`, `name`) VALUES(2, 'Key');
INSERT INTO `item_type` (`id`, `name`) VALUES(3, 'Umbrella');
INSERT INTO `item_type` (`id`, `name`) VALUES(4, 'Jacket');
INSERT INTO `item_type` (`id`, `name`) VALUES(5, 'Mobile Phone');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(254) DEFAULT NULL COMMENT 'HASH of password',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `is_admin`, `first_name`, `last_name`, `company`, `email`, `password`, `created`) VALUES(1, 1, 'Armin', 'Hierstetter', NULL, 'admin@example.com', 'admin', NULL);
INSERT INTO `user` (`id`, `is_admin`, `first_name`, `last_name`, `company`, `email`, `password`, `created`) VALUES(2, 0, 'Romans', 'Malinovskis', NULL, 'romans@example.com', 'romans', NULL);
INSERT INTO `user` (`id`, `is_admin`, `first_name`, `last_name`, `company`, `email`, `password`, `created`) VALUES(3, 0, 'Demo', 'User', NULL, 'demo@mail.com', 'demo', NULL);
INSERT INTO `user` (`id`, `is_admin`, `first_name`, `last_name`, `company`, `email`, `password`, `created`) VALUES(4, 0, 'Joe', 'Blogs', NULL, 'joe@example.com', 'joe', NULL);
INSERT INTO `user` (`id`, `is_admin`, `first_name`, `last_name`, `company`, `email`, `password`, `created`) VALUES(6, 1, 'admin', 'admin_surname', NULL, 'admin@website.com', 'password', NULL);
INSERT INTO `user` (`id`, `is_admin`, `first_name`, `last_name`, `company`, `email`, `password`, `created`) VALUES(7, 0, 'user1', 'user1_surname', NULL, 'user1@website.com', 'password', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_item_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_item_item_type1` FOREIGN KEY (`item_type_id`) REFERENCES `item_type` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_item_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

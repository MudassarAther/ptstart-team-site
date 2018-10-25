/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : local.futuresmith.com

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 09/10/2018 04:22:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `charcode` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charcode3` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `numcode` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_region` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `countries_charcode_unique`(`charcode`) USING BTREE,
  UNIQUE INDEX `countries_name_unique`(`name`) USING BTREE,
  INDEX `countries_charcode_name_index`(`charcode`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 248 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (1, 'AF', 'AFG', '004', 'Afghanistan', '93', 'Asia', 'Southern Asia', NULL);
INSERT INTO `countries` VALUES (2, 'AX', 'ALA', '248', 'Aland Islands', '358', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (3, 'AL', 'ALB', '008', 'Albania', '355', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (4, 'DZ', 'DZA', '012', 'Algeria', '213', 'Africa', 'Northern Africa', NULL);
INSERT INTO `countries` VALUES (5, 'AS', 'ASM', '016', 'American Samoa', '1 684', 'Oceania', 'Polynesia', NULL);
INSERT INTO `countries` VALUES (6, 'AD', 'AND', '020', 'Andorra', '376', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (7, 'AO', 'AGO', '024', 'Angola', '244', 'Africa', 'Middle Africa', NULL);
INSERT INTO `countries` VALUES (8, 'AI', 'AIA', '660', 'Anguilla', '1 264', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (9, 'AQ', 'ATA', '010', 'Antarctica', '672', 'Polar', '', NULL);
INSERT INTO `countries` VALUES (10, 'AG', 'ATG', '028', 'Antigua and Barbuda', '1 268', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (11, 'AR', 'ARG', '032', 'Argentina', '54', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (12, 'AM', 'ARM', '051', 'Armenia', '374', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (13, 'AW', 'ABW', '533', 'Aruba', '297', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (14, 'AU', 'AUS', '036', 'Australia', '61', 'Oceania', 'Australia and New Zealand', NULL);
INSERT INTO `countries` VALUES (15, 'AT', 'AUT', '040', 'Austria', '43', 'Europe', 'Western Europe', NULL);
INSERT INTO `countries` VALUES (16, 'AZ', 'AZE', '031', 'Azerbaijan', '994', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (17, 'BS', 'BHS', '044', 'Bahamas', '1 242', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (18, 'BH', 'BHR', '048', 'Bahrain', '973', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (19, 'BD', 'BGD', '050', 'Bangladesh', '880', 'Asia', 'Southern Asia', NULL);
INSERT INTO `countries` VALUES (20, 'BB', 'BRB', '052', 'Barbados', '1 246', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (21, 'BY', 'BLR', '112', 'Belarus', '375', 'Europe', 'Eastern Europe', NULL);
INSERT INTO `countries` VALUES (22, 'BE', 'BEL', '056', 'Belgium', '32', 'Europe', 'Western Europe', NULL);
INSERT INTO `countries` VALUES (23, 'BZ', 'BLZ', '084', 'Belize', '501', 'Americas', 'Central America', NULL);
INSERT INTO `countries` VALUES (24, 'BJ', 'BEN', '204', 'Benin', '229', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (25, 'BM', 'BMU', '060', 'Bermuda', '1 441', 'Americas', 'North America', NULL);
INSERT INTO `countries` VALUES (26, 'BT', 'BTN', '064', 'Bhutan', '975', 'Asia', 'Southern Asia', NULL);
INSERT INTO `countries` VALUES (27, 'BO', 'BOL', '068', 'Bolivia', '591', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (28, 'BA', 'BIH', '070', 'Bosnia and Herzegovina', '387', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (29, 'BW', 'BWA', '072', 'Botswana', '267', 'Africa', 'Southern Africa', NULL);
INSERT INTO `countries` VALUES (30, 'BV', 'BVT', '074', 'Bouvet Island', '47', '', '', NULL);
INSERT INTO `countries` VALUES (31, 'BR', 'BRA', '076', 'Brazil', '55', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (32, 'VG', 'VGB', '092', 'British Virgin Islands', '1 284', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (33, 'IO', 'IOT', '086', 'British Indian Ocean Territory', '246', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (34, 'BN', 'BRN', '096', 'Brunei Darussalam', '673', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (35, 'BG', 'BGR', '100', 'Bulgaria', '359', 'Europe', 'Eastern Europe', NULL);
INSERT INTO `countries` VALUES (36, 'BF', 'BFA', '854', 'Burkina Faso', '226', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (37, 'BI', 'BDI', '108', 'Burundi', '257', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (38, 'KH', 'KHM', '116', 'Cambodia', '855', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (39, 'CM', 'CMR', '120', 'Cameroon', '237', 'Africa', 'Middle Africa', NULL);
INSERT INTO `countries` VALUES (40, 'CA', 'CAN', '124', 'Canada', '1', 'Americas', 'North America', NULL);
INSERT INTO `countries` VALUES (41, 'CV', 'CPV', '132', 'Cape Verde', '238', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (42, 'KY', 'CYM', '136', 'Cayman Islands ', '1 345', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (43, 'CF', 'CAF', '140', 'Central African Republic', '236', 'Africa', 'Middle Africa', NULL);
INSERT INTO `countries` VALUES (44, 'TD', 'TCD', '148', 'Chad', '235', 'Africa', 'Middle Africa', NULL);
INSERT INTO `countries` VALUES (45, 'CL', 'CHL', '152', 'Chile', '56', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (46, 'CN', 'CHN', '156', 'China', '86', 'Asia', 'Eastern Asia', NULL);
INSERT INTO `countries` VALUES (47, 'HK', 'HKG', '344', 'Hong Kong, Special Administrative Region of China', '852', 'Asia', 'Eastern Asia', NULL);
INSERT INTO `countries` VALUES (48, 'MO', 'MAC', '446', 'Macao, Special Administrative Region of China', '853', 'Asia', 'Eastern Asia', NULL);
INSERT INTO `countries` VALUES (49, 'CX', 'CXR', '162', 'Christmas Island', '61', 'Oceania', 'Australia and New Zealand', NULL);
INSERT INTO `countries` VALUES (50, 'CC', 'CCK', '166', 'Cocos (Keeling) Islands', '61', 'Oceania', 'Australia and New Zealand', NULL);
INSERT INTO `countries` VALUES (51, 'CO', 'COL', '170', 'Colombia', '57', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (52, 'KM', 'COM', '174', 'Comoros', '269', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (53, 'CG', 'COG', '178', 'Congo (Brazzaville)', '242', 'Africa', 'Middle Africa', NULL);
INSERT INTO `countries` VALUES (54, 'CD', 'COD', '180', 'Congo, Democratic Republic of the', '243', 'Africa', 'Middle Africa', NULL);
INSERT INTO `countries` VALUES (55, 'CK', 'COK', '184', 'Cook Islands', '682', 'Oceania', 'Polynesia', NULL);
INSERT INTO `countries` VALUES (56, 'CR', 'CRI', '188', 'Costa Rica', '506', 'Americas', 'Central America', NULL);
INSERT INTO `countries` VALUES (57, 'CI', 'CIV', '384', 'Côte d\'Ivoire', '225', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (58, 'HR', 'HRV', '191', 'Croatia', '385', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (59, 'CU', 'CUB', '192', 'Cuba', '53', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (60, 'CY', 'CYP', '196', 'Cyprus', '357', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (61, 'CZ', 'CZE', '203', 'Czech Republic', '420', 'Europe', 'Eastern Europe', NULL);
INSERT INTO `countries` VALUES (62, 'DK', 'DNK', '208', 'Denmark', '45', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (63, 'DJ', 'DJI', '262', 'Djibouti', '253', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (64, 'DM', 'DMA', '212', 'Dominica', '1 767', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (65, 'DO', 'DOM', '214', 'Dominican Republic', '1 809', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (66, 'EC', 'ECU', '218', 'Ecuador', '593', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (67, 'EG', 'EGY', '818', 'Egypt', '20', 'Africa', 'Northern Africa', NULL);
INSERT INTO `countries` VALUES (68, 'SV', 'SLV', '222', 'El Salvador', '503', 'Americas', 'Central America', NULL);
INSERT INTO `countries` VALUES (69, 'GQ', 'GNQ', '226', 'Equatorial Guinea', '240', 'Africa', 'Middle Africa', NULL);
INSERT INTO `countries` VALUES (70, 'ER', 'ERI', '232', 'Eritrea', '291', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (71, 'EE', 'EST', '233', 'Estonia', '372', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (72, 'ET', 'ETH', '231', 'Ethiopia', '251', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (73, 'FK', 'FLK', '238', 'Falkland Islands (Malvinas) ', '500', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (74, 'FO', 'FRO', '234', 'Faroe Islands', '298', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (75, 'FJ', 'FJI', '242', 'Fiji', '679', 'Oceania', 'Melanesia', NULL);
INSERT INTO `countries` VALUES (76, 'FI', 'FIN', '246', 'Finland', '358', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (77, 'FR', 'FRA', '250', 'France', '33', 'Europe', 'Western Europe', NULL);
INSERT INTO `countries` VALUES (78, 'GF', 'GUF', '254', 'French Guiana', '594', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (79, 'PF', 'PYF', '258', 'French Polynesia', '689', 'Oceania', 'Polynesia', NULL);
INSERT INTO `countries` VALUES (80, 'TF', 'ATF', '260', 'French Southern Territories', '33', 'Africa', 'Southern Africa', NULL);
INSERT INTO `countries` VALUES (81, 'GA', 'GAB', '266', 'Gabon', '241', 'Africa', 'Middle Africa', NULL);
INSERT INTO `countries` VALUES (82, 'GM', 'GMB', '270', 'Gambia', '220', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (83, 'GE', 'GEO', '268', 'Georgia', '995', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (84, 'DE', 'DEU', '276', 'Germany', '49', 'Europe', 'Western Europe', NULL);
INSERT INTO `countries` VALUES (85, 'GH', 'GHA', '288', 'Ghana', '233', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (86, 'GI', 'GIB', '292', 'Gibraltar ', '350', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (87, 'GR', 'GRC', '300', 'Greece', '30', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (88, 'GL', 'GRL', '304', 'Greenland', '299', 'Americas', 'North America', NULL);
INSERT INTO `countries` VALUES (89, 'GD', 'GRD', '308', 'Grenada', '1 473', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (90, 'GP', 'GLP', '312', 'Guadeloupe', '590', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (91, 'GU', 'GUM', '316', 'Guam', '1 671', 'Oceania', 'Micronesia', NULL);
INSERT INTO `countries` VALUES (92, 'GT', 'GTM', '320', 'Guatemala', '502', 'Americas', 'Central America', NULL);
INSERT INTO `countries` VALUES (93, 'GG', 'GGY', '831', 'Guernsey', '44', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (94, 'GN', 'GIN', '324', 'Guinea', '224', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (95, 'GW', 'GNB', '624', 'Guinea-Bissau', '245', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (96, 'GY', 'GUY', '328', 'Guyana', '592', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (97, 'HT', 'HTI', '332', 'Haiti', '509', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (98, 'HM', 'HMD', '334', 'Heard Island and Mcdonald Islands', '672', '', '', NULL);
INSERT INTO `countries` VALUES (99, 'VA', 'VAT', '336', 'Holy See (Vatican City State)', '39', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (100, 'HN', 'HND', '340', 'Honduras', '504', 'Americas', 'Central America', NULL);
INSERT INTO `countries` VALUES (101, 'HU', 'HUN', '348', 'Hungary', '36', 'Europe', 'Eastern Europe', NULL);
INSERT INTO `countries` VALUES (102, 'IS', 'ISL', '352', 'Iceland', '354', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (103, 'IN', 'IND', '356', 'India', '91', 'Asia', 'Southern Asia', NULL);
INSERT INTO `countries` VALUES (104, 'ID', 'IDN', '360', 'Indonesia', '62', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (105, 'IR', 'IRN', '364', 'Iran, Islamic Republic of', '98', 'Asia', 'Southern Asia', NULL);
INSERT INTO `countries` VALUES (106, 'IQ', 'IRQ', '368', 'Iraq', '964', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (107, 'IE', 'IRL', '372', 'Ireland', '353', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (108, 'IM', 'IMN', '833', 'Isle of Man ', '44', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (109, 'IL', 'ISR', '376', 'Israel', '972', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (110, 'IT', 'ITA', '380', 'Italy', '39', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (111, 'JM', 'JAM', '388', 'Jamaica', '1 876', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (112, 'JP', 'JPN', '392', 'Japan', '81', 'Asia', 'Eastern Asia', NULL);
INSERT INTO `countries` VALUES (113, 'JE', 'JEY', '832', 'Jersey', '44', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (114, 'JO', 'JOR', '400', 'Jordan', '962', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (115, 'KZ', 'KAZ', '398', 'Kazakhstan', '7', 'Asia', 'Central Asia', NULL);
INSERT INTO `countries` VALUES (116, 'KE', 'KEN', '404', 'Kenya', '254', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (117, 'KI', 'KIR', '296', 'Kiribati', '686', 'Oceania', 'Micronesia', NULL);
INSERT INTO `countries` VALUES (118, 'KP', 'PRK', '408', 'Korea, Democratic People\'s Republic of', '850', 'Asia', 'Eastern Asia', NULL);
INSERT INTO `countries` VALUES (119, 'KR', 'KOR', '410', 'Korea, Republic of', '82', 'Asia', 'Eastern Asia', NULL);
INSERT INTO `countries` VALUES (120, 'KW', 'KWT', '414', 'Kuwait', '965', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (121, 'KG', 'KGZ', '417', 'Kyrgyzstan', '996', 'Asia', 'Central Asia', NULL);
INSERT INTO `countries` VALUES (122, 'LA', 'LAO', '418', 'Lao PDR', '856', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (123, 'LV', 'LVA', '428', 'Latvia', '371', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (124, 'LB', 'LBN', '422', 'Lebanon', '961', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (125, 'LS', 'LSO', '426', 'Lesotho', '266', 'Africa', 'Southern Africa', NULL);
INSERT INTO `countries` VALUES (126, 'LR', 'LBR', '430', 'Liberia', '231', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (127, 'LY', 'LBY', '434', 'Libya', '218', 'Africa', 'Northern Africa', NULL);
INSERT INTO `countries` VALUES (128, 'LI', 'LIE', '438', 'Liechtenstein', '423', 'Europe', 'Western Europe', NULL);
INSERT INTO `countries` VALUES (129, 'LT', 'LTU', '440', 'Lithuania', '370', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (130, 'LU', 'LUX', '442', 'Luxembourg', '352', 'Europe', 'Western Europe', NULL);
INSERT INTO `countries` VALUES (131, 'MK', 'MKD', '807', 'Macedonia, Republic of', '389', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (132, 'MG', 'MDG', '450', 'Madagascar', '261', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (133, 'MW', 'MWI', '454', 'Malawi', '265', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (134, 'MY', 'MYS', '458', 'Malaysia', '60', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (135, 'MV', 'MDV', '462', 'Maldives', '960', 'Asia', 'Southern Asia', NULL);
INSERT INTO `countries` VALUES (136, 'ML', 'MLI', '466', 'Mali', '223', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (137, 'MT', 'MLT', '470', 'Malta', '356', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (138, 'MH', 'MHL', '584', 'Marshall Islands', '692', 'Oceania', 'Micronesia', NULL);
INSERT INTO `countries` VALUES (139, 'MQ', 'MTQ', '474', 'Martinique', '596', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (140, 'MR', 'MRT', '478', 'Mauritania', '222', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (141, 'MU', 'MUS', '480', 'Mauritius', '230', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (142, 'YT', 'MYT', '175', 'Mayotte', '262', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (143, 'MX', 'MEX', '484', 'Mexico', '52', 'Americas', 'Central America', NULL);
INSERT INTO `countries` VALUES (144, 'FM', 'FSM', '583', 'Micronesia, Federated States of', '691', 'Oceania', 'Micronesia', NULL);
INSERT INTO `countries` VALUES (145, 'MD', 'MDA', '498', 'Moldova', '373', 'Europe', 'Eastern Europe', NULL);
INSERT INTO `countries` VALUES (146, 'MC', 'MCO', '492', 'Monaco', '377', 'Europe', 'Western Europe', NULL);
INSERT INTO `countries` VALUES (147, 'MN', 'MNG', '496', 'Mongolia', '976', 'Asia', 'Eastern Asia', NULL);
INSERT INTO `countries` VALUES (148, 'ME', 'MNE', '499', 'Montenegro', '382', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (149, 'MS', 'MSR', '500', 'Montserrat', '664', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (150, 'MA', 'MAR', '504', 'Morocco', '212', 'Africa', 'Northern Africa', NULL);
INSERT INTO `countries` VALUES (151, 'MZ', 'MOZ', '508', 'Mozambique', '258', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (152, 'MM', 'MMR', '104', 'Myanmar', '95', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (153, 'NA', 'NAM', '516', 'Namibia', '264', 'Africa', 'Southern Africa', NULL);
INSERT INTO `countries` VALUES (154, 'NR', 'NRU', '520', 'Nauru', '674', 'Oceania', 'Micronesia', NULL);
INSERT INTO `countries` VALUES (155, 'NP', 'NPL', '524', 'Nepal', '977', 'Asia', 'Southern Asia', NULL);
INSERT INTO `countries` VALUES (156, 'NL', 'NLD', '528', 'Netherlands', '31', 'Europe', 'Western Europe', NULL);
INSERT INTO `countries` VALUES (157, 'AN', 'ANT', '530', 'Netherlands Antilles', '599', '', NULL, NULL);
INSERT INTO `countries` VALUES (158, 'NC', 'NCL', '540', 'New Caledonia', '687', 'Oceania', 'Melanesia', NULL);
INSERT INTO `countries` VALUES (159, 'NZ', 'NZL', '554', 'New Zealand', '64', 'Oceania', 'Australia and New Zealand', NULL);
INSERT INTO `countries` VALUES (160, 'NI', 'NIC', '558', 'Nicaragua', '505', 'Americas', 'Central America', NULL);
INSERT INTO `countries` VALUES (161, 'NE', 'NER', '562', 'Niger', '227', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (162, 'NG', 'NGA', '566', 'Nigeria', '234', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (163, 'NU', 'NIU', '570', 'Niue ', '683', 'Oceania', 'Polynesia', NULL);
INSERT INTO `countries` VALUES (164, 'NF', 'NFK', '574', 'Norfolk Island', '672', 'Oceania', 'Australia and New Zealand', NULL);
INSERT INTO `countries` VALUES (165, 'MP', 'MNP', '580', 'Northern Mariana Islands', '1 670', 'Oceania', 'Micronesia', NULL);
INSERT INTO `countries` VALUES (166, 'NO', 'NOR', '578', 'Norway', '47', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (167, 'OM', 'OMN', '512', 'Oman', '968', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (168, 'PK', 'PAK', '586', 'Pakistan', '92', 'Asia', 'Southern Asia', NULL);
INSERT INTO `countries` VALUES (169, 'PW', 'PLW', '585', 'Palau', '680', 'Oceania', 'Micronesia', NULL);
INSERT INTO `countries` VALUES (170, 'PS', 'PSE', '275', 'Palestine‎', '970', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (171, 'PA', 'PAN', '591', 'Panama', '507', 'Americas', 'Central America', NULL);
INSERT INTO `countries` VALUES (172, 'PG', 'PNG', '598', 'Papua New Guinea', '675', 'Oceania', 'Melanesia', NULL);
INSERT INTO `countries` VALUES (173, 'PY', 'PRY', '600', 'Paraguay', '595', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (174, 'PE', 'PER', '604', 'Peru', '51', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (175, 'PH', 'PHL', '608', 'Philippines', '63', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (176, 'PN', 'PCN', '612', 'Pitcairn', '870', 'Oceania', 'Polynesia', NULL);
INSERT INTO `countries` VALUES (177, 'PL', 'POL', '616', 'Poland', '48', 'Europe', 'Eastern Europe', NULL);
INSERT INTO `countries` VALUES (178, 'PT', 'PRT', '620', 'Portugal', '351', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (179, 'PR', 'PRI', '630', 'Puerto Rico', '1', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (180, 'QA', 'QAT', '634', 'Qatar', '974', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (181, 'RE', 'REU', '638', 'Reunion', '262', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (182, 'RO', 'ROU', '642', 'Romania', '40', 'Europe', 'Eastern Europe', NULL);
INSERT INTO `countries` VALUES (183, 'RU', 'RUS', '643', 'Russian Federation', '7', 'Europe', 'Eastern Europe', NULL);
INSERT INTO `countries` VALUES (184, 'RW', 'RWA', '646', 'Rwanda', '250', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (185, 'BL', 'BLM', '652', 'Saint-Barth?lemy', '590', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (186, 'SH', 'SHN', '654', 'Saint Helena', '290', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (187, 'KN', 'KNA', '659', 'Saint Kitts and Nevis', '1 869', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (188, 'LC', 'LCA', '662', 'Saint Lucia', '1 758', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (189, 'MF', 'MAF', '663', 'Saint-Martin (French part)', '1 599', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (190, 'PM', 'SPM', '666', 'Saint Pierre and Miquelon ', '508', 'Americas', 'North America', NULL);
INSERT INTO `countries` VALUES (191, 'VC', 'VCT', '670', 'Saint Vincent and Grenadines', '1 784', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (192, 'WS', 'WSM', '882', 'Samoa', '685', 'Oceania', 'Polynesia', NULL);
INSERT INTO `countries` VALUES (193, 'SM', 'SMR', '674', 'San Marino', '378', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (194, 'ST', 'STP', '678', 'Sao Tome and Principe', '239', 'Africa', 'Middle Africa', NULL);
INSERT INTO `countries` VALUES (195, 'SA', 'SAU', '682', 'Saudi Arabia', '966', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (196, 'SN', 'SEN', '686', 'Senegal', '221', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (197, 'RS', 'SRB', '688', 'Serbia', '381', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (198, 'SC', 'SYC', '690', 'Seychelles', '248', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (199, 'SL', 'SLE', '694', 'Sierra Leone', '232', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (200, 'SG', 'SGP', '702', 'Singapore', '65', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (201, 'SK', 'SVK', '703', 'Slovakia', '421', 'Europe', 'Eastern Europe', NULL);
INSERT INTO `countries` VALUES (202, 'SI', 'SVN', '705', 'Slovenia', '386', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (203, 'SB', 'SLB', '090', 'Solomon Islands', '677', 'Oceania', 'Melanesia', NULL);
INSERT INTO `countries` VALUES (204, 'SO', 'SOM', '706', 'Somalia', '252', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (205, 'ZA', 'ZAF', '710', 'South Africa', '27', 'Africa', 'Southern Africa', NULL);
INSERT INTO `countries` VALUES (206, 'GS', 'SGS', '239', 'South Georgia and the South Sandwich Islands', '500', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (207, 'SS', 'SSD', '728', 'South Sudan', '211', 'Africa', 'Middle Africa', NULL);
INSERT INTO `countries` VALUES (208, 'ES', 'ESP', '724', 'Spain', '34', 'Europe', 'Southern Europe', NULL);
INSERT INTO `countries` VALUES (209, 'LK', 'LKA', '144', 'Sri Lanka', '94', 'Asia', 'Southern Asia', NULL);
INSERT INTO `countries` VALUES (210, 'SD', 'SDN', '736', 'Sudan', '249', 'Africa', 'Northern Africa', NULL);
INSERT INTO `countries` VALUES (211, 'SR', 'SUR', '740', 'Suriname', '597', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (212, 'SJ', 'SJM', '744', 'Svalbard and Jan Mayen Islands ', '47', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (213, 'SZ', 'SWZ', '748', 'Swaziland', '268', 'Africa', 'Southern Africa', NULL);
INSERT INTO `countries` VALUES (214, 'SE', 'SWE', '752', 'Sweden', '46', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (215, 'CH', 'CHE', '756', 'Switzerland', '41', 'Europe', 'Western Europe', NULL);
INSERT INTO `countries` VALUES (216, 'SY', 'SYR', '760', 'Syrian Arab Republic (Syria)', '963', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (217, 'TW', 'TWN', '158', 'Taiwan, Republic of China', '886', 'Asia', 'Eastern Asia', NULL);
INSERT INTO `countries` VALUES (218, 'TJ', 'TJK', '762', 'Tajikistan', '992', 'Asia', 'Central Asia', NULL);
INSERT INTO `countries` VALUES (219, 'TZ', 'TZA', '834', 'Tanzania *, United Republic of', '255', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (220, 'TH', 'THA', '764', 'Thailand', '66', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (221, 'TL', 'TLS', '626', 'Timor-Leste', '670', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (222, 'TG', 'TGO', '768', 'Togo', '228', 'Africa', 'Western Africa', NULL);
INSERT INTO `countries` VALUES (223, 'TK', 'TKL', '772', 'Tokelau ', '690', 'Oceania', 'Polynesia', NULL);
INSERT INTO `countries` VALUES (224, 'TO', 'TON', '776', 'Tonga', '676', 'Oceania', 'Polynesia', NULL);
INSERT INTO `countries` VALUES (225, 'TT', 'TTO', '780', 'Trinidad and Tobago', '1 868', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (226, 'TN', 'TUN', '788', 'Tunisia', '216', 'Africa', 'Northern Africa', NULL);
INSERT INTO `countries` VALUES (227, 'TR', 'TUR', '792', 'Turkey', '90', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (228, 'TM', 'TKM', '795', 'Turkmenistan', '993', 'Asia', 'Central Asia', NULL);
INSERT INTO `countries` VALUES (229, 'TC', 'TCA', '796', 'Turks and Caicos Islands ', '1 649', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (230, 'TV', 'TUV', '798', 'Tuvalu', '688', 'Oceania', 'Polynesia', NULL);
INSERT INTO `countries` VALUES (231, 'UG', 'UGA', '800', 'Uganda', '256', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (232, 'UA', 'UKR', '804', 'Ukraine', '380', 'Europe', 'Eastern Europe', NULL);
INSERT INTO `countries` VALUES (233, 'AE', 'ARE', '784', 'United Arab Emirates', '971', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (234, 'GB', 'GBR', '826', 'United Kingdom', '44', 'Europe', 'Northern Europe', NULL);
INSERT INTO `countries` VALUES (235, 'US', 'USA', '840', 'United States', '1', 'Americas', 'North America', NULL);
INSERT INTO `countries` VALUES (236, 'UM', 'UMI', '581', 'United States Minor Outlying Islands', '1', 'Americas', 'North America', NULL);
INSERT INTO `countries` VALUES (237, 'UY', 'URY', '858', 'Uruguay', '598', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (238, 'UZ', 'UZB', '860', 'Uzbekistan', '998', 'Asia', 'Central Asia', NULL);
INSERT INTO `countries` VALUES (239, 'VU', 'VUT', '548', 'Vanuatu', '678', 'Oceania', 'Melanesia', NULL);
INSERT INTO `countries` VALUES (240, 'VE', 'VEN', '862', 'Venezuela (Bolivarian Republic of)', '58', 'Americas', 'South America', NULL);
INSERT INTO `countries` VALUES (241, 'VN', 'VNM', '704', 'Viet Nam', '84', 'Asia', 'South-Eastern Asia', NULL);
INSERT INTO `countries` VALUES (242, 'VI', 'VIR', '850', 'Virgin Islands, US', '1 340', 'Americas', 'Caribbean', NULL);
INSERT INTO `countries` VALUES (243, 'WF', 'WLF', '876', 'Wallis and Futuna Islands ', '681', 'Oceania', 'Polynesia', NULL);
INSERT INTO `countries` VALUES (244, 'EH', 'ESH', '732', 'Western Sahara', '212', 'Africa', 'Northern Africa', NULL);
INSERT INTO `countries` VALUES (245, 'YE', 'YEM', '887', 'Yemen', '967', 'Asia', 'Western Asia', NULL);
INSERT INTO `countries` VALUES (246, 'ZM', 'ZMB', '894', 'Zambia', '260', 'Africa', 'Eastern Africa', NULL);
INSERT INTO `countries` VALUES (247, 'ZW', 'ZWE', '716', 'Zimbabwe', '263', 'Africa', 'Eastern Africa', NULL);

-- ----------------------------
-- Table structure for discussions
-- ----------------------------
DROP TABLE IF EXISTS `discussions`;
CREATE TABLE `discussions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `topic_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `discussionable_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: Global, 2: Tribe, 3: Project',
  `discussionable_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of discussions
-- ----------------------------
INSERT INTO `discussions` VALUES (1, 'Discussion 1 - Laravel\'s Advantage', 'Laravel and React are two popular web development technologies used for building modern web applications. Laravel is prominently a server-side PHP framework, whereas React is a client-side JavaScript library. This tutorial serves as an introduction to both Laravel and React, combining them to create a modern web application. \r\nIn a modern web application, the server has a limited job of managing the back end through some API (Application Programming Interface) endpoints. The client sends requests to these endpoints, and the server returns a response. However, the server is not concerned about how the client renders the view, which falls perfectly in line with the Separation of Concerns principle. This architecture allows developers to build robust applications for the web and also for different devices. \r\nIn this tutorial, we will be using the latest version of Laravel, version 5.5, to create a RESTful back-end API. The front end will comprise of components written in React. We will be building a resourceful product listing application. The first part of the tutorial will focus more on the Laravel concepts and the back end. Let\'s get started. \r\nIntroduction\r\nLaravel is a PHP framework developed for the modern web. It has an expressive syntax that favors the convention over configuration paradigm. Laravel has all the features that you need to get started with a project right out of the box. But personally, I like Laravel because it turns development with PHP into an entirely diffe', 4, 2, 2, 1, '2018-10-02 21:40:21', '2018-10-02 21:40:21', NULL);
INSERT INTO `discussions` VALUES (2, 'Discussion 2 - Eloquent Usage', 'In addition to traditional polymorphic relations, you may also define \"many-to-many\" polymorphic relations. For example, a blog Post and Video model could share a polymorphic relation to a Tag model. Using a many-to-many polymorphic relation allows you to have a single list of unique tags that are shared across blog posts and videos. First, let\'s examine the table structure:', 1, 2, 2, 1, '2018-10-03 14:31:02', '2018-10-03 14:31:02', NULL);
INSERT INTO `discussions` VALUES (3, 'Discussion 3 - Laravel Notification Usage', 'Once your database table and models are defined, you may access the relationships via your models. For example, to access all of the tags for a post, you can use the tags dynamic property:\r\nSince all types of Eloquent relationships are defined via methods, you may call those methods to obtain an instance of the relationship without actually executing the relationship queries. In addition, all types of Eloquent relationships also serve as query builders, allowing you to continue to chain constraints onto the relationship query before finally executing the SQL against your database.\r\nFor example, imagine a blog system in which a User model has many associated Post models:', 5, 2, 2, 1, '2018-10-03 14:35:14', '2018-10-03 14:35:14', NULL);
INSERT INTO `discussions` VALUES (4, 'Database, Improving the function of Laravel', 'Database, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of Laravel', 3, 3, 3, 4, '2018-10-03 17:10:44', '2018-10-03 17:10:44', NULL);
INSERT INTO `discussions` VALUES (5, 'Database, Improving the function of Laravel', 'Database, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of Laravel', 3, 3, 3, 4, '2018-10-03 17:20:04', '2018-10-03 17:20:04', NULL);
INSERT INTO `discussions` VALUES (6, 'Database, Improving the function of Laravel', 'Database, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of Laravel', 3, 3, 3, 4, '2018-10-03 17:21:35', '2018-10-03 17:21:35', NULL);
INSERT INTO `discussions` VALUES (7, 'Database, Improving the function of Laravel', 'Database, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of LaravelDatabase, Improving the function of Laravel', 3, 3, 3, 4, '2018-10-03 17:22:44', '2018-10-03 17:22:44', NULL);

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `target_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1: User Avatar, 2: Tribe, 3: Project, 4: Message',
  `mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NULL DEFAULT NULL,
  `hash` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `files_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES (1, 2, NULL, '1.png', 2, 'image/png', 'png', 61911, 'uploads/trb/0/0/2/', NULL, '340508ae1de70a6c29e6bf9d534c2bcd', '2018-10-02 17:24:13', '2018-10-02 17:24:13', NULL);
INSERT INTO `files` VALUES (2, 2, NULL, '1_1.png', 2, 'image/png', 'png', 61911, 'uploads/trb/0/0/2/', NULL, 'a9f8a06fa3f1d0ab33fbd3d373f005b3', '2018-10-02 17:25:45', '2018-10-02 17:25:45', NULL);
INSERT INTO `files` VALUES (3, 2, NULL, '1_2.png', 2, 'image/png', 'png', 61911, 'uploads/trb/0/0/2/', NULL, '1596f1ad09e854f6ee9e68d6f38df2f7', '2018-10-02 17:55:38', '2018-10-02 17:55:38', NULL);
INSERT INTO `files` VALUES (4, 2, 1, '1_3.png', 2, 'image/png', 'png', 61911, 'uploads/trb/0/0/2/', 1, 'ca880edf5b6918705968e03408116e56', '2018-10-02 17:56:49', '2018-10-02 17:56:54', NULL);
INSERT INTO `files` VALUES (5, 2, 2, '2.png', 2, 'image/png', 'png', 77127, 'uploads/trb/0/0/2/', 1, '3fae22f0a9323c01b859b31b813c2710', '2018-10-02 17:57:58', '2018-10-02 17:58:05', NULL);
INSERT INTO `files` VALUES (6, 2, 3, '3.png', 2, 'image/png', 'png', 116044, 'uploads/trb/0/0/2/', 1, '2b3dd5ca87b9630bffeecb1f320b55d6', '2018-10-02 17:58:48', '2018-10-02 17:58:53', NULL);
INSERT INTO `files` VALUES (7, 2, 4, '5.png', 2, 'image/png', 'png', 88345, 'uploads/trb/0/0/2/', 1, '2f38cb4decb5e8c4611e706a87df342d', '2018-10-02 17:59:19', '2018-10-02 17:59:25', NULL);
INSERT INTO `files` VALUES (8, 2, NULL, '112_1.jpg', 3, 'image/jpeg', 'jpg', 13225, 'uploads/jb/0/0/2/', NULL, '9c389b7acbdfea5f09d285f670d08bbb', '2018-10-02 18:32:05', '2018-10-02 18:32:05', NULL);
INSERT INTO `files` VALUES (9, 2, NULL, '114.jpg', 3, 'image/jpeg', 'jpg', 9560, 'uploads/jb/0/0/2/', NULL, '5d1a9c267520f1a57799e0f5dff26902', '2018-10-02 18:32:09', '2018-10-02 18:32:09', NULL);
INSERT INTO `files` VALUES (10, 3, NULL, '6.png', 2, 'image/png', 'png', 73147, 'uploads/trb/0/0/3/', NULL, '777f0af68c62f2be6abf6ceac7998e84', '2018-10-02 18:49:31', '2018-10-02 18:49:31', NULL);
INSERT INTO `files` VALUES (11, 3, 5, '6_1.png', 2, 'image/png', 'png', 73147, 'uploads/trb/0/0/3/', 1, '7b5f7923195601a659984d2b3e84da7f', '2018-10-02 18:50:39', '2018-10-02 18:50:43', NULL);
INSERT INTO `files` VALUES (12, 3, NULL, '114.jpg', 3, 'image/jpeg', 'jpg', 9560, 'uploads/jb/0/0/3/', NULL, 'bf74db0acd3b4c08f1156808f020742e', '2018-10-02 19:18:03', '2018-10-02 19:18:03', NULL);
INSERT INTO `files` VALUES (13, 3, 1, '114_1.jpg', 3, 'image/jpeg', 'jpg', 9560, 'uploads/jb/0/0/3/', 1, '5100195e0263feb81165c45723a8eeeb', '2018-10-02 19:22:24', '2018-10-02 19:22:32', NULL);
INSERT INTO `files` VALUES (14, 3, 3, '114_2.jpg', 3, 'image/jpeg', 'jpg', 9560, 'uploads/jb/0/0/3/', 1, '1fb43fdd18db10c38e4210a7cc581dc2', '2018-10-02 19:24:35', '2018-10-02 19:24:41', NULL);
INSERT INTO `files` VALUES (15, 2, 2, 'dejan.jpg', 1, 'image/jpeg', 'jpg', 24019, 'uploads/uavat/0/0/2/', 1, '1fdb010dd381128638f55ce8937f4037', '2018-10-03 04:27:55', '2018-10-03 04:28:27', NULL);
INSERT INTO `files` VALUES (16, 3, 3, 'filip.jpg', 1, 'image/jpeg', 'jpg', 31010, 'uploads/uavat/0/0/3/', 1, '5b77eecd621c2a78bea403065e1e7913', '2018-10-03 04:28:48', '2018-10-03 04:29:05', NULL);
INSERT INTO `files` VALUES (17, 3, 6, '11.png', 2, 'image/png', 'png', 80146, 'uploads/trb/0/0/3/', 1, 'e4435a4a62ad9593e542a8c5b29385b2', '2018-10-03 16:32:30', '2018-10-03 16:32:34', NULL);
INSERT INTO `files` VALUES (18, 4, NULL, '6.png', 2, 'image/png', 'png', 73147, 'uploads/trb/0/0/4/', NULL, '68370222cf2543b10bdd9db497fc4d7b', '2018-10-03 16:36:30', '2018-10-03 16:36:30', NULL);
INSERT INTO `files` VALUES (19, 4, NULL, '112.jpg', 2, 'image/jpeg', 'jpg', 13225, 'uploads/trb/0/0/4/', NULL, '48434d6f44e6d4bd2bbfee7e6d3d4130', '2018-10-03 16:37:48', '2018-10-03 16:37:48', NULL);
INSERT INTO `files` VALUES (20, 4, 7, '112_1.jpg', 2, 'image/jpeg', 'jpg', 13225, 'uploads/trb/0/0/4/', 1, '3797a7a6dbc8f341cf8db23274d027bb', '2018-10-03 16:38:10', '2018-10-03 16:38:20', NULL);
INSERT INTO `files` VALUES (21, 2, 4, '8.png', 3, 'image/png', 'png', 108052, 'uploads/jb/0/0/2/', 1, '9de02f4073c70bc7eec1accde2c9a065', '2018-10-03 17:08:31', '2018-10-03 17:08:42', NULL);
INSERT INTO `files` VALUES (22, 2, 5, '4.png', 3, 'image/png', 'png', 110197, 'uploads/jb/0/0/2/', 1, '071f719ffedc38100bac40a7b2cd0eb0', '2018-10-03 17:34:19', '2018-10-03 17:34:25', NULL);

-- ----------------------------
-- Table structure for messenger_messages
-- ----------------------------
DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE `messenger_messages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for messenger_participants
-- ----------------------------
DROP TABLE IF EXISTS `messenger_participants`;
CREATE TABLE `messenger_participants`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_read` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for messenger_threads
-- ----------------------------
DROP TABLE IF EXISTS `messenger_threads`;
CREATE TABLE `messenger_threads`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: Global, 2: Tribe, 3: Project',
  `ref_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_28_175635_create_threads_table', 1);
INSERT INTO `migrations` VALUES (4, '2014_10_28_175710_create_messages_table', 1);
INSERT INTO `migrations` VALUES (5, '2014_10_28_180224_create_participants_table', 1);
INSERT INTO `migrations` VALUES (6, '2014_11_03_154831_add_soft_deletes_to_participants_table', 1);
INSERT INTO `migrations` VALUES (7, '2014_12_04_124531_add_softdeletes_to_threads_table', 1);
INSERT INTO `migrations` VALUES (8, '2017_03_30_152742_add_soft_deletes_to_messages_table', 1);
INSERT INTO `migrations` VALUES (9, '2018_09_18_102206_create_tribes_table', 1);
INSERT INTO `migrations` VALUES (10, '2018_09_18_103250_create_projects_table', 1);
INSERT INTO `migrations` VALUES (11, '2018_09_19_112222_create_countries_table', 1);
INSERT INTO `migrations` VALUES (12, '2018_09_19_120619_create_topics_table', 1);
INSERT INTO `migrations` VALUES (13, '2018_09_19_151544_create_files_table', 1);
INSERT INTO `migrations` VALUES (14, '2018_09_20_033639_create_user_profiles_table', 1);
INSERT INTO `migrations` VALUES (15, '2018_09_20_060101_create_tribe_members_table', 1);
INSERT INTO `migrations` VALUES (16, '2018_09_20_092009_create_project_members_table', 1);
INSERT INTO `migrations` VALUES (17, '2018_09_21_101059_add_strip_api_fields_to_users_table', 1);
INSERT INTO `migrations` VALUES (18, '2018_09_21_101828_create_subscriptions_table', 1);
INSERT INTO `migrations` VALUES (19, '2018_09_21_172216_create_stripe_plans_table', 1);
INSERT INTO `migrations` VALUES (20, '2018_09_23_031047_create_dicussions_table', 1);
INSERT INTO `migrations` VALUES (21, '2018_09_23_120719_create_tribe_invites_table', 1);
INSERT INTO `migrations` VALUES (22, '2018_09_23_124959_add_token_status_fields_to_users_table', 1);
INSERT INTO `migrations` VALUES (23, '2018_09_23_175713_create_notifications_table', 1);
INSERT INTO `migrations` VALUES (24, '2018_09_24_041230_add_type_ref_id_to_discussions_table', 1);
INSERT INTO `migrations` VALUES (25, '2018_09_24_082849_add_role_to_users_table', 1);
INSERT INTO `migrations` VALUES (26, '2018_09_24_083642_add_type_ref_id_to_messenger_threads_table', 1);
INSERT INTO `migrations` VALUES (27, '2018_09_25_062954_add_is_sent_email_trial_last_3_days_to_subscriptions_table', 1);
INSERT INTO `migrations` VALUES (28, '2018_09_28_200840_create_project_topic_table', 1);
INSERT INTO `migrations` VALUES (29, '2018_10_01_143304_create_topic_tribe_table', 1);
INSERT INTO `migrations` VALUES (30, '2018_10_03_063614_change_discussions_table', 2);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_notifiable_type_notifiable_id_index`(`notifiable_type`, `notifiable_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES ('089eb475-b6dc-438a-b034-aaa3ec11c87f', 'App\\Notifications\\TribeJoinRequestReceived', 'App\\Models\\User', 2, '{\"message\":\"You have received the joining request for Tribe \\\"Group for Laravel\\\" from User \\\"Filip\\\"\",\"tribe_id\":1,\"sender_id\":3}', NULL, '2018-10-03 16:27:05', '2018-10-03 16:27:05');
INSERT INTO `notifications` VALUES ('3fc428a8-294e-4f59-aa77-0d152ccf1cba', 'App\\Notifications\\TribeJoinRequestAllowed', 'App\\Models\\User', 3, '{\"message\":\"You have been allowed to join the tribe \\\"Group for Laravel\\\" by the user \\\"Dejan\\\"\",\"tribe_id\":1,\"sender_id\":2}', NULL, '2018-10-02 19:15:52', '2018-10-02 19:15:52');
INSERT INTO `notifications` VALUES ('7941d9c4-b3e6-4d40-88e1-6908eef2c6f5', 'App\\Notifications\\TribeJoinRequestReceived', 'App\\Models\\User', 2, '{\"message\":\"You have received the joining request for Tribe \\\"Group for Laravel\\\" from User \\\"Filip\\\"\",\"tribe_id\":1,\"sender_id\":3}', NULL, '2018-10-03 16:13:05', '2018-10-03 16:13:05');
INSERT INTO `notifications` VALUES ('81dd3c37-872d-46c8-b5c1-e8bba546cbfa', 'App\\Notifications\\TribeInviteRequestReceived', 'App\\Models\\User', 3, '{\"message\":\"You have been received the invitation for the tribe \\\"Group for Laravel\\\" by the user \\\"Dejan\\\"\",\"tribe_id\":1,\"sender_id\":2}', NULL, '2018-10-03 16:59:18', '2018-10-03 16:59:18');
INSERT INTO `notifications` VALUES ('b29ad82e-a0dd-4907-8428-ef7c7cb00507', 'App\\Notifications\\TribeJoinRequestReceived', 'App\\Models\\User', 2, '{\"message\":\"You have received the joining request for Tribe \\\"Group for Laravel\\\" from User \\\"Filip\\\"\",\"tribe_id\":1,\"sender_id\":3}', NULL, '2018-10-02 18:15:29', '2018-10-02 18:15:29');
INSERT INTO `notifications` VALUES ('d5ad816d-c2c3-40b5-bd3f-83c5d02b5f25', 'App\\Notifications\\ProjectJoinRequestSent', 'App\\Models\\User', 2, '{\"message\":\"You have received the joining request for Project \\\"Improving the function of Laravel\\\" from User \\\"Filip\\\"\",\"project_id\":4,\"sender_id\":3}', NULL, '2018-10-03 17:09:56', '2018-10-03 17:09:56');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('dejan@a.com', '$2y$10$S24ngRO/zp1ZbQcLk.O2I.QLjYtnuVCJWBulDIAFt.a2OfDkDNy1.', '2018-10-07 16:58:54');

-- ----------------------------
-- Table structure for project_members
-- ----------------------------
DROP TABLE IF EXISTS `project_members`;
CREATE TABLE `project_members`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: Pending, 2: Accept, 3: Decline',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of project_members
-- ----------------------------
INSERT INTO `project_members` VALUES (2, 3, 3, '', 2, '2018-10-02 19:24:41', '2018-10-02 19:24:41');
INSERT INTO `project_members` VALUES (3, 4, 2, '', 2, '2018-10-03 17:08:42', '2018-10-03 17:08:42');
INSERT INTO `project_members` VALUES (4, 4, 3, 'a', 1, '2018-10-03 17:09:56', '2018-10-03 17:09:56');
INSERT INTO `project_members` VALUES (5, 5, 2, '', 2, '2018-10-03 17:34:25', '2018-10-03 17:34:25');

-- ----------------------------
-- Table structure for project_topic
-- ----------------------------
DROP TABLE IF EXISTS `project_topic`;
CREATE TABLE `project_topic`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `members` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `tribe_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `co_chief_id` int(11) NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1: Enable, 2: Diable',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES (3, 'How to learn Laravel By DESIGNER', 'How to learn Laravel By DESIGNER How to learn Laravel By DESIGNERHow to learn Laravel By DESIGNERHow to learn Laravel By DESIGNERHow to learn Laravel By DESIGNERHow to learn Laravel By DESIGNERHow to learn Laravel By DESIGNERHow to learn Laravel By DESIGNERHow to learn Laravel By DESIGNERHow to learn Laravel By DESIGNERHow to learn Laravel By DESIGNER', 0, 3, 'Sydney-Project', 0, 1, 3, NULL, 2, '2018-10-02 19:24:41', '2018-10-02 19:24:41', NULL);
INSERT INTO `projects` VALUES (4, 'Improving the function of Laravel', 'If the thought of volunteering in a dusty op shop or harassing strangers with a jangling\r\ndonation tin makes you shudder; you’re in the right place.\r\n\r\nMeaningful, fun, flexible volunteering is only a few steps away.\r\nWith Future Smith– the power is in your hands.\r\nIf the thought of volunteering in a dusty op shop or harassing strangers with a jangling\r\ndonation tin makes you shudder; you’re in the right place.\r\n\r\nMeaningful, fun, flexible volunteering is only a few steps away.\r\nWith Future Smith– the power is in your hands.', 0, 6, 'Sydney', 0, 1, 2, NULL, 2, '2018-10-03 17:08:42', '2018-10-03 17:08:42', NULL);
INSERT INTO `projects` VALUES (5, 'Learn Relationship in Laravel', 'Learn Relationship in LaravelLearn Relationship in LaravelLearn Relationship in LaravelLearn Relationship in LaravelLearn Relationship in LaravelLearn Relationship in LaravelLearn Relationship in LaravelLearn Relationship in LaravelLearn Relationship in LaravelLearn Relationship in LaravelLearn Relationship in LaravelLearn Relationship in Laravel', 0, 6, 'sdfsdf', 0, 1, 2, NULL, 2, '2018-10-03 17:34:25', '2018-10-03 17:34:25', NULL);

-- ----------------------------
-- Table structure for stripe_plans
-- ----------------------------
DROP TABLE IF EXISTS `stripe_plans`;
CREATE TABLE `stripe_plans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of stripe_plans
-- ----------------------------
INSERT INTO `stripe_plans` VALUES (1, 'Tribe Leader - Paid after 1 month. One - Off', 'plan_DeCnck8D3v4yKw', NULL, NULL);
INSERT INTO `stripe_plans` VALUES (2, 'Tribe Member - Monthly', 'plan_DeCoJOUOzsz7sk', NULL, NULL);
INSERT INTO `stripe_plans` VALUES (3, 'Sponsorship', 'plan_DeCp72cxYGrx9Y', NULL, NULL);

-- ----------------------------
-- Table structure for subscriptions
-- ----------------------------
DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE `subscriptions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp(0) NULL DEFAULT NULL,
  `is_sent_email_trial_last_3_days` tinyint(4) NOT NULL DEFAULT 0,
  `ends_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of subscriptions
-- ----------------------------
INSERT INTO `subscriptions` VALUES (1, 2, 'plan_DeCnck8D3v4yKw', 'sub_DiIhmilivadflM', 'plan_DeCnck8D3v4yKw', 1, NULL, 0, NULL, '2018-10-02 17:56:09', '2018-10-02 17:56:09');
INSERT INTO `subscriptions` VALUES (2, 3, 'plan_DeCoJOUOzsz7sk', 'sub_DiJ0V8J6bVKVBZ', 'plan_DeCoJOUOzsz7sk', 1, NULL, 0, NULL, '2018-10-02 18:15:06', '2018-10-02 18:15:06');
INSERT INTO `subscriptions` VALUES (3, 3, 'plan_DeCnck8D3v4yKw', 'sub_DiJZcS9rw2vUPT', 'plan_DeCnck8D3v4yKw', 1, NULL, 0, NULL, '2018-10-02 18:50:15', '2018-10-02 18:50:15');
INSERT INTO `subscriptions` VALUES (4, 4, 'plan_DeCnck8D3v4yKw', 'sub_Dieel7ZLzPpdiO', 'plan_DeCnck8D3v4yKw', 1, NULL, 0, '2018-10-08 16:37:01', '2018-10-03 16:37:02', '2018-10-07 19:21:16');

-- ----------------------------
-- Table structure for topic_tribe
-- ----------------------------
DROP TABLE IF EXISTS `topic_tribe`;
CREATE TABLE `topic_tribe`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tribe_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES (1, 'Arts', '2018-10-02 09:20:14', '2018-10-02 09:20:14', NULL);
INSERT INTO `topics` VALUES (2, 'Alumni', '2018-10-02 09:20:14', '2018-10-02 09:20:14', NULL);
INSERT INTO `topics` VALUES (3, 'Culture', '2018-10-02 09:20:14', '2018-10-02 09:20:14', NULL);
INSERT INTO `topics` VALUES (4, 'Nationalities', '2018-10-02 09:20:14', '2018-10-02 09:20:14', NULL);
INSERT INTO `topics` VALUES (5, 'Location', '2018-10-02 09:20:14', '2018-10-02 09:20:14', NULL);
INSERT INTO `topics` VALUES (6, 'Professions', '2018-10-02 09:20:14', '2018-10-02 09:20:14', NULL);
INSERT INTO `topics` VALUES (7, 'Recreation', '2018-10-02 09:20:14', '2018-10-02 09:20:14', NULL);
INSERT INTO `topics` VALUES (8, 'Sports', '2018-10-02 09:20:14', '2018-10-02 09:20:14', NULL);
INSERT INTO `topics` VALUES (9, 'Technology', '2018-10-02 09:20:14', '2018-10-02 09:20:14', NULL);

-- ----------------------------
-- Table structure for tribe_invites
-- ----------------------------
DROP TABLE IF EXISTS `tribe_invites`;
CREATE TABLE `tribe_invites`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tribe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: Pending, 2: Accept, 3: Decline',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tribe_invites
-- ----------------------------
INSERT INTO `tribe_invites` VALUES (1, 1, 3, '', NULL, 1, '2018-10-03 16:59:18', '2018-10-03 16:59:18');

-- ----------------------------
-- Table structure for tribe_members
-- ----------------------------
DROP TABLE IF EXISTS `tribe_members`;
CREATE TABLE `tribe_members`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tribe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: Pending, 2: Accept, 3: Decline',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tribe_members
-- ----------------------------
INSERT INTO `tribe_members` VALUES (2, 2, 2, '', 2, '2018-10-02 17:58:05', '2018-10-02 17:58:05');
INSERT INTO `tribe_members` VALUES (3, 3, 2, '', 2, '2018-10-02 17:58:53', '2018-10-02 17:58:53');
INSERT INTO `tribe_members` VALUES (4, 4, 2, '', 2, '2018-10-02 17:59:25', '2018-10-02 17:59:25');
INSERT INTO `tribe_members` VALUES (6, 5, 3, '', 2, '2018-10-02 18:50:43', '2018-10-02 18:50:43');
INSERT INTO `tribe_members` VALUES (8, 1, 3, 'sd', 1, '2018-10-03 16:27:05', '2018-10-03 16:27:05');
INSERT INTO `tribe_members` VALUES (9, 1, 2, '', 2, '2018-10-03 16:27:05', '2018-10-03 16:27:05');
INSERT INTO `tribe_members` VALUES (10, 6, 3, '', 2, '2018-10-03 16:32:35', '2018-10-03 16:32:35');
INSERT INTO `tribe_members` VALUES (11, 7, 4, '', 2, '2018-10-03 16:38:20', '2018-10-03 16:38:20');

-- ----------------------------
-- Table structure for tribes
-- ----------------------------
DROP TABLE IF EXISTS `tribes`;
CREATE TABLE `tribes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `topic_id` int(11) NOT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NULL DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1: Enable, 2: Diable',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tribes
-- ----------------------------
INSERT INTO `tribes` VALUES (1, 'Group for Laravel', NULL, 'It\'s for Group of Laravel. Laravel and React are two popular web development technologies used for building modern web applications. Laravel is prominently a server-side PHP framework, whereas React is a client-side JavaScript library. This tutorial serves as an introduction to both Laravel and React, combining them to create a modern web application. In a modern web application, the server has a limited job of managing the back end through some API (Application Programming Interface) endpoints. The client sends requests to these endpoints, and the server returns a response. However, the server is not concerned about how the client renders the view, which falls perfectly in line with the Separation of Concerns principle. This architecture allows developers to build robust applications for the web and also for different devices. In this tutorial, we will be using the latest version of Laravel, version 5.5, to create a RESTful back-end API. The front end will comprise of components written in React. We will be building a resourceful product listing application. The first part of the tutorial will focus more on the Laravel concepts and the back end. Let\'s get started. Introduction Laravel is a PHP framework developed for the modern web. It has an expressive syntax that favors the convention over configuration paradigm. Laravel has all the features that you need to get started with a project right out of the box. But personally, I like Laravel because it turns development with PH', NULL, 9, 'Sydney', NULL, 2, 2, '2018-10-02 17:56:54', '2018-10-03 16:28:24', NULL);
INSERT INTO `tribes` VALUES (2, 'Group-React', NULL, 'It\'s Group-React. In computing, React is a JavaScript library for building user interfaces. It is maintained by Facebook and a community of individual developers and companies. React can be used as a base in the development of single-page or mobile applications. In computing, React is a JavaScript library for building user interfaces. It is maintained by Facebook and a community of individual developers and companies. React can be used as a base in the development of single-page or mobile applications.', NULL, 8, 'London', NULL, 2, 2, '2018-10-02 17:58:05', '2018-10-02 17:58:05', NULL);
INSERT INTO `tribes` VALUES (3, 'JavaScript-Group', NULL, 'It\'s JavaScript. JavaScript, often abbreviated as JS, is a high-level, interpreted programming language. It is a language which is also characterized as dynamic, weakly typed, prototype-based and multi-paradigm. Alongside HTML and CSS, JavaScript is one of the three core technologies of the World Wide Web', NULL, 4, 'New York', NULL, 2, 2, '2018-10-02 17:58:53', '2018-10-02 17:58:53', NULL);
INSERT INTO `tribes` VALUES (4, 'Python Group', NULL, 'It\'s Python Group', NULL, 2, 'Beijing', NULL, 2, 2, '2018-10-02 17:59:25', '2018-10-02 17:59:25', NULL);
INSERT INTO `tribes` VALUES (5, 'Photoshop Group', NULL, 'It\'s Photoshop Group. Make it with Adobe Stock. Create something unique with high-quality Adobe Stock photos, illustrations, videos, and vectors available inside Photoshop CC — and give your work a bold new way to stand out.Make it with Adobe Stock. Create something unique with high-quality Adobe Stock photos, illustrations, videos, and vectors available inside Photoshop CC — and give your work a bold new way to stand out. Make it with Adobe Stock. Create something unique with high-quality Adobe Stock photos, illustrations, videos, and vectors available inside Photoshop CC — and give your work a bold new way to stand out.', NULL, 3, 'London', NULL, 3, 2, '2018-10-02 18:50:43', '2018-10-02 18:50:43', NULL);
INSERT INTO `tribes` VALUES (6, 'Flash Designer Group', NULL, 'The client sends requests to these endpoints, and the server returns a response. However, the server is not concerned about how the client renders the view, which falls perfectly in line with the Separation of Concerns principle. This architecture allows developers to build robust applications for the web and also for different devices. In this tutorial, we will be using the latest version of Laravel, version 5.5, to create a RESTful back-end API. The front end will comprise of components written in React. We will be building a resourceful product listing application. The first part of the tutorial will focus more on the Laravel concepts and the back end. Let\'s get started. Introduction Laravel is a PHP framework developed for the modern web. It has an expressive syntax that favors the convention over configuration paradigm. Laravel has all the features that you need to get started with a project right out of the box. But personally, I like Laravel because it turns development with PH', NULL, 2, 'Sydney', NULL, 3, 2, '2018-10-03 16:32:34', '2018-10-03 16:32:54', NULL);
INSERT INTO `tribes` VALUES (7, 'Investment Group', NULL, 'Make it with Adobe Stock. Create something unique with high-quality Adobe Stock photos, illustrations, videos, and vectors available inside Photoshop CC — and give your work a bold new way to stand out.Make it with Adobe Stock. Create something unique with high-quality Adobe Stock photos, illustrations, videos, and vectors available inside Photoshop CC — and give your work a bold new way to stand out. Make it with Adobe Stock. Create something unique with high-quality Adobe Stock photos, illustrations, videos, and vectors available inside Photoshop CC — and give your work a bold new way to stand out.', NULL, 5, 'Sydney', NULL, 4, 2, '2018-10-03 16:38:20', '2018-10-03 16:38:20', NULL);

-- ----------------------------
-- Table structure for user_profiles
-- ----------------------------
DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE `user_profiles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `suburb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_notify` tinyint(1) NULL DEFAULT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_profiles
-- ----------------------------
INSERT INTO `user_profiles` VALUES (1, 'Dejan', 'I am Dejan', 'Suburb', 'Serbia', NULL, 4, 2, '2018-10-02 17:19:32', '2018-10-03 04:28:27', NULL);
INSERT INTO `user_profiles` VALUES (2, 'Filip', 'I am Filip', 'suburb', 'India', NULL, 1, 3, '2018-10-02 18:12:21', '2018-10-03 04:29:05', NULL);
INSERT INTO `user_profiles` VALUES (3, 'Jacqui', '', '', '', NULL, 0, 4, '2018-10-03 16:35:14', '2018-10-03 16:35:14', NULL);
INSERT INTO `user_profiles` VALUES (4, 'softdev1029', '', '', '', NULL, 0, 5, '2018-10-07 14:16:51', '2018-10-07 14:16:51', NULL);
INSERT INTO `user_profiles` VALUES (5, 'softdev1029', '', '', '', NULL, 0, 6, '2018-10-07 14:56:43', '2018-10-07 14:56:43', NULL);
INSERT INTO `user_profiles` VALUES (6, 'DejanWife', '', '', '', NULL, 0, 7, '2018-10-07 19:23:57', '2018-10-07 19:23:57', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: Common User, 2: Admin',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stripe_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `card_brand` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `card_last_four` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `trial_ends_at` timestamp(0) NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@futuresmith.com', NULL, NULL, '$2y$10$Hu2YU6jc4GXDTxf4VEg5AuNdRkoDrUlGcmB.gq2RipRj5NEezglkG', 2, 'OyLXITQqm8MRBLOO0IdteT5SaMtowpD1EeGx4XUzr0eNxZYnyZASSIUjXUCl', NULL, NULL, NULL, NULL, 1, '2018-10-02 09:12:13', '2018-10-02 09:12:13');
INSERT INTO `users` VALUES (2, 'Dejan', 'dejan@a.com', NULL, '28OR4s4ldpjGUV8N3n9R1oOuTLsKtv2Fu0v8BSdP1538500772', '$2y$10$cRefbHtWAPdK3HkePYTfEuG0dx5rY3sXnvNqbxG3jZzz83PWcXIwi', 1, 'LRTYvjr5hsOSQIL17NQwLlyfJ7pbg4mX8xyEMf1FJr53LizRRUDMurBRRokw', 'cus_DiIhusVeuPQRWc', 'Visa', '1111', NULL, 1, '2018-10-02 17:19:32', '2018-10-02 17:56:06');
INSERT INTO `users` VALUES (3, 'Filip', 'filip@a.com', NULL, 'ec7oBJSfKRnbXJuC5Xqn5Us0pN2GjgcU4OwU3Usk1538503941', '$2y$10$zcsvIzN7rUcUzHLp64dYBuHVGFwGx/wT/uF4IWcYjnBu66crWe8hK', 1, NULL, 'cus_DiJ0QMI1N1IIXr', 'Visa', '1111', NULL, 1, '2018-10-02 18:12:21', '2018-10-02 18:15:02');
INSERT INTO `users` VALUES (4, 'Jacqui', 'jacqui@a.com', NULL, 'LfMDMgY4iugGX924uvcEoEITNNj81Xc4R72iY1N61538584514', '$2y$10$bwqzMQC6xWt5O7cah.puzOTMz9qDZC27WTtg.vZESCzSeABraXVKC', 1, 'GLqalVwonnUy8kIaxFRmkwkrtSQlGrmCZDY8Wv2rsV0bGlmYq75DruGh30Sv', 'cus_Dieei3WwhAgZtR', 'Visa', '1111', NULL, 1, '2018-10-03 16:35:14', '2018-10-03 16:36:59');
INSERT INTO `users` VALUES (6, 'softdev1029', 'softdev1029@outlook.com', NULL, 'QDJyiRFWTaAvMUVEwjyaKIxobHaH87cHJIWseyak1538924203', '$2y$10$uUdlQ1ylmxUxOTJFPcjWXOKeBie4zPEK9.ckF0uXPXgkb.10YZB2K', 1, NULL, NULL, NULL, NULL, NULL, 2, '2018-10-07 14:56:43', '2018-10-07 14:56:43');
INSERT INTO `users` VALUES (7, 'DejanWife', 'dejanwife@a.com', NULL, 'fHXGw2ls2UOeEekEt3X2RPMEsr26ZaB1PcBvLq8d1538940237', '$2y$10$gGzZdKVVJaR2/4qXcuK83u8rBDfcRB7nati9gYnoZdse2So7QUrhy', 1, NULL, NULL, NULL, NULL, NULL, 1, '2018-10-07 19:23:57', '2018-10-07 19:23:57');

SET FOREIGN_KEY_CHECKS = 1;

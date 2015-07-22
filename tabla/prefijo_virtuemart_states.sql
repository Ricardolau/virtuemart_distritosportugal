-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-07-2015 a las 15:47:55
-- Versión del servidor: 5.5.43-0ubuntu0.14.04.2
-- Versión de PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `vapeagrow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prefijo_virtuemart_states`
--

CREATE TABLE IF NOT EXISTS `prefijo_virtuemart_states` (
  `virtuemart_state_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `state_name` char(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_state_id`),
  UNIQUE KEY `state_3_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_2_code`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `virtuemart_country_id` (`virtuemart_country_id`),
  KEY `ordering` (`ordering`),
  KEY `shared` (`shared`),
  KEY `published` (`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country' AUTO_INCREMENT=750 ;

--
-- Volcado de datos para la tabla `prefijo_virtuemart_states`
--

INSERT INTO `prefijo_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(730, 1, 171, 0, 'Aveira', 'AV', '01', 0, 0, 1, '2015-07-22 12:09:16', 909, '2015-07-22 12:09:16', 909, '0000-00-00 00:00:00', 0),
(731, 1, 171, 0, 'Beja', 'BE', '02', 0, 0, 1, '2015-07-22 12:11:06', 909, '2015-07-22 12:11:06', 909, '0000-00-00 00:00:00', 0),
(732, 1, 171, 0, 'Braga', 'BRA', '03', 0, 0, 1, '2015-07-22 12:11:59', 909, '2015-07-22 12:11:59', 909, '0000-00-00 00:00:00', 0),
(733, 1, 171, 0, 'Braganza', 'BRG', '04', 0, 0, 1, '2015-07-22 12:13:35', 909, '2015-07-22 12:13:35', 909, '0000-00-00 00:00:00', 0),
(734, 1, 171, 0, 'Castelo Branco', 'CBR', '05', 0, 0, 1, '2015-07-22 12:14:19', 909, '2015-07-22 12:14:19', 909, '0000-00-00 00:00:00', 0),
(735, 1, 171, 0, 'Coimbra', 'COI', '06', 0, 0, 1, '2015-07-22 12:14:45', 909, '2015-07-22 12:14:45', 909, '0000-00-00 00:00:00', 0),
(736, 1, 171, 0, 'Évora', 'EVO', '07', 0, 0, 1, '2015-07-22 12:15:26', 909, '2015-07-22 12:15:26', 909, '0000-00-00 00:00:00', 0),
(737, 1, 171, 0, 'Faro', 'FA1', '08', 0, 0, 1, '2015-07-22 12:30:38', 909, '2015-07-22 12:30:38', 909, '0000-00-00 00:00:00', 0),
(738, 1, 171, 0, 'Guarda', 'GUA', '09', 0, 0, 1, '2015-07-22 12:32:21', 909, '2015-07-22 12:32:21', 909, '0000-00-00 00:00:00', 0),
(739, 1, 171, 0, 'Leiria', 'LEI', '10', 0, 0, 1, '2015-07-22 12:33:16', 909, '2015-07-22 12:33:16', 909, '0000-00-00 00:00:00', 0),
(740, 1, 171, 0, 'Lisboa', 'LIS', '11', 0, 0, 1, '2015-07-22 12:33:36', 909, '2015-07-22 12:33:36', 909, '0000-00-00 00:00:00', 0),
(741, 1, 171, 0, 'Portalegre', 'POR', '12', 0, 0, 1, '2015-07-22 12:34:05', 909, '2015-07-22 12:34:05', 909, '0000-00-00 00:00:00', 0),
(742, 1, 171, 0, 'Oporto', 'OPR', '13', 0, 0, 1, '2015-07-22 12:34:58', 909, '2015-07-22 12:34:58', 909, '0000-00-00 00:00:00', 0),
(743, 1, 171, 0, 'Santarém', 'SAN', '14', 0, 0, 1, '2015-07-22 12:35:20', 909, '2015-07-22 12:35:20', 909, '0000-00-00 00:00:00', 0),
(744, 1, 171, 0, 'Setúbal', 'SET', '15', 0, 0, 1, '2015-07-22 12:35:54', 909, '2015-07-22 12:35:54', 909, '0000-00-00 00:00:00', 0),
(745, 1, 171, 0, 'Viana do Castelo', 'VCA', '16', 0, 0, 1, '2015-07-22 12:36:27', 909, '2015-07-22 12:36:27', 909, '0000-00-00 00:00:00', 0),
(746, 1, 171, 0, 'Vila Real', 'VRE', '17', 0, 0, 1, '2015-07-22 12:36:59', 909, '2015-07-22 12:36:59', 909, '0000-00-00 00:00:00', 0),
(747, 1, 171, 0, 'Visue', 'VIS', '18', 0, 0, 1, '2015-07-22 12:37:29', 909, '2015-07-22 12:37:29', 909, '0000-00-00 00:00:00', 0),
(748, 1, 171, 0, 'Azores', 'AZR', '19', 0, 0, 1, '2015-07-22 12:37:54', 909, '2015-07-22 12:37:54', 909, '0000-00-00 00:00:00', 0),
(749, 1, 171, 0, 'Madeira', 'MAD', '20', 0, 0, 1, '2015-07-22 12:38:25', 909, '2015-07-22 12:38:25', 909, '0000-00-00 00:00:00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

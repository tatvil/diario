-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2022 a las 21:51:01
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentos`
--

CREATE TABLE `alimentos` (
  `id` int(4) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `calorias` int(3) DEFAULT NULL,
  `proteinas` int(4) DEFAULT NULL,
  `hidratos` int(4) DEFAULT NULL,
  `grasas` int(3) DEFAULT NULL,
  `azucares` int(3) DEFAULT NULL,
  `fibra` int(3) DEFAULT NULL,
  `calcio` int(4) DEFAULT NULL,
  `hierro` int(2) DEFAULT NULL,
  `yodo` int(2) DEFAULT NULL,
  `zinc` int(2) DEFAULT NULL,
  `magnesio` int(3) DEFAULT NULL,
  `potasio` int(2) DEFAULT NULL,
  `fosfato` int(4) DEFAULT NULL,
  `selenio` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alimentos`
--

INSERT INTO `alimentos` (`id`, `nombre`, `calorias`, `proteinas`, `hidratos`, `grasas`, `azucares`, `fibra`, `calcio`, `hierro`, `yodo`, `zinc`, `magnesio`, `potasio`, `fosfato`, `selenio`) VALUES
(1, 'kiwi', 61, 1, 11, 1, NULL, NULL, 25, 0, NULL, NULL, 15, 290, NULL, NULL),
(2, 'limón', 44, 1, 9, 0, NULL, 1, 12, 0, NULL, NULL, NULL, 149, NULL, NULL),
(3, 'mandarina', 43, 1, 9, 0, NULL, 2, 36, 0, NULL, NULL, NULL, 160, NULL, NULL),
(4, 'mango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'manzana', 52, 0, 11, 0, NULL, 2, 6, 0, NULL, NULL, NULL, 107, NULL, NULL),
(6, 'naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'papaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'pera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'piña', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'plátano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'pomelo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'tamarillo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'tomate rafia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'acelga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'achicoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'alcachofa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'apio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'borraja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'brócoli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'calabaza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'canónigos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'cardo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'cebolla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'chirivía', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'coles de hoja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'coliflor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'endibias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'espárragos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'escarola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'espinaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'grelos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'haba tierna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'hinojo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'jengibre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'lechugas de invierno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'puerro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'remolacha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentos_temporada`
--

CREATE TABLE `alimentos_temporada` (
  `mes` int(2) DEFAULT NULL,
  `id_alimento` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alimentos_temporada`
--

INSERT INTO `alimentos_temporada` (`mes`, `id_alimento`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analitica`
--

CREATE TABLE `analitica` (
  `id` int(3) NOT NULL,
  `persona` varchar(9) NOT NULL,
  `fecha` date NOT NULL,
  `hematies` float(2,2) NOT NULL,
  `hemoglobina` float(3,2) NOT NULL,
  `hematocrito` float(3,2) NOT NULL,
  `volumencorpuscular` float(3,2) NOT NULL,
  `hcm` float(3,2) NOT NULL COMMENT 'Hemoglobina corpuscular media',
  `chcm` float(3,2) NOT NULL COMMENT 'Concentracion hemoglobina corpuscular media',
  `anisocitos` float(3,2) NOT NULL COMMENT 'Coeficiente de anisocitos',
  `leucocitos` float(2,2) NOT NULL,
  `neutrofilos` float(2,2) NOT NULL,
  `linfocitos` float(2,2) NOT NULL,
  `monocitos` float(2,2) NOT NULL,
  `eosinofilos` float(2,2) NOT NULL,
  `basofilos` float(2,2) NOT NULL,
  `plaquetas` float(4,2) NOT NULL COMMENT 'Recuento de plaquetas',
  `vpm` float(2,2) NOT NULL COMMENT 'Volumen plaquetar medio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autonomias`
--

CREATE TABLE `autonomias` (
  `codigo` int(2) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autonomias`
--

INSERT INTO `autonomias` (`codigo`, `nombre`) VALUES
(1, 'Andalucia'),
(2, 'Aragón'),
(3, 'Asturias'),
(4, 'Baleares'),
(5, 'Cantabria'),
(6, 'Castilla La Mancha'),
(7, 'Castilla Leon'),
(8, 'Cataluña'),
(9, 'Comunidad de Madrid'),
(10, 'Comunidad Valenciana'),
(11, 'Galicia'),
(12, 'Gran Canaria'),
(13, 'La Rioja'),
(14, 'Pais Vasco'),
(15, 'Murcia'),
(16, 'Extremadura'),
(17, 'Navarra'),
(18, 'Ceuta'),
(19, 'Melilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `covid`
--

CREATE TABLE `covid` (
  `id` int(5) NOT NULL,
  `fecha` date NOT NULL,
  `cod_postal` varchar(5) NOT NULL,
  `casos` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `covid`
--

INSERT INTO `covid` (`id`, `fecha`, `cod_postal`, `casos`) VALUES
(1, '2022-01-18', '28290', 2326),
(3, '2022-01-18', '43895', 2310),
(4, '2022-01-18', '03580', 2610),
(7, '2022-01-18', '03580', 2610),
(8, '2021-03-12', '28290', 213),
(9, '2021-03-26', '28290', 248),
(10, '2021-03-30', '28290', 306),
(11, '2021-04-02', '28290', 306),
(12, '2021-04-06', '28290', 299),
(13, '2021-04-09', '28290', 299),
(14, '2021-04-17', '28290', 302),
(15, '2021-04-20', '28290', 448),
(16, '2021-04-23', '28290', 448),
(17, '2021-04-27', '28290', 465),
(18, '2021-04-30', '28290', 465),
(19, '2021-05-04', '28290', 419),
(20, '2021-05-07', '28290', 419),
(21, '2021-05-18', '28290', 258),
(22, '2021-05-25', '28290', 206),
(23, '2021-06-01', '28290', 150),
(24, '2021-06-22', '28290', 120),
(25, '2021-06-25', '28290', 92),
(26, '2021-08-30', '28290', 176),
(27, '2021-11-15', '28290', 86),
(28, '2021-11-23', '28290', 138),
(29, '2021-11-30', '28290', 159),
(30, '2021-12-01', '28290', 139),
(31, '2021-12-03', '28290', 154),
(32, '2021-12-07', '28290', 217),
(33, '2021-12-08', '28290', 230),
(34, '2021-12-09', '28290', 299),
(35, '2021-12-14', '28290', 312),
(36, '2021-12-21', '28290', 709),
(37, '2021-12-24', '28290', 1332),
(38, '2021-12-28', '28290', 1956),
(39, '2022-01-04', '28290', 2619),
(40, '2022-01-05', '28290', 2572),
(41, '2022-01-07', '28290', 2526),
(42, '2022-01-11', '28290', 2296),
(43, '2022-01-18', '28290', 2326),
(44, '2021-03-12', '03580', 20),
(45, '2021-03-16', '03580', 20),
(46, '2021-03-23', '03580', 5),
(47, '2021-03-26', '03580', 5),
(48, '2021-03-30', '03580', 4),
(49, '2021-04-02', '03580', 5),
(50, '2021-04-06', '03580', 24),
(51, '2021-04-09', '03580', 24),
(52, '2021-04-17', '03580', 34),
(53, '2021-04-20', '03580', 29),
(54, '2021-04-23', '03580', 29),
(55, '2021-04-27', '03580', 39),
(56, '2021-04-30', '03580', 30),
(57, '2021-05-04', '03580', 30),
(58, '2021-05-07', '03580', 30),
(59, '2021-05-18', '03580', 45),
(60, '2021-05-25', '03580', 19),
(61, '2021-06-01', '03580', 19),
(62, '2021-06-22', '03580', 19),
(63, '2021-06-25', '03580', 15),
(64, '2021-08-30', '03580', 15),
(65, '2021-09-15', '03580', 84),
(66, '2021-11-23', '03580', 237),
(67, '2021-11-30', '03580', 243),
(68, '2021-12-01', '03580', 259),
(69, '2021-12-03', '03580', 404),
(70, '2021-12-07', '03580', 564),
(71, '2021-12-08', '03580', 604),
(72, '2021-12-09', '03580', 644),
(73, '2021-12-14', '03580', 1025),
(74, '2021-12-21', '03580', 1043),
(75, '2021-12-24', '03580', 1053),
(76, '2021-12-28', '03580', 953),
(77, '2022-01-04', '03580', 936),
(78, '2022-01-05', '03580', 933),
(79, '2022-01-07', '03580', 1018),
(80, '2022-01-11', '03580', 1691),
(81, '2022-01-18', '03580', 2609),
(82, '2021-09-15', '43895', 34),
(83, '2021-11-23', '43895', 34),
(84, '2021-11-30', '43895', 34),
(85, '2021-12-01', '43895', 34),
(86, '2021-12-03', '43895', 138),
(87, '2021-12-07', '43895', 138),
(88, '2021-12-08', '43895', 207),
(89, '2021-12-09', '43895', 207),
(90, '2021-12-14', '43895', 172),
(91, '2021-12-21', '43895', 379),
(92, '2021-12-24', '43895', 793),
(93, '2021-12-28', '43895', 931),
(94, '2022-01-04', '43895', 1190),
(95, '2022-01-05', '43895', 1448),
(96, '2022-01-07', '43895', 1517),
(97, '2022-01-11', '43895', 2414),
(98, '2022-01-18', '43895', 2310),
(99, '2022-01-25', '28290', 2253),
(100, '2022-01-25', '28220', 2011),
(101, '2022-01-25', '28250', 1983),
(102, '2022-01-25', '43895', 3517),
(103, '2022-01-25', '03580', 2964),
(104, '2022-01-25', '03590', 3608),
(105, '2022-01-25', '03730', 4233),
(106, '2022-02-01', '28290', 1843),
(107, '2022-02-01', '28250', 1386),
(108, '2022-02-01', '28220', 1112),
(109, '2022-02-01', '43895', 3000),
(110, '2022-02-01', '03580', 2375),
(111, '2022-02-01', '03590', 3094),
(112, '2022-02-01', '03730', 3801),
(113, '2022-02-01', '03730', 3801),
(114, '2022-02-01', '46420', 5740),
(115, '2022-02-01', '46860', 4412),
(116, '2022-02-01', '46580', 3985),
(117, '2022-02-01', '46870', 5398),
(118, '2022-02-01', '46500', 5137),
(119, '2022-02-01', '28924', 1740),
(120, '2022-02-01', '28914', 1494),
(121, '2022-02-03', 'ESP', 2218),
(122, '2022-02-03', '28', 1283),
(123, '2022-02-03', 'ESP', 2218),
(124, '2022-02-08', '03580', 1427),
(125, '2022-02-08', '03590', 1675),
(126, '2022-02-08', '03730', 737),
(127, '2022-02-08', '43895', 2517),
(128, '2022-02-08', '46420', 3141),
(129, '2022-02-08', '46860', 2406),
(130, '2022-02-08', '46580', 2198),
(131, '2022-02-08', '46500', 2590),
(132, '2022-02-08', '46870', 2913),
(133, '2022-02-08', '28290', 1489),
(134, '2022-02-08', '28220', 1019),
(135, '2022-02-08', '28250', 1058);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_viento`
--

CREATE TABLE `direccion_viento` (
  `direccion` int(3) DEFAULT NULL,
  `nombre` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `direccion_viento`
--

INSERT INTO `direccion_viento` (`direccion`, `nombre`) VALUES
(270, 'W'),
(195, 'SSW'),
(42, 'NE'),
(54, 'NE'),
(45, 'NE'),
(33, 'NNE'),
(90, 'E'),
(135, 'SE'),
(189, 'S'),
(225, 'SW'),
(315, 'NW'),
(0, 'N'),
(23, 'NNE'),
(38, 'NE'),
(310, 'NW'),
(18, 'NNE'),
(192, 'SSW'),
(320, 'NW'),
(96, 'E'),
(232, 'SW'),
(248, 'WSW'),
(293, 'WNW'),
(338, 'NNW'),
(163, 'SSE'),
(203, 'SSW'),
(68, 'ENE'),
(21, 'NNE'),
(19, 'NNE'),
(20, 'NNE'),
(22, 'NNE'),
(24, 'NNE'),
(25, 'NNE'),
(26, 'NNE'),
(27, 'NNE'),
(28, 'NNE'),
(29, 'NNE'),
(30, 'NNE'),
(31, 'NNE'),
(32, 'NNE'),
(39, 'NE'),
(40, 'NE'),
(41, 'NE'),
(43, 'NE'),
(42, 'NE'),
(46, 'NE'),
(47, 'NE'),
(48, 'NE'),
(49, 'NE'),
(50, 'NE'),
(51, 'NE'),
(52, 'NE'),
(53, 'NE'),
(91, 'E'),
(92, 'E'),
(93, 'E'),
(94, 'E'),
(95, 'E'),
(193, 'SSW'),
(194, 'SSW'),
(196, 'SSW'),
(197, 'SSW'),
(198, 'SSW'),
(199, 'SSW'),
(200, 'SSW'),
(201, 'SSW'),
(202, 'SSW'),
(226, 'SW'),
(227, 'SW'),
(228, 'SW'),
(229, 'SW'),
(230, 'SW'),
(231, 'SW'),
(311, 'NW'),
(312, 'NW'),
(313, 'NW'),
(314, 'NW'),
(217, 'SW'),
(218, 'SW'),
(219, 'SW'),
(220, 'SW'),
(221, 'SW'),
(222, 'SW'),
(223, 'SW'),
(224, 'SW'),
(16, 'NNE'),
(56, 'NE'),
(191, 'S'),
(60, 'ENE'),
(113, 'ESE'),
(44, 'NE'),
(55, 'NE'),
(61, 'ENE'),
(62, 'ENE'),
(63, 'ENE'),
(64, 'ENE'),
(65, 'ENE'),
(66, 'ENE'),
(17, 'NNE'),
(190, 'S'),
(316, 'NW'),
(317, 'NW'),
(318, 'NW'),
(319, 'NW'),
(76, 'ENE'),
(70, 'ENE'),
(72, 'ENE'),
(268, 'W'),
(85, 'E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades`
--

CREATE TABLE `enfermedades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `enfermedades`
--

INSERT INTO `enfermedades` (`id`, `nombre`) VALUES
(1, 'cancer'),
(2, 'anorexia'),
(3, 'trastorno alimentario'),
(4, 'cataratas'),
(5, 'miopia'),
(6, 'asma'),
(7, 'eczema'),
(8, 'psoriasis'),
(9, 'hernia'),
(10, 'hepatitis A'),
(11, 'hepatitis B'),
(12, 'Esclerosis Múltiple'),
(13, 'enfisema pulmonar'),
(14, 'Alergia a las proteinas de la leche de vaca'),
(15, 'leucemia'),
(16, 'derrame cerebral'),
(17, 'demencia senil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades_personas`
--

CREATE TABLE `enfermedades_personas` (
  `id` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `persona` int(11) NOT NULL,
  `enfermedad` int(11) NOT NULL,
  `organo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `enfermedades_personas`
--

INSERT INTO `enfermedades_personas` (`id`, `fecha_inicio`, `fecha_fin`, `persona`, `enfermedad`, `organo`) VALUES
(8, '2000-12-22', '2000-12-29', 1, 6, 27),
(9, '2019-11-17', '2019-12-02', 1, 6, 27),
(10, '2019-11-17', '2019-12-02', 1, 6, 27),
(11, '2001-08-14', '2003-08-14', 2, 14, 27),
(12, '2004-10-01', '2004-10-31', 8, 12, 27),
(13, '2010-09-15', '2011-01-15', 54, 15, 27),
(14, '1980-01-01', '1988-12-31', 5, 5, 5),
(15, '1980-01-01', '1988-12-31', 5, 5, 6),
(16, '2022-01-14', '2022-02-28', 17, 1, 14),
(17, '1991-12-01', '1992-01-01', 57, 16, 10),
(18, '1960-01-01', '1960-12-31', 16, 13, 1),
(19, '1960-01-01', '1960-12-31', 16, 13, 1),
(20, '1995-09-01', '2001-12-31', 16, 10, 28),
(21, '2021-11-10', '2022-02-28', 3, 3, 27),
(22, '2019-01-01', '2019-12-31', 48, 1, 31),
(23, '2005-05-17', '2007-05-17', 55, 17, 27),
(24, '1990-09-01', '1991-01-01', 56, 1, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidades`
--

CREATE TABLE `entidades` (
  `id` int(3) NOT NULL,
  `tipoentidad` int(11) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `cod_postal` varchar(5) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entidades`
--

INSERT INTO `entidades` (`id`, `tipoentidad`, `nombre`, `direccion`, `cod_postal`, `telefono`, `email`) VALUES
(1, 0, 'HM Monteprincipe', 'Av. Monteprincipe, 25', '28660', '902089800', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `festivos`
--

CREATE TABLE `festivos` (
  `mes` int(2) NOT NULL,
  `dia` int(2) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cod_lugar` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `festivos`
--

INSERT INTO `festivos` (`mes`, `dia`, `nombre`, `cod_lugar`) VALUES
(1, 1, 'Año Nuevo', '0'),
(1, 6, 'Epifania del Señor', '0'),
(2, 14, 'San Valentín', '0'),
(1, 29, 'Santo Tomás de Aquino', '0'),
(3, 19, 'San José', '0'),
(3, 19, 'Dia del Padre', '0'),
(5, 1, 'Dia del Trabajo', '0'),
(6, 24, 'San Juan', '0'),
(7, 16, 'Virgen del Carmen', '0'),
(8, 15, 'Dia de la Virgen', '0'),
(9, 29, 'San Miguel Arcangel', '28290'),
(9, 29, 'San Miguel Arcangel', '28230'),
(9, 29, 'San Miguel Arcangel', '28231'),
(9, 29, 'San Miguel Arcangel', '28232'),
(10, 12, 'Virgen del Pilar', '0'),
(12, 6, 'Constitución Española', '0'),
(12, 8, 'Inmaculada Concepción', '0'),
(12, 25, 'Navidad', '0'),
(2, 11, 'Virgen Maria de Lourdes', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intervenciones`
--

CREATE TABLE `intervenciones` (
  `id` int(3) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `intervenciones`
--

INSERT INTO `intervenciones` (`id`, `nombre`) VALUES
(1, 'Cesarea'),
(2, 'Cataratas'),
(3, 'Mastectomía'),
(4, 'Hidrocele'),
(5, 'ByPass Gástrico'),
(6, 'estirpar'),
(7, 'discetomia'),
(8, 'apendicitis'),
(9, 'ablacion'),
(10, 'parto gemelar'),
(11, 'nacimiento de nalgas'),
(12, 'estirpar tumor'),
(13, 'operación'),
(14, 'enderezar tabique'),
(15, 'estirpar cornetes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intervenciones_persona`
--

CREATE TABLE `intervenciones_persona` (
  `id` int(5) NOT NULL,
  `persona` int(3) NOT NULL,
  `fecha` date NOT NULL,
  `intervencion` int(3) NOT NULL,
  `organo` int(3) DEFAULT NULL,
  `entidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `intervenciones_persona`
--

INSERT INTO `intervenciones_persona` (`id`, `persona`, `fecha`, `intervencion`, `organo`, `entidad`) VALUES
(1, 1, '2001-02-14', 1, 12, 1),
(2, 1, '2004-11-24', 1, 12, 1),
(3, 1, '2022-02-16', 5, 16, 1),
(4, 17, '2022-01-28', 3, 14, NULL),
(5, 5, '1071-12-29', 4, 21, NULL),
(6, 1, '2011-11-28', 2, 5, NULL),
(7, 1, '2011-12-28', 2, 6, NULL),
(8, 41, '2020-04-15', 3, 14, NULL),
(9, 41, '2020-04-15', 3, 14, NULL),
(10, 6, '2003-02-20', 6, 13, NULL),
(11, 6, '2003-02-20', 6, 13, NULL),
(12, 11, '2019-02-06', 7, 25, NULL),
(14, 11, '1989-01-11', 8, 26, NULL),
(15, 6, '2016-02-02', 9, 3, NULL),
(16, 1, '2004-11-24', 10, 0, NULL),
(17, 4, '2004-11-24', 11, 0, NULL),
(18, 7, '1943-10-21', 11, 0, NULL),
(19, 57, '1985-01-01', 12, 10, NULL),
(20, 17, '2016-10-06', 13, 19, NULL),
(21, 17, '2016-10-06', 13, 19, NULL),
(22, 21, '1997-01-01', 13, 30, NULL),
(23, 21, '1997-01-01', 13, 30, NULL),
(24, 1, '2014-01-01', 14, 7, NULL),
(26, 1, '2014-01-01', 15, 7, NULL),
(27, 1, '1988-01-01', 15, 7, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meses`
--

CREATE TABLE `meses` (
  `numero` int(2) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `meses`
--

INSERT INTO `meses` (`numero`, `nombre`) VALUES
(1, 'enero'),
(2, 'febrero'),
(3, 'marzo'),
(4, 'abril'),
(5, 'mayo'),
(6, 'junio'),
(7, 'julio'),
(8, 'agosto'),
(9, 'septiembre'),
(10, 'octubre'),
(11, 'noviembre'),
(12, 'diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nubes`
--

CREATE TABLE `nubes` (
  `codigo` int(3) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nubes`
--

INSERT INTO `nubes` (`codigo`, `nombre`) VALUES
(9, 'clear sky'),
(0, 'clear sky'),
(65, 'broken clouds'),
(40, 'scattered clouds'),
(20, 'few clouds'),
(75, 'broken clouds'),
(1, 'clear sky'),
(2, 'clear sky'),
(3, 'clear sky'),
(4, 'clear sky'),
(5, 'clear sky'),
(6, 'clear sky'),
(7, 'clear sky'),
(8, 'clear sky'),
(66, 'broken clouds'),
(67, 'broken clouds'),
(68, 'broken clouds'),
(69, 'broken clouds'),
(70, 'broken clouds'),
(71, 'broken clouds'),
(72, 'broken clouds'),
(73, 'broken clouds'),
(74, 'broken clouds'),
(100, 'overcast clouds');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organos`
--

CREATE TABLE `organos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `organos`
--

INSERT INTO `organos` (`id`, `nombre`) VALUES
(1, 'pulmón derecho'),
(2, 'pulmón izquierdo'),
(3, 'corazón'),
(4, 'riñon'),
(5, 'ojo izquierdo'),
(6, 'ojo derecho'),
(7, 'nariz'),
(8, 'pancreas'),
(9, 'estomago'),
(10, 'cerebro'),
(11, 'mente'),
(12, 'utero'),
(13, 'prostata'),
(14, 'mama izquierda'),
(15, 'mama derecha'),
(16, 'estomago'),
(17, 'pie izquierdo'),
(18, 'pie derecho'),
(19, 'rodilla izquierda'),
(20, 'rodilla derecha'),
(21, 'testiculo izquierdo'),
(22, 'testiculo derecho\r\n                                        '),
(23, 'vertebras cervicales'),
(24, 'vertebras dorsales'),
(25, 'vertebras lumbares'),
(26, 'apendice'),
(27, '-'),
(28, 'higado'),
(29, 'rodilla'),
(30, 'tobillo'),
(31, 'vejiga'),
(32, 'huesos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(5) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido1` varchar(20) NOT NULL,
  `apellido2` varchar(20) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `cod_postal` varchar(5) NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nacimiento` date DEFAULT NULL,
  `gruposanguineo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `dni`, `nombre`, `apellido1`, `apellido2`, `Direccion`, `cod_postal`, `telefono`, `email`, `nacimiento`, `gruposanguineo`) VALUES
(1, '07495131Y', 'Tatiana', 'Villa', 'Ema', 'C/ Playa de San Juan, 8', '28290', 639145826, 'tatiana@tecnologia-facil.es', '1971-04-08', 'A+'),
(2, '', 'Andrea', 'Postlbauer', 'Villa', 'C/ Playa de San Juan, 8', '28290', 633722001, 'andrea.postlbauer@gmail.com', '2001-02-14', 'B+'),
(3, '02575302S', 'Sara', 'Postlbauer', 'Villa', 'C/ Playa de San Juan, 8', '28290', 633842004, 'sara.postlbauer@gmail.com', '2004-11-24', ''),
(4, '02575304V', 'Nicolás', 'Postlbauer', 'Villa', 'C/ Playa de San Juan, 8', '28290', 633063190, 'nicolas.postlbauer@gmail.com', '2004-11-24', ''),
(5, '52783826E', 'Juan', 'Postlbauer', 'Correas', 'C/ Playa de San Juan, 8', '28290', 619292507, 'jpc@hpe.com', '1970-12-29', ''),
(6, '', 'Jose Luis', 'Villa', 'de la Torre', 'C/ Castillo de Belmonte, 1 - portal 4-3ºDE', '28232', 639711469, '', '1940-10-14', 'A+'),
(7, '', 'Mercedes', 'Ema', 'Diaz', 'C/ Castillo de Belmonte, 1 - portal 4-3ºDE', '28232', 630085250, '', '1943-10-19', 'B+'),
(8, '', 'Arantxa', 'Villa', 'Ema', 'Pablo Sorozabal 1B', '28290', 649967153, '', '1974-10-24', 'AB-'),
(9, '', 'Luz', 'Martin', 'Villa', 'Pablo Sorozabal 1B', '28290', 643302926, '', '2003-05-11', ''),
(10, '', 'Tomas', 'Redondo', '', 'Pablo Sorozabal 1B', '28290', 620018502, '', '0000-00-00', ''),
(11, '07492169B', 'Patricia', 'Villa', 'Ema', '', '10460', 648929729, '', '1969-10-17', ''),
(12, '', 'Sonia', 'Slutzi', '', '', '10460', 638319847, '', '1979-02-12', ''),
(13, '', 'Anna', 'Postlbauer', 'Correas', 'C/ Alcalde Pedro Gonzalez, 11 portal 3 - 2ºD', '28914', 627701822, '', '1972-12-18', ''),
(14, '', 'Pablo', 'Requejo', 'Postlbauer', 'C/ Alcalde Pedro Gonzalez, 11 portal 3 - 2ºD', '28914', 609401851, '', '2003-09-07', ''),
(15, '', 'Laura', 'Requejo', 'Postlbauer', 'C/ Alcalde Pedro Gonzalez, 11 portal 3 - 2ºD', '28914', 623047789, '', '2006-03-24', ''),
(16, '', 'Johann', 'Postlbauer', 'Smithberger', 'Calle Cabo San Vicente, 14 Esc. Izda. 9ºC', '28924', 606663208, '', '1943-07-15', ''),
(17, '', 'Mari Cruz', 'Correas', 'González', 'Calle Cabo San Vicente, 14 Esc. Izda. 9ºC', '28924', 680930303, '', '1937-11-15', ''),
(19, '', 'Alberto', 'Villa', 'de la Torre', '', '', 696995145, '', '1952-02-01', ''),
(20, '', 'Sue', 'Hoole', '', 'C/ Vista Alegre, 17 - 2º', '43845', 617495179, '', '1952-02-01', ''),
(21, '', 'Aitor', 'Ema', 'Hoole', '', '43895', 607429719, '', '1978-06-27', ''),
(22, '', 'Alba', 'Garrido', '', '', '', 639748029, '', '2001-02-22', ''),
(26, '', 'Alejandro', 'Ema', 'Hoole', '', '', 664421158, '', '1974-07-12', ''),
(37, '', 'Angel', 'Ema', 'Hayter', '', '', 620800785, 'a.ema@hotmail.com', '0000-00-00', ''),
(38, '', 'Antonio', 'Garrido', 'Correas', '', '', 650561234, '', '0000-00-00', ''),
(40, '', 'Enrique', 'Montesinos', 'Guerrero', '', '', 609086709, '', '1970-02-08', ''),
(41, '', 'Mari Pili', 'Villa', 'de la Torre', 'C/ Fernando el Católico, 23', '28015', 645398991, 'maria.villa.delatorre@gmail.com', '1953-02-15', ''),
(42, '', 'Kelly', 'Ema', 'Hayter', '', '', 661514345, 'kellyema@hotmail.com', '2022-04-23', ''),
(43, '', 'Jose Javier', 'Rodriguez', 'Hernandez', '', '', 0, '', '1970-05-01', ''),
(44, '', 'Carlos', 'Villa', 'de la Torre', '', '', 686196989, 'villacarl@gmail.com', '1944-07-08', ''),
(45, '', 'Yuma', 'Ema', 'Hayter', '', '43895', 650187123, '', '1970-09-13', ''),
(46, '', 'Manuela', 'Villa', 'Acosta', '', '', 0, '', '1976-09-27', ''),
(47, '', 'Santiago', 'Villa', 'Acosta', '', '', 0, '', '1972-10-06', ''),
(48, '', 'Elisabeth', 'Hayter', 'Shaw', 'C/ Vista Alegre, 17 - 1º', '43895', 679195524, '', '2022-10-21', ''),
(49, '', 'Indi', 'Postlbauer', 'Villa', 'C/ Playa de San Juan, 8', '28290', 0, '', '2007-10-31', ''),
(50, '', 'Felisa', 'Correas', 'González', '', '10490', 0, '', '2022-11-09', ''),
(51, '', 'Javier', 'Sanchez', 'Correas', '', '', 660923288, '', '0000-00-00', ''),
(52, '', 'Angel', 'Ema', 'Diaz', 'C/ Vista Alegre, 17 - 1º', '28290', 0, '', '1940-04-01', ''),
(53, '', 'Manoli', 'Correas', 'González', '', '45600', 699865209, '', '0000-00-00', ''),
(54, '', 'Jose Luis', 'Ema', 'Diaz', '', '', 0, '', '1950-01-01', ''),
(55, '', 'Paquita', 'Diaz', 'Espinosa', '', '', 0, '', '1920-01-17', ''),
(56, '', 'Jose Luis', 'Ema', 'Berenguer', '', '', 0, '', '1910-01-01', ''),
(57, '', 'José', 'Villa', 'Larramendi', '', '', 0, '', '1913-01-01', ''),
(58, '', 'Pilar', 'de la Torre', 'Toboso', '', '', 914171717, '', '1916-01-01', ''),
(59, '', '-', '', '', '', '', 0, '', NULL, ''),
(60, '', 'Alan', 'Garrido', '', '', '', 0, '', '0000-00-00', ''),
(61, '', 'Visi', 'Correas', 'Gonzalez', '', '', 0, '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `codigo` int(3) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `cod_autonomia` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`codigo`, `nombre`, `cod_autonomia`) VALUES
(23, 'Jaen', 1),
(14, 'Cordoba', 1),
(41, 'Sevilla', 1),
(21, 'Huelva', 1),
(11, 'Cadiz', 1),
(29, 'Malaga', 1),
(18, 'Granada', 1),
(4, 'Almeria', 1),
(22, 'Huesca', 2),
(50, 'Zaragoza', 2),
(44, 'Teruel', 2),
(33, 'Asturias', 3),
(7, 'Baleares', 4),
(39, 'Cantabria', 5),
(45, 'Toledo', 6),
(13, 'Ciudad Real', 6),
(2, 'Albacete', 6),
(16, 'Cuenca', 6),
(19, 'Guadalajara', 6),
(24, 'León', 7),
(49, 'Zamora', 7),
(37, 'Salamanca', 7),
(9, 'Burgos', 7),
(42, 'Soria', 7),
(40, 'Segovia', 7),
(5, 'Avila ', 7),
(47, 'Valladolid', 7),
(34, 'Palencia', 7),
(8, 'Barcelona', 8),
(43, 'Tarragona', 8),
(25, 'Lerida', 8),
(17, 'Gerona', 8),
(28, 'Madrid', 9),
(12, 'Castellón', 10),
(46, 'Valencia', 10),
(3, 'Alicante', 10),
(15, 'La Coruña', 11),
(27, 'Lugo', 11),
(32, 'Orense', 11),
(36, 'Pontevedra', 11),
(35, 'Las Palmas', 12),
(38, 'Santa Cruz de Teneri', 12),
(26, 'La Rioja', 13),
(1, 'Alava', 14),
(48, 'Vizcaya', 14),
(20, 'Guipúzcua', 14),
(30, 'Murcia', 15),
(10, 'Caceres', 16),
(6, 'Badajoz', 16),
(31, 'Navarra', 17),
(51, 'Ceuta', 18),
(52, 'Melilla', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pueblos`
--

CREATE TABLE `pueblos` (
  `cod_postal` varchar(5) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pueblos`
--

INSERT INTO `pueblos` (`cod_postal`, `nombre`, `provincia`) VALUES
('28290', 'Las Rozas de Madrid', '28'),
('28230', 'Las Rozas de Madrid', '28'),
('28231', 'Las Rozas de Madrid', '28'),
('28232', 'Las Rozas de Madrid', '28'),
('28220', 'Majadahonda', '28'),
('28221', 'Majadahonda', '28'),
('28222', 'Majadahonda', '28'),
('28250', 'Torrelodones', '28'),
('03580', 'Alfaz del Pi', '03'),
('03581', 'Alfaz del Pi', '03'),
('03590', 'Altea', '03'),
('03599', 'Altea', '03'),
('43895', 'Ampolla', '43'),
('03730', 'Javea', '03'),
('10460', 'Losar de la Vera', '10'),
('28924', 'Alcorcón', '28'),
('46420', 'El Perelló', '46'),
('46420', 'El Perelló', '46'),
('46860', 'Ametlla de Mar', '46'),
('46580', 'Deltebre', '46'),
('46870', 'Amposta', '46'),
('46500', 'Tortosa', '46'),
('46897', 'Tortosa', '46'),
('46510', 'Tortosa', '46'),
('46517', 'Tortosa', '46'),
('46527', 'Tortosa', '46'),
('46590', 'Tortosa', '46'),
('28911', 'Leganés', '28'),
('28912', 'Leganés', '28'),
('28913', 'Leganés', '28'),
('28915', 'Leganés', '28'),
('28916', 'Leganés', '28'),
('28917', 'Leganés', '28'),
('28918', 'Leganés', '28'),
('28919', 'Leganés', '28'),
('43845', 'Ampolla', '43'),
('28001', 'Madrid', '28'),
('28002', 'Madrid', '28'),
('28003', 'Madrid', '28'),
('28004', 'Madrid', '28'),
('28005', 'Madrid', '28'),
('28006', 'Madrid', '28'),
('28007', 'Madrid', '28'),
('28008', 'Madrid', '28'),
('28009', 'Madrid', '28'),
('28010', 'Madrid', '28'),
('28011', 'Madrid', '28'),
('28012', 'Madrid', '28'),
('28013', 'Madrid', '28'),
('28014', 'Madrid', '28'),
('28015', 'Madrid', '28'),
('ESP', 'España', '00'),
('45600', 'Talavera de la Reina', '45'),
('45601', 'Talavera de la Reina', '45'),
('45602', 'Talavera de la Reina', '45'),
('45603', 'Talavera de la Reina', '45'),
('45604', 'Talavera de la Reina', '45'),
('45605', 'Talavera de la Reina', '45'),
('45606', 'Talavera de la Reina', '45'),
('45607', 'Talavera de la Reina', '45'),
('45608', 'Talavera de la Reina', '45'),
('45609', 'Talavera de la Reina', '45'),
('45610', 'Talavera de la Reina', '45'),
('45611', 'Talavera de la Reina', '45'),
('45612', 'Talavera de la Reina', '45'),
('45613', 'Talavera de la Reina', '45'),
('45614', 'Talavera de la Reina', '45'),
('45615', 'Talavera de la Reina', '45'),
('45616', 'Talavera de la Reina', '45'),
('45617', 'Talavera de la Reina', '45'),
('45618', 'Talavera de la Reina', '45'),
('45619', 'Talavera de la Reina', '45'),
('45620', 'Talavera de la Reina', '45'),
('45621', 'Talavera de la Reina', '45'),
('45622', 'Talavera de la Reina', '45'),
('45623', 'Talavera de la Reina', '45'),
('45624', 'Talavera de la Reina', '45'),
('45625', 'Talavera de la Reina', '45'),
('45626', 'Talavera de la Reina', '45'),
('45627', 'Talavera de la Reina', '45'),
('45628', 'Talavera de la Reina', '45'),
('45629', 'Talavera de la Reina', '45'),
('45630', 'Talavera de la Reina', '45'),
('45631', 'Talavera de la Reina', '45'),
('45632', 'Talavera de la Reina', '45'),
('45633', 'Talavera de la Reina', '45'),
('45634', 'Talavera de la Reina', '45'),
('45635', 'Talavera de la Reina', '45'),
('45636', 'Talavera de la Reina', '45'),
('45637', 'Talavera de la Reina', '45'),
('45638', 'Talavera de la Reina', '45'),
('45639', 'Talavera de la Reina', '45'),
('45640', 'Talavera de la Reina', '45'),
('45641', 'Talavera de la Reina', '45'),
('45642', 'Talavera de la Reina', '45'),
('45643', 'Talavera de la Reina', '45'),
('45644', 'Talavera de la Reina', '45'),
('45645', 'Talavera de la Reina', '45'),
('45646', 'Talavera de la Reina', '45'),
('45647', 'Talavera de la Reina', '45'),
('45648', 'Talavera de la Reina', '45'),
('45649', 'Talavera de la Reina', '45'),
('45650', 'Talavera de la Reina', '45'),
('45651', 'Talavera de la Reina', '45'),
('45652', 'Talavera de la Reina', '45'),
('45653', 'Talavera de la Reina', '45'),
('45654', 'Talavera de la Reina', '45'),
('45655', 'Talavera de la Reina', '45'),
('45656', 'Talavera de la Reina', '45'),
('45657', 'Talavera de la Reina', '45'),
('45658', 'Talavera de la Reina', '45'),
('45659', 'Talavera de la Reina', '45'),
('45660', 'Talavera de la Reina', '45'),
('45661', 'Talavera de la Reina', '45'),
('45662', 'Talavera de la Reina', '45'),
('45663', 'Talavera de la Reina', '45'),
('45664', 'Talavera de la Reina', '45'),
('45665', 'Talavera de la Reina', '45'),
('45666', 'Talavera de la Reina', '45'),
('45667', 'Talavera de la Reina', '45'),
('45668', 'Talavera de la Reina', '45'),
('45669', 'Talavera de la Reina', '45'),
('45670', 'Talavera de la Reina', '45'),
('45671', 'Talavera de la Reina', '45'),
('45672', 'Talavera de la Reina', '45'),
('45673', 'Talavera de la Reina', '45'),
('45674', 'Talavera de la Reina', '45'),
('45675', 'Talavera de la Reina', '45'),
('45676', 'Talavera de la Reina', '45'),
('45677', 'Talavera de la Reina', '45'),
('45678', 'Talavera de la Reina', '45'),
('45679', 'Talavera de la Reina', '45'),
('45680', 'Talavera de la Reina', '45'),
('45681', 'Talavera de la Reina', '45'),
('45682', 'Talavera de la Reina', '45'),
('45683', 'Talavera de la Reina', '45'),
('45684', 'Talavera de la Reina', '45'),
('45685', 'Talavera de la Reina', '45'),
('45686', 'Talavera de la Reina', '45'),
('45687', 'Talavera de la Reina', '45'),
('45688', 'Talavera de la Reina', '45'),
('45689', 'Talavera de la Reina', '45'),
('45690', 'Talavera de la Reina', '45'),
('45691', 'Talavera de la Reina', '45'),
('45692', 'Talavera de la Reina', '45'),
('45693', 'Talavera de la Reina', '45'),
('28914', 'Leganés', '28'),
('28660', 'Boadilla del Monte', '28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relaciones_familiares`
--

CREATE TABLE `relaciones_familiares` (
  `id` int(11) NOT NULL,
  `padre` int(11) NOT NULL,
  `madre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `relaciones_familiares`
--

INSERT INTO `relaciones_familiares` (`id`, `padre`, `madre`) VALUES
(50, 50, 50),
(52, 56, 55),
(54, 56, 55),
(7, 56, 55),
(37, 52, 48),
(42, 52, 48),
(45, 52, 48),
(21, 54, 20),
(26, 54, 20),
(26, 54, 20),
(22, 38, 59),
(60, 38, 59),
(38, 59, 61),
(9, 59, 8),
(13, 16, 17),
(5, 16, 17),
(2, 5, 1),
(4, 5, 1),
(3, 5, 1),
(15, 59, 13),
(14, 59, 13),
(51, 59, 50),
(46, 44, 59),
(47, 44, 59),
(19, 57, 58),
(44, 57, 58),
(6, 57, 58),
(41, 57, 58),
(8, 6, 7),
(11, 6, 7),
(1, 6, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_entidad`
--

CREATE TABLE `tipos_entidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_entidad`
--

INSERT INTO `tipos_entidad` (`id`, `nombre`) VALUES
(1, 'dentista'),
(2, 'Hospital / Centro Sa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_dato_vital`
--

CREATE TABLE `tipo_dato_vital` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_dato_vital`
--

INSERT INTO `tipo_dato_vital` (`id`, `nombre`) VALUES
(1, 'peso'),
(2, 'temperatura'),
(3, 'saturación oxigeno'),
(4, 'sistole'),
(5, 'diastole'),
(6, 'pulso'),
(7, 'antigenos COVID'),
(8, 'altura'),
(9, 'glucosa en sangre'),
(10, 'orina - urobilinogen'),
(11, 'orina - glucosa'),
(12, 'orina - bilirrubina'),
(13, 'orina - sangre'),
(14, 'orina - cetonas'),
(15, 'orina - proteinas'),
(16, 'orina - ph'),
(17, 'orina - nitritos'),
(18, 'orina - leucocitos'),
(19, 'orina - densidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vital`
--

CREATE TABLE `vital` (
  `id` int(4) NOT NULL,
  `persona` varchar(10) NOT NULL,
  `tipodato` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vital`
--

INSERT INTO `vital` (`id`, `persona`, `tipodato`, `valor`, `fecha`) VALUES
(1, '1', '1', '120.30', '2022-01-20'),
(5, '1', '7', '0.00', '2022-01-21'),
(10, '1', '2', '96.00', '2022-01-24'),
(12, '1', '2', '36.30', '2022-01-24'),
(120, '1', '11', '0.00', '2022-01-25'),
(121, '1', '12', '0.00', '2022-01-25'),
(122, '1', '14', '0.00', '2022-01-25'),
(123, '1', '19', '1030.00', '2022-01-25'),
(124, '1', '13', '0.00', '2022-01-25'),
(125, '1', '16', '5.00', '2022-01-25'),
(126, '1', '15', '0.00', '2022-01-25'),
(127, '1', '10', '0.10', '2022-01-25'),
(128, '1', '17', '0.00', '2022-01-25'),
(129, '1', '18', '0.00', '2022-01-25'),
(130, '1', '1', '120.10', '2022-01-28'),
(131, '1', '7', '0.00', '2022-01-28'),
(134, '4', '2', '36.30', '2022-01-28'),
(139, '1', '2', '36.20', '2022-01-31'),
(140, '1', '2', '97.00', '2022-01-31'),
(229, '4', '1', '40.30', '2022-01-25'),
(806, '1', '11', '0.00', '2022-02-02'),
(807, '1', '12', '0.00', '2022-02-02'),
(808, '1', '14', '3.90', '2022-02-02'),
(809, '1', '19', '1030.00', '2022-02-02'),
(810, '1', '13', '0.00', '2022-02-02'),
(811, '1', '16', '5.00', '2022-02-02'),
(812, '1', '15', '0.00', '2022-02-02'),
(813, '1', '10', '0.10', '2022-02-02'),
(814, '1', '17', '0.00', '2022-02-02'),
(815, '1', '18', '0.00', '2022-02-02'),
(816, '1', '1', '118.50', '2022-02-03'),
(817, '1', '1', '120.50', '2022-01-20'),
(818, '1', '1', '118.90', '2022-01-07'),
(819, '1', '9', '105.00', '2022-02-03'),
(820, '1', '9', '115.00', '2022-01-26'),
(821, '1', '9', '109.00', '2021-07-16'),
(822, '1', '9', '91.00', '2020-11-03'),
(823, '1', '9', '216.00', '2020-10-25'),
(824, '7', '1', '46.50', '2022-02-04'),
(825, '6', '1', '81.00', '2022-02-04'),
(826, '1', '7', '0.00', '2022-02-04'),
(827, '2', '7', '0.00', '2022-02-04'),
(828, '1', '7', '0.00', '2022-02-04'),
(829, '5', '1', '82.20', '2022-02-04'),
(830, '1', '8', '158.00', '2022-02-04'),
(831, '5', '8', '175.00', '2022-02-04'),
(832, '4', '8', '158.00', '2022-02-04'),
(833, '2', '8', '163.00', '2022-02-04'),
(834, '7', '8', '160.00', '2022-02-04'),
(835, '8', '8', '163.00', '2022-02-04'),
(836, '8', '1', '45.00', '2022-02-04'),
(837, '8', '1', '48.00', '2022-02-03'),
(838, '6', '8', '171.00', '2022-02-04'),
(839, '1', '1', '118.90', '2022-02-04'),
(840, '4', '1', '44.00', '2021-12-03'),
(841, '1', '1', '118.70', '2022-02-05'),
(842, '1', '8', '158.00', '2021-11-02'),
(845, '1', '2', '35.60', '2022-02-07'),
(846, '1', '2', '97.00', '2022-02-07'),
(983, '1', '11', '0.00', '2022-02-08'),
(984, '1', '12', '0.00', '2022-02-08'),
(985, '1', '14', '8.00', '2022-02-08'),
(986, '1', '19', '1025.00', '2022-02-08'),
(987, '1', '13', '25.00', '2022-02-08'),
(988, '1', '16', '6.00', '2022-02-08'),
(989, '1', '15', '1.00', '2022-02-08'),
(990, '1', '10', '0.10', '2022-02-08'),
(991, '1', '17', '1.00', '2022-02-08'),
(992, '1', '18', '0.00', '2022-02-08'),
(1003, '1', '4', '13.30', '2022-02-12'),
(1004, '1', '5', '6.00', '2022-02-12'),
(1005, '1', '6', '66.00', '2022-02-12'),
(1006, '1', '7', '0.00', '2022-02-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weather`
--

CREATE TABLE `weather` (
  `fecha` datetime DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `amanecer` datetime DEFAULT NULL,
  `anochecer` datetime DEFAULT NULL,
  `temp_min` int(3) DEFAULT NULL,
  `temp_max` int(3) DEFAULT NULL,
  `humedad` int(4) DEFAULT NULL,
  `viento_velocidad` int(4) DEFAULT NULL,
  `viento_direccion` int(3) DEFAULT NULL,
  `nubes` int(3) DEFAULT NULL,
  `lluvia` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `weather`
--

INSERT INTO `weather` (`fecha`, `ciudad`, `amanecer`, `anochecer`, `temp_min`, `temp_max`, `humedad`, `viento_velocidad`, `viento_direccion`, `nubes`, `lluvia`) VALUES
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 13, 83, 1, 135, 75, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 13, 85, 2, 120, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 13, 85, 2, 120, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 13, 85, 2, 120, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 13, 85, 2, 120, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 12, 91, 1, 23, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 12, 91, 1, 23, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 12, 93, 1, 38, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 12, 93, 1, 45, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 12, 93, 1, 45, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 12, 93, 1, 45, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 12, 93, 1, 45, 90, 0),
('2021-12-23 00:00:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 12, 92, 1, 45, 90, 0),
('2021-12-23 19:53:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 9, 12, 93, 1, 23, 90, 0),
('2021-12-23 21:31:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 8, 12, 95, 0, 113, 75, 0),
('2021-12-23 21:40:00', 'Madrid', '2021-12-23 08:35:00', '2021-12-23 17:52:00', 8, 12, 95, 1, 79, 75, 0),
('2021-12-24 00:09:00', 'Madrid', '2021-12-24 08:35:00', '2021-12-24 17:52:00', 8, 12, 95, 3, 135, 90, 0),
('2021-12-24 00:48:00', 'Madrid', '2021-12-24 08:35:00', '2021-12-24 17:52:00', 8, 12, 95, 1, 135, 90, 0),
('2021-12-24 07:53:00', 'Madrid', '2021-12-24 08:35:00', '2021-12-24 17:52:00', 8, 12, 97, 1, 270, 90, 0),
('2021-12-24 07:53:00', 'Madrid', '2021-12-24 08:35:00', '2021-12-24 17:52:00', 8, 12, 97, 1, 270, 90, 0),
('2021-12-24 11:37:00', 'Madrid', '2021-12-24 08:35:00', '2021-12-24 17:52:00', 9, 13, 93, 1, 248, 90, 0),
('2021-12-25 13:34:00', 'Madrid', '2021-12-25 08:36:00', '2021-12-25 17:53:00', 8, 10, 94, 0, 135, 90, 0),
('2021-12-25 13:34:00', 'Madrid', '2021-12-25 08:36:00', '2021-12-25 17:53:00', 8, 10, 94, 0, 135, 90, 0),
('2021-12-25 19:28:00', 'Madrid', '2021-12-25 08:36:00', '2021-12-25 17:53:00', 8, 11, 95, 2, 45, 90, 0),
('2021-12-25 19:28:00', 'Madrid', '2021-12-25 08:36:00', '2021-12-25 17:53:00', 8, 11, 95, 2, 45, 90, 0),
('2021-12-25 19:55:00', 'Madrid', '2021-12-25 08:36:00', '2021-12-25 17:53:00', 8, 12, 96, 1, 23, 90, 0),
('2021-12-26 00:08:00', 'Madrid', '2021-12-26 08:36:00', '2021-12-26 17:54:00', 7, 12, 96, 0, 0, 40, 0),
('2021-12-26 16:30:00', 'Madrid', '2021-12-26 08:36:00', '2021-12-26 17:54:00', 9, 11, 95, 4, 180, 90, 0),
('2021-12-26 17:09:00', 'Madrid', '2021-12-26 08:36:00', '2021-12-26 17:54:00', 9, 10, 95, 3, 203, 90, 0),
('2021-12-26 17:11:00', 'Madrid', '2021-12-26 08:36:00', '2021-12-26 17:54:00', 9, 10, 95, 3, 203, 90, 0),
('2021-12-26 18:54:00', 'Madrid', '2021-12-26 08:36:00', '2021-12-26 17:54:00', 9, 11, 97, 1, 203, 90, 0),
('2021-12-27 10:47:00', 'Madrid', '2021-12-27 08:36:00', '2021-12-27 17:54:00', 10, 13, 89, 4, 225, 40, 0),
('2021-12-28 22:31:00', 'Madrid', '2021-12-28 08:37:00', '2021-12-28 17:55:00', 7, 12, 91, 3, 270, 0, 0),
('2021-12-29 00:47:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 94, 2, 310, 0, 0),
('2021-12-29 00:47:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 94, 2, 310, 0, 0),
('2021-12-29 11:28:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 7, 10, 88, 2, 23, 90, 0),
('2021-12-29 17:19:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 11, 15, 75, 1, 225, 0, 0),
('2021-12-29 00:00:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 90, 1, 270, 9, 0),
('2021-12-29 00:00:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 90, 1, 270, 9, 0),
('2021-12-29 00:00:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 90, 0, 195, 9, 0),
('2021-12-29 00:00:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 90, 0, 195, 9, 0),
('2021-12-29 00:00:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 90, 0, 195, 9, 0),
('2021-12-29 00:00:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 90, 0, 195, 9, 0),
('2021-12-29 00:00:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 90, 0, 195, 9, 0),
('2021-12-29 00:00:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 90, 0, 195, 9, 0),
('2021-12-29 00:00:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 90, 1, 270, 8, 0),
('2021-12-29 00:00:00', 'Madrid', '2021-12-29 08:37:00', '2021-12-29 17:56:00', 5, 11, 90, 1, 270, 8, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 4, 13, 86, 0, 90, 0, 0),
('2021-12-30 11:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 4, 13, 86, 0, 90, 0, 0),
('2021-12-30 11:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 4, 13, 86, 0, 90, 0, 0),
('2021-12-30 11:01:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 4, 13, 86, 0, 90, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 6, 13, 85, 2, 42, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 6, 13, 85, 2, 42, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 6, 13, 85, 2, 42, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 6, 13, 85, 2, 42, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 6, 13, 85, 2, 42, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 6, 13, 85, 2, 42, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 5, 13, 85, 1, 54, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 5, 13, 85, 1, 54, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 5, 13, 85, 1, 54, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 12, 17, 75, 1, 62, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 8, 13, 82, 1, 33, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 8, 13, 82, 1, 33, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 6, 13, 82, 1, 18, 0, 0),
('2021-12-30 00:00:00', 'Madrid', '2021-12-30 08:37:00', '2021-12-30 17:56:00', 6, 13, 82, 1, 18, 0, 0),
('2021-12-31 00:00:00', 'Madrid', '2021-12-31 08:37:00', '2021-12-31 17:57:00', 13, 17, 60, 1, 192, 0, 0),
('2021-12-31 00:00:00', 'Madrid', '2021-12-31 08:37:00', '2021-12-31 17:57:00', 13, 17, 60, 1, 192, 0, 0),
('2021-12-31 00:00:00', 'Madrid', '2021-12-31 08:37:00', '2021-12-31 17:57:00', 13, 17, 60, 1, 192, 0, 0),
('2021-12-31 00:00:00', 'Madrid', '2021-12-31 08:37:00', '2021-12-31 17:57:00', 13, 17, 60, 1, 192, 0, 0),
('2021-12-31 00:00:00', 'Madrid', '2021-12-31 08:37:00', '2021-12-31 17:57:00', 13, 17, 60, 1, 192, 0, 0),
('2021-12-31 00:00:00', 'Madrid', '2021-12-31 08:37:00', '2021-12-31 17:57:00', 13, 17, 60, 1, 192, 0, 0),
('2022-01-01 00:00:00', 'Madrid', '2022-01-01 08:37:00', '2022-01-01 17:58:00', 9, 15, 56, 0, 0, 0, 0),
('2022-01-01 00:00:00', 'Madrid', '2022-01-01 08:37:00', '2022-01-01 17:58:00', 8, 15, 58, 1, 320, 0, 0),
('2022-01-01 00:00:00', 'Madrid', '2022-01-01 08:37:00', '2022-01-01 17:58:00', 8, 15, 58, 1, 320, 0, 0),
('2022-01-02 00:00:00', 'Madrid', '2022-01-02 08:37:00', '2022-01-02 17:59:00', 8, 14, 71, 0, 96, 0, 0),
('2022-01-02 00:00:00', 'Madrid', '2022-01-02 08:37:00', '2022-01-02 17:59:00', 8, 14, 71, 0, 96, 0, 0),
('2022-01-02 00:00:00', 'Madrid', '2022-01-02 08:37:00', '2022-01-02 17:59:00', 8, 14, 71, 0, 96, 0, 0),
('2022-01-03 00:00:00', 'Madrid', '2022-01-03 08:38:00', '2022-01-03 18:00:00', 8, 14, 73, 1, 225, 0, 0),
('2022-01-03 00:00:00', 'Madrid', '2022-01-03 08:38:00', '2022-01-03 18:00:00', 8, 14, 73, 1, 225, 0, 0),
('2022-01-03 00:00:00', 'Madrid', '2022-01-03 08:38:00', '2022-01-03 18:00:00', 8, 14, 73, 1, 225, 0, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 3, 11, 86, 1, 232, 65, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 3, 11, 86, 1, 232, 65, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 3, 11, 86, 1, 232, 65, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 3, 11, 86, 1, 232, 65, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 3, 11, 86, 1, 232, 65, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 6, 10, 86, 8, 248, 40, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 6, 10, 86, 8, 248, 40, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 6, 10, 86, 8, 248, 40, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 6, 10, 86, 8, 248, 40, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 6, 10, 78, 11, 270, 20, 0),
('2022-01-04 00:00:00', 'Madrid', '2022-01-04 08:38:00', '2022-01-04 18:00:00', 6, 10, 78, 11, 270, 20, 0),
('2022-01-05 00:00:00', 'Madrid', '2022-01-05 08:38:00', '2022-01-05 18:01:00', 5, 10, 67, 5, 293, 40, 0),
('2022-01-05 00:00:00', 'Madrid', '2022-01-05 08:38:00', '2022-01-05 18:01:00', 5, 10, 67, 5, 293, 40, 0),
('2022-01-05 00:00:00', 'Madrid', '2022-01-05 08:38:00', '2022-01-05 18:01:00', 5, 9, 65, 3, 338, 40, 0),
('2022-01-05 00:00:00', 'Madrid', '2022-01-05 08:38:00', '2022-01-05 18:01:00', 5, 9, 65, 3, 338, 40, 0),
('2022-01-06 00:00:00', 'Madrid', '2022-01-06 08:37:00', '2022-01-06 18:02:00', 0, 5, 87, 1, 163, 0, 0),
('2022-01-06 00:00:00', 'Madrid', '2022-01-06 08:37:00', '2022-01-06 18:02:00', 0, 5, 87, 1, 163, 0, 0),
('2022-01-06 00:00:00', 'Madrid', '2022-01-06 08:37:00', '2022-01-06 18:02:00', 1, 6, 82, 2, 203, 20, 0),
('2022-01-06 00:00:00', 'Madrid', '2022-01-06 08:37:00', '2022-01-06 18:02:00', 1, 6, 82, 2, 203, 20, 0),
('2022-01-06 00:00:00', 'Madrid', '2022-01-06 08:37:00', '2022-01-06 18:02:00', -1, 7, 80, 1, 45, 0, 0),
('2022-01-07 00:00:00', 'Madrid', '2022-01-07 08:37:00', '2022-01-07 18:03:00', 8, 11, 61, 3, 68, 20, 0),
('2022-01-07 00:00:00', 'Madrid', '2022-01-07 08:37:00', '2022-01-07 18:03:00', 8, 11, 61, 3, 68, 20, 0),
('2022-01-07 00:00:00', 'Madrid', '2022-01-07 08:37:00', '2022-01-07 18:03:00', 8, 11, 59, 2, 90, 20, 0),
('2022-01-07 16:35:00', 'Madrid', '2022-01-07 08:37:00', '2022-01-07 18:03:00', 5, 11, 58, 2, 68, 20, 0),
('2022-01-07 21:13:00', 'Madrid', '2022-01-07 08:37:00', '2022-01-07 18:03:00', 2, 8, 71, 1, 21, 0, 0),
('2022-01-07 21:13:00', 'Madrid', '2022-01-07 08:37:00', '2022-01-07 18:03:00', 2, 8, 71, 1, 21, 0, 0),
('2022-01-07 21:27:00', 'Madrid', '2022-01-07 08:37:00', '2022-01-07 18:03:00', 3, 8, 72, 1, 0, 0, 0),
('2022-01-07 21:31:00', 'Madrid', '2022-01-07 08:37:00', '2022-01-07 18:03:00', 3, 8, 72, 1, 0, 0, 0),
('2022-01-07 21:34:00', 'Madrid', '2022-01-07 08:37:00', '2022-01-07 18:03:00', 3, 8, 72, 1, 0, 0, 0),
('2022-01-08 00:06:00', 'Madrid', '2022-01-08 08:37:00', '2022-01-08 18:04:00', 0, 6, 83, 0, 41, 0, 0),
('2022-01-08 07:04:00', 'Madrid', '2022-01-08 08:37:00', '2022-01-08 18:04:00', -4, 3, 89, 0, 0, 0, 0),
('2022-01-08 07:04:00', 'Madrid', '2022-01-08 08:37:00', '2022-01-08 18:04:00', -4, 3, 89, 0, 0, 0, 0),
('2022-01-08 07:05:00', 'Madrid', '2022-01-08 08:37:00', '2022-01-08 18:04:00', -4, 3, 89, 0, 0, 0, 0),
('2022-01-08 08:13:00', 'Madrid', '2022-01-08 08:37:00', '2022-01-08 18:04:00', -4, 4, 90, 1, 0, 0, 0),
('2022-01-08 13:37:00', 'Madrid', '2022-01-08 08:37:00', '2022-01-08 18:04:00', 2, 9, 78, 1, 217, 0, 0),
('2022-01-08 13:37:00', 'Madrid', '2022-01-08 08:37:00', '2022-01-08 18:04:00', 2, 9, 78, 1, 217, 0, 0),
('2022-01-08 22:38:00', 'Madrid', '2022-01-08 08:37:00', '2022-01-08 18:04:00', -2, 7, 74, 1, 248, 0, 0),
('2022-01-08 22:38:00', 'Madrid', '2022-01-08 08:37:00', '2022-01-08 18:04:00', -2, 7, 74, 1, 248, 0, 0),
('2022-01-08 23:21:00', 'Madrid', '2022-01-08 08:37:00', '2022-01-08 18:04:00', -3, 7, 67, 4, 270, 0, 0),
('2022-01-09 16:49:00', 'Madrid', '2022-01-09 08:37:00', '2022-01-09 18:05:00', 11, 14, 62, 9, 270, 75, 0),
('2022-01-09 16:50:00', 'Madrid', '2022-01-09 08:37:00', '2022-01-09 18:05:00', 11, 14, 62, 9, 270, 75, 0),
('2022-01-10 11:09:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 7, 14, 81, 0, 338, 0, 0),
('2022-01-10 11:23:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 8, 14, 80, 1, 23, 0, 0),
('2022-01-10 17:36:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 11, 15, 58, 3, 45, 0, 0),
('2022-01-10 21:19:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 8, 13, 65, 4, 16, 0, 0),
('2022-01-10 21:20:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 8, 13, 65, 4, 16, 0, 0),
('2022-01-10 22:00:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 7, 12, 67, 3, 29, 0, 0),
('2022-01-10 23:33:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 6, 12, 69, 4, 32, 0, 0),
('2022-01-10 23:33:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 6, 12, 69, 4, 32, 0, 0),
('2022-01-10 23:42:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 6, 12, 68, 1, 0, 0, 0),
('2022-01-10 00:00:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 6, 12, 68, 1, 0, 0, 0),
('2022-01-10 00:00:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 6, 12, 68, 1, 0, 0, 0),
('2022-01-10 23:44:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 6, 12, 68, 1, 0, 0, 0),
('2022-01-10 23:52:00', 'Madrid', '2022-01-10 08:37:00', '2022-01-10 18:06:00', 6, 11, 71, 2, 0, 0, 0),
('2022-01-11 07:46:00', 'Madrid', '2022-01-11 08:37:00', '2022-01-11 18:07:00', 1, 9, 85, 1, 20, 0, 0),
('2022-01-11 12:11:00', 'Madrid', '2022-01-11 08:37:00', '2022-01-11 18:07:00', 9, 13, 71, 1, 270, 0, 0),
('2022-01-11 12:14:00', 'Madrid', '2022-01-11 08:37:00', '2022-01-11 18:07:00', 9, 13, 71, 1, 270, 0, 0),
('2022-01-11 00:00:00', 'Madrid', '2022-01-11 08:37:00', '2022-01-11 18:07:00', 9, 13, 71, 1, 270, 0, 0),
('2022-01-11 00:00:00', 'Madrid', '2022-01-11 08:37:00', '2022-01-11 18:07:00', 9, 13, 70, 1, 270, 0, 0),
('2022-01-11 00:00:00', 'Madrid', '2022-01-11 08:37:00', '2022-01-11 18:07:00', 9, 13, 70, 1, 270, 0, 0),
('2022-01-11 12:18:00', 'Madrid', '2022-01-11 08:37:00', '2022-01-11 18:07:00', 9, 13, 70, 1, 270, 0, 0),
('2022-01-11 20:21:00', 'Madrid', '2022-01-11 08:37:00', '2022-01-11 18:07:00', 7, 13, 65, 4, 68, 20, 0),
('2022-01-12 09:15:00', 'Madrid', '2022-01-12 08:36:00', '2022-01-12 18:08:00', 0, 7, 85, 1, 45, 0, 0),
('2022-01-12 09:15:00', 'Madrid', '2022-01-12 08:36:00', '2022-01-12 18:08:00', 0, 7, 85, 1, 45, 0, 0),
('2022-01-12 21:02:00', 'Madrid', '2022-01-12 08:36:00', '2022-01-12 18:08:00', 1, 8, 55, 0, 0, 0, 0),
('2022-01-12 21:02:00', 'Madrid', '2022-01-12 08:36:00', '2022-01-12 18:08:00', 1, 8, 55, 0, 0, 0, 0),
('2022-01-12 21:28:00', 'Madrid', '2022-01-12 08:36:00', '2022-01-12 18:08:00', 2, 8, 56, 1, 0, 0, 0),
('2022-01-13 07:59:00', 'Madrid', '2022-01-13 08:36:00', '2022-01-13 18:09:00', -3, 4, 65, 2, 23, 0, 0),
('2022-01-14 10:41:00', 'Madrid', '2022-01-14 08:36:00', '2022-01-14 18:10:00', -2, 6, 73, 0, 90, 0, 0),
('2022-01-14 12:07:00', 'Madrid', '2022-01-14 08:36:00', '2022-01-14 18:10:00', 1, 7, 64, 1, 90, 0, 0),
('2022-01-15 10:06:00', 'Madrid', '2022-01-15 08:35:00', '2022-01-15 18:12:00', -4, 5, 68, 1, 46, 0, 0),
('2022-01-15 10:18:00', 'Madrid', '2022-01-15 08:35:00', '2022-01-15 18:12:00', -3, 5, 66, 1, 26, 0, 0),
('2022-01-15 16:38:00', 'Madrid', '2022-01-15 08:35:00', '2022-01-15 18:12:00', 6, 10, 54, 2, 222, 0, 0),
('2022-01-15 19:20:00', 'Madrid', '2022-01-15 08:35:00', '2022-01-15 18:12:00', 2, 7, 67, 0, 248, 0, 0),
('2022-01-16 10:23:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', -4, 5, 78, 1, 56, 0, 0),
('2022-01-16 10:25:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', -2, 5, 75, 1, 41, 0, 0),
('2022-01-16 15:43:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 6, 11, 52, 1, 170, 0, 0),
('2022-01-16 18:15:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 4, 9, 57, 0, 135, 0, 0),
('2022-01-16 18:17:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 3, 9, 60, 1, 205, 0, 0),
('2022-01-16 18:18:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 3, 9, 60, 1, 205, 0, 0),
('2022-01-16 18:19:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 3, 9, 60, 1, 205, 0, 0),
('2022-01-16 18:21:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 3, 9, 60, 1, 205, 0, 0),
('2022-01-16 18:21:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 3, 9, 60, 1, 205, 0, 0),
('2022-01-16 18:22:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 3, 9, 60, 1, 205, 0, 0),
('2022-01-16 18:33:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 3, 9, 61, 1, 197, 0, 0),
('2022-01-16 19:13:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 64, 0, 180, 0, 0),
('2022-01-16 19:14:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 64, 0, 180, 0, 0),
('2022-01-16 19:15:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 64, 0, 180, 0, 0),
('2022-01-16 19:16:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 64, 0, 180, 0, 0),
('2022-01-16 19:16:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 64, 0, 180, 0, 0),
('2022-01-16 19:16:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 64, 0, 180, 0, 0),
('2022-01-16 19:17:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 64, 0, 180, 0, 0),
('2022-01-16 19:18:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 64, 0, 180, 0, 0),
('2022-01-16 19:20:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 64, 0, 180, 0, 0),
('2022-01-16 19:27:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 1, 181, 0, 0),
('2022-01-16 19:27:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 1, 181, 0, 0),
('2022-01-16 19:28:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 1, 181, 0, 0),
('2022-01-16 19:28:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 1, 181, 0, 0),
('2022-01-16 19:31:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:32:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:33:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:33:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:34:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:36:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:37:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:37:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:39:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:40:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:41:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 65, 0, 202, 0, 0),
('2022-01-16 19:42:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 67, 0, 202, 0, 0),
('2022-01-16 19:43:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 67, 0, 202, 0, 0),
('2022-01-16 19:49:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 67, 0, 202, 0, 0),
('2022-01-16 19:49:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 67, 0, 202, 0, 0),
('2022-01-16 19:51:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 67, 0, 202, 0, 0),
('2022-01-16 20:03:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 68, 0, 202, 0, 0),
('2022-01-16 20:04:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 2, 8, 68, 0, 202, 0, 0),
('2022-01-16 21:10:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', -1, 8, 72, 1, 227, 0, 0),
('2022-01-16 21:19:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', -1, 8, 72, 1, 227, 0, 0),
('2022-01-16 21:20:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', -1, 8, 72, 1, 227, 0, 0),
('2022-01-16 21:22:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 73, 1, 247, 0, 0),
('2022-01-16 21:23:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 73, 1, 247, 0, 0),
('2022-01-16 21:24:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 73, 1, 247, 0, 0),
('2022-01-16 21:25:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 73, 1, 247, 0, 0),
('2022-01-16 21:26:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 73, 1, 247, 0, 0),
('2022-01-16 21:26:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 73, 1, 247, 0, 0),
('2022-01-16 21:26:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 73, 1, 247, 0, 0),
('2022-01-16 21:29:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 73, 1, 247, 0, 0),
('2022-01-16 21:29:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 73, 1, 247, 0, 0),
('2022-01-16 21:31:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 73, 1, 247, 0, 0),
('2022-01-16 21:35:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 74, 0, 257, 0, 0),
('2022-01-16 21:37:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 74, 0, 257, 0, 0),
('2022-01-16 21:37:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 74, 0, 257, 0, 0),
('2022-01-16 21:38:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 74, 0, 257, 0, 0),
('2022-01-16 21:41:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 74, 0, 257, 0, 0),
('2022-01-16 21:42:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 74, 0, 257, 0, 0),
('2022-01-16 21:43:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 74, 0, 257, 0, 0),
('2022-01-16 21:43:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 74, 0, 257, 0, 0),
('2022-01-16 21:44:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 1, 7, 74, 0, 257, 0, 0),
('2022-01-16 21:59:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 75, 1, 315, 0, 0),
('2022-01-16 22:00:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 75, 1, 315, 0, 0),
('2022-01-16 22:00:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 75, 1, 315, 0, 0),
('2022-01-16 22:01:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 75, 1, 315, 0, 0),
('2022-01-16 22:01:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 75, 1, 315, 0, 0),
('2022-01-16 22:05:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 75, 1, 315, 0, 0),
('2022-01-16 22:07:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 75, 1, 315, 0, 0),
('2022-01-16 22:08:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 75, 1, 315, 0, 0),
('2022-01-16 22:08:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 75, 1, 315, 0, 0),
('2022-01-16 22:12:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 74, 1, 280, 0, 0),
('2022-01-16 22:13:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 74, 1, 280, 0, 0),
('2022-01-16 22:13:00', 'Madrid', '2022-01-16 08:35:00', '2022-01-16 18:13:00', 0, 7, 74, 1, 280, 0, 0),
('2022-01-17 06:52:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', -4, 4, 78, 1, 30, 0, 0),
('2022-01-17 06:57:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', -4, 4, 78, 1, 30, 0, 0),
('2022-01-17 07:00:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', -4, 4, 78, 1, 30, 0, 0),
('2022-01-17 07:00:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', -4, 4, 78, 1, 30, 0, 0),
('2022-01-17 07:00:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', -4, 4, 78, 1, 30, 0, 0),
('2022-01-17 07:05:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', -4, 4, 78, 1, 34, 0, 0),
('2022-01-17 10:31:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', -2, 6, 73, 2, 56, 0, 0),
('2022-01-17 10:32:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', -2, 6, 73, 2, 28, 0, 0),
('2022-01-17 10:49:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 0, 7, 68, 2, 73, 0, 0),
('2022-01-17 10:54:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 0, 7, 68, 2, 73, 0, 0),
('2022-01-17 11:08:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 68, 1, 56, 0, 0),
('2022-01-17 11:09:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 68, 1, 56, 0, 0),
('2022-01-17 11:17:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 0, 9, 69, 1, 69, 0, 0),
('2022-01-17 11:22:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 67, 1, 29, 0, 0),
('2022-01-17 11:25:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 67, 1, 29, 0, 0),
('2022-01-17 11:26:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 67, 1, 29, 0, 0),
('2022-01-17 11:27:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 67, 1, 29, 0, 0),
('2022-01-17 11:27:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 67, 1, 29, 0, 0),
('2022-01-17 11:28:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 67, 1, 29, 0, 0),
('2022-01-17 11:28:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 67, 1, 29, 0, 0),
('2022-01-17 11:29:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 67, 1, 29, 0, 0),
('2022-01-17 11:31:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 67, 1, 29, 0, 0),
('2022-01-17 11:32:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 1, 8, 67, 1, 29, 0, 0),
('2022-01-17 11:33:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 2, 8, 64, 1, 24, 0, 0),
('2022-01-17 11:34:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 2, 8, 64, 1, 24, 0, 0),
('2022-01-17 11:34:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 2, 8, 64, 1, 24, 0, 0),
('2022-01-17 11:36:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 2, 8, 64, 1, 24, 0, 0),
('2022-01-17 11:36:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 2, 8, 64, 1, 24, 0, 0),
('2022-01-17 11:40:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 2, 8, 64, 1, 24, 0, 0),
('2022-01-17 11:49:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 8, 63, 0, 90, 0, 0),
('2022-01-17 11:51:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 8, 63, 0, 90, 0, 0),
('2022-01-17 11:52:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 8, 63, 0, 90, 0, 0),
('2022-01-17 11:52:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 8, 63, 0, 90, 0, 0),
('2022-01-17 11:55:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 9, 63, 1, 50, 0, 0),
('2022-01-17 11:56:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 9, 63, 1, 50, 0, 0),
('2022-01-17 11:57:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 9, 63, 1, 50, 0, 0),
('2022-01-17 11:57:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 9, 63, 1, 50, 0, 0),
('2022-01-17 11:58:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 9, 63, 1, 50, 0, 0),
('2022-01-17 11:58:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 9, 63, 1, 50, 0, 0),
('2022-01-17 11:58:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 9, 63, 1, 50, 0, 0),
('2022-01-17 11:59:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 9, 63, 1, 50, 0, 0),
('2022-01-17 12:00:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 9, 63, 1, 50, 0, 0),
('2022-01-17 12:00:00', 'Madrid', '2022-01-17 08:35:00', '2022-01-17 18:14:00', 3, 9, 63, 1, 50, 0, 0),
('2022-01-18 10:01:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', -4, 6, 69, 1, 23, 0, 0),
('2022-01-18 10:01:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', -4, 6, 69, 1, 23, 0, 0),
('2022-01-18 10:11:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', -3, 7, 68, 0, 45, 0, 0),
('2022-01-18 10:18:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', -3, 7, 68, 0, 45, 0, 0),
('2022-01-18 10:19:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', -3, 7, 68, 0, 45, 0, 0),
('2022-01-18 10:21:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', -3, 7, 68, 0, 45, 0, 0),
('2022-01-18 10:37:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', -2, 8, 66, 0, 0, 0, 0),
('2022-01-18 10:42:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', -1, 8, 66, 1, 36, 0, 0),
('2022-01-18 10:49:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 0, 8, 63, 0, 23, 0, 0),
('2022-01-18 10:50:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 0, 8, 63, 0, 23, 0, 0),
('2022-01-18 10:51:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 0, 8, 63, 0, 23, 0, 0),
('2022-01-18 10:57:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 0, 9, 62, 1, 53, 0, 0),
('2022-01-18 10:57:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 0, 9, 62, 1, 53, 0, 0),
('2022-01-18 16:48:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 1, 23, 0, 0),
('2022-01-18 16:48:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 1, 23, 0, 0),
('2022-01-18 16:49:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 1, 23, 0, 0),
('2022-01-18 16:49:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 1, 23, 0, 0),
('2022-01-18 16:50:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 1, 23, 0, 0),
('2022-01-18 16:53:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 29, 0, 45, 0, 0),
('2022-01-18 16:54:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 29, 0, 45, 0, 0),
('2022-01-18 16:57:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 29, 0, 45, 0, 0),
('2022-01-18 16:57:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 29, 0, 45, 0, 0),
('2022-01-18 16:58:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 29, 0, 45, 0, 0),
('2022-01-18 16:59:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 29, 0, 45, 0, 0),
('2022-01-18 17:01:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 29, 0, 45, 0, 0),
('2022-01-18 17:02:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 0, 45, 0, 0),
('2022-01-18 17:04:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 0, 45, 0, 0),
('2022-01-18 17:07:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 0, 45, 0, 0),
('2022-01-18 17:07:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 0, 45, 0, 0),
('2022-01-18 17:09:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 0, 45, 0, 0),
('2022-01-18 17:10:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 0, 45, 0, 0),
('2022-01-18 17:11:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 0, 45, 0, 0),
('2022-01-18 17:12:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 9, 13, 30, 0, 45, 0, 0),
('2022-01-18 17:12:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 8, 13, 31, 0, 45, 0, 0),
('2022-01-18 17:12:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 8, 13, 31, 0, 45, 0, 0),
('2022-01-18 17:13:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 8, 13, 31, 0, 45, 0, 0),
('2022-01-18 17:15:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 8, 13, 31, 0, 45, 0, 0),
('2022-01-18 17:32:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 7, 14, 31, 1, 0, 0, 0),
('2022-01-18 17:33:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 7, 14, 31, 1, 0, 0, 0),
('2022-01-18 17:35:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 7, 14, 31, 1, 0, 0, 0),
('2022-01-18 17:35:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 7, 14, 31, 1, 0, 0, 0),
('2022-01-18 17:36:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 7, 14, 31, 1, 0, 0, 0),
('2022-01-18 17:38:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:40:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:40:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:40:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:41:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:41:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:42:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:45:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:45:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:46:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:47:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 17:47:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 6, 13, 31, 1, 0, 0, 0),
('2022-01-18 18:29:00', 'Madrid', '2022-01-18 08:34:00', '2022-01-18 18:15:00', 5, 12, 38, 1, 240, 0, 0),
('2022-01-19 04:14:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 60, 0, 0),
('2022-01-19 04:15:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 60, 0, 0),
('2022-01-19 04:16:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 60, 0, 0),
('2022-01-19 04:23:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 60, 0, 0),
('2022-01-19 04:24:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 30, 0, 0),
('2022-01-19 04:27:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 30, 0, 0),
('2022-01-19 04:28:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 30, 0, 0),
('2022-01-19 04:30:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 30, 0, 0),
('2022-01-19 04:30:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 30, 0, 0),
('2022-01-19 04:32:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 30, 0, 0),
('2022-01-19 04:32:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 22, 0, 0),
('2022-01-19 04:33:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 2, 22, 0, 0),
('2022-01-19 04:37:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:38:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:38:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:38:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:38:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:39:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:39:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:41:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:42:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:43:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:46:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:47:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -4, 6, 58, 1, 28, 0, 0),
('2022-01-19 04:47:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -2, 6, 54, 2, 31, 0, 0),
('2022-01-19 04:48:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -2, 6, 54, 2, 31, 0, 0),
('2022-01-19 04:48:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -2, 6, 54, 2, 31, 0, 0),
('2022-01-19 04:50:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -2, 6, 54, 2, 31, 0, 0),
('2022-01-19 04:51:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -2, 6, 54, 2, 31, 0, 0),
('2022-01-19 10:00:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -3, 8, 56, 2, 0, 0, 0),
('2022-01-19 10:01:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -3, 8, 56, 2, 0, 0, 0),
('2022-01-19 10:03:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -3, 8, 56, 2, 0, 0, 0),
('2022-01-19 10:04:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -3, 8, 56, 2, 0, 0, 0),
('2022-01-19 10:05:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -3, 8, 56, 2, 0, 0, 0),
('2022-01-19 10:06:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -3, 8, 56, 2, 23, 0, 0),
('2022-01-19 10:06:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -3, 8, 56, 2, 23, 0, 0),
('2022-01-19 10:07:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', -3, 8, 56, 2, 23, 0, 0),
('2022-01-19 11:31:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 10, 48, 1, 59, 0, 0),
('2022-01-19 11:40:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 11, 48, 1, 83, 0, 0),
('2022-01-19 11:40:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 11, 48, 1, 83, 0, 0),
('2022-01-19 11:41:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 11, 48, 1, 83, 0, 0),
('2022-01-19 11:43:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 11, 48, 1, 83, 0, 0),
('2022-01-19 11:43:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 11, 48, 1, 83, 0, 0),
('2022-01-19 11:43:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 11, 48, 1, 83, 0, 0),
('2022-01-19 11:44:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 11, 48, 1, 83, 0, 0),
('2022-01-19 11:47:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 11, 48, 1, 83, 0, 0),
('2022-01-19 11:48:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 11, 48, 1, 83, 0, 0),
('2022-01-19 11:48:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 3, 11, 48, 1, 83, 0, 0),
('2022-01-19 11:50:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 4, 11, 48, 1, 90, 0, 0),
('2022-01-19 11:51:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 4, 11, 48, 1, 90, 0, 0),
('2022-01-19 11:54:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 4, 11, 48, 1, 90, 0, 0),
('2022-01-19 21:28:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 2, 10, 45, 0, 293, 0, 0),
('2022-01-19 21:29:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 2, 10, 46, 0, 293, 0, 0),
('2022-01-19 21:56:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 9, 48, 0, 360, 0, 0),
('2022-01-19 21:56:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 9, 48, 0, 360, 0, 0),
('2022-01-19 21:58:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 9, 48, 0, 360, 0, 0),
('2022-01-19 22:00:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 9, 48, 0, 360, 0, 0),
('2022-01-19 22:02:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 9, 48, 0, 360, 0, 0),
('2022-01-19 22:03:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 9, 48, 0, 360, 0, 0),
('2022-01-19 22:05:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 9, 48, 0, 360, 0, 0),
('2022-01-19 22:24:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 9, 50, 0, 6, 0, 0),
('2022-01-19 22:33:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 9, 50, 0, 6, 0, 0),
('2022-01-19 22:34:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:35:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:35:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:36:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:40:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:40:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:40:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:40:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:41:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:41:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:41:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:42:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:42:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:42:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:42:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:43:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:43:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:43:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-19 22:43:00', 'Madrid', '2022-01-19 08:34:00', '2022-01-19 18:16:00', 1, 8, 51, 1, 50, 0, 0),
('2022-01-20 10:25:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 0, 9, 60, 1, 90, 0, 0),
('2022-01-20 10:28:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 0, 9, 61, 1, 90, 0, 0),
('2022-01-20 10:32:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 0, 9, 61, 1, 90, 0, 0),
('2022-01-20 10:35:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 0, 9, 61, 1, 90, 0, 0),
('2022-01-20 10:36:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 0, 9, 61, 1, 90, 0, 0),
('2022-01-20 10:36:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 0, 9, 61, 1, 90, 0, 0),
('2022-01-20 10:36:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 0, 9, 61, 1, 90, 0, 0),
('2022-01-20 10:38:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 1, 9, 58, 2, 90, 0, 0),
('2022-01-20 10:41:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 1, 9, 58, 2, 90, 0, 0),
('2022-01-20 10:42:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 1, 9, 58, 2, 90, 0, 0),
('2022-01-20 10:43:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 1, 9, 58, 2, 90, 0, 0),
('2022-01-20 16:05:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 11, 14, 42, 2, 68, 20, 0),
('2022-01-20 18:02:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 7, 12, 42, 1, 90, 20, 0),
('2022-01-20 18:04:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 7, 12, 42, 1, 90, 20, 0),
('2022-01-20 18:19:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 7, 12, 44, 2, 68, 20, 0),
('2022-01-20 18:21:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 7, 12, 44, 2, 68, 20, 0),
('2022-01-20 19:03:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 6, 11, 46, 1, 45, 20, 0),
('2022-01-20 19:06:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 6, 11, 46, 1, 45, 20, 0),
('2022-01-20 19:07:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 6, 11, 46, 1, 45, 20, 0),
('2022-01-20 19:09:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 6, 11, 46, 1, 45, 20, 0),
('2022-01-20 19:11:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 6, 11, 46, 1, 45, 20, 0),
('2022-01-20 19:12:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 47, 1, 45, 20, 0),
('2022-01-20 19:17:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 47, 1, 45, 20, 0),
('2022-01-20 19:20:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 50, 4, 68, 20, 0),
('2022-01-20 19:20:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 50, 4, 68, 20, 0),
('2022-01-20 19:22:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 50, 4, 68, 20, 0),
('2022-01-20 19:23:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 50, 4, 68, 20, 0),
('2022-01-20 19:26:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 50, 4, 68, 20, 0),
('2022-01-20 19:27:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 50, 4, 68, 20, 0),
('2022-01-20 19:29:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 50, 4, 68, 20, 0),
('2022-01-20 19:30:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 51, 1, 68, 20, 0),
('2022-01-20 19:32:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 51, 1, 68, 20, 0),
('2022-01-20 19:33:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 51, 1, 68, 20, 0),
('2022-01-20 19:34:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 51, 1, 68, 20, 0),
('2022-01-20 19:39:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 51, 4, 68, 20, 0),
('2022-01-20 19:39:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 51, 4, 68, 20, 0),
('2022-01-20 19:40:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 51, 4, 68, 20, 0),
('2022-01-20 19:42:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 51, 4, 68, 20, 0),
('2022-01-20 19:43:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 11, 51, 4, 68, 20, 0),
('2022-01-20 19:52:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 4, 10, 54, 3, 45, 20, 0),
('2022-01-20 19:54:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 4, 10, 54, 3, 45, 20, 0),
('2022-01-20 19:54:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 4, 10, 54, 3, 45, 20, 0),
('2022-01-20 19:56:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 4, 10, 54, 3, 45, 20, 0),
('2022-01-20 19:56:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 4, 10, 54, 3, 45, 20, 0),
('2022-01-20 19:57:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 4, 10, 54, 3, 45, 20, 0),
('2022-01-20 19:58:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 4, 10, 54, 3, 45, 20, 0),
('2022-01-20 20:03:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 10, 54, 1, 68, 20, 0),
('2022-01-20 20:03:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 5, 10, 54, 1, 68, 20, 0),
('2022-01-20 21:15:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 3, 9, 59, 3, 68, 20, 0),
('2022-01-20 21:15:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 3, 9, 59, 3, 68, 20, 0),
('2022-01-20 23:15:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 45, 0, 0),
('2022-01-20 23:16:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 45, 0, 0),
('2022-01-20 23:19:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 45, 0, 0),
('2022-01-20 23:21:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 45, 0, 0),
('2022-01-20 23:23:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 45, 0, 0),
('2022-01-20 23:23:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 45, 0, 0),
('2022-01-20 23:24:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 45, 0, 0),
('2022-01-20 23:27:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 68, 0, 0),
('2022-01-20 23:33:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 68, 0, 0),
('2022-01-20 23:34:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 68, 0, 0),
('2022-01-20 23:35:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 2, 68, 0, 0),
('2022-01-20 23:38:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 1, 45, 0, 0),
('2022-01-20 23:46:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 1, 45, 0, 0),
('2022-01-20 23:46:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 1, 45, 0, 0),
('2022-01-20 23:47:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 8, 65, 1, 45, 0, 0),
('2022-01-20 23:48:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 7, 66, 3, 90, 0, 0),
('2022-01-20 23:49:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 7, 66, 3, 90, 0, 0),
('2022-01-20 23:49:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 7, 66, 3, 90, 0, 0),
('2022-01-20 23:50:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 7, 66, 3, 90, 0, 0),
('2022-01-20 23:50:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 7, 66, 3, 90, 0, 0),
('2022-01-20 23:51:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 7, 66, 3, 90, 0, 0),
('2022-01-20 23:54:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 7, 66, 3, 90, 0, 0),
('2022-01-21 00:01:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 2, 7, 66, 1, 121, 0, 0),
('2022-01-21 00:04:00', 'Madrid', '2022-01-20 08:33:00', '2022-01-20 18:17:00', 2, 7, 66, 1, 121, 0, 0);
INSERT INTO `weather` (`fecha`, `ciudad`, `amanecer`, `anochecer`, `temp_min`, `temp_max`, `humedad`, `viento_velocidad`, `viento_direccion`, `nubes`, `lluvia`) VALUES
('2022-01-21 09:23:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -4, 5, 83, 0, 15, 0, 0),
('2022-01-21 09:38:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -4, 4, 81, 1, 35, 0, 0),
('2022-01-21 09:40:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -4, 4, 81, 1, 35, 0, 0),
('2022-01-21 09:43:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -4, 4, 81, 1, 35, 0, 0),
('2022-01-21 09:48:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:52:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:52:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:52:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:52:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:52:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:53:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:56:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:56:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:57:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:57:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:57:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:57:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 09:58:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', -2, 4, 80, 1, 23, 0, 0),
('2022-01-21 10:52:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 10:52:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 10:52:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 10:52:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 10:53:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 10:53:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 10:53:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 10:53:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 10:53:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 10:54:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 10:54:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 0, 10, 0, 0),
('2022-01-21 11:09:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 1, 94, 0, 0),
('2022-01-21 11:14:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 2, 84, 0, 0),
('2022-01-21 11:15:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 2, 84, 0, 0),
('2022-01-21 11:16:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 2, 84, 0, 0),
('2022-01-21 11:18:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 2, 84, 0, 0),
('2022-01-21 11:18:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 2, 84, 0, 0),
('2022-01-21 11:20:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 2, 84, 0, 0),
('2022-01-21 11:20:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 2, 84, 0, 0),
('2022-01-21 11:21:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 2, 84, 0, 0),
('2022-01-21 11:21:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 2, 84, 0, 0),
('2022-01-21 11:21:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 73, 2, 84, 0, 0),
('2022-01-21 11:23:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 72, 0, 225, 0, 0),
('2022-01-21 11:24:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 72, 0, 225, 0, 0),
('2022-01-21 11:25:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 72, 0, 225, 0, 0),
('2022-01-21 11:26:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 72, 0, 225, 0, 0),
('2022-01-21 11:26:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 72, 0, 225, 0, 0),
('2022-01-21 11:31:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 72, 0, 225, 0, 0),
('2022-01-21 11:37:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 1, 7, 71, 0, 203, 0, 0),
('2022-01-21 11:39:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 1, 7, 71, 0, 203, 0, 0),
('2022-01-21 11:39:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 1, 7, 71, 0, 203, 0, 0),
('2022-01-21 11:40:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 1, 7, 71, 0, 203, 0, 0),
('2022-01-21 11:42:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 1, 7, 71, 0, 203, 0, 0),
('2022-01-21 11:44:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 1, 7, 71, 0, 203, 0, 0),
('2022-01-21 15:24:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 7, 10, 45, 2, 113, 20, 0),
('2022-01-21 15:57:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 7, 11, 41, 2, 68, 20, 0),
('2022-01-21 15:57:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 7, 11, 41, 2, 68, 20, 0),
('2022-01-21 15:58:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 7, 11, 41, 2, 68, 20, 0),
('2022-01-21 15:59:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 7, 11, 41, 2, 68, 20, 0),
('2022-01-21 16:00:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 7, 11, 41, 2, 68, 20, 0),
('2022-01-21 17:50:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 5, 10, 36, 2, 113, 0, 0),
('2022-01-21 21:42:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 47, 1, 45, 0, 0),
('2022-01-21 21:43:00', 'Madrid', '2022-01-21 08:32:00', '2022-01-21 18:18:00', 0, 7, 47, 1, 45, 0, 0),
('2022-01-22 11:29:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 1, 7, 64, 3, 23, 20, 0),
('2022-01-22 11:29:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 1, 7, 64, 3, 23, 20, 0),
('2022-01-22 11:29:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 1, 7, 64, 3, 23, 20, 0),
('2022-01-22 11:46:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 2, 7, 63, 1, 45, 75, 0),
('2022-01-22 11:47:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 2, 7, 63, 1, 45, 75, 0),
('2022-01-22 12:06:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 2, 7, 63, 0, 68, 75, 0),
('2022-01-22 12:06:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 2, 7, 63, 0, 68, 75, 0),
('2022-01-22 12:10:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 2, 7, 63, 0, 68, 75, 0),
('2022-01-22 12:11:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 2, 7, 63, 0, 68, 75, 0),
('2022-01-22 17:39:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 6, 10, 53, 0, 68, 0, 0),
('2022-01-22 17:40:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 6, 10, 53, 0, 68, 0, 0),
('2022-01-22 17:40:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 6, 10, 53, 0, 68, 0, 0),
('2022-01-22 17:40:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 6, 10, 53, 0, 68, 0, 0),
('2022-01-22 17:40:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 6, 10, 53, 0, 68, 0, 0),
('2022-01-22 22:02:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 84, 0, 0),
('2022-01-22 22:02:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 84, 0, 0),
('2022-01-22 22:02:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 84, 0, 0),
('2022-01-22 22:02:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 84, 0, 0),
('2022-01-22 22:02:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 84, 0, 0),
('2022-01-22 22:02:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 84, 0, 0),
('2022-01-22 22:02:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 90, 0, 0),
('2022-01-22 22:02:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 90, 0, 0),
('2022-01-22 22:02:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 90, 0, 0),
('2022-01-22 22:03:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 90, 0, 0),
('2022-01-22 22:05:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 90, 0, 0),
('2022-01-22 22:05:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', 0, 8, 69, 1, 90, 0, 0),
('2022-01-22 22:17:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', -1, 8, 70, 1, 92, 0, 0),
('2022-01-22 22:17:00', 'Madrid', '2022-01-22 08:32:00', '2022-01-22 18:20:00', -1, 8, 70, 1, 92, 0, 0),
('2022-01-23 09:02:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', -3, 6, 81, 0, 50, 75, 0),
('2022-01-23 10:45:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 0, 6, 78, 2, 38, 75, 0),
('2022-01-23 10:52:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 0, 6, 78, 2, 38, 75, 0),
('2022-01-23 10:53:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 0, 6, 78, 2, 38, 75, 0),
('2022-01-23 11:01:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 1, 6, 79, 2, 52, 75, 0),
('2022-01-23 11:01:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 1, 6, 79, 2, 52, 75, 0),
('2022-01-23 11:02:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 1, 6, 79, 2, 52, 75, 0),
('2022-01-23 11:02:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 1, 6, 79, 2, 52, 75, 0),
('2022-01-23 11:06:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 1, 6, 79, 2, 52, 75, 0),
('2022-01-23 11:23:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 2, 7, 78, 1, 68, 75, 0),
('2022-01-23 12:19:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 3, 8, 72, 2, 23, 75, 0),
('2022-01-23 12:19:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 3, 8, 72, 2, 23, 75, 0),
('2022-01-23 12:20:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 3, 8, 72, 2, 23, 75, 0),
('2022-01-23 12:24:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 8, 70, 0, 90, 75, 0),
('2022-01-23 12:24:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 8, 70, 0, 90, 75, 0),
('2022-01-23 12:25:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 8, 70, 0, 90, 75, 0),
('2022-01-23 12:26:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 8, 70, 0, 90, 75, 0),
('2022-01-23 12:27:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 8, 70, 0, 90, 75, 0),
('2022-01-23 12:27:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 8, 70, 0, 90, 75, 0),
('2022-01-23 12:28:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 8, 70, 0, 90, 75, 0),
('2022-01-23 12:28:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 8, 70, 0, 90, 75, 0),
('2022-01-23 12:30:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 8, 70, 0, 90, 75, 0),
('2022-01-23 12:36:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 69, 1, 68, 75, 0),
('2022-01-23 12:37:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 69, 1, 68, 75, 0),
('2022-01-23 12:40:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 69, 1, 68, 75, 0),
('2022-01-23 12:42:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 69, 1, 68, 75, 0),
('2022-01-23 12:42:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 69, 1, 68, 75, 0),
('2022-01-23 12:42:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 69, 1, 68, 75, 0),
('2022-01-23 12:43:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 69, 1, 68, 75, 0),
('2022-01-23 12:45:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 69, 1, 68, 75, 0),
('2022-01-23 12:59:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 68, 1, 113, 75, 0),
('2022-01-23 13:00:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 68, 1, 113, 75, 0),
('2022-01-23 13:20:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 9, 68, 1, 68, 75, 0),
('2022-01-23 13:21:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 9, 68, 1, 68, 75, 0),
('2022-01-23 13:24:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 9, 68, 1, 68, 75, 0),
('2022-01-23 13:24:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 9, 68, 1, 68, 75, 0),
('2022-01-23 13:25:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 9, 68, 1, 68, 75, 0),
('2022-01-23 13:25:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 9, 68, 1, 68, 75, 0),
('2022-01-23 13:28:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 1, 45, 75, 0),
('2022-01-23 13:30:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 1, 45, 75, 0),
('2022-01-23 13:33:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 1, 45, 75, 0),
('2022-01-23 13:34:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 1, 45, 75, 0),
('2022-01-23 13:34:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 1, 45, 75, 0),
('2022-01-23 13:36:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 1, 45, 75, 0),
('2022-01-23 13:36:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 1, 45, 75, 0),
('2022-01-23 13:36:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 1, 45, 75, 0),
('2022-01-23 13:37:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 1, 45, 75, 0),
('2022-01-23 13:37:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 1, 45, 75, 0),
('2022-01-23 13:38:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 0, 23, 75, 0),
('2022-01-23 13:38:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 0, 23, 75, 0),
('2022-01-23 13:39:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 0, 23, 75, 0),
('2022-01-23 13:39:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 0, 23, 75, 0),
('2022-01-23 13:40:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 0, 23, 75, 0),
('2022-01-23 13:40:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 0, 23, 75, 0),
('2022-01-23 13:41:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 5, 10, 66, 0, 23, 75, 0),
('2022-01-23 15:15:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 6, 12, 63, 2, 113, 75, 0),
('2022-01-23 15:15:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 6, 12, 63, 2, 113, 75, 0),
('2022-01-23 15:16:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 6, 11, 63, 2, 113, 75, 0),
('2022-01-23 15:20:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 6, 11, 63, 2, 113, 75, 0),
('2022-01-23 15:20:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 6, 11, 63, 2, 113, 75, 0),
('2022-01-23 15:22:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 6, 11, 63, 2, 113, 75, 0),
('2022-01-23 15:22:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 6, 11, 63, 2, 113, 75, 0),
('2022-01-23 15:23:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 6, 11, 63, 2, 113, 75, 0),
('2022-01-23 15:23:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 6, 11, 63, 2, 113, 75, 0),
('2022-01-23 15:23:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 6, 11, 63, 2, 113, 75, 0),
('2022-01-23 15:52:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 7, 12, 63, 1, 68, 75, 0),
('2022-01-23 15:52:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 7, 12, 63, 1, 68, 75, 0),
('2022-01-23 19:20:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 10, 64, 0, 76, 75, 0),
('2022-01-23 19:20:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 10, 64, 0, 76, 75, 0),
('2022-01-23 19:21:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 10, 65, 0, 93, 75, 0),
('2022-01-23 19:21:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 10, 65, 0, 93, 75, 0),
('2022-01-23 19:21:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 10, 65, 0, 93, 75, 0),
('2022-01-23 19:36:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 4, 9, 65, 0, 113, 75, 0),
('2022-01-23 20:57:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 2, 9, 65, 0, 70, 75, 0),
('2022-01-23 20:57:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 2, 9, 65, 0, 70, 75, 0),
('2022-01-23 20:59:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 2, 9, 65, 0, 70, 75, 0),
('2022-01-23 20:59:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 2, 9, 65, 0, 70, 75, 0),
('2022-01-23 20:59:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 2, 9, 65, 0, 70, 75, 0),
('2022-01-23 20:59:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 2, 9, 65, 0, 70, 75, 0),
('2022-01-23 20:59:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 2, 9, 65, 0, 70, 75, 0),
('2022-01-23 21:04:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 2, 9, 65, 0, 70, 75, 0),
('2022-01-23 21:50:00', 'Madrid', '2022-01-23 08:31:00', '2022-01-23 18:21:00', 2, 9, 68, 1, 72, 0, 0),
('2022-01-24 07:41:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 0, 5, 81, 1, 41, 20, 0),
('2022-01-24 07:45:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 0, 5, 81, 1, 41, 20, 0),
('2022-01-24 10:56:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 74, 2, 51, 75, 0),
('2022-01-24 10:56:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 74, 2, 51, 75, 0),
('2022-01-24 11:16:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 27, 75, 0),
('2022-01-24 11:16:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 27, 75, 0),
('2022-01-24 11:22:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 2, 90, 75, 0),
('2022-01-24 11:25:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 2, 90, 75, 0),
('2022-01-24 11:26:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 2, 90, 75, 0),
('2022-01-24 11:26:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 2, 90, 75, 0),
('2022-01-24 11:27:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 2, 90, 75, 0),
('2022-01-24 11:27:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 2, 90, 75, 0),
('2022-01-24 11:29:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 0, 147, 75, 0),
('2022-01-24 11:29:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 0, 147, 75, 0),
('2022-01-24 11:29:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 0, 147, 75, 0),
('2022-01-24 11:34:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:35:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:35:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:35:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:36:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:36:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:36:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:38:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:38:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:38:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:41:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:41:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:42:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:42:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:42:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:43:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 45, 75, 0),
('2022-01-24 11:44:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:44:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:45:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:45:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:46:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:46:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:46:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:47:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:48:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:48:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:49:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:49:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 11:49:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 3, 8, 73, 1, 113, 75, 0),
('2022-01-24 18:08:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 68, 100, 0),
('2022-01-24 18:10:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 68, 100, 0),
('2022-01-24 18:12:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:12:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:12:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:13:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:15:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:15:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:15:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:16:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:18:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:19:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:20:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:21:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:22:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:23:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:23:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:25:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:25:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:25:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:26:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:26:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:26:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:27:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:27:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:30:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:30:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:31:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:31:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:31:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 1, 23, 100, 0),
('2022-01-24 18:32:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 2, 45, 100, 0),
('2022-01-24 18:36:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 6, 10, 56, 2, 45, 100, 0),
('2022-01-24 20:31:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 9, 61, 0, 45, 100, 0),
('2022-01-24 20:32:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 9, 61, 0, 45, 100, 0),
('2022-01-24 21:11:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 9, 59, 1, 45, 100, 0),
('2022-01-24 22:33:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 1, 72, 100, 0),
('2022-01-24 22:34:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 1, 72, 100, 0),
('2022-01-24 22:35:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 1, 72, 100, 0),
('2022-01-24 22:36:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 1, 72, 100, 0),
('2022-01-24 22:37:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 1, 72, 100, 0),
('2022-01-24 22:39:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 1, 72, 100, 0),
('2022-01-24 22:39:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 1, 72, 100, 0),
('2022-01-24 22:44:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 2, 70, 100, 0),
('2022-01-24 22:45:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 2, 70, 100, 0),
('2022-01-24 22:46:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 2, 70, 100, 0),
('2022-01-24 22:46:00', 'Madrid', '2022-01-24 08:30:00', '2022-01-24 18:22:00', 5, 8, 60, 2, 70, 100, 0),
('2022-01-25 07:41:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 2, 7, 72, 2, 60, 75, 0),
('2022-01-25 07:41:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 2, 7, 72, 2, 60, 75, 0),
('2022-01-25 08:16:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 2, 7, 70, 3, 60, 75, 0),
('2022-01-25 09:58:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 4, 7, 68, 2, 69, 75, 0),
('2022-01-25 10:50:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 4, 9, 68, 2, 68, 75, 0),
('2022-01-25 10:51:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 4, 9, 68, 2, 68, 75, 0),
('2022-01-25 10:57:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 10:57:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 10:58:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 10:58:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 10:58:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 10:59:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 10:59:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 10:59:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 11:04:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 11:04:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 11:04:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 11:07:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 67, 0, 113, 75, 0),
('2022-01-25 11:57:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 64, 2, 78, 75, 0),
('2022-01-25 11:57:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 64, 2, 78, 75, 0),
('2022-01-25 12:09:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 64, 2, 94, 75, 0),
('2022-01-25 12:09:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 6, 9, 64, 2, 94, 75, 0),
('2022-01-25 12:35:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 7, 10, 62, 1, 113, 40, 0),
('2022-01-25 12:35:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 7, 10, 62, 1, 113, 40, 0),
('2022-01-25 12:59:00', 'Madrid', '2022-01-25 08:30:00', '2022-01-25 18:23:00', 7, 11, 60, 0, 90, 40, 0),
('2022-01-26 16:02:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 8, 12, 54, 2, 113, 20, 0),
('2022-01-26 16:03:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 8, 12, 54, 2, 113, 20, 0),
('2022-01-26 20:25:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 4, 10, 63, 1, 64, 0, 0),
('2022-01-26 20:26:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 4, 10, 63, 1, 64, 0, 0),
('2022-01-26 20:27:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 4, 10, 63, 1, 64, 0, 0),
('2022-01-26 21:15:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 3, 9, 66, 0, 72, 0, 0),
('2022-01-26 21:15:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 3, 9, 66, 0, 72, 0, 0),
('2022-01-26 21:16:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 3, 9, 66, 0, 72, 0, 0),
('2022-01-26 21:16:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 3, 9, 66, 0, 72, 0, 0),
('2022-01-26 21:16:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 3, 9, 66, 0, 72, 0, 0),
('2022-01-26 21:17:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 3, 9, 66, 0, 72, 0, 0),
('2022-01-26 21:18:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 3, 9, 66, 0, 72, 0, 0),
('2022-01-26 21:22:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 2, 9, 67, 1, 47, 0, 0),
('2022-01-26 22:55:00', 'Madrid', '2022-01-26 08:29:00', '2022-01-26 18:24:00', 1, 9, 67, 1, 36, 0, 0),
('2022-01-27 09:56:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 0, 8, 72, 4, 45, 0, 0),
('2022-01-27 09:56:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 0, 8, 72, 4, 45, 0, 0),
('2022-01-27 09:56:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 0, 8, 72, 4, 45, 0, 0),
('2022-01-27 09:59:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 0, 8, 72, 4, 45, 0, 0),
('2022-01-27 14:53:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 10, 14, 39, 1, 113, 0, 0),
('2022-01-27 14:56:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 10, 14, 39, 1, 90, 0, 0),
('2022-01-27 14:57:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 10, 14, 39, 1, 90, 0, 0),
('2022-01-27 15:33:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 10, 15, 37, 1, 130, 0, 0),
('2022-01-27 15:44:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 11, 14, 36, 0, 90, 0, 0),
('2022-01-27 16:15:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 11, 14, 34, 0, 269, 0, 0),
('2022-01-27 16:15:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 11, 14, 34, 0, 269, 0, 0),
('2022-01-27 17:10:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 10, 15, 33, 0, 45, 0, 0),
('2022-01-27 17:33:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 10, 15, 32, 1, 45, 0, 0),
('2022-01-27 20:24:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 3, 11, 45, 1, 10, 0, 0),
('2022-01-27 20:24:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 3, 11, 45, 1, 10, 0, 0),
('2022-01-27 20:27:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 3, 11, 45, 1, 10, 0, 0),
('2022-01-27 22:37:00', 'Madrid', '2022-01-27 08:28:00', '2022-01-27 18:26:00', 3, 10, 47, 2, 17, 0, 0),
('2022-01-28 08:23:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', -3, 5, 52, 0, 45, 0, 0),
('2022-01-28 08:26:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', -3, 5, 52, 0, 45, 0, 0),
('2022-01-28 09:20:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', -1, 7, 52, 4, 45, 0, 0),
('2022-01-28 10:51:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', 2, 9, 43, 3, 23, 0, 0),
('2022-01-28 11:28:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', 2, 11, 44, 3, 23, 0, 0),
('2022-01-28 11:28:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', 2, 11, 44, 3, 23, 0, 0),
('2022-01-28 11:55:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', 5, 12, 39, 0, 113, 0, 0),
('2022-01-28 11:58:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', 5, 12, 39, 0, 113, 0, 0),
('2022-01-28 13:15:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', 7, 14, 34, 2, 69, 0, 0),
('2022-01-28 13:15:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', 7, 14, 34, 2, 69, 0, 0),
('2022-01-28 15:46:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', 11, 16, 20, 1, 68, 0, 0),
('2022-01-28 15:48:00', 'Madrid', '2022-01-28 08:27:00', '2022-01-28 18:27:00', 11, 16, 20, 1, 68, 0, 0),
('2022-01-29 03:58:00', 'Madrid', '2022-01-29 08:27:00', '2022-01-29 18:28:00', 0, 7, 38, 2, 68, 0, 0),
('2022-01-29 03:59:00', 'Madrid', '2022-01-29 08:27:00', '2022-01-29 18:28:00', 0, 7, 38, 2, 68, 0, 0),
('2022-01-29 04:00:00', 'Madrid', '2022-01-29 08:27:00', '2022-01-29 18:28:00', 0, 7, 38, 2, 68, 0, 0),
('2022-01-29 04:00:00', 'Madrid', '2022-01-29 08:27:00', '2022-01-29 18:28:00', 0, 7, 38, 2, 68, 0, 0),
('2022-01-29 11:51:00', 'Madrid', '2022-01-29 08:27:00', '2022-01-29 18:28:00', 5, 14, 33, 1, 23, 0, 0),
('2022-01-29 11:51:00', 'Madrid', '2022-01-29 08:27:00', '2022-01-29 18:28:00', 5, 14, 33, 1, 23, 0, 0),
('2022-01-30 10:49:00', 'Madrid', '2022-01-30 08:26:00', '2022-01-30 18:29:00', 5, 13, 34, 2, 45, 0, 0),
('2022-01-30 10:53:00', 'Madrid', '2022-01-30 08:26:00', '2022-01-30 18:29:00', 5, 13, 34, 2, 45, 0, 0),
('2022-01-30 10:54:00', 'Madrid', '2022-01-30 08:26:00', '2022-01-30 18:29:00', 5, 13, 34, 2, 45, 0, 0),
('2022-01-30 13:21:00', 'Madrid', '2022-01-30 08:26:00', '2022-01-30 18:29:00', 10, 17, 27, 0, 113, 0, 0),
('2022-01-30 16:11:00', 'Madrid', '2022-01-30 08:26:00', '2022-01-30 18:29:00', 13, 18, 17, 1, 90, 0, 0),
('2022-01-30 16:11:00', 'Madrid', '2022-01-30 08:26:00', '2022-01-30 18:29:00', 13, 18, 17, 1, 90, 0, 0),
('2022-01-30 16:47:00', 'Madrid', '2022-01-30 08:26:00', '2022-01-30 18:29:00', 11, 18, 17, 1, 0, 0, 0),
('2022-01-30 23:25:00', 'Madrid', '2022-01-30 08:26:00', '2022-01-30 18:29:00', 3, 11, 33, 1, 45, 0, 0),
('2022-01-30 23:29:00', 'Madrid', '2022-01-30 08:26:00', '2022-01-30 18:29:00', 3, 11, 33, 1, 45, 0, 0),
('2022-01-31 07:55:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', -5, 7, 54, 1, 51, 0, 0),
('2022-01-31 09:00:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', -5, 8, 55, 0, 0, 0, 0),
('2022-01-31 09:04:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', -5, 8, 55, 0, 0, 0, 0),
('2022-01-31 15:50:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 13, 18, 25, 1, 251, 0, 0),
('2022-01-31 15:50:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 13, 18, 25, 1, 251, 0, 0),
('2022-01-31 15:55:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 13, 18, 25, 1, 251, 0, 0),
('2022-01-31 15:57:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 13, 17, 25, 0, 270, 0, 0),
('2022-01-31 16:13:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 13, 17, 25, 1, 203, 0, 0),
('2022-01-31 16:16:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 13, 17, 25, 1, 203, 0, 0),
('2022-01-31 16:18:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 12, 18, 24, 1, 280, 0, 0),
('2022-01-31 16:19:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 12, 18, 24, 1, 280, 0, 0),
('2022-01-31 16:20:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 12, 18, 24, 1, 280, 0, 0),
('2022-01-31 16:21:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 12, 18, 24, 1, 280, 0, 0),
('2022-01-31 16:29:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 12, 18, 24, 0, 268, 0, 0),
('2022-01-31 16:30:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 12, 18, 24, 0, 268, 0, 0),
('2022-01-31 16:38:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 12, 18, 24, 0, 268, 0, 0),
('2022-01-31 16:38:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 12, 18, 24, 0, 268, 0, 0),
('2022-01-31 16:38:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 12, 18, 24, 0, 268, 0, 0),
('2022-01-31 17:28:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 13, 18, 21, 3, 0, 0, 0),
('2022-01-31 20:53:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 7, 11, 29, 2, 295, 0, 0),
('2022-01-31 20:53:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 7, 11, 29, 2, 295, 0, 0),
('2022-01-31 21:39:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 5, 11, 32, 3, 63, 0, 0),
('2022-01-31 21:39:00', 'Madrid', '2022-01-31 08:25:00', '2022-01-31 18:31:00', 5, 11, 32, 3, 63, 0, 0),
('2022-02-01 12:15:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 9, 14, 51, 5, 45, 0, 0),
('2022-02-01 12:15:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 9, 14, 51, 5, 45, 0, 0),
('2022-02-01 12:17:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 9, 14, 51, 5, 45, 0, 0),
('2022-02-01 12:18:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 9, 14, 51, 5, 45, 0, 0),
('2022-02-01 14:49:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 18, 40, 4, 90, 0, 0),
('2022-02-01 14:50:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 18, 40, 4, 90, 0, 0),
('2022-02-01 14:53:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 18, 40, 4, 90, 0, 0),
('2022-02-01 14:55:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 18, 40, 4, 90, 0, 0),
('2022-02-01 14:56:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 18, 40, 4, 90, 0, 0),
('2022-02-01 14:58:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 18, 41, 3, 68, 0, 0),
('2022-02-01 14:59:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 18, 41, 3, 68, 0, 0),
('2022-02-01 15:02:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 18, 41, 3, 68, 0, 0),
('2022-02-01 15:02:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 18, 41, 3, 68, 0, 0),
('2022-02-01 15:03:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 18, 41, 3, 68, 0, 0),
('2022-02-01 15:46:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 45, 0, 0),
('2022-02-01 15:46:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 45, 0, 0),
('2022-02-01 15:47:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 15:48:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 15:52:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 15:53:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 15:54:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 15:55:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 15:56:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 15:56:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 15:57:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 15:57:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 16:00:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 16:00:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 16:01:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 5, 90, 0, 0),
('2022-02-01 16:04:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:05:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:05:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:05:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:06:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:06:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:08:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:08:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:09:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:09:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:10:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:11:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:12:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:13:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:13:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:14:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:14:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 11, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:15:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 12, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:17:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 12, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:18:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 12, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:18:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 12, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:18:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 12, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:20:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 12, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:20:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 12, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:21:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 12, 18, 41, 6, 68, 0, 0),
('2022-02-01 16:56:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 12, 18, 43, 5, 68, 0, 0),
('2022-02-01 20:45:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 10, 13, 55, 5, 23, 0, 0),
('2022-02-01 20:46:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 8, 13, 56, 8, 45, 0, 0),
('2022-02-01 20:46:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 8, 13, 56, 8, 45, 0, 0),
('2022-02-01 21:08:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 8, 13, 58, 7, 23, 0, 0),
('2022-02-01 21:54:00', 'Madrid', '2022-02-01 08:24:00', '2022-02-01 18:32:00', 8, 13, 61, 2, 68, 0, 0),
('2022-02-02 09:16:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', -1, 10, 83, 1, 20, 0, 0),
('2022-02-02 09:18:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', -1, 10, 83, 1, 20, 0, 0),
('2022-02-02 09:25:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 0, 11, 78, 1, 14, 0, 0),
('2022-02-02 09:25:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 0, 11, 78, 1, 14, 0, 0),
('2022-02-02 09:27:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 0, 11, 78, 1, 14, 0, 0),
('2022-02-02 09:27:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 0, 11, 78, 1, 14, 0, 0),
('2022-02-02 11:55:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 8, 17, 60, 1, 54, 0, 0),
('2022-02-02 11:55:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 8, 17, 60, 1, 54, 0, 0),
('2022-02-02 14:46:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 16, 22, 38, 1, 224, 0, 0),
('2022-02-02 14:46:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 16, 22, 38, 1, 224, 0, 0),
('2022-02-02 14:50:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 16, 22, 38, 1, 224, 0, 0),
('2022-02-02 14:51:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 16, 22, 38, 1, 224, 0, 0),
('2022-02-02 15:44:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 17, 22, 32, 0, 314, 0, 0),
('2022-02-02 15:47:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 13, 22, 32, 0, 226, 0, 0),
('2022-02-02 15:55:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 13, 22, 32, 0, 226, 0, 0),
('2022-02-02 16:03:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 14, 22, 32, 1, 0, 0, 0),
('2022-02-02 22:01:00', 'Madrid', '2022-02-02 08:23:00', '2022-02-02 18:33:00', 6, 13, 57, 1, 0, 0, 0),
('2022-02-03 14:40:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 12, 18, 47, 1, 229, 0, 0),
('2022-02-03 14:40:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 12, 18, 47, 1, 229, 0, 0),
('2022-02-03 14:41:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 12, 18, 47, 1, 229, 0, 0),
('2022-02-03 14:48:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 12, 18, 47, 1, 229, 0, 0),
('2022-02-03 15:21:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 13, 17, 46, 2, 269, 0, 0),
('2022-02-03 15:21:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 13, 17, 46, 2, 269, 0, 0),
('2022-02-03 20:35:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 61, 1, 248, 0, 0),
('2022-02-03 20:36:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 61, 1, 248, 0, 0),
('2022-02-03 20:36:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 61, 1, 248, 0, 0),
('2022-02-03 20:41:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 61, 1, 248, 0, 0),
('2022-02-03 20:42:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 61, 1, 248, 0, 0),
('2022-02-03 20:47:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 62, 4, 248, 0, 0),
('2022-02-03 20:50:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 62, 4, 248, 0, 0),
('2022-02-03 20:51:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 62, 4, 248, 0, 0),
('2022-02-03 20:51:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 62, 4, 248, 0, 0),
('2022-02-03 20:52:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 62, 4, 248, 0, 0),
('2022-02-03 20:54:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 62, 4, 248, 0, 0),
('2022-02-03 20:54:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 62, 4, 248, 0, 0),
('2022-02-03 20:56:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 14, 62, 4, 248, 0, 0),
('2022-02-03 21:50:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 8, 13, 66, 1, 241, 0, 0),
('2022-02-03 21:52:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 6, 13, 66, 1, 248, 0, 0),
('2022-02-03 21:54:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 6, 13, 66, 1, 248, 0, 0),
('2022-02-03 22:00:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 6, 13, 66, 1, 248, 0, 0),
('2022-02-03 22:00:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 6, 13, 66, 1, 248, 0, 0),
('2022-02-03 22:01:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 6, 13, 66, 1, 248, 0, 0),
('2022-02-03 22:04:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 6, 13, 66, 0, 248, 0, 0),
('2022-02-03 22:05:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 6, 13, 66, 0, 248, 0, 0),
('2022-02-03 22:07:00', 'Madrid', '2022-02-03 08:22:00', '2022-02-03 18:34:00', 6, 13, 66, 0, 248, 0, 0),
('2022-02-04 12:20:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 13, 72, 0, 61, 0, 0),
('2022-02-04 12:35:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 14, 69, 0, 146, 0, 0),
('2022-02-04 12:36:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 14, 69, 0, 146, 0, 0),
('2022-02-04 12:37:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 14, 69, 0, 146, 0, 0),
('2022-02-04 12:37:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 14, 69, 0, 146, 0, 0),
('2022-02-04 12:37:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 14, 69, 0, 146, 0, 0),
('2022-02-04 12:37:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 14, 69, 0, 146, 0, 0),
('2022-02-04 12:38:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 14, 69, 0, 146, 0, 0),
('2022-02-04 12:38:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 14, 69, 0, 146, 0, 0);
INSERT INTO `weather` (`fecha`, `ciudad`, `amanecer`, `anochecer`, `temp_min`, `temp_max`, `humedad`, `viento_velocidad`, `viento_direccion`, `nubes`, `lluvia`) VALUES
('2022-02-04 12:40:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 14, 69, 0, 146, 0, 0),
('2022-02-04 12:47:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 15, 68, 1, 180, 0, 0),
('2022-02-04 13:20:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 15, 68, 0, 180, 0, 0),
('2022-02-04 13:21:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 15, 68, 0, 180, 0, 0),
('2022-02-04 14:50:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 10, 16, 57, 1, 204, 0, 0),
('2022-02-04 14:50:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 10, 16, 57, 1, 204, 0, 0),
('2022-02-04 14:52:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 10, 16, 57, 1, 204, 0, 0),
('2022-02-04 15:21:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 57, 0, 248, 0, 0),
('2022-02-04 15:21:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 57, 0, 248, 0, 0),
('2022-02-04 15:24:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 57, 0, 248, 0, 0),
('2022-02-04 15:28:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 57, 0, 248, 0, 0),
('2022-02-04 15:33:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 15, 57, 1, 203, 0, 0),
('2022-02-04 15:36:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 15, 57, 1, 203, 0, 0),
('2022-02-04 15:46:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 57, 0, 202, 0, 0),
('2022-02-04 15:56:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 0, 202, 0, 0),
('2022-02-04 15:59:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 0, 202, 0, 0),
('2022-02-04 16:00:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 0, 202, 0, 0),
('2022-02-04 16:02:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 0, 202, 0, 0),
('2022-02-04 16:03:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 1, 293, 0, 0),
('2022-02-04 16:03:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 1, 293, 0, 0),
('2022-02-04 16:04:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 1, 293, 0, 0),
('2022-02-04 16:11:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 1, 293, 0, 0),
('2022-02-04 16:11:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 1, 293, 0, 0),
('2022-02-04 16:11:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 1, 293, 0, 0),
('2022-02-04 16:12:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 16, 56, 1, 293, 0, 0),
('2022-02-04 16:19:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 16:21:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 16:21:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 16:22:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 16:23:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 16:23:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 16:24:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 16:24:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 16:25:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 16:26:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 16:26:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 11, 17, 55, 0, 225, 0, 0),
('2022-02-04 19:14:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 10, 14, 55, 1, 180, 0, 0),
('2022-02-04 19:15:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 10, 14, 55, 1, 180, 0, 0),
('2022-02-04 19:16:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 10, 14, 55, 1, 180, 0, 0),
('2022-02-04 19:41:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 14, 58, 0, 226, 0, 0),
('2022-02-04 20:00:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 14, 61, 0, 195, 0, 0),
('2022-02-04 20:11:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 14, 62, 0, 180, 0, 0),
('2022-02-04 20:13:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 14, 64, 1, 201, 0, 0),
('2022-02-04 20:14:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 14, 64, 1, 201, 0, 0),
('2022-02-04 20:35:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 13, 64, 0, 236, 0, 0),
('2022-02-04 20:35:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 13, 64, 0, 236, 0, 0),
('2022-02-04 20:50:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 13, 62, 1, 187, 0, 0),
('2022-02-04 21:00:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 13, 63, 1, 216, 0, 0),
('2022-02-04 21:03:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 13, 63, 1, 216, 0, 0),
('2022-02-04 21:03:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 13, 63, 1, 216, 0, 0),
('2022-02-04 21:04:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 13, 63, 1, 216, 0, 0),
('2022-02-04 21:06:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 9, 13, 63, 1, 216, 0, 0),
('2022-02-04 21:17:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 13, 64, 0, 192, 0, 0),
('2022-02-04 21:44:00', 'Madrid', '2022-02-04 08:21:00', '2022-02-04 18:35:00', 8, 12, 63, 2, 229, 0, 0),
('2022-02-05 00:43:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 6, 11, 68, 1, 85, 0, 0),
('2022-02-05 00:44:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 6, 11, 68, 1, 85, 0, 0),
('2022-02-05 00:44:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 6, 11, 68, 1, 85, 0, 0),
('2022-02-05 00:45:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 6, 11, 68, 1, 85, 0, 0),
('2022-02-05 00:54:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 6, 11, 69, 0, 8, 0, 0),
('2022-02-05 01:08:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 6, 11, 70, 1, 94, 0, 0),
('2022-02-05 01:09:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 6, 11, 70, 1, 94, 0, 0),
('2022-02-05 01:10:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 6, 11, 70, 1, 94, 0, 0),
('2022-02-05 01:50:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 5, 11, 72, 0, 68, 0, 0),
('2022-02-05 10:54:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 5, 11, 68, 3, 45, 20, 0),
('2022-02-05 12:03:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 10, 12, 60, 3, 23, 20, 0),
('2022-02-05 12:34:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 10, 13, 57, 4, 68, 20, 0),
('2022-02-05 15:58:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 11, 15, 46, 2, 68, 40, 0),
('2022-02-05 16:26:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 11, 15, 46, 2, 90, 40, 0),
('2022-02-05 16:28:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 11, 15, 45, 4, 23, 40, 0),
('2022-02-05 16:45:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 11, 15, 45, 2, 68, 40, 0),
('2022-02-05 16:47:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 11, 15, 45, 2, 68, 40, 0),
('2022-02-05 17:38:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 11, 15, 45, 3, 23, 40, 0),
('2022-02-05 21:16:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 7, 12, 52, 2, 45, 75, 0),
('2022-02-05 21:27:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 6, 11, 55, 2, 68, 75, 0),
('2022-02-05 22:12:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 6, 11, 55, 4, 45, 0, 0),
('2022-02-05 22:50:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 5, 10, 55, 4, 45, 0, 0),
('2022-02-05 22:51:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 5, 10, 54, 4, 45, 0, 0),
('2022-02-05 22:54:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 5, 10, 54, 4, 45, 0, 0),
('2022-02-05 22:54:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 5, 10, 54, 4, 45, 0, 0),
('2022-02-05 22:54:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 5, 10, 54, 4, 45, 0, 0),
('2022-02-05 22:54:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 5, 10, 54, 4, 45, 0, 0),
('2022-02-05 22:55:00', 'Madrid', '2022-02-05 08:20:00', '2022-02-05 18:37:00', 5, 10, 54, 4, 45, 0, 0),
('2022-02-06 09:50:00', 'Madrid', '2022-02-06 08:19:00', '2022-02-06 18:38:00', 0, 8, 51, 4, 23, 0, 0),
('2022-02-06 09:52:00', 'Madrid', '2022-02-06 08:19:00', '2022-02-06 18:38:00', 0, 8, 51, 4, 23, 0, 0),
('2022-02-06 11:20:00', 'Madrid', '2022-02-06 08:19:00', '2022-02-06 18:38:00', 3, 10, 43, 3, 68, 75, 0),
('2022-02-06 16:08:00', 'Madrid', '2022-02-06 08:19:00', '2022-02-06 18:38:00', 11, 15, 36, 1, 29, 20, 0),
('2022-02-06 16:55:00', 'Madrid', '2022-02-06 08:19:00', '2022-02-06 18:38:00', 11, 15, 33, 1, 360, 0, 0),
('2022-02-06 17:04:00', 'Madrid', '2022-02-06 08:19:00', '2022-02-06 18:38:00', 11, 15, 33, 1, 360, 0, 0),
('2022-02-06 23:04:00', 'Madrid', '2022-02-06 08:19:00', '2022-02-06 18:38:00', 3, 9, 53, 1, 47, 0, 0),
('2022-02-06 23:32:00', 'Madrid', '2022-02-06 08:19:00', '2022-02-06 18:38:00', 2, 9, 55, 3, 13, 0, 0),
('2022-02-06 23:37:00', 'Madrid', '2022-02-06 08:19:00', '2022-02-06 18:38:00', 2, 9, 55, 3, 13, 0, 0),
('2022-02-07 08:31:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -2, 8, 60, 0, 86, 0, 0),
('2022-02-07 08:34:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -2, 8, 60, 0, 86, 0, 0),
('2022-02-07 08:39:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -2, 8, 60, 0, 86, 0, 0),
('2022-02-07 09:30:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 0, 113, 0, 0),
('2022-02-07 09:36:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 0, 113, 0, 0),
('2022-02-07 09:41:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:43:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:43:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:43:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:44:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:44:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:45:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:46:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:47:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:48:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:49:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', -1, 9, 56, 1, 113, 0, 0),
('2022-02-07 09:53:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', 1, 12, 53, 0, 90, 0, 0),
('2022-02-07 10:00:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', 1, 12, 53, 0, 90, 0, 0),
('2022-02-07 14:40:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', 11, 19, 31, 2, 37, 0, 0),
('2022-02-07 14:40:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', 11, 19, 31, 2, 37, 0, 0),
('2022-02-07 15:50:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', 14, 19, 30, 2, 310, 0, 0),
('2022-02-07 15:51:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', 14, 19, 30, 2, 310, 0, 0),
('2022-02-07 16:12:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', 15, 18, 29, 3, 45, 0, 0),
('2022-02-07 17:59:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', 11, 18, 29, 5, 30, 0, 0),
('2022-02-07 23:05:00', 'Madrid', '2022-02-07 08:18:00', '2022-02-07 18:39:00', 5, 11, 51, 4, 60, 0, 0),
('2022-02-08 08:33:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', -1, 8, 66, 2, 80, 0, 0),
('2022-02-08 08:37:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', -1, 8, 66, 2, 80, 0, 0),
('2022-02-08 08:47:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', -1, 8, 66, 3, 40, 0, 0),
('2022-02-08 11:23:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 6, 13, 52, 4, 50, 0, 0),
('2022-02-08 11:23:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 6, 13, 52, 4, 50, 0, 0),
('2022-02-08 11:28:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 6, 13, 52, 4, 50, 0, 0),
('2022-02-08 11:28:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 6, 13, 52, 4, 50, 0, 0),
('2022-02-08 11:29:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 6, 13, 52, 4, 50, 0, 0),
('2022-02-08 11:30:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 6, 13, 52, 4, 50, 0, 0),
('2022-02-08 11:35:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 7, 13, 50, 4, 50, 0, 0),
('2022-02-08 14:58:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 13, 17, 41, 2, 120, 0, 0),
('2022-02-08 14:59:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 13, 17, 41, 2, 120, 0, 0),
('2022-02-08 22:37:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 5, 13, 55, 2, 360, 0, 0),
('2022-02-08 22:38:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 5, 13, 55, 2, 360, 0, 0),
('2022-02-08 22:45:00', 'Madrid', '2022-02-08 08:17:00', '2022-02-08 18:40:00', 5, 13, 55, 2, 360, 0, 0),
('2022-02-09 10:22:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 2, 10, 67, 2, 80, 0, 0),
('2022-02-09 15:10:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 13, 17, 42, 3, 0, 0, 0),
('2022-02-09 15:18:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 13, 17, 42, 3, 0, 0, 0),
('2022-02-09 15:19:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 13, 17, 42, 3, 0, 0, 0),
('2022-02-09 15:20:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 13, 17, 42, 3, 0, 0, 0),
('2022-02-09 15:20:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 13, 17, 42, 3, 0, 0, 0),
('2022-02-09 15:25:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 13, 17, 41, 2, 160, 0, 0),
('2022-02-09 15:25:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 13, 17, 41, 2, 160, 0, 0),
('2022-02-09 15:34:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 13, 17, 41, 2, 160, 0, 0),
('2022-02-09 15:35:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 210, 0, 0),
('2022-02-09 15:36:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 210, 0, 0),
('2022-02-09 15:36:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 210, 0, 0),
('2022-02-09 15:36:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 210, 0, 0),
('2022-02-09 15:42:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 210, 0, 0),
('2022-02-09 15:46:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 2, 214, 0, 0),
('2022-02-09 15:48:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 2, 214, 0, 0),
('2022-02-09 15:48:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 2, 214, 0, 0),
('2022-02-09 15:49:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 2, 214, 0, 0),
('2022-02-09 15:49:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 2, 214, 0, 0),
('2022-02-09 15:50:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 2, 214, 0, 0),
('2022-02-09 15:55:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 2, 214, 0, 0),
('2022-02-09 15:55:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 2, 214, 0, 0),
('2022-02-09 15:57:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 15:57:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 15:58:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 15:59:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 16:00:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 16:05:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 16:10:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 16:12:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 16:13:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 16:14:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 16:14:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 16:16:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 14, 17, 40, 3, 170, 0, 0),
('2022-02-09 20:56:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 7, 13, 60, 2, 270, 0, 0),
('2022-02-09 20:58:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 6, 13, 61, 2, 270, 0, 0),
('2022-02-09 21:31:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 5, 12, 62, 1, 250, 0, 0),
('2022-02-09 22:36:00', 'Madrid', '2022-02-09 08:16:00', '2022-02-09 18:42:00', 4, 12, 65, 1, 0, 0, 0),
('2022-02-10 08:10:00', 'Madrid', '2022-02-10 08:14:00', '2022-02-10 18:43:00', -2, 8, 76, 1, 350, 0, 0),
('2022-02-10 13:02:00', 'Madrid', '2022-02-10 08:14:00', '2022-02-10 18:43:00', 10, 15, 56, 1, 0, 0, 0),
('2022-02-10 13:13:00', 'Madrid', '2022-02-10 08:14:00', '2022-02-10 18:43:00', 7, 16, 55, 1, 0, 0, 0),
('2022-02-10 13:24:00', 'Madrid', '2022-02-10 08:14:00', '2022-02-10 18:43:00', 8, 16, 55, 1, 0, 0, 0),
('2022-02-10 13:27:00', 'Madrid', '2022-02-10 08:14:00', '2022-02-10 18:43:00', 8, 16, 55, 1, 0, 0, 0),
('2022-02-10 15:06:00', 'Madrid', '2022-02-10 08:14:00', '2022-02-10 18:43:00', 12, 18, 46, 2, 225, 0, 0),
('2022-02-10 23:06:00', 'Madrid', '2022-02-10 08:14:00', '2022-02-10 18:43:00', 6, 13, 69, 2, 270, 0, 0),
('2022-02-12 08:13:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 2, 9, 78, 2, 44, 0, 0),
('2022-02-12 08:14:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 2, 9, 78, 2, 44, 0, 0),
('2022-02-12 09:24:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 3, 10, 74, 2, 350, 20, 0),
('2022-02-12 13:00:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 11, 15, 43, 3, 90, 20, 0),
('2022-02-12 13:02:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 11, 15, 43, 3, 90, 20, 0),
('2022-02-12 17:35:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 11, 16, 41, 3, 219, 40, 0),
('2022-02-12 18:20:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 11, 15, 45, 3, 220, 20, 0),
('2022-02-12 21:26:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 9, 14, 56, 2, 190, 20, 0),
('2022-02-12 21:30:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 9, 14, 56, 2, 190, 20, 0),
('2022-02-12 21:35:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 9, 14, 56, 2, 190, 20, 0),
('2022-02-12 21:39:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 9, 13, 57, 2, 190, 20, 0),
('2022-02-12 21:48:00', 'Madrid', '2022-02-12 08:12:00', '2022-02-12 18:45:00', 9, 13, 57, 2, 190, 20, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `analitica`
--
ALTER TABLE `analitica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `covid`
--
ALTER TABLE `covid`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enfermedades_personas`
--
ALTER TABLE `enfermedades_personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entidades`
--
ALTER TABLE `entidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `intervenciones`
--
ALTER TABLE `intervenciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `intervenciones_persona`
--
ALTER TABLE `intervenciones_persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `organos`
--
ALTER TABLE `organos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos_entidad`
--
ALTER TABLE `tipos_entidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_dato_vital`
--
ALTER TABLE `tipo_dato_vital`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vital`
--
ALTER TABLE `vital`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `analitica`
--
ALTER TABLE `analitica`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `covid`
--
ALTER TABLE `covid`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `enfermedades_personas`
--
ALTER TABLE `enfermedades_personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `entidades`
--
ALTER TABLE `entidades`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `intervenciones`
--
ALTER TABLE `intervenciones`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `intervenciones_persona`
--
ALTER TABLE `intervenciones_persona`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `organos`
--
ALTER TABLE `organos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `tipos_entidad`
--
ALTER TABLE `tipos_entidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_dato_vital`
--
ALTER TABLE `tipo_dato_vital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `vital`
--
ALTER TABLE `vital`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

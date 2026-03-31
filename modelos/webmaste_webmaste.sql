-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-12-2025 a las 09:18:02
-- Versión del servidor: 10.5.28-MariaDB-cll-lve
-- Versión de PHP: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webmaste_webmaste`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `id_barrio` int(11) NOT NULL,
  `barrio` varchar(100) NOT NULL,
  `prefijo` varchar(100) NOT NULL,
  `red` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`id_barrio`, `barrio`, `prefijo`, `red`) VALUES
(1, 'Arborizadora Alta 1', 'AA', 1),
(2, 'Arborizadora Alta 2', 'AA', 2),
(3, 'Jerusalen Tanque 6', 'JT', 6),
(4, 'Arborizadora Alta 15', 'AA', 15),
(5, 'Conjunto Altiani', 'CA', 13),
(6, 'Arborizadora TVC 3', 'AA', 3),
(7, 'Jerusalen Ferney 1', 'JT', 1),
(8, 'Jerusalen CSRD 2', 'JT', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `codigo_postal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `ciudad`, `id_departamento`, `codigo_postal`) VALUES
(1, 'Bello', 1, 0),
(2, 'Caldas', 1, 0),
(3, 'Copacabana', 1, 0),
(4, 'Envigado', 1, 0),
(5, 'Guarne', 1, 0),
(6, 'Itagui', 1, 0),
(7, 'La Ceja', 1, 0),
(8, 'La Estrella', 1, 0),
(9, 'La Tablaza', 1, 0),
(10, 'Marinilla', 1, 0),
(11, 'Medellín', 1, 0),
(12, 'Rionegro', 1, 0),
(13, 'Sabaneta', 1, 0),
(14, 'San Antonio de Prado', 1, 0),
(15, 'San Cristóbal', 1, 0),
(16, 'Caucasia', 1, 0),
(17, 'Barranquilla', 2, 0),
(18, 'Malambo', 2, 0),
(19, 'Puerto Colombia', 2, 0),
(20, 'Soledad', 2, 0),
(21, 'Arjona', 3, 0),
(22, 'Bayunca', 3, 0),
(23, 'Carmen de Bolívar', 3, 0),
(24, 'Cartagena', 3, 0),
(25, 'Turbaco', 3, 0),
(26, 'Arcabuco', 4, 0),
(27, 'Belencito', 4, 0),
(28, 'Chiquinquirá', 4, 0),
(29, 'Combita', 4, 0),
(30, 'Cucaita', 4, 0),
(31, 'Duitama', 4, 0),
(32, 'Mongui', 4, 0),
(33, 'Nobsa', 4, 0),
(34, 'Paipa', 4, 0),
(35, 'Puerto Boyacá', 4, 0),
(36, 'Ráquira', 4, 0),
(37, 'Samaca', 4, 0),
(38, 'Santa Rosa de Viterbo', 4, 0),
(39, 'Sogamoso', 4, 0),
(40, 'Sutamerchán', 4, 0),
(41, 'Tibasosa', 4, 0),
(42, 'Tinjaca', 4, 0),
(43, 'Tunja', 4, 0),
(44, 'Ventaquemada', 4, 0),
(45, 'Villa de Leiva', 4, 0),
(46, 'La Dorada', 5, 0),
(47, 'Manizales', 5, 0),
(48, 'Villamaria', 5, 0),
(49, 'Caloto', 6, 0),
(50, 'Ortigal', 6, 0),
(51, 'Piendamo', 6, 0),
(52, 'Popayán', 6, 0),
(53, 'Puerto Tejada', 6, 0),
(54, 'Santander Quilichao', 6, 0),
(55, 'Tunia', 6, 0),
(56, 'Villarica', 6, 0),
(57, 'Valledupar', 7, 0),
(58, 'Cerete', 8, 0),
(59, 'Montería', 8, 0),
(60, 'Planeta Rica', 8, 0),
(61, 'Alban', 9, 0),
(62, 'Bogotá', 9, 11001),
(63, 'Bojaca', 9, 0),
(64, 'Bosa', 9, 0),
(65, 'Briceño', 9, 0),
(66, 'Cajicá', 9, 0),
(67, 'Chía', 9, 0),
(68, 'Chinauta', 9, 0),
(69, 'Choconta', 9, 0),
(70, 'Cota', 9, 0),
(71, 'El Muña', 9, 0),
(72, 'El Rosal', 9, 0),
(73, 'Engativá', 9, 0),
(74, 'Facatativa', 9, 0),
(75, 'Fontibón', 9, 0),
(76, 'Funza', 9, 0),
(77, 'Fusagasuga', 9, 0),
(78, 'Gachancipá', 9, 0),
(79, 'Girardot', 9, 0),
(80, 'Guaduas', 9, 0),
(81, 'Guayavetal', 9, 0),
(82, 'La Calera', 9, 0),
(83, 'La Caro', 9, 0),
(84, 'Madrid', 9, 0),
(85, 'Mosquera', 9, 0),
(86, 'Nemocón', 9, 0),
(87, 'Puente Piedra', 9, 0),
(88, 'Puente Quetame', 9, 0),
(89, 'Puerto Bogotá', 9, 0),
(90, 'Puerto Salgar', 9, 0),
(91, 'Quetame', 9, 0),
(92, 'Sasaima', 9, 0),
(93, 'Sesquile', 9, 0),
(94, 'Sibaté', 9, 0),
(95, 'Silvania', 9, 0),
(96, 'Simijaca', 9, 0),
(97, 'Soacha', 9, 11001),
(98, 'Sopo', 9, 0),
(99, 'Suba', 9, 0),
(100, 'Subachoque', 9, 0),
(101, 'Susa', 9, 0),
(102, 'Tabio', 9, 0),
(103, 'Tenjo', 9, 0),
(104, 'Tocancipa', 9, 0),
(105, 'Ubaté', 9, 0),
(106, 'Usaquén', 9, 0),
(107, 'Usme', 9, 0),
(108, 'Villapinzón', 9, 0),
(109, 'Villeta', 9, 0),
(110, 'Zipaquirá', 9, 0),
(111, 'Maicao', 10, 0),
(112, 'Riohacha', 10, 0),
(113, 'Aipe', 11, 0),
(114, 'Neiva', 11, 0),
(115, 'Cienaga', 12, 0),
(116, 'Gaira', 12, 0),
(117, 'Rodadero', 12, 0),
(118, 'Santa Marta', 12, 0),
(119, 'Taganga', 12, 0),
(120, 'Villavicencio', 13, 0),
(121, 'Ipiales', 14, 0),
(122, 'Pasto', 14, 0),
(123, 'Cúcuta', 15, 0),
(124, 'El Zulia', 15, 0),
(125, 'La Parada', 15, 0),
(126, 'Los Patios', 15, 0),
(127, 'Villa del Rosario', 15, 0),
(128, 'Armenia', 16, 0),
(129, 'Calarcá', 16, 0),
(130, 'Circasia', 16, 0),
(131, 'La Tebaida', 16, 0),
(132, 'Montenegro', 16, 0),
(133, 'Quimbaya', 16, 0),
(134, 'Dosquebradas', 17, 0),
(135, 'Pereira', 17, 0),
(136, 'Aratoca', 18, 0),
(137, 'Barbosa', 18, 0),
(138, 'Bucaramanga', 18, 0),
(139, 'Floridablanca', 18, 0),
(140, 'Girón', 18, 0),
(141, 'Lebrija', 18, 0),
(142, 'Oiba', 18, 0),
(143, 'Piedecuesta', 18, 0),
(144, 'Pinchote', 18, 0),
(145, 'San Gil', 18, 0),
(146, 'Socorro', 18, 0),
(147, 'Sincelejo', 19, 0),
(148, 'Armero', 20, 0),
(149, 'Buenos Aires', 20, 0),
(150, 'Castilla', 20, 0),
(151, 'Espinal', 20, 0),
(152, 'Flandes', 20, 0),
(153, 'Guamo', 20, 0),
(154, 'Honda', 20, 0),
(155, 'Ibagué', 20, 0),
(156, 'Mariquita', 20, 0),
(157, 'Melgar', 20, 0),
(158, 'Natagaima', 20, 0),
(159, 'Payande', 20, 0),
(160, 'Purificación', 20, 0),
(161, 'Saldaña', 20, 0),
(162, 'Tolemaida', 20, 0),
(163, 'Amaime', 21, 0),
(164, 'Andalucía', 21, 0),
(165, 'Buenaventura', 21, 0),
(166, 'Buga', 21, 0),
(167, 'Buga La Grande', 21, 0),
(168, 'Caicedonia', 21, 0),
(169, 'Cali', 21, 0),
(170, 'Candelaria', 21, 0),
(171, 'Cartago', 21, 0),
(172, 'Cavasa', 21, 0),
(173, 'Costa Rica', 21, 0),
(174, 'Dagua', 21, 0),
(175, 'El Carmelo', 21, 0),
(176, 'El Cerrito', 21, 0),
(177, 'El Placer', 21, 0),
(178, 'Florida', 21, 0),
(179, 'Ginebra', 21, 0),
(180, 'Guacarí', 21, 0),
(181, 'Jamundi', 21, 0),
(182, 'La Paila', 21, 0),
(183, 'La Unión', 21, 0),
(184, 'La Victoria', 21, 0),
(185, 'Loboguerrero', 21, 0),
(186, 'Palmira', 21, 0),
(187, 'Pradera', 21, 0),
(188, 'Roldanillo', 21, 0),
(189, 'Rozo', 21, 0),
(190, 'San Pedro', 21, 0),
(191, 'Sevilla', 21, 0),
(192, 'Sonso', 21, 0),
(193, 'Tulúa', 21, 0),
(194, 'Vijes', 21, 0),
(195, 'Villa Gorgona', 21, 0),
(196, 'Yotoco', 21, 0),
(197, 'Yumbo', 21, 0),
(198, 'Zarzal', 21, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `id_estado_cliente` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_barrio` int(11) NOT NULL,
  `id_mapa_nodos` int(11) DEFAULT NULL,
  `id_tipo_identificacion` int(11) NOT NULL,
  `id_tipo_contribuyente` int(11) NOT NULL,
  `red` int(11) NOT NULL,
  `num_cliente` int(11) NOT NULL,
  `identificacion` varchar(100) NOT NULL,
  `nombre_1` varchar(100) NOT NULL,
  `nombre_2` varchar(100) NOT NULL,
  `apellido_1` varchar(100) NOT NULL,
  `apellido_2` varchar(100) NOT NULL,
  `telefono_1` varchar(100) NOT NULL,
  `telefono_2` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `fecha_instalacion` date NOT NULL,
  `dia_corte` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `sydes` int(11) DEFAULT NULL,
  `exp_doc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `id_estado_cliente`, `id_plan`, `id_ciudad`, `id_barrio`, `id_mapa_nodos`, `id_tipo_identificacion`, `id_tipo_contribuyente`, `red`, `num_cliente`, `identificacion`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `telefono_1`, `telefono_2`, `direccion`, `correo`, `mac`, `fecha_instalacion`, `dia_corte`, `fecha_creacion`, `id_usuario`, `sydes`, `exp_doc`) VALUES
(1, 5, 7, 62, 1, 0, 1, 1, 1, 2, '52373117', 'Martha ', 'Lucia', 'Real ', '', '3133055765', '3229098120', 'CRA 35 # 72D - 20 SUR', 'malure24@gmail.com', '', '2021-06-17', 5, '2021-06-20 20:30:55', 34, NULL, '1996-06-11'),
(2, 5, 1, 62, 1, 0, 1, 1, 1, 1, '1037266721', 'Jhon ', 'Mario ', 'Rojas ', 'Guzman', ' 3228844451', '7177370', 'CRA 35 # 72B - 52 SUR 	', 'rojasjhon409@gmail.com ', '', '2021-06-17', 5, '2021-06-20 20:59:04', 34, NULL, '2010-09-13'),
(3, 5, 7, 62, 1, 0, 1, 1, 1, 3, '53082034', 'Mónica ', 'Yesenia  ', 'Retavisca ', 'Mateus ', '3213183528', '3229221755', 'CRA 35 # 72D - 33 SUR', 'monis85mateus@gmail.com ', '', '2021-06-19', 5, '2021-06-21 21:05:54', 34, NULL, '2003-02-04'),
(5, 1, 16, 62, 1, 0, 1, 1, 1, 4, '79450739', 'Wilson', '', 'Rubiano ', '', '3205589807', '', 'CRA 35 # 72D - 13 SUR', 'facturacion@webmastercolombia.net', '', '2021-06-19', 5, '2021-07-05 19:25:45', 34, NULL, '1992-08-11'),
(6, 1, 22, 62, 1, 0, 1, 1, 1, 5, '52879614', 'Emilia', '', 'Palacios', '', '3203989524', '3202921738', 'CRA 35A # 72D - 48 SUR', 'facturacion@webmastercolombia.net', '', '2021-06-23', 5, '2021-07-05 19:35:23', 34, NULL, '2000-01-01'),
(7, 3, 1, 62, 1, 0, 1, 1, 1, 6, '52113170', 'Floralba', '', 'Leguizamon', 'Muñoz', '3208124613', '', 'CALLE 72B SUR # 35 -40', 'floralba71720@gmail.com', '', '2021-06-26', 5, '2021-07-05 19:39:10', 34, NULL, '1991-02-01'),
(8, 15, 22, 62, 1, 0, 1, 1, 1, 7, '65810707', 'Yolanda', '', 'Pacheco', 'Perez', '3008621188', '3142714286', 'CRA 36 # 72D - 45 SUR', 'angieantury0307@gmail.com', '', '2021-06-29', 5, '2021-07-05 20:08:32', 34, NULL, '2002-11-16'),
(9, 3, 21, 62, 4, 0, 1, 1, 2, 1, '1024486850', 'Juan', 'Guillermo', 'Romero', 'Daza ', '3192468242', '', 'DIAGONAL 73A BIS SUR 36D - 22 INT 12', 'juangromero22@gmail.com', '', '2021-07-01', 5, '2021-07-05 20:19:42', 34, NULL, '2007-01-09'),
(10, 5, 3, 62, 4, 0, 1, 1, 2, 1, '1000783021', 'Jhojan', 'David ', 'Rivera ', 'Jutinico', '3175031774 ', '3124653471 ', 'DIAGONAL 73A BIS SUR # 36D -22 INT 07 	', 'dr110801@gmail.com', '', '2021-07-07', 5, '2021-07-31 15:56:58', 34, NULL, '2019-08-15'),
(11, 5, 22, 62, 1, 0, 1, 1, 1, 8, '1030533205', 'Gina ', 'Alexandra ', 'Serrato ', 'Vargas ', '3183235105', '3228089091', 'CALLE 72B SUR # 35 - 24	', 'alboroto1920@hotmail.com', '', '2021-07-12', 15, '2021-07-31 16:16:44', 34, NULL, '2005-01-26'),
(12, 5, 22, 62, 2, 0, 1, 1, 1, 1, '51843507', 'Marta ', 'Cecilia ', 'Martin ', 'Babativa ', '3162966516', '3045588181', 'CALLE 72B SUR # 34B - 20 	', 'martacmartin1207@gmail.com', '', '2021-07-16', 5, '2021-07-31 17:40:53', 34, NULL, '1985-02-26'),
(16, 5, 1, 62, 1, 0, 1, 1, 1, 10, '52934431', 'Angie ', 'Lorena ', 'Ríos ', 'Gonzales', '3228939681', '3204518150', 'CALLE 72B SUR # 35 - 16	', 'angel-hada@hotmail.com', '', '2021-07-19', 5, '2021-08-01 20:26:34', 34, NULL, '2001-08-22'),
(17, 1, 21, 62, 3, 0, 1, 1, 6, 1, '52286936', 'Flor ', 'Stela ', 'Pulido', 'Rubiano', '3115391141', '3102445074', 'CRA 45A  # 75 - 15 SUR ', 'oyaganu@hotmail.com', '', '2021-07-19', 5, '2021-08-06 13:44:19', 34, NULL, '1994-12-27'),
(18, 1, 21, 62, 3, 0, 1, 1, 6, 2, '1000780860', 'Jeferson ', 'Steven ', 'Hamon', 'Diaz', '3015425872', '3012104847', 'CALLE 75 SUR # 75A - 09 ', 'jhamondiaz@gmail.con', '', '2021-07-22', 15, '2021-08-06 13:47:10', 34, NULL, '2019-02-13'),
(19, 5, 6, 62, 3, 0, 1, 1, 6, 3, '52465450', 'Marisol', '', 'Diaz', 'Ruiz', '3147799914', '3103367906', 'CALLE 75 SUR # 75A - 14 ', 'marisold636@gmail.com', '', '2021-07-23', 5, '2021-08-06 13:53:46', 34, NULL, '1997-07-24'),
(20, 5, 22, 62, 3, 0, 1, 1, 6, 4, '80219581', 'Hector ', 'Mauricio ', 'Vanegas ', 'Martinez', '3002271539', '3015765754', 'CRA 45 # 75A - 20 SUR	', 'hemavamar38@gmail.com', '', '2021-07-31', 15, '2021-08-06 15:19:05', 34, NULL, '2000-02-04'),
(21, 5, 18, 62, 1, 0, 1, 1, 1, 11, '41662100', 'Maria', 'del Carmen', 'Amezquitan ', 'Cubides', '3003057246', '3144070323', 'CRA 35B # 72D - 44 SUR	', 'arangomiguelangel00@gmail.com', '', '2021-07-26', 5, '2021-08-06 15:36:28', 34, NULL, '1976-09-02'),
(22, 5, 22, 62, 1, 0, 1, 1, 1, 9, '1031159830', 'Juan ', 'de Jesus', 'Solano ', 'Gomez ', '3134207623', '', 'CRA 35B # 72D - 12 SUR 	', 'facturacion@inttelgo.com', '', '2021-07-15', 5, '2021-08-31 22:02:07', 34, NULL, '2013-07-12'),
(23, 5, 21, 62, 1, 0, 1, 1, 1, 12, '65828537', 'Olga ', 'Lucia ', 'Rojas ', 'Rojas ', '3123665266', '3145909603', '2', 'samifira77@gmail.com', '', '2021-08-12', 5, '2021-08-31 22:13:00', 34, NULL, '1997-03-07'),
(25, 5, 22, 62, 1, 0, 1, 1, 1, 13, '51827368', 'Rosalba ', '', 'Fonseca', 'Pinto ', '3103470476', '', 'CARRERA 36A  # 72D - 44 	', 'facturacion@webmastercolombia.net', '', '2021-08-28', 15, '2021-08-31 22:16:33', 34, NULL, '1984-10-22'),
(26, 5, 3, 62, 3, 0, 1, 1, 6, 5, '79923878', 'Guillermo ', 'Ernesto ', 'Morales ', 'Acosta', '3002150329 ', '3015280515 ', 'CALLE 75A SUR # 44B -15	', 'oficialtfk@gmail.com', '', '2021-08-12', 5, '2021-08-31 22:19:42', 34, NULL, '1999-11-11'),
(27, 21, 22, 62, 3, 0, 1, 1, 6, 6, '1085174096', 'Jair ', 'Alonso ', 'Pedrozo ', 'Perez ', '322 7315883', '', 'CRA 45A # 75A - 27 SUR 	', 'pedrozoperez123@gmail.com', '', '2021-08-16', 20, '2021-08-31 22:23:56', 34, NULL, '2010-01-13'),
(28, 1, 21, 62, 3, 0, 1, 1, 6, 7, '51767056', 'Elsa ', 'Gladys ', 'Morales ', 'Aguilar ', '3125305431', '', 'CALLE 75 SUR # 45A - 09	', 'facturacion@webmastercolombia.net', '', '2021-08-28', 5, '2021-08-31 22:27:18', 34, NULL, '1983-08-26'),
(29, 5, 22, 62, 3, 0, 1, 1, 6, 8, '1000707335', 'Gisella ', '', 'Angulo ', 'Preciado', '3228509929 ', '3175703731', 'CARRERA 45B # 75A - 15 SUR 	', 'agissela00@gmail.com', '', '2021-08-28', 5, '2021-08-31 22:41:37', 34, NULL, '2020-06-24'),
(30, 1, 2, 62, 2, 0, 1, 1, 2, 2, '1022332240', 'Eduard ', 'Ricardo ', 'Espinosa ', 'Armero', '3003111420', '3003111420', ' CRA 34C # 72D - 37 SUR', 'richard.armero2016@gmail.com', '', '2021-07-26', 5, '2021-08-31 22:45:21', 34, NULL, '2005-05-31'),
(31, 5, 13, 62, 2, 0, 1, 1, 2, 3, '52104597', 'Ana ', 'Rosa ', 'Mosquera ', 'Sastre ', '3213359378', '3154555110', 'TRANSVERSAL 35D # 73 - 64 SUR 	', 'balaguera31@gmail.com', '', '2021-08-19', 5, '2021-08-31 22:48:26', 34, NULL, '1998-02-11'),
(32, 1, 1, 62, 1, 0, 1, 1, 1, 14, '1033745141', 'María ', 'Fernanda ', 'Avilez ', 'Gómez', '3232298102', '3208976562', 'CALLE 72B SUR # 36 - 04 	', '1853alme@gmail.com', '', '2021-09-01', 5, '2021-09-30 14:15:30', 34, NULL, '2010-06-08'),
(33, 1, 6, 62, 1, 0, 1, 1, 1, 15, '52060868', 'Sonia ', 'Mabel ', 'Cubides ', 'Amezquita', '3023762806', '3004055956', 'CARRERA 36 # 72D - 09 SUR 	', 'facturacion@webmastercolombia.net', '', '2021-09-22', 5, '2021-09-30 14:24:55', 34, NULL, '1990-08-10'),
(34, 5, 3, 62, 1, 0, 1, 1, 1, 16, '1000726308	', 'Carol ', 'Lorena ', 'Medina ', 'Neira', '3228282024', ' 3229517352	', 'CALLE 72B SUR # 35A - 28 	', 'carollorenamedinaneira@gmail.com', '', '2021-09-22', 5, '2021-09-30 14:34:52', 34, NULL, '2019-09-10'),
(35, 1, 16, 62, 2, 0, 1, 1, 2, 4, '52461918', 'Diana ', 'Emilia ', 'Sierra ', 'Villamarin ', '3133785747', '', 'CALLE 72G SUR # 35C - 29	', 'facturacion@webmastercolombia.net', '', '2021-09-18', 23, '2021-09-30 14:40:32', 34, NULL, '1999-03-02'),
(36, 5, 17, 62, 3, 0, 1, 1, 6, 9, '79893043', 'Marco ', 'Aurelio ', 'Muñoz ', 'Moreno ', '3197732522', '', 'CRA 45 # 75 - 55 SUR 	', 'markoaurelio279@gmail.com', '', '2021-09-04', 5, '2021-09-30 14:52:09', 34, NULL, '1995-09-30'),
(37, 5, 21, 62, 3, 0, 1, 1, 6, 10, '1003516131', 'Karol ', 'Lizeth ', 'Cuellar ', 'Gutierrez ', '3112386909', '3003685365', 'CALLE 75 SUR # 45A - 04	', 'karolcuellar18@gmail.com', '', '2021-09-18', 5, '2021-09-30 14:59:21', 34, NULL, '2020-01-14'),
(38, 5, 1, 62, 3, 0, 1, 1, 6, 3, '1193494272	', 'Eimar ', 'Danilfer ', 'Gallego ', 'Quiñones ', '3208566713', '', 'CALLE 75 SUR # 45A - 08 	', 'eimar.gallego.eimar@gmail.com', '', '2021-09-27', 5, '2021-09-30 15:08:25', 34, NULL, '2018-06-22'),
(39, 16, 7, 62, 3, 0, 1, 1, 6, 11, '52129628', 'Gloria ', 'Jacqueline', 'Gonzalez ', 'Salazar ', '3002238765 ', '3208429468', 'CALLE 75 A # 44 B - 20', 'facturacion@webmastercolombia.net', '', '2021-10-13', 15, '2021-11-03 13:01:53', 34, NULL, '1992-03-09'),
(40, 1, 1, 62, 1, 0, 1, 1, 1, 17, '1026595240', 'Johan ', 'Sebastián', 'Mosquera ', 'Castellanos', '3228509854', '3102746005', 'TRANS 35D # 73 - 76 SUR', ' jsmosquera129@gmail.com', '', '2021-11-06', 5, '2021-11-08 11:29:03', 34, NULL, '2021-11-06'),
(41, 5, 6, 62, 1, 0, 1, 1, 1, 44, '1000620128', 'Michel', 'Alejandra', 'Cruz', 'Castro', '3118457237', '3136406912 ', 'CARRERA 35 # 72B - 33 SUR', 'facturacion@webmastercolombia.net', '', '2021-11-17', 5, '2021-11-26 17:56:27', 34, NULL, '2020-06-10'),
(42, 1, 1, 62, 1, 0, 1, 1, 1, 1, '1001184142', 'Laura', 'Valentina', 'Cruz', 'Chara', '3122897751', '', 'CARRERA 36B # 72D - 36 SUR	', 'facturacion@webmastercolombia.net', '', '2021-12-10', 5, '2021-12-10 13:12:34', 34, NULL, '2018-06-21'),
(43, 1, 22, 62, 1, 0, 1, 1, 1, 9, '51952061', 'Sandra', 'Yaneth', 'Rodríguez', 'Campos', '3104821960', '', 'CARRERA 36B # 72B - 20 SUR', 'sandrayaneth7220@gmail.com', '', '2021-12-11', 5, '2021-12-13 11:05:00', 34, NULL, '1987-12-14'),
(97, 5, 17, 62, 2, 0, 1, 1, 2, 5, '39685443', 'Graciela', '', 'Arias', 'Padilla', '3224092617', '', 'CRA 34B # 72D - 16 SUR', 'facturacion@webmastercolombia.net', '', '2021-12-28', 5, '2021-12-28 14:27:28', 34, NULL, '1981-07-29'),
(98, 1, 6, 62, 2, 0, 1, 1, 2, 1, '79634874', 'Oscar', 'Francisco', 'Santander', 'Diaz', '3143205222', '3014401912', 'Calle 72B SUR # 34B -08	', 'oscarfracnsant.68@gmail.com', '', '2025-11-18', 5, '2022-01-15 08:41:27', 34, NULL, '1990-10-31'),
(99, 20, 21, 62, 3, 0, 1, 1, 6, 12, '17327917', 'Onofre', '', 'Avila ', 'Sabogal', '3113204086', '', 'CALLE 75 SUR 45A - 15	', 'blancatl14@hotmail.com', '', '2022-02-01', 15, '2022-02-02 16:41:47', 34, NULL, '1982-09-15'),
(100, 1, 1, 62, 1, 0, 1, 1, 1, 19, '80901033', 'Stevens', '', 'Espinosa', 'Bohorquez', '3163492441', '3185444914', 'CALLE 72B SUR # 35A - 04', 'facturacion@webmastercolombia.net', '', '2022-02-08', 5, '2022-02-09 08:52:57', 34, NULL, '2003-02-25'),
(101, 2, 22, 62, 1, 0, 1, 1, 1, 20, '79328687', 'Hector', 'John', 'Castañeda', 'Campos', '3208861777', '3123614558', 'CRA 36A # 72D - 40 SUR	', 'facturacion@webmastercolombia.net', '', '2022-02-21', 15, '2022-02-22 09:42:30', 34, NULL, '1983-03-18'),
(102, 1, 6, 62, 3, 0, 1, 1, 6, 13, '3209702', 'Inocencio', '', 'Rodriguez', 'Martinez', '3115391141', '3142536796', 'CRA 45B # 75A - 10 SUR', 'facturacion@webmastercolombia.net', '', '2022-02-23', 5, '2022-02-23 14:09:08', 34, NULL, '1981-12-03'),
(103, 5, 22, 62, 1, 0, 1, 1, 1, 21, '23597567', 'Fraibel', 'Gregorio ', 'Briceño', 'Lopez', '3044145227', '3214368829', 'CRA 36 # 72D - 25 SUR', 'fraibeluni@gmail.com', '', '2022-03-01', 5, '2022-03-02 17:03:38', 34, NULL, '2012-06-21'),
(104, 1, 21, 62, 4, 0, 1, 1, 15, 2, '41581354', 'Cecilia', '', 'Gallo', 'Restrepo', ' 319 5373486', '', 'DIAGONAL 73A BIS SUR 36D - 22 INT 12	', 'facturacion@webmastercolombia.net', '', '2022-03-04', 5, '2022-03-04 17:37:13', 34, NULL, '1974-08-20'),
(105, 5, 22, 62, 1, 0, 1, 1, 1, 22, '1000347631	', 'Michelle', 'Tatiana', 'Yate', 'Sanchez', '3158242261', '3118924808 ', 'CRA 36 # 72D - 24 SUR', 'facturacion@webmastercolombia.net', '', '2022-03-04', 5, '2022-03-04 17:39:59', 34, NULL, '2019-02-22'),
(106, 5, 6, 62, 4, 0, 1, 1, 15, 3, '51877158', 'Martha', 'Patricia', 'Carrera', 'Castaño', '3133880579', '', 'DIAGONAL 73A BIS SUR 36D - 22 INT 11', 'facturacion@webmastercolombia.net', '', '2022-03-05', 5, '2022-03-07 08:36:50', 34, NULL, '1985-12-09'),
(107, 1, 7, 62, 1, 0, 1, 1, 1, 23, '1010213203', 'Adriana', 'Alejandra', 'Torres', 'Rueda', '3232123106', '3203036210', 'CALLE 72B SUR # 35A - 08', 'Adristorres12813@gmail.com', '', '2022-03-08', 20, '2022-03-08 10:22:56', 34, NULL, '2012-02-21'),
(108, 19, 1, 62, 2, 0, 1, 1, 2, 6, '1024488679', 'Edisson', 'Alberto', 'Basto', 'Moreno', '3124059637', '3224127202	', 'CRA 34C # 72D - 24', 'facturacion@webmastercolombia.net', '', '2022-03-15', 15, '2022-03-15 17:30:21', 34, NULL, '2007-03-07'),
(109, 5, 7, 62, 3, 0, 1, 1, 6, 14, '52065710', 'Sandra', 'Milena', 'Caceres', 'Quiroga', '3143946510', ' 350 7997260', 'CRA 45A  # 73B - 50 SUR ', 'facturacion@webmastercolombia.net', '', '2022-04-01', 5, '2022-04-02 15:35:57', 34, NULL, '1991-06-04'),
(110, 5, 17, 62, 3, 0, 1, 1, 6, 15, '52371200', 'Martha', 'Astrid', 'Rincon', '', '3156167259', '308736884	', 'CRA 45 # 75 - 51 SUR ', 'mailto:martica2216@gmail.com', '', '2022-04-08', 5, '2022-04-12 17:05:15', 34, NULL, '1995-09-30'),
(111, 12, 22, 62, 1, 0, 1, 1, 1, 24, '28869455', 'Miryam', 'Janneth', 'Sánchez', 'Real', '3227579801', '3504710696	', 'CRA 35A # 72D - 37', 'Jannethrealal02@gmail.com', '', '2022-04-22', 5, '2022-05-02 11:19:40', 34, NULL, '1999-09-21'),
(112, 5, 2, 62, 3, 0, 1, 1, 6, 16, '1140424198', 'Maria', 'Jose', 'Rico', 'Davila', '3106629664', '', 'CALLE 75 SUR # 45A - 09', 'facturacion@webmastercolombia.net', '', '2022-04-29', 5, '2022-05-02 11:22:39', 34, NULL, '2017-04-07'),
(113, 5, 22, 62, 1, 0, 1, 1, 1, 25, '52039279', 'Edna', 'Margarita', 'Rueda', '', '3132184885', '3142680372', 'CRA 36A # 72D - 37 ', 'facturacion@webmastercolombia.net', '', '2022-05-02', 15, '2022-05-03 08:27:44', 34, NULL, '1990-08-10'),
(114, 1, 22, 62, 1, 0, 1, 1, 1, 26, '1060269249', 'Duvan', 'Andres', 'Hurtado', 'Valencia', '3197356117', '3209906611', 'CRA 35A # 72B - 17 SUR ', 'facturacion@webmastercolombia.net', '', '2022-05-17', 5, '2022-05-31 21:24:08', 34, NULL, '2013-01-28'),
(115, 5, 2, 62, 3, 0, 1, 1, 6, 17, '1026292789', 'Edilson', 'Johany', ' Daza ', 'Zuluaga', '30122133540', '3022680974', 'CRA 45B # 73B - 23 SUR', 'facturacion@webmastercolombia.net', '', '2022-05-16', 15, '2022-05-31 21:29:32', 34, NULL, '2013-10-22'),
(116, 1, 22, 62, 1, 0, 1, 1, 1, 27, '1000224187', 'Anne', 'Stefani', 'Ruda', 'Caceres', '3142368857', '', 'CRA 36A # 72D - 28 SUR', 'annestefani2001@gmail.com', '', '2022-06-09', 5, '2022-06-10 18:38:14', 34, NULL, '2019-04-10'),
(117, 1, 1, 62, 3, 0, 1, 1, 6, 18, '1024552640', 'Heidy', 'Jakeline', 'Velasco ', 'Gonzalez', '3202917732', '3138097345-3003999078', 'CALLE 75 SUR # 45A -16', 'Willianmurillejo@gmail.com', '', '2022-08-05', 15, '2022-08-09 16:23:23', 34, NULL, '2012-06-07'),
(118, 1, 16, 62, 1, 0, 1, 1, 1, 28, '52098092', 'Martha', 'Patricia ', 'Millan ', 'Laguna', '3204247758', '3105598614', 'CRA 36A # 72D - 13 SUR', 'tlasso_@hotmail.com', '', '2022-08-08', 5, '2022-09-01 16:05:49', 34, NULL, '1969-03-31'),
(119, 1, 18, 62, 1, 0, 1, 1, 1, 29, '1086043259', 'Eliecer ', '', 'Perlaza', 'Vivas', '3222273474', '3202504410', 'CRA 36 # 72D - 32 SUR  ', 'eliecer.perlaza@gmail.com', '', '2022-08-23', 5, '2022-09-01 16:23:01', 34, NULL, '2005-04-11'),
(120, 1, 7, 62, 3, 0, 1, 1, 6, 19, '4156127', 'Gloria', 'Cristina', 'Salazar', 'Gonzalez', '3135707273', '', 'CALLE 75A SUR # 44B - 14 ', 'facturacion@webmastercolombia.net', '', '2022-08-02', 5, '2022-09-03 13:38:08', 34, NULL, '1973-11-02'),
(121, 5, 21, 62, 3, 0, 1, 1, 6, 20, '1024473151', 'Jhon ', '', 'Pachón', 'Pachón', '3174313135', '', 'CALLE 75 SUR # 45A - 09 ', 'facturacion@webmastercolombia.net', '', '2022-09-12', 20, '2022-09-27 12:18:58', 34, NULL, '2005-06-01'),
(122, 1, 22, 62, 2, 0, 1, 1, 2, 7, '52540575', 'Gladys', 'Helena', 'Mesa', 'Morales', '3222429954', '3102690848 - 3148588740', 'CRA 34C # 72D - 20 SUR', 'gladismesa79@gmail.com', '', '2022-11-08', 5, '2022-11-09 15:04:36', 34, NULL, '1998-02-05'),
(123, 1, 6, 62, 1, 0, 1, 1, 2, 7, '14881324', 'Robinson', '', 'Mina', '', '3144046802', '3123304951', 'CRA 36A # 72D - 57', 'robinsonmina1959@gmail.com', '', '2022-11-25', 15, '2022-11-26 13:02:51', 34, NULL, '1979-02-17'),
(124, 19, 7, 62, 3, 0, 1, 1, 6, 21, '32854429', 'Lina', 'Margarita', 'Polo', 'Avila', '3023001934', '3006247431', 'CRA 45B # 75 - 55 SUR', 'facturacion@webmastercolombia.net', '', '2022-11-25', 5, '2022-11-26 13:10:23', 34, NULL, '1999-11-25'),
(125, 1, 8, 62, 3, 0, 1, 1, 6, 17, '80858793', 'Willian', 'Alexander', 'Murillejo', 'Ramos', '3016644820', '', 'CRA 45B # 74 - 40 SUR ', 'Willianmurillejo@gmail.com', '', '2022-11-25', 15, '2022-11-26 13:20:01', 34, NULL, '2003-09-08'),
(126, 9, 7, 62, 1, 0, 1, 1, 1, 9, '1031147188', 'Carlos', 'Yordy', 'Millan', 'Hernandez', '3203737784', '3125834934', '', 'facturacion@webmastercolombia.net', '', '2023-01-11', 5, '2023-01-16 10:03:40', 35, NULL, '2011-07-06'),
(127, 5, 7, 62, 3, 0, 1, 1, 6, 22, '79770722', 'Freddy', '', 'Gonzalez', '', '3222842178', '', 'CALLE 75A SUR # 44B - 14', 'fgonzalezsalazar1978@gmail.com', '', '2022-12-03', 15, '2023-01-16 10:13:55', 35, NULL, '2000-01-01'),
(128, 10, 2, 62, 3, 0, 2, 1, 6, 23, '1278928', 'BRAYAN', 'MANUEL', 'PALENCIA', 'BRITO', '3006727513', '3218438863', 'CRA 45B # 75 - 28 SUR PISO 3 ', 'bmanuel170@gmail.com', '', '2022-12-21', 5, '2023-01-18 11:43:38', 34, NULL, '2022-03-28'),
(129, 5, 21, 62, 3, 0, 1, 1, 6, 4, '1001341518', 'Laura ', 'Tatiana', 'Sabogal', 'Mendez', '3045978923', '', 'CALLE 75 SUR # 45A - 09', 'facturacion@webmastercolombia.net', '', '2022-11-18', 5, '2023-01-18 12:01:23', 34, NULL, '2010-07-02'),
(130, 5, 21, 62, 4, 0, 1, 1, 15, 1, '1127601248', 'Yerena', 'Bernarda', 'Puche', ' Morelo', '3013466128', ' 3009591739', 'DIAG 73A BIS # 38 - 36 SUR', 'facturacion@webmastercolombia.net', '', '2023-02-13', 5, '2023-02-25 12:41:28', 34, NULL, '1964-03-27'),
(131, 10, 21, 62, 4, 0, 1, 1, 15, 1, '51896082', 'Martha', 'Liliana', 'Vanegas', 'Martiez', '3213388335', '', 'DIAG 73A BIS # 38 - 36 SUR', 'facturacion@webmastercolombia.net', '', '2023-03-03', 5, '2023-03-03 12:17:43', 34, NULL, '1990-03-02'),
(132, 1, 22, 62, 1, 0, 1, 1, 1, 21, '1024551190', 'Deisy', 'Paola', 'Bocarejo', 'Castañeda', '3007255983', '3193327451', 'CRA 36A # 72B - 12 SUR', 'bocarejodeisy940401@gmail.com', '', '2023-03-07', 5, '2023-03-21 10:25:21', 34, NULL, '2012-04-23'),
(133, 1, 22, 62, 3, 0, 2, 1, 6, 24, '1073696045', 'MARIA', '', 'ROMERO', '', '3143345328 ', '3014084045 ', 'CALLE 75 SUR # 45A - 15', 'facturacion@webmastercolombia.net', '', '2023-04-26', 5, '2023-04-25 16:14:48', 34, NULL, '2023-01-25'),
(134, 5, 2, 62, 4, 0, 1, 1, 15, 6, '1000792804', 'Maikon	', ' Steven', ' Amado', ' Mojica', '3123580022	', ' 3223604983', 'DIAG 73A BIS SUR # 36D - 22 INT 13	', 'facturacion@webmastercolombia.net', '', '2023-04-21', 5, '2023-04-29 16:15:15', 35, NULL, '2017-02-22'),
(135, 5, 7, 62, 1, 0, 1, 1, 1, 16, '1007802742', 'Neivy', 'Samara', 'Waldron', 'Rojas', '3022631530', ' 3106108267', 'CRA 36 # 76B - 25', 'facturacion@webmastercolombia.net', '', '2023-04-09', 5, '2023-04-29 16:17:42', 35, NULL, '2018-10-11'),
(136, 3, 4, 62, 3, 0, 1, 1, 6, 25, '1023901444', 'Jhonatan', '', ' Quete', 'Saavedra	', '3004233437', ' 3028522738', 'CALLE 75 # 75B - 03', 'Quete17@hotmail.com', '', '2023-04-14', 5, '2023-04-29 16:20:06', 35, NULL, '2008-11-04'),
(137, 5, 7, 62, 1, 0, 1, 1, 1, 31, '1013628738', 'Leidy', ' Stephany', ' Segura', ' Fonseca', '3105833587', '3192250945', 'Cra 36 # 72D - 29	', 'facturacion@webmastercolombia.net', '', '2023-04-25', 5, '2023-04-29 16:23:53', 35, NULL, '2021-02-02'),
(138, 5, 2, 62, 3, 0, 1, 1, 6, 26, '1024544144', 'Jhon', ' Stiven', ' Canchon', ' Galindo', '3166984196', '3168226961	', 'CALLE 75A # 44B - 21 sur', 'ljhon0003@gmail.com', '', '2023-04-22', 5, '2023-04-29 16:27:25', 35, NULL, '2011-09-22'),
(139, 5, 24, 62, 1, 0, 1, 1, 1, 3, '1023931990', 'Paula', ' Alejandra', ' Rodriguez', ' Rodriguez', '3144087347', '3125509943', 'CRA 36B # 72 - 12', 'facturacion@webmastercolombia.net', '', '2023-04-19', 5, '2023-05-08 11:12:30', 34, NULL, '2018-05-05'),
(140, 1, 22, 62, 1, 0, 1, 1, 1, 32, '39783943', 'Amparo', '', 'Castaño', ' Rios', '3003702998', '3007255983', 'Carrera 36a # 72d - 33 ', 'amparoc690@gmail.com', '', '2023-05-18', 5, '2023-09-19 16:05:38', 34, NULL, '1995-06-07'),
(141, 1, 22, 62, 1, 0, 1, 1, 1, 33, '1000727408', 'Juan', 'Camilo', 'Supelano', ' Cifuentes', '3145555578', ' 6017165402', 'CRA 36A # 72B - 60', 'juancamilosupelano@gmail.com', '', '2023-05-24', 15, '2023-09-19 16:11:00', 34, NULL, '1988-06-08'),
(142, 21, 22, 62, 1, 0, 1, 1, 1, 35, '1033782445', 'Astrid', 'Carina', 'Millan', '', '3202513078', ' 3212092152', 'CRA 36A # 72D - 25 SUR', 'carinamillan1995@gmail.com', '', '2023-06-14', 5, '2023-09-19 16:15:13', 34, NULL, '1993-07-15'),
(143, 5, 21, 62, 4, 0, 1, 1, 15, 9, '1000726936', 'Jessica', 'Yuleir', 'Veloza', 'Quintero', '3103256296', '3223443129', 'DIAG 73A BIS SUR # 36D 22 INT 13', 'facturacion@webmastercolombia.net', '', '2023-08-24', 5, '2023-09-19 16:16:52', 34, NULL, '1994-06-09'),
(144, 17, 22, 62, 4, 0, 1, 1, 15, 10, '1022986029', 'Maria', ' Alejandra', ' Martinez', ' Acuña', '3006378670', '3246177910', 'DIAG 73A BIS SUR # 36D - 22', 'facturacion@webmastercolombia.net', '', '2023-08-24', 5, '2023-09-19 16:18:41', 34, NULL, '1985-01-30'),
(145, 1, 6, 62, 2, 0, 1, 1, 2, 9, '1000727731', 'Wilmar', 'Santiago', 'Martinez', 'Vargas', '3005669149', '3192873923', ' CRA 34C # 72D - 08 SUR', 'santiagomartinezvargas2002@gmail.com', '', '2023-08-26', 5, '2023-09-19 16:23:01', 34, NULL, '1979-02-07'),
(146, 1, 22, 62, 4, 0, 1, 1, 15, 12, '1055833583', 'Conrado', '', 'Londoño', 'Nietp', '3206728363', '', 'TRANS 35D # 72F - 04', 'conradolondono86@gmail.com', '', '2023-10-04', 5, '2023-10-13 17:18:05', 35, NULL, '2006-10-29'),
(147, 1, 22, 62, 1, 0, 1, 1, 1, 34, '60299269', 'Maria', 'Olga', 'Ruiz', 'De Tavera', '3124586486', '', 'CRA 35 # 72D - 36', 'facturacion@webmastercolombia.net', '', '2023-06-15', 5, '2023-10-13 17:30:21', 35, NULL, '1981-11-16'),
(148, 1, 22, 62, 1, 0, 1, 1, 1, 9, '1031145102', 'Caterin', 'Yoely', 'Perilla', 'Saavedra', '3118967447', '3105585800', 'CRA 35A # 72D - 16 SUR', 'Caterinyoelii@gmail.com', '', '2023-07-25', 25, '2023-10-13 17:35:35', 35, NULL, '2011-03-23'),
(149, 5, 21, 62, 3, 0, 1, 1, 6, 27, '10265952401', 'Johan', 'Sebastian', 'Mosquera', 'Castellanos', '3228509854', '3102746005', 'TV 33D # 73 - 76', 'facturacion@webmastercolombia.net', '', '2023-08-15', 5, '2023-10-13 17:52:59', 35, NULL, '2016-08-26'),
(150, 1, 1, 62, 3, 0, 1, 1, 6, 28, '91255962', 'Nelson', '', 'Castillo', '', '3132088861', '', 'CRA 45B # 75 - 14', 'facturación@webmastercolombia.net', '', '2023-09-15', 5, '2023-10-13 17:57:41', 35, NULL, '1985-02-01'),
(151, 1, 6, 62, 1, 0, 1, 1, 1, 41, '1024530731', 'Jenny', 'Paola', 'Rodriguez', 'Sarmiento', '3212653829', '3208870617', 'CRA 34A # 72D SUR - 09', 'jenny.rodriguez1024@gmail.com', '', '2023-09-09', 15, '2023-10-13 17:59:53', 35, NULL, '1992-06-09'),
(152, 1, 21, 62, 4, 0, 1, 1, 15, 11, '10229860291', 'Maria', 'Alejandra', 'Martinez', 'Acuña', '3006378670', '3246177910', 'DIAG 73A BIS SUR # 36D - 22 INT 6', 'milagroszoraida.09@gmail.com', '', '2023-08-23', 20, '2023-10-13 18:02:20', 35, NULL, '1993-04-22'),
(153, 5, 21, 62, 2, 0, 1, 1, 2, 8, '102659524011', 'Johan', 'Sebastian', 'Mosquera', 'Castellanos', '3228509854', '3102746005', 'TV 35D # 73 - 76', 'facturación@webmastercolombia.net', '', '2023-08-15', 5, '2023-10-13 18:06:00', 35, NULL, '1996-08-29'),
(154, 5, 21, 62, 1, 0, 1, 1, 1, 42, '1006156094', 'Angie ', 'Lizeth', 'Antury', 'Pacheco', '3044969998', '3209762682', 'CRA 36A # 72D SUR - 24', 'Angieantury0307@gmail.com', '', '2023-09-20', 5, '2023-10-14 10:46:28', 35, NULL, '2019-02-01'),
(155, 3, 2, 62, 4, 0, 1, 1, 15, 4, '10244868501', 'Juan', '', 'Romero', '', '3192468242', '', 'DIAG 73A BIS SUR 36D - 22', 'juangromero22@gmail.com', '', '2023-08-17', 5, '2023-10-14 12:20:47', 34, NULL, '2007-01-09'),
(156, 5, 7, 62, 1, 0, 1, 1, 1, 61, '1001204553', 'Erika', 'Marcela', 'Romero', 'Contreras', '3228590603', '3216691711', 'CRA 36 # 72D - 09 SUR', 'erikamarceromero19@gmail.com', '', '2023-10-11', 20, '2023-11-30 09:33:36', 35, NULL, '2003-05-21'),
(157, 5, 1, 62, 3, 0, 1, 1, 6, 29, '36068193', 'Rosa', 'Flor', 'Quimbaya', 'Horta', '3118749078', '3042588833', 'CRA 45B # 76 - 68', 'facturacion@webmastercolombia.net', '', '2023-10-09', 5, '2023-11-30 09:43:59', 35, NULL, '1987-10-09'),
(158, 1, 6, 62, 1, 0, 1, 1, 1, 90, '1013679702', 'Jeimy', 'Liliana', 'Rodriguez', 'Sarmiento', '3102753311', '3146007497', 'CRA 35 # 72B - 09', 'jeimyrodriguez2102@gmail.com', '', '2023-10-11', 15, '2023-11-30 09:48:50', 35, NULL, '2016-02-23'),
(159, 1, 6, 62, 2, 0, 1, 1, 2, 10, '1022935228', 'Juan ', 'Camilo', 'Lopez', 'Arevalo', '3153484130', '3118900120', 'CALLE 72G # 35 - 19', 'juanjo.miley@gmail.com', '', '2023-11-04', 5, '2023-11-30 09:52:46', 35, NULL, '2005-07-25'),
(160, 3, 17, 62, 1, 0, 1, 1, 1, 62, '52535742', 'Maria', 'Alejandra', 'Rivas', '', '3013462467', '', 'CRA 35B # 72D - 52 SUR', 'yialher89@gmail.com', '', '2023-11-14', 15, '2023-11-30 09:56:50', 35, NULL, '1997-03-31'),
(161, 1, 7, 62, 4, 0, 1, 1, 15, 13, '1022406145', 'Elizabeth', 'Moreno', 'Diaz', '', '3202637546', '3053719357', 'DIAG 73A BIS SUR # 36D 22 INT 3', 'elizabethmd17@hotmail.com', '', '2023-11-16', 5, '2023-11-30 10:02:56', 35, NULL, '2013-08-02'),
(162, 1, 1, 62, 3, 0, 1, 1, 6, 63, '79704123', 'Jose', 'Alberto', 'Moreno', 'Ladino', '3153930099', '3026366944', 'CRA 45A # 75A - 72', 'jhosepm1975@gmail.com', '', '2025-08-13', 5, '2023-11-30 10:19:53', 35, NULL, '1993-09-21'),
(163, 1, 6, 62, 2, 0, 1, 1, 2, 13, '1024494442', 'Solangy', '', 'Diaz', 'Montealegre', '3045251581', '', 'CALLE 72G # 35 - 11', 'solangydm@gmail.com', '', '2023-12-16', 5, '2024-01-29 10:22:48', 35, NULL, '2007-02-23'),
(164, 1, 26, 62, 2, 0, 1, 1, 2, 12, '1144201110', 'Juan', 'Pablo', 'Ospina', 'Tangarife', '3104111822', '3202588163', 'CALLE 72B # 34a - 08', 'juan.pablo.5@hotmail.com', '', '2025-09-06', 5, '2024-01-29 10:26:29', 35, NULL, '2015-05-19'),
(165, 1, 16, 62, 2, 0, 1, 1, 2, 17, '1032446923', 'Monica', 'Viviana', 'Mahecha', 'Inañes', '3134769208', '3017296826', 'CALLE 72G SUR # 35C - 25', 'v9373546@gmail.com', '', '2024-01-20', 5, '2024-01-30 12:31:04', 35, NULL, '2009-12-02'),
(166, 5, 8, 62, 2, 0, 1, 1, 2, 18, '1026307846', 'Julian', 'Roberto', 'Balaguera', 'Mosquera', '3124518780', '3127688727', 'TRANS # 35D # 72F 04', 'julianbalaguera2@gmail.com', '', '2024-01-27', 5, '2024-01-30 12:36:24', 35, NULL, '2018-01-19'),
(167, 5, 22, 62, 2, 0, 1, 1, 2, 14, '1117811891', 'Alba', 'Luz', 'Cardoso', 'Sanchez', '3214827718', '3212550194', 'CRA 34C # 72B - 09', 'Albacardoso1986@gmail.com', '', '2024-01-11', 5, '2024-01-31 09:33:07', 35, NULL, '2021-05-21'),
(169, 1, 22, 62, 2, 0, 1, 1, 2, 16, '24373124', 'Omaira', 'Londoño', 'Nieto', '', '3143267123', '3206728363', 'TRANS 35D # 73 - 60 SUR', 'lomaira176@gmail.com', '', '2024-01-11', 5, '2024-01-31 09:49:03', 35, NULL, '2021-05-21'),
(170, 1, 1, 62, 4, 0, 1, 1, 15, 18, '1031134523', 'Gyna ', 'Paola', 'Rodriguez', 'Millan', '3125428433', '3115577392', 'DG 73A Bis SUR 36D 31 int 12', 'Gynarodriguez320@gmail.com', '', '2024-02-10', 5, '2024-03-26 14:11:10', 35, NULL, '2009-10-15'),
(171, 1, 16, 62, 4, 0, 1, 1, 15, 17, '52851308', 'Andrea', 'Del Pilar', 'Castro', '', '3106783898', '3186625102', 'DIAG 73A BIS SUR # 36D 22 INT 5', 'castroandreadelpilar@yahoo.es', '', '2024-02-06', 5, '2024-03-26 14:15:37', 35, NULL, '1998-09-01'),
(172, 5, 1, 62, 3, 0, 1, 1, 6, 31, '39494997', 'Flor', 'Edilma', 'Montenegro', 'Mora', '3118203626', '3013601717', 'CALLE 75 SUR # 45A - 09', 'facturacion@webmastercolombia.net', '', '2024-03-05', 5, '2024-03-26 14:18:52', 35, NULL, '1997-06-04'),
(173, 1, 7, 62, 1, 0, 1, 1, 1, 46, '1026569492', 'Abel', 'Mauricio', 'Pizano', 'Gaona', '3125509888', '3142023380', 'Cra 35D # 72D - 13', 'Mauriciop014@gmail.com', '', '2024-04-17', 5, '2024-05-25 13:16:28', 34, NULL, '1975-02-19'),
(174, 1, 2, 62, 1, 0, 1, 1, 1, 47, '80143956', 'Stick', '', 'Charry', '', '3144447729', ' 3054565060', 'CRA 35A # 72B - 20 SUR', 'Lady.seguraf@gmail.com', '', '2024-04-16', 5, '2024-05-25 13:19:18', 34, NULL, '1970-05-18'),
(175, 1, 22, 62, 4, 0, 1, 1, 15, 21, '80269737', 'Fabio', 'Humberto', 'Rincon', '', '3194784571', '3209065015', 'CALLE 73B SUR # 37 - 28', 'faviohumbertorinconsierra@gmail.com', '', '2024-05-14', 5, '2024-05-25 13:22:05', 34, NULL, '1973-07-17'),
(176, 5, 17, 62, 4, 0, 1, 1, 2, 16, '52729732', 'Claudía', '', 'Piernagorda', '', '3124324210', '3143437641', 'DIAG 73A BIS SUR # 36D 21', 'cmpv.15@hotmail.com', '', '2024-03-13', 5, '2024-05-25 13:25:46', 34, NULL, '1988-03-15'),
(177, 5, 1, 62, 3, 0, 1, 1, 6, 32, '1024494900', 'Angela', 'Gisseth', 'Cuervo', 'Triana', '3023200238', '', 'CRA 45B # 75 - 56', 'factura@webmastercolombia.net', '', '2024-04-16', 5, '2024-06-13 14:06:39', 34, NULL, '1989-09-13'),
(178, 1, 2, 62, 1, 0, 1, 1, 1, 45, '1022337161', 'Iris', 'Magnolia', 'Varon', '', '3114499192', '3158379166', 'CRA 34B # 72B - 33 SUR', 'Jesusyepes701@gmail.com', '', '2024-03-26', 5, '2024-06-13 14:10:36', 34, NULL, '1987-03-28'),
(179, 1, 22, 62, 4, 0, 1, 1, 15, 20, '105583358311', 'Conrado', '', 'Londoño', '', '3206728363', '', 'TRANS 35D # 72F - 04 SUR', 'conradolondono86@gmail.com', '', '2024-03-16', 5, '2024-06-13 14:22:35', 34, NULL, '2021-02-12'),
(180, 1, 7, 62, 2, 0, 1, 1, 2, 22, '52872611', 'Sandra', '', 'Castillo', '', ' 3057916523', '3053637816', 'CRA 34A # 72D -09', 'sandritacastillo81@hotmail.com', '', '2024-06-11', 17, '2024-06-17 14:49:22', 34, NULL, '1985-06-20'),
(181, 1, 26, 62, 1, 0, 1, 1, 1, 48, '1001061473', 'David', 'Santiago', 'Montero', 'Perez', '3132339916', '3227863896', 'CRA 35 # 72D - 57', 'facturacion@webmastercolombia,net', '', '2024-06-17', 5, '2024-06-17 16:58:07', 34, NULL, '2021-03-02'),
(182, 1, 22, 62, 2, 0, 1, 1, 2, 21, '39626271', 'Mireya', 'Esperanza', 'Pachon', 'Fernandez', '3238345931', '', 'TRANS 36A # 72F 66', 'esperanzapachon76@gmail.com', '', '2024-06-13', 5, '2024-06-17 18:03:11', 34, NULL, '1994-10-31'),
(183, 1, 6, 62, 3, 0, 1, 1, 6, 10, '1010193505', 'Diego', 'Armando', 'Ochoa', 'Dimate', '3174513063', '', 'CRA 45B # 74 - 34', 'ochoa554@hotmail.com', '', '2024-03-12', 5, '2024-06-18 09:01:35', 34, NULL, '1990-09-19'),
(184, 5, 22, 62, 3, 0, 1, 1, 6, 128, '88234593', 'Carlos', '', 'Gomez', '', '3124635570', '301 6502892', 'CALLE 75 SUR # 36B - 45', 'facturacion@webmastercolombia.net', '', '2023-02-12', 5, '2024-06-18 11:14:37', 34, NULL, '1991-10-02'),
(185, 2, 22, 62, 4, 0, 1, 1, 15, 15, '1033567892', 'Gilberto', '', 'Arce', '', '3212861146', '', 'DIAG 73A BIS SUR # 36D ', 'magkjj@gmail.com', '', '2024-04-18', 15, '2024-06-18 11:20:37', 34, NULL, '1985-04-16'),
(186, 1, 6, 62, 2, 0, 1, 1, 2, 23, '1033832204', 'Emily', ' Andrea', ' Petit ', 'Cuadrado', '3112285473', ' 3024681029', 'CRA 34C # 72B - 33', 'emily92petit@gmail.com', '', '2024-06-19', 5, '2024-06-29 08:41:03', 34, NULL, '2022-10-11'),
(187, 1, 6, 62, 2, 0, 1, 1, 2, 24, '51656852', 'Luz', 'Marina', 'Garcia', '', '314 3584089', ' 3138962958', 'CRA 32B # 72D - 41', 'facturacion@webmastercolombia.net', '', '2024-06-12', 5, '2024-06-29 08:46:39', 34, NULL, '1988-11-20'),
(188, 1, 1, 62, 4, 0, 1, 1, 15, 32, '1118823746', 'Omar', 'David', 'Acosta', 'Navas', '320 4584752', '', 'DIAG 73A BIS SUR # 36D - 22 INT 6', 'facturacion@webmastercolombia.net', '', '2023-05-24', 5, '2024-06-29 08:49:18', 34, NULL, '2007-04-19'),
(189, 5, 7, 62, 2, 0, 1, 1, 2, 25, '19183769', 'Carlos', 'Alberto', 'Santos', 'Amaya', '3234956697', '3013349873', 'DIAG 73A SUR # 36 - 25', 'sayacarlos.52@gmail.com', '', '2024-06-29', 5, '2024-07-03 14:16:59', 38, NULL, '1974-01-05'),
(190, 3, 22, 62, 2, 0, 1, 1, 2, 26, '79740386', 'Sonny', '', 'Cardenas', 'Suarez', '3228219851', '3197031109', 'CALLE 73A SUR # 35C - 07', 'sonnycar76@hotmail.com', '', '2024-07-04', 5, '2024-07-10 14:21:57', 38, NULL, '1994-06-20'),
(191, 1, 6, 62, 2, 0, 1, 1, 2, 27, '79922414', 'Henry', 'Nelson', 'Guerrero', 'Jimenez', '3123103667', '3125104657', 'CALLE 72B SUR # 34B - 28', 'facturacion@inttelgo.com', '', '2024-07-06', 5, '2024-07-12 09:44:57', 38, NULL, '1999-02-23'),
(192, 1, 22, 62, 1, 0, 1, 1, 1, 67, '1024461573', 'Eduard', 'Sebastian', 'Duran', 'Barbosa', '3001657189', '3202673307', 'CALLE 72B SUR # 34C -20', 'edwardbduran25@gmail.com', '', '2024-07-13', 5, '2024-07-16 14:01:34', 38, NULL, '2022-02-28'),
(193, 1, 6, 62, 1, 0, 1, 1, 1, 49, '1007821270', 'Angela', '', 'Chavez', 'Pacheco', '3145162213', '3125793446', 'CRA 36 # 72D - 25 SUR', 'rc1941938@gmail.com', '', '2024-07-19', 15, '2024-07-23 11:05:35', 38, NULL, '2011-10-18'),
(194, 1, 21, 62, 3, 0, 1, 1, 6, 33, '1000780860', 'Jeferson', 'Steven', 'Hamon', 'Diaz', '3015425872', '3012104847', 'CALLE 73B SUR # 45 - 15 ', 'jhamondiaz@gmail.com', '', '2024-07-23', 15, '2024-07-27 10:52:09', 38, NULL, '2024-07-23'),
(195, 21, 2, 62, 3, 0, 1, 1, 6, 34, '1024521191', 'Leidy', 'Briyith', 'Bonilla', 'Contreras', '3154421481', '3155801503', 'CRA 45B # 75 SUR - 36', 'lbonillita3015@gmail.com', '', '2024-07-27', 15, '2024-08-01 11:31:23', 38, NULL, '2009-09-07'),
(196, 1, 1, 62, 3, 0, 1, 1, 6, 64, '1023955485', 'Guerdy', 'Vannesa', 'Rodriguez', 'Arias', '3124228378', '', 'CALLE 75 SUR # 45A - 14', 'gu3rdy.96@gmail.com', '', '2024-07-30', 15, '2024-08-01 11:38:17', 38, NULL, '2014-11-12'),
(197, 1, 21, 62, 4, 0, 1, 1, 15, 22, '65707969', 'Astrid', 'Farley', 'Rojas', '', '3026010623', '3133766979', 'DIAG 73A BIS SUR # 36D - 22 int 5', 'rojasastrid71@gmail.com', '', '2024-08-02', 5, '2024-08-08 09:48:23', 38, NULL, '2000-06-14'),
(198, 1, 6, 62, 1, 0, 1, 1, 1, 51, '36811293', 'Darys', 'Rocio', 'Cortes', 'Torres', '3054469041', '3212387688', 'CALLE 72B SUR 35A - 16', 'caicedolorena447@gmail.com', '', '2024-08-17', 5, '2024-08-21 10:02:32', 38, NULL, '1997-04-17'),
(199, 1, 6, 62, 1, 0, 1, 1, 1, 12, '41538076', 'Maria', 'Noemy', 'Aristizabal', 'Gonzales', '3146007497', '3216063933', 'CALLE 72B SUR # 34C - 24', 'facturacion@inttelgo.com', '', '2024-08-27', 5, '2024-08-29 15:24:46', 38, NULL, '1973-07-30'),
(200, 5, 21, 62, 1, 0, 1, 1, 1, 2, '1000353465', 'Nicolas', '', 'Aguirre', '', '3240506199', '', 'x', 'angelnicolasaguirre3@gmail.com', '', '2024-09-01', 5, '2024-09-03 15:49:24', 35, NULL, '2024-09-01'),
(201, 2, 21, 62, 1, 0, 1, 1, 1, 68, '1035642969', 'Cristian', 'David', 'Guerra', 'Barbas', '3242833047', '', 'Calle 72B SUR # 35A - 24', 'keiverrosario1@gmail.com', '', '2024-09-04', 5, '2024-09-09 08:40:31', 38, NULL, '2015-09-02'),
(202, 1, 7, 62, 1, 0, 1, 1, 1, 69, '1024536670', 'Jairo', 'Andres', 'Martinez', 'Chon', '3208730590', ' 3216632838', 'CRA 35 # 72B - 32 SUR', 'juanandresjairo@gmail.com', '', '2024-09-05', 15, '2024-09-09 08:59:44', 38, NULL, '2011-02-02'),
(203, 5, 6, 62, 1, 0, 1, 1, 1, 70, '1193598847', 'Marimar', '', 'Castillo', 'Reina', '3105732522', '3105734364', 'CRA 36 # 72D - 24 SUR', 'cmarimar014@gmail.com', '', '2024-09-07', 5, '2024-09-11 14:03:33', 38, NULL, '2018-01-29'),
(204, 5, 6, 62, 4, 0, 1, 1, 15, 23, '1030623920', 'Karen', 'Lorena', 'Mendez', 'Rojas', '3103583297', '3044088018', 'DIAG 73A BIS SUR #  36D - 31', 'karenk1993mendez@gmail.com', '', '2024-09-10', 5, '2024-09-12 16:19:12', 38, NULL, '2011-04-27'),
(205, 1, 2, 62, 1, 0, 1, 1, 1, 71, '51567923', 'Fanny', '', 'Torres', 'Ortega', '3015343747', '3202028788', 'CRA 36A # 72D - 65', 'Bikebikerduncan@hotmail.com', '', '2024-09-18', 5, '2024-09-19 14:29:49', 38, NULL, '1979-02-28'),
(206, 1, 11, 62, 1, 0, 1, 1, 1, 72, '55069601', 'Argenis', '', 'Hernandez', 'Rodriguez', '3228200944', '3142263542', 'CRA 36A # 72B - 09 SUR', 'info@webmastercolombia.net', '', '2024-10-09', 5, '2024-10-15 09:24:27', 38, NULL, '2024-09-09'),
(207, 1, 7, 62, 2, 0, 1, 1, 2, 28, '1023968410', 'Emily', 'Tatiana', 'Buitrago', 'Oñate', '3102565248', '3026481621', 'DIAG 73A SUR # 36 -21', 'emy.buitrago@gmail.com', '', '2024-10-31', 5, '2024-11-05 09:52:27', 38, NULL, '2016-06-01'),
(208, 1, 1, 62, 1, 0, 1, 1, 1, 10, '1000620128', 'Michael', 'Alejandra', 'Cruz', 'Castro', '3225102379', '3107668718', 'CRA 35 # 72B SUR - 32', 'alejandracruz03152002@gmail.com', '', '2024-11-12', 5, '2024-11-14 14:49:34', 38, NULL, '2020-06-10'),
(209, 1, 7, 62, 1, 0, 1, 1, 1, 52, '1024473708', 'Jennifer', '', 'Arroyo', 'Cruz', '3125716875', '', 'CRA 36 # 72D - 52 SUR', 'jenniferarroyo0215@gmail.com', '', '2024-12-19', 5, '2024-12-23 10:03:52', 38, NULL, '2005-06-22'),
(210, 1, 21, 62, 1, 0, 1, 1, 1, 53, '37839072', 'Alix', 'Maria', 'Medina', 'Medina', '3134890819', '3001557189', 'CRA 36A # 72D - 12 SUR', 'medinaalix16@gmail.com', '', '2024-12-20', 5, '2024-12-23 12:12:17', 38, NULL, '1977-05-24'),
(211, 1, 7, 62, 3, 0, 1, 1, 6, 29, '1024603138', 'Angelica', 'Johanna', 'Lozano', 'Cruz', '3164116103', '', 'CRA 45 # 75A - 55 SUR', 'angelicalozano503@gmail.com', '', '2024-12-27', 5, '2024-12-31 08:47:06', 38, NULL, '2018-02-12'),
(212, 5, 1, 62, 1, 0, 1, 1, 1, 44, '1023868374', 'Sharik', 'Tatiana', 'Cruz', 'Castro', '3107668718', '3123858299', 'CRA 35 # 72D SUR – 29 ', 'kevinalejandro0315@gmail.com', '', '2025-01-16', 5, '2025-01-15 15:10:42', 38, NULL, '2023-02-03'),
(213, 2, 2, 62, 3, 0, 1, 1, 6, 35, '1073709783', 'Daniel', 'Leonardo', 'Soache', 'Granados', '3243901015', '3104734989', 'CRA 45B # 75 - 56 SUR', 'karolmontiel444@gmail.com', '', '2025-01-16', 5, '2025-01-18 11:45:03', 38, NULL, '2015-05-04'),
(214, 3, 21, 62, 1, 0, 1, 1, 1, 37, '1069176237', 'Julian', 'Mauricio', 'Paredes', 'Cruz', '3127719313', '3213803685', 'CRA 36 # 72D SUR - 12', 'paredescruzjulian65@gmail.com', '', '2025-01-28', 5, '2025-02-01 11:33:57', 38, NULL, '2009-07-24'),
(215, 1, 1, 62, 4, 0, 1, 1, 15, 25, '1000623176', 'James', 'Alejandro', 'Gañan', 'Gañan', '3128844344', '3219332114', 'DIAG 73A BIS SUR # 38 - 44', 'arseja987@gmail.com', '', '2025-01-28', 5, '2025-02-01 11:38:42', 38, NULL, '2020-06-30'),
(216, 1, 2, 62, 1, 0, 1, 1, 1, 54, '19340893', 'Gustavo', '', 'Torres', 'Nuvan', '3142680372', '3054108468', 'CRA 36A  # 72B SUR - 37', 'info@webmastercolombia.net', '', '2025-01-29', 5, '2025-02-03 11:10:46', 38, NULL, '1977-05-11'),
(217, 1, 21, 62, 4, 0, 1, 1, 15, 26, '52821200', 'Yeiny', 'Paola', 'Maldonado', 'Sanchez', '3214041485', '3124835958', 'DIAG 73A BIS # 38 -28 SUR', 'paolamaldonado347@gmail.com', '', '2025-01-29', 5, '2025-02-03 11:17:47', 38, NULL, '2001-01-18'),
(218, 1, 21, 62, 1, 0, 1, 1, 1, 55, '1013680484', 'Juan', 'David', 'Avilez', 'Gomez', '3505646127', '3114882192', 'CRA 36A # 72B - 17 SUR', 'gomez@gmail.com', '', '2025-10-16', 5, '2025-02-05 16:41:56', 38, NULL, '2016-03-31'),
(219, 1, 22, 62, 4, 0, 1, 1, 15, 28, '1022948913', 'Zulema', 'Jazmin', 'Cifuentes', 'Chilito', '3123093587', '3135815429', 'DIAG 73A BIS SUR # 38 - 32', 'zulemajazmin02@hotmail.com', '', '2025-02-10', 5, '2025-02-17 10:30:46', 38, NULL, '2007-03-05'),
(220, 5, 7, 62, 2, 0, 1, 1, 2, 29, '7487482', 'Mario', 'Jose', 'Velasquez', 'Lopez', '3124915696', '', 'CRA 34B # 72D SUR - 25', 'velasquezm454@gmail.com', '', '2025-02-10', 5, '2025-02-17 10:35:09', 38, NULL, '2023-03-28'),
(221, 1, 8, 62, 1, 0, 1, 1, 1, 73, '1013670291', 'Juan', 'Felipe', 'Plazas', 'Barajas', '3123093587', '3135815429', 'CRA 35A # 72B SUR - 25', 'plazasj1396@gmail.com', '', '2025-02-12', 5, '2025-02-17 12:22:23', 38, NULL, '2014-10-22'),
(222, 1, 6, 62, 2, 0, 1, 1, 2, 5, '52874378', 'Ceidy', 'Dayan', 'Arroyo', 'Cruz', '3196184682', '3194570791', 'CALLE 72G SUR # 35 - 15', 'dayanarroyo82@gmail.com', '', '2025-02-20', 5, '2025-02-25 13:35:33', 38, NULL, '2000-07-10'),
(223, 1, 6, 62, 3, 0, 1, 1, 6, 9, '91018424', 'Edgar', '', 'Barrera', 'Tellez', '3002613591', '3132550654', 'CRA 45B  # 74 - 34 SUR', 'guiller.91018@gmail.com', '', '2025-02-24', 5, '2025-03-03 08:13:41', 38, NULL, '2002-02-07'),
(224, 21, 1, 62, 1, 0, 1, 1, 1, 74, '1086042273', 'Jhonny', '', 'Valencia', 'Grueso', '3226767748', '3138339821', 'CRA 35B # 72B - 45 SUR', 'jhonnyvalencia794@gmail.com', '', '2025-03-06', 5, '2025-03-08 13:10:49', 38, NULL, '2015-07-21'),
(225, 1, 22, 62, 1, 0, 1, 1, 1, 75, '20970866', 'Ana', 'Bertilda', 'Castro', 'Vargas', '3118457237', '3107668718', 'CRA 35 # 72B - 33 SUR', 'anabertildacastrovargas@gmail.com', '', '2025-03-10', 5, '2025-03-13 09:17:52', 38, NULL, '1984-08-28'),
(226, 1, 21, 62, 2, 0, 1, 1, 2, 30, '1018471636', 'Leidy', 'Johana', 'Guerrero', 'Melo', '3195295901', '3112171556', 'DIAG 73A BIS # 36 - 78', 'lejoguem@hotmail.com ', '', '2025-03-12', 5, '2025-03-14 11:43:04', 38, NULL, '2012-11-13'),
(227, 1, 22, 62, 4, 0, 1, 1, 15, 30, '52237912', 'Marleny', '', 'Quintero', 'Amaya', '3203113410', '3169824555', 'DIAG 74 SUR # 37A - 04', 'gingotica@gmail.com', '', '2025-03-22', 5, '2025-03-28 16:13:42', 38, NULL, '1994-10-31'),
(228, 1, 6, 62, 1, 0, 1, 1, 1, 77, '52170030', 'Andrea', '', 'Vargas', 'Rojas', '3204557574', '3172246624', 'DIAG 72B SUR # 35 - 28', 'catherinecortes889@gmail.com', '', '2025-03-26', 5, '2025-03-29 12:27:46', 38, NULL, '1993-04-12'),
(229, 1, 22, 62, 4, 0, 1, 1, 15, 31, '51873512', 'Nidia', '', 'Melo', 'Molina', '3112171556', '3195295901', 'CALLE 73B SUR # 37 - 33', 'droppy_38@hotmail.com', '', '2025-04-08', 5, '2025-04-12 13:27:20', 38, NULL, '1985-11-15'),
(230, 1, 22, 62, 4, 0, 1, 1, 15, 34, '1000970210', 'Lina', 'Maria', 'Rojas', 'Obando', '3144107006', '3246701646', 'CALLE 74 SUR # 38 - 46', 'linarojas2308@gmail.com', '', '2025-04-23', 5, '2025-05-02 16:34:11', 38, NULL, '2012-12-06'),
(231, 1, 21, 62, 4, 0, 1, 1, 15, 33, '93297515', 'Mauricio', '', 'Cardenas', '', '3228710808', '3115479977', 'DIAG 73A BIS SUR # 38 - 37', 'andresfelipe91411@gmail.com', '', '2025-04-23', 5, '2025-05-02 16:38:02', 38, NULL, '1995-01-09'),
(232, 1, 22, 62, 3, 0, 1, 1, 6, 36, '14399732', 'Luis', 'Ediel', 'Leon', 'Cardona', '3044143638', '3133262843', 'CRA 45B # 74 - 23 SUR', 'luisedielleon@gmail.com', '', '2025-05-02', 5, '2025-05-08 12:32:53', 38, NULL, '2001-10-09'),
(233, 1, 1, 62, 4, 0, 1, 1, 15, 35, '1108931051', 'Yordan', 'Arbey', 'Vega', 'Barreto', '3156569521', '3027778998', 'CALLE 74 SUR # 38 - 46', 'jordanbarreto369@gmail.com', '', '2025-05-12', 15, '2025-05-16 10:34:26', 38, NULL, '2007-05-15'),
(234, 1, 12, 62, 3, 0, 1, 1, 6, 127, '749916', 'Katherine', 'Josefina', 'Paz', 'Cardenas', '3202186485', '3114545330', 'CALLE 73 SUR # 45A - 02', 'pazkaty879@gmail.com', '', '2025-06-07', 5, '2025-06-24 11:43:14', 38, NULL, '2023-06-13'),
(235, 1, 21, 62, 1, 0, 1, 1, 1, 79, '51962061', 'Sandra', 'Yaneth', 'Rodriguez', 'Campos', '3125502651', '3104821960', 'CRA 36B # 72D - 20 SUR', 'mariacamilafr123@gmail.com ', '', '2025-06-05', 5, '2025-06-24 14:28:24', 38, NULL, '1987-12-14'),
(236, 1, 26, 62, 1, 0, 1, 1, 1, 78, '1026587442', 'David', '', 'Murillo', 'Ardila', '3004730074', '3124717230', 'CALLE 72B SUR # 35B - 12', 'dardila755@gmail.com', '', '2025-05-29', 5, '2025-06-24 16:09:35', 38, NULL, '2014-07-21'),
(237, 5, 4, 62, 3, 0, 1, 1, 6, 126, '1078178521', 'Mia', 'Alejandra', 'Raga', 'Zulma', '3138628470', '3046473942', 'TRANS 50 # 71 - 15 SUR', 'leisonmoreno691@gmail.com', '', '2025-07-02', 5, '2025-07-04 10:16:22', 38, NULL, '2021-11-03'),
(238, 1, 7, 62, 1, 0, 1, 1, 1, 80, '1001272133', 'Daniel', 'Alexander', 'Banguera', 'Montaño', '3123872756', '3232333181', 'CALLE 72B SUR # 35B - 20', 'miltan96gordis@gmail.com', '', '2025-07-12', 15, '2025-07-18 15:05:06', 38, NULL, '2017-04-25'),
(239, 1, 21, 62, 4, 0, 1, 1, 15, 36, '1026295749', 'Yesica', 'Jinneth', 'Diaz', 'Mosquera', '3138384116', '3212266552', 'DIAG 73A # 36D - 08 SUR', 'Yesik_c11@hotmail.com', '', '2025-07-29', 5, '2025-08-01 10:07:05', 38, NULL, '2014-06-24'),
(240, 1, 22, 62, 1, 0, 1, 1, 1, 22, '52234883', 'Elba', 'Janet', 'Mesa', 'Morales', '3213988196', '3117133598', 'CRA 36B # 72D - 08 SUR', 'janetmesa1978@gmail.com', '', '2025-08-09', 5, '2025-08-13 10:25:56', 38, NULL, '1987-03-06'),
(241, 1, 22, 62, 2, 0, 1, 1, 2, 33, '41631528', 'Dora', 'Luz', 'Suarez', 'De Cardenas', '3224505311', '3508644850', 'CALLE 73A SUR # 35C - 21', 'cardenassuarezashley@gmail.com', '', '2025-08-14', 5, '2025-08-20 14:50:09', 38, NULL, '1975-09-22'),
(242, 1, 21, 62, 3, 0, 1, 1, 6, 41, '1006774075', 'Oscar', 'Herley', 'Diaz', 'Suarez', '3045942291', '3222208206', 'CRA 45B # 75 - 08 SUR', 'andreasuarez4030@gmail.com', '', '2025-09-17', 15, '2025-09-23 14:48:20', 38, NULL, '2021-02-06'),
(243, 1, 22, 62, 3, 0, 1, 1, 6, 38, '1024537748', 'Yuli', 'Yineth', 'Lagos', 'Hernandez', '3007455135', '3143692680', 'CALLE 75 SUR # 45A - 15', 'yul20.1993@gmail.com', '', '2025-09-17', 5, '2025-09-23 14:56:52', 38, NULL, '2011-03-07'),
(244, 1, 21, 62, 3, 0, 1, 1, 6, 40, '1033756130', 'Lizeth', 'Lorena', 'Sanchez', 'Mendez', '3209651672', '3243468284', 'CALLE 75 SUR # 45A - 09', 'Lizecita971@gmail.com', '', '2025-09-17', 15, '2025-09-23 15:03:09', 38, NULL, '2011-07-26'),
(245, 1, 21, 62, 3, 0, 1, 1, 6, 80, '1006774075', 'Oscar', 'Herley', 'Diaz', 'Suarez', '3045942291', '3222208206', 'CRA 45B #73 - 43 SUR', 'andreasuarez4030@gmail.com', '', '2025-09-17', 15, '2025-09-23 15:10:56', 38, NULL, '2021-02-08'),
(246, 1, 21, 62, 3, 0, 1, 1, 6, 39, '1024552404', 'Jorge', 'Yunior', 'Hernandez', 'Herreño', '3227071252', '3204832548', 'CALLE 75 SUR # 45A 15', 'Junior19940327@gmail.com', '', '2025-09-17', 5, '2025-09-23 15:15:47', 38, NULL, '2012-06-01'),
(247, 1, 7, 62, 1, 0, 1, 1, 1, 81, '51877492', 'Luz', 'Marina', 'Zamudio', 'Mahecha', '3172844670', '3012643878', 'CALLE 72B SUR # 34B 36', 'angelusezam02@gmail.com', '', '2025-09-26', 5, '2025-10-03 12:39:15', 38, NULL, '1985-12-06'),
(248, 1, 22, 62, 1, 0, 1, 1, 1, 82, '1033782484', 'Luisa', 'Fernanda', 'Torres', 'Rueda', '3203036210', '3155874035', 'CRA 36A # 72B -08 SUR', 'luisat.r2209@gmail.com', '', '2025-09-29', 5, '2025-10-04 12:49:01', 38, NULL, '2013-11-26'),
(249, 1, 21, 62, 1, 0, 1, 1, 1, 83, '1024466321', 'Jennifer', 'Paola', 'Banguera', 'Perlaza', '3125382355', '3136676081', 'CALLE 72B SUR # 35 - 04', 'pbanguera15@gmail.com', '', '2025-10-01', 5, '2025-10-07 14:34:39', 38, NULL, '2016-05-16'),
(250, 1, 1, 62, 3, 0, 1, 1, 6, 125, '52464569', 'Derlys', 'Lorena', 'Mendez', 'Morales', '3003821949', '3125305431', 'CRA 45B # 72 - 05 SUR', 'mendezmorales38@gmail.com', '', '2025-10-03', 5, '2025-10-09 12:11:05', 38, NULL, '1997-04-08'),
(251, 1, 1, 62, 3, 0, 1, 1, 6, 42, '30425940', 'Sami', 'Miguel', 'Gomez', 'Sanchez', '3170614090', '3170614090', 'CALLE 75 SUR # 45A - 15', 'info@webmastercolombia.net', '', '2025-10-16', 5, '2025-10-21 12:39:41', 38, NULL, '2015-05-13'),
(252, 1, 7, 62, 7, 0, 1, 1, 6, 124, '23918305', 'Maria', 'Leonor', 'Marcano', 'Quintanilla', '3177319580', '3177319580', 'CALLE 72C SUR # 45C - 22', 'info@webmastercolombia.net', '', '2025-11-01', 5, '2025-11-08 12:34:16', 38, NULL, '2012-10-27'),
(253, 1, 21, 62, 3, 0, 1, 1, 6, 123, '1024558878', 'Angie', 'Carolina', 'Lagos', 'Hernandez', '3246880200', '3134869497', 'CALLE 77 SUR  # 40 - 07', 'angiecarolinalh@gmail.com', '', '2025-11-10', 5, '2025-11-13 10:43:34', 38, NULL, '2012-12-19'),
(254, 1, 1, 62, 1, 0, 1, 1, 1, 85, '1105671931', 'Juan', 'Diego', 'Murillo', 'Ramirez', '3212140057', '3142277086', 'CRA 36A # 72D - 48', 'juanmurilloramirez01@gmail.com', '', '2025-11-24', 5, '2025-12-01 14:47:40', 38, NULL, '2016-03-07'),
(255, 1, 7, 62, 1, 0, 1, 1, 1, 87, '1011089829', 'Diana', 'Katherin', 'Patiño', 'Yate', '3134843718', '3182875331', 'CRA 35A # 72D - 08 SUR', 'diana1yatep@gmail.com', '', '2025-11-25', 5, '2025-12-01 15:00:05', 38, NULL, '2023-12-01'),
(256, 1, 21, 62, 1, 0, 1, 1, 1, 86, '1032396385', 'Sandra', 'Camila', 'Ramos', 'Fandiño', '3156947162', '3202241971', 'CALLE 72B SUR # 35B - 04', 'sandracamilaramos@gmail.com', '', '2025-11-25', 5, '2025-12-01 15:04:36', 38, NULL, '2005-09-27'),
(257, 1, 7, 62, 2, 0, 1, 1, 2, 36, '3254587', 'Jaime', 'Urias', 'Perez', 'Virguez', '3125534665', '3107915000', 'CALLE 72B SUR # 34B - 04', 'linzdickens@gmail.com', '', '2025-11-27', 5, '2025-12-03 11:58:22', 38, NULL, '1979-12-09'),
(258, 1, 1, 62, 7, 0, 1, 1, 1, 122, '1062401536', 'Luis', 'Andres', 'Velilla', 'Navarro', '3158863809', '3115750452', 'CALLE 69G SUR # 48A - 15', 'luisandresvelilla@gmail.com', '', '2025-12-02', 5, '2025-12-06 12:24:16', 38, NULL, '2012-08-24'),
(259, 1, 21, 62, 1, 0, 1, 1, 1, 88, '1031152538', 'Brandon', 'Humberto', 'Bolivar', 'Sanchez', '3202068580', '3103197614', 'CRA 36 # 72D - 33 SUR', 'Gorduma@hotmail.com', '', '2025-12-02', 5, '2025-12-06 12:29:05', 38, NULL, '2012-03-28'),
(260, 1, 6, 62, 6, 0, 1, 1, 3, 1, '1073692587', 'Cristian', 'Andres', 'Anzola', 'Poveda', '3238692858', '3202094865', 'CALLE 70B BIS SUR # 40B - 16', 'cristianpovedo1@gmail.com', '', '2025-11-27', 5, '2025-12-06 12:32:34', 38, NULL, '2010-01-18'),
(261, 1, 22, 62, 1, 0, 1, 1, 1, 89, '52872611', 'Sandra', 'Milena', 'Castillo', 'Leon', '3057916523', '3144008694', 'CRA 35A # 72D - 41 SUR', 'smcastilloleon@gmail.com', '', '2025-12-03', 5, '2025-12-09 09:43:05', 38, NULL, '2000-01-19'),
(262, 1, 22, 62, 7, 0, 1, 1, 1, 125, '1033800540', 'David', 'Antonio', 'Bolivar', 'Sanchez', '3195744592', '3227014031', 'CRA 44B # 73B - 18 SUR', 'davidbolivar9716@gmail.com', '', '2025-12-12', 5, '2025-12-18 09:45:15', 38, NULL, '2015-09-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id_contacto` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `mensaje` text NOT NULL,
  `ip` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id_contacto`, `nombre`, `telefono`, `correo`, `mensaje`, `ip`) VALUES
(1, 'asd', '21321321', 'sadsadsa', 'anaguirrec@correo.udistrital.edu.co', ''),
(2, 'wqe', '21321321', 'wqewqe', 'anaguirrec@correo.udistrital.edu.co', ''),
(3, 'wqe', '21321321', '879879', 'anaguirrec@correo.udistrital.edu.co', ''),
(4, 'wqe', '21321321', '879879', 'anaguirrec@correo.udistrital.edu.co', ''),
(5, 'asd321', '321', 'sadsadsa', 'anaguirrec@correo.udistrital.edu.co', ''),
(6, 'asd321', '321', 'sadsadsa', 'anaguirrec@correo.udistrital.edu.co', ''),
(7, 'asd321', '321', 'sadsadsa', 'anaguirrec@correo.udistrital.edu.co', ''),
(8, 'wqe', '21321321', 'sadsadsad', 'anaguirrec@correo.udistrital.edu.co', ''),
(9, 'wqe', '21321321', 'saddsa', 'anaguirrec@correo.udistrital.edu.co', ''),
(10, 'asd321', 'asdsad', 'sadsadsad', 'anaguirrec@correo.udistrital.edu.co', ''),
(11, 'wqe', 'sad', 'asd', 'anaguirrec@correo.udistrital.edu.co', ''),
(12, 'asdsadsadsad', '3321321', '321321321', 'anaguirrec@correo.udistrital.edu.co', ''),
(13, 'wqe', '', '', 'anaguirrec@correo.udistrital.edu.co', ''),
(14, 'wqe', '333', 'sadsad', 'anaguirrec@correo.udistrital.edu.co', ''),
(15, '', '', '', '', ''),
(16, '', '', '', '', ''),
(17, 'sadsad', 'sadsad', 'sadsad', 'sadsad', ''),
(18, '', '', '', '', ''),
(19, '', '', '', '', ''),
(20, '', '', '', '', ''),
(21, 'SADSAD', '21321321', 'SADSAD', 'anaguirrec@correo.udistrital.edu.co', ''),
(22, 'SADSA', '3232', 'REWREW', 'anaguirrec@correo.udistrital.edu.co', ''),
(23, 'asd321', '321213', 'SADSA', 'anaguirrec@correo.udistrital.edu.co', ''),
(24, '', '', '', '', ''),
(25, '', '', '', '', ''),
(26, '', '', '', '', ''),
(27, 'sdad', 'aasdsa', 'asdsad', 'asds', ''),
(28, 'sdad', '324324324', 'asdsad', 'asdsad@asdsa.csadsad', ''),
(29, 'sadsad', '21321321', 'wqeewqewq', 'anaguirrec@correo.udistrital.edu.co', ''),
(30, 'sadsad', '21321321', 'erwr', 'anaguirrec@correo.udistrital.edu.co', ''),
(31, '', '', '', '', ''),
(32, 'Nicolas', '321564', 'Ncaisdsd', 'anaguirrec@correo.udistrital.edu.co', ''),
(33, 'asd', '878787', 'dsadsadsa', 'anaguirrec@correo.udistrital.edu.co', ''),
(34, 'asd321', 'sad', 'asdsad', 'sad', ''),
(35, 'asd321', 'sad', 'asdsad', 'anaguirrec@correo.udistrital.edu.co', ''),
(36, 'asd321', '32143', 'fdgdsf', 'anaguirrec@correo.udistrital.edu.cs', ''),
(37, 'asd321', '432324', 'asdsad', 'anaguirrec', ''),
(38, 'asd321', '4432432', 'awqewq', 'asd', ''),
(39, 'asd321', '4432432', 'awqewq', 'asd@sads.sadsad', ''),
(40, 'asd321', 'asdsad', 'asdsad', 'anaguirrec@correo.udistrital.edu.co', ''),
(41, 'asd321', '21321321', 'sadsadsad', 'anaguirrec@correo.udistrital.edu.co', ''),
(42, 'sad', '3432432', 'asdsad', 'sad', ''),
(43, '3232', '3232', 'fdsfds', '323232', ''),
(44, 'asd321', '12332', 'dsafsf', 'sad', ''),
(45, 'Nicolas1', '321654', 'wqewqe', 'anaguirrec@gmail.com', ''),
(46, 'asd321', '312564', 'sadsadsad', 'nicolas@gmail.com', ''),
(47, 'sadsad', '21433243', 'asdsadsa', 'nicolas@gmail.com', ''),
(48, 'sad', '21321', 'dsa', 'sad', ''),
(49, 'ss', 'ss', 'sss', 'ss', ''),
(50, 'qd', '|11|12', 'd', 'johanaguirre@inttelgo.com', ''),
(51, 'asd321', '21323', 'sadsds', 'anaguirrec@correo.udistrital.edu.co', ''),
(52, 'ANA', '1322', '1222', 'johan@1.com', ''),
(53, 'Johan', '1', 'ss', 's', ''),
(54, 'Nicolas', '21321321', 'asdsd', 'nicolas@gmail.com', ''),
(55, 'sad', '342', 'dsfds', 'asd', ''),
(56, 'Nicolas', '321654', 'sss', 'nicolas@gmail.com', ''),
(57, 'Nicolas', '23', '23234', 'nicolas@gmail.com', ''),
(58, 'Nicolas', '123123', 'dsdsff', 'sad@dsf.com', ''),
(59, 'asd', '12332', 'asd', 'asd', ''),
(60, 'asd', '12332', 'asd', 'asd', ''),
(61, 'asd', '12332', 'asd', 'asdsad@asdsa.csadsad', ''),
(62, 'asd', '3123', 'asdasd', 'asd', ''),
(63, 'Nicolas', '21321321', 'rwerwe', 'nicolas@gmail.com', ''),
(64, 'Nicolas', '21312332', 'werewre', 'wewererw', ''),
(65, 'robin', '64987978', 'erewrewrewr', 'robin@robin.com', ''),
(66, 'aqwsd', '1232131', 'sdfdsf', 'asdasd', ''),
(67, 'aqwsd', '1232131', 'sdfdsf', 'asdas.d', ''),
(68, 'aqwsd', '1232131', 'sdfdsf', 'asd@as.d', ''),
(69, 'robin', '64987978', 'pmokl', 'Ñsasó', ''),
(70, 'robin', '64987978', 'pmokl', '@', ''),
(71, 'robin', '64987978', 'pmokl', '@', ''),
(72, 'robin', '64987978', 'pmokl', 'sdasdasd@', ''),
(73, 'robin', '64987978', 'dfsdfs', 'asd@as.d', ''),
(74, 'robin', '64987978', 'dgdfg', 'robin@robin.com', ''),
(75, 'robin', '64987978', 'dgdfg', 'robin@robin.com', ''),
(76, 'sdadasdsdasdasf', 'sefsefsdf', 'sefserf', 'sefsdfsd', ''),
(77, 'dsfsfdssdfdsfsf', 'dsfsf', 'fsdfsdf', 'asd@as.d', ''),
(78, 'sadsadfdsdff', '12255484', 'sfsfs', 'asdfsfdfsdf', ''),
(79, 'aqwsd', '64987978', 'sddzsd', 'robin@robin.com', ''),
(80, 'aSAds', '16687', 'sdfsd', 'sfesfsdfg', ''),
(81, 'robin', '64987978', 'zdsdsd', 'robin@robin.com', ''),
(82, 'robin', '64987978', 'sfdsdf', 'robin@robin.com', ''),
(83, 'Andres', '3026184779', 'Buenas tardes me gustaría saber cuál es la clave y el usuario para poder ingresar ala configuración del router para poder crear un vpn por mi trabajo modelo del router Clave y usuario, router ZTE ZXHN F680', 'andresherranab@gmail.com', ''),
(84, 'CESAR PEDRAZA', '3163117088', 'Quisiera conocer sus servicios', 'cesar.pedraza@teleconet.co', ''),
(85, 'DIEGO GERMAN VALENCIA MONTOYA', '315 8522876', 'Cordial saludo\nNecesito conocer información del servicio de internet dedicado para la empresa.\n\nGracias', 'diego.valencia.aysi@gmail.com', ''),
(86, 'angel esteban guzman', '3212408547', 'Solicito de cotizacio de internet dedicado para la ciudad de bogota  calle 30a # 6-22', 'gestiontic@cyfsoluciones.com', ''),
(87, 'lina cardenas ', '3204542473', 'Buen día, estoy interesada en un plan empresarial, somos un grupo de trabajo de 22 personas. \n\nAgradezco su atención. ', 'linacardenas91@gmail.com', ''),
(88, 'Angie', '3234331358', 'Internet', 'torresangie.b@gmail.com', ''),
(89, '', '', '', '', '206.0.24.137'),
(90, '', '', '', '', '206.0.24.137'),
(91, '', '', '', '', '206.0.24.191'),
(92, '', '', '', '', '206.0.24.191'),
(93, '', '', '', '', '191.156.232.62'),
(94, '', '', '', '', '191.156.232.62'),
(95, '', '', '', '', '191.156.232.42'),
(96, '', '', '', '', '206.0.24.137'),
(97, '', '', '', '', '191.156.232.42'),
(98, '', '', '', '', '191.156.232.62'),
(99, '', '', '', '', '191.156.63.210'),
(100, '', '', '', '', '191.156.63.210'),
(101, '', '', '', '', '191.156.232.42'),
(102, '', '', '', '', '191.156.232.42'),
(103, '', '', '', '', '206.0.24.191'),
(104, '', '', '', '', '191.156.232.218'),
(105, '', '', '', '', '191.156.232.62'),
(106, '', '', '', '', '206.0.24.137'),
(107, '', '', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '206.0.24.137'),
(108, '', '', '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '206.0.24.191'),
(109, '', '', '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/27.0 Chrome/125.0.0.0 Mobile Safari/537.36', '206.0.24.191');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `departamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `departamento`) VALUES
(1, 'Antioquia'),
(2, 'Atlántico'),
(3, 'Bolívar'),
(4, 'Boyacá'),
(5, 'Caldas'),
(6, 'Cauca'),
(7, 'Cesar'),
(8, 'Córdoba'),
(9, 'Cundinamarca'),
(10, 'Guajira'),
(11, 'Huila'),
(12, 'Magdalena'),
(13, 'Meta'),
(14, 'Nariño'),
(15, 'Norte de Santander'),
(16, 'Quindío'),
(17, 'Risaralda'),
(18, 'Santander'),
(19, 'Sucre'),
(20, 'Tolima'),
(21, 'Valle del Cauca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_cliente`
--

CREATE TABLE `estado_cliente` (
  `id_estado_cliente` int(11) NOT NULL,
  `estado_cliente` varchar(100) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `estado_cliente`
--

INSERT INTO `estado_cliente` (`id_estado_cliente`, `estado_cliente`, `color`) VALUES
(1, 'Activo', '#5AB4F8'),
(2, 'Corte', '#FA5858'),
(3, 'Preferido', '#BDBDBD'),
(4, 'Suspendido', '#00FF80'),
(5, 'Retirado', '#04B404'),
(6, 'Compromiso', '#FC8F0B'),
(7, 'Abono', '#37E0B2'),
(8, 'Mora Enero 2020', '#FFF000'),
(9, 'Mora Febrero 2020', '#FFF000'),
(10, 'Mora Marzo 2020', '#FFF000'),
(11, 'Mora Abril 2020', '#FFF000'),
(12, 'Mora Mayo 2020', '#FFF000'),
(13, 'Mora Junio 2020', '#FFF000'),
(14, 'Mora Julio 2020', '#FFF000'),
(15, 'Mora Agosto 2020', '#FFF000'),
(16, 'Mora Septiembre 2020', '#FFF000'),
(17, 'Mora Octubre 2020', '#FFF000'),
(18, 'Mora Noviembre 2020', '#FFF000'),
(19, 'Mora Diciembre 2020', '#FFF000'),
(20, 'Promocional', '#f6ff33'),
(21, 'Mora Septiembre 2023', '#FFF000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_factura`
--

CREATE TABLE `estado_factura` (
  `id_estado_factura` int(11) NOT NULL,
  `estado_factura` varchar(100) NOT NULL,
  `obs` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `estado_factura`
--

INSERT INTO `estado_factura` (`id_estado_factura`, `estado_factura`, `obs`) VALUES
(1, 'Paga', ''),
(2, 'No Paga', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_instalacion`
--

CREATE TABLE `estado_instalacion` (
  `id_estado_instalacion` int(11) NOT NULL,
  `estado_instalacion` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `estado_instalacion`
--

INSERT INTO `estado_instalacion` (`id_estado_instalacion`, `estado_instalacion`, `color`) VALUES
(1, 'Pendiente', '#EB9C2C'),
(2, 'Prioritaria', '#EB311F'),
(3, 'Finalizada', '#1EED37'),
(4, 'Cliente Confirma', '#4991FA'),
(5, 'Cancelada', '#F0E301'),
(6, 'No cobertura', '#E66013'),
(7, 'Proceso de Instalación', '#A81BEB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_soporte`
--

CREATE TABLE `estado_soporte` (
  `id_estado_soporte` int(11) NOT NULL,
  `estado_soporte` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Estado soporte notificado';

--
-- Volcado de datos para la tabla `estado_soporte`
--

INSERT INTO `estado_soporte` (`id_estado_soporte`, `estado_soporte`) VALUES
(1, 'Pendiente'),
(2, 'Ajecutado'),
(3, 'Aplazado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_ticket`
--

CREATE TABLE `estado_ticket` (
  `id_estado_ticket` int(11) NOT NULL,
  `estado_ticket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `estado_ticket`
--

INSERT INTO `estado_ticket` (`id_estado_ticket`, `estado_ticket`) VALUES
(1, 'Pendiente'),
(2, 'Finalizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_usuario`
--

CREATE TABLE `estado_usuario` (
  `id_estado_usuario` int(11) NOT NULL,
  `estado_usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `estado_usuario`
--

INSERT INTO `estado_usuario` (`id_estado_usuario`, `estado_usuario`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `color` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `color`, `id_user`) VALUES
(1, 'Ernesto es Gay', '2021-06-02 00:00:00', '2021-06-03 00:00:00', '#FF0000', 1),
(2, 'Terminación cliente promocional ', '2021-08-17 08:00:00', '2021-08-18 00:00:00', '#FF0000', 34),
(3, 'Terminación cliente promocional ', '2021-08-17 08:00:00', '2021-08-18 00:00:00', '#FF0000', 34),
(4, 'Terminación cliente promocional ', '2021-08-17 08:00:00', '2021-08-18 00:00:00', '#FF0000', 34),
(5, 'Terminación cliente promocional ', '2021-08-17 08:00:00', '2021-08-18 00:00:00', '#FF0000', 34),
(6, 'Terminación cliente promocional ', '2021-08-17 08:00:00', '2021-08-18 00:00:00', '#FF0000', 34),
(7, 'Terminación cliente promocional ', '2021-08-17 08:00:00', '2021-08-18 00:00:00', '#FF0000', 34),
(8, 'Terminación cliente promocional ', '2021-08-17 08:00:00', '2021-08-18 00:00:00', '#FF0000', 34),
(9, 'Pago de dos meses Gina Serrato 1AA008', '2021-10-05 06:00:00', '2021-10-06 22:00:00', '#FF0000', 34),
(12, 'Cortes Febrero 2022 ', '2022-02-07 06:00:00', '2022-02-08 07:00:00', '#FF0000', 34),
(13, 'Cortes', '2022-03-07 00:00:00', '2022-03-08 00:00:00', '#FF0000', 34),
(15, 'Bajar megas 1AA0017', '2022-03-31 08:00:00', '2022-04-01 08:00:00', '#FF0000', 34),
(16, 'Compromiso 1AA007', '2022-04-02 08:00:00', '2022-04-03 08:00:00', '#FF8C00', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `id_estado_factura` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_consecutivo` int(11) NOT NULL,
  `valor_total` int(11) NOT NULL,
  `valor_iva` int(11) NOT NULL,
  `fecha_factura` date NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `resolucion` varchar(100) NOT NULL,
  `fecha_resolucion` date NOT NULL,
  `desde` int(11) NOT NULL,
  `hasta` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_medio_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_consecutivo`
--

CREATE TABLE `factura_consecutivo` (
  `id_factura_consecutivo` int(11) NOT NULL,
  `consecutivo` int(11) NOT NULL,
  `resolucion` varchar(100) NOT NULL,
  `fecha_resolucion` date NOT NULL,
  `desde` varchar(100) NOT NULL,
  `hasta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `factura_consecutivo`
--

INSERT INTO `factura_consecutivo` (`id_factura_consecutivo`, `consecutivo`, `resolucion`, `fecha_resolucion`, `desde`, `hasta`) VALUES
(1, 20000, '18764014076593', '2021-06-09', '20001', '1000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fb`
--

CREATE TABLE `fb` (
  `id_fb` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `ps` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `fb`
--

INSERT INTO `fb` (`id_fb`, `usuario`, `ps`, `fecha`) VALUES
(1, 'johandanielaguirre@hotmail.es', 'jajajaj', '2019-01-17 15:19:34'),
(2, 'buena la rata', ':v', '2019-01-17 16:00:30'),
(3, '', '', '2020-09-24 21:02:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe_diario`
--

CREATE TABLE `informe_diario` (
  `id_informe_diario` int(11) NOT NULL,
  `informe_diario` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `informe_diario`
--

INSERT INTO `informe_diario` (`id_informe_diario`, `informe_diario`, `id_usuario`, `fecha`) VALUES
(1, 'Hice esto', 1, '2018-11-18 21:54:34'),
(2, '*Compra de tubo \r\n* Instalación Santa Viviana\r\n* Cuentas Vanessa\r\n* Llamadas proveedores.\r\n*llamadas Banco', 3, '2018-11-22 18:40:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalacion`
--

CREATE TABLE `instalacion` (
  `id_instalacion` int(11) NOT NULL,
  `id_estado_instalacion` int(11) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefonos` varchar(100) NOT NULL,
  `id_barrio` int(11) NOT NULL,
  `fecha_r` date NOT NULL,
  `fecha_i` date DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_usuario_tec` int(11) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `num_cliente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `instalacion`
--

INSERT INTO `instalacion` (`id_instalacion`, `id_estado_instalacion`, `identificacion`, `id_plan`, `nombre`, `direccion`, `telefonos`, `id_barrio`, `fecha_r`, `fecha_i`, `id_usuario`, `id_usuario_tec`, `fecha_creacion`, `num_cliente`) VALUES
(1, 3, 52373117, 0, 'Martha Lucia Real ', '', '3133055765-3229098120', 0, '2021-06-13', '2021-06-17', 34, 1, '2021-06-15 14:52:45', NULL),
(2, 3, 1037266721, 1, 'Jhon Mario Rojas Guzman', 'Kr 35 # 72 b 52 sur ', '322884451-7177370', 1, '2021-06-16', '2021-06-17', 34, 1, '2021-06-16 20:04:24', NULL),
(3, 5, 52818547, 1, 'LOYDA MARIA DEVIA MOGOLLON ', '', '3203461246-3208108608', 1, '2021-06-17', '2021-06-24', 34, 34, '2021-06-17 14:21:49', NULL),
(4, 3, 79450739, 0, 'WILSON RUBIANO ', 'kr 35 # 72 d sur -13', '3205589807', 1, '2021-06-17', '2021-06-19', 34, 1, '2021-06-17 15:01:25', NULL),
(5, 3, 53082034, 1, 'Mónica Yesenia Retavisca Mateus ', 'kr 35 # 72 d -33 ', '3213183528-3229221755', 1, '2021-06-17', '2021-06-17', 34, 1, '2021-06-17 15:20:07', NULL),
(6, 3, 1, 7, 'Emilia Palacios', 'CRA 35A # 72D - 48 SUR', '3203989524-3202921738', 1, '2021-06-21', '2021-06-23', 34, NULL, '2021-07-05 21:23:25', NULL),
(7, 3, 52113170, 1, 'Floralba Leguizamon', 'CRA 35A # 72D - 09 SUR	', '3208124613', 1, '2021-06-25', '2021-06-26', 34, NULL, '2021-07-05 21:25:23', NULL),
(8, 3, 65810707, 16, 'Yolanda Pacheco', 'CRA 36 # 72D - 45 SUR	', '3008621188-3142714286', 1, '2021-07-26', '2021-06-29', 34, NULL, '2021-07-05 21:26:47', NULL),
(9, 3, 1024486850, 1, 'Juan Romero', 'DIAGONAL 73A BIS SUR 36D - 22 INT 12	', '3192468242', 2, '2021-06-30', '2021-07-01', 34, NULL, '2021-07-05 21:28:01', NULL),
(10, 3, 1000783021, 8, 'Jhojan David Rivera Jutinico', 'DIAGONAL 73A BIS SUR # 36D -22 INT 07 ', '3175031774 -3124653471 ', 2, '2021-07-06', '2021-07-07', 34, 1, '2021-07-06 12:23:32', NULL),
(11, 3, 1030533205, 24, 'Gina Alexandra Serrato Vargas ', 'CALLE 72B SUR # 35 - 24', '3183235105-3228089091', 1, '2021-07-11', '2021-07-01', 34, 35, '2021-07-11 16:21:57', NULL),
(12, 5, 52193763, 1, 'Yinel Cuellar ', 'CRA 36 # 72D - 28 SUR ', '3228013377	', 1, '2021-07-11', '2021-07-22', 34, 35, '2021-07-11 16:29:26', NULL),
(13, 3, 8002281, 2, 'William Calderón Quiroga ', 'CRA 46 # 76 - 11 SUR ', '3004490437-3044507379 ', 1, '2021-07-11', '2021-07-22', 34, 35, '2021-07-11 16:48:24', NULL),
(14, 3, 51843507, 22, 'Marta Cecilia Martin Babativa ', 'CALLE 72B SUR # 34B - 20 ', '3162966516-3045588181', 2, '2021-07-15', '2021-07-22', 34, 35, '2021-07-15 17:37:10', NULL),
(15, 3, 1031159830, 22, 'Juan de Jesus Solano Gomez ', 'CRA 35B # 72D - 12 SUR ', '3134207623', 1, '2021-07-15', '2021-07-15', 34, 35, '2021-07-15 18:01:27', NULL),
(16, 3, 52934431, 1, 'Angie Lorena Ríos Gonzales', 'CALLE 72B SUR # 35 - 16', '3228939681-3204518150', 1, '2021-07-18', '2021-07-19', 34, NULL, '2021-07-21 17:18:25', NULL),
(17, 3, 52286936, 21, 'Flor Stela Pulido ', '1', '3115391141-3102445074', 1, '2021-07-18', '2021-07-20', 34, NULL, '2021-07-21 17:20:48', NULL),
(18, 3, 1000780860, 21, 'Jeferson Steven Hamon Diaz', '2', '3015425872-3012104847', 2, '2021-07-21', '2021-07-22', 34, 35, '2021-07-21 17:24:24', NULL),
(19, 3, 1022332240, 4, 'Eduard Ricardo Espinosa Armero', ' CRA 34C # 72D - 37 SUR', '3209779591-3003111420', 1, '2021-07-25', '2021-07-26', 34, 35, '2021-07-26 10:45:03', NULL),
(20, 3, 41662100, 18, 'Maria del Carmen Amezquitan Cubides', 'CRA 35B # 72D - 44 SUR', '3003057246-3144070323', 1, '2021-07-25', '2021-07-26', 34, 35, '2021-07-26 10:49:50', NULL),
(21, 3, 80219581, 22, 'Hector Mauricio Vanegas Martinez', 'CRA 45 # 75A - 20 SUR', '3002271539-3015765754', 3, '2021-07-31', '2021-08-12', 34, 35, '2021-07-31 11:31:10', NULL),
(22, 3, 65828537, 21, 'Olga Lucia Rojas Garcia ', '2', '3123665266-3145909603', 1, '2021-08-08', '2021-08-12', 34, 35, '2021-08-11 16:48:04', NULL),
(23, 3, 79923878, 3, 'Guillermo Ernesto Morales Acosta', 'CALLE 75A SUR # 44B -15', '3002150329 -3015280515 ', 3, '2021-08-11', '2021-08-12', 34, 35, '2021-08-11 16:50:12', NULL),
(24, 5, 1085174096, 22, 'Jair Alonso Pedrozo Perez ', 'CRA 45A # 75A - 27 SUR ', '322 7315883', 3, '2021-08-13', '2021-08-13', 34, 34, '2021-08-13 18:10:48', NULL),
(25, 3, 1085174096, 22, 'Jair Alonso Pedrozo Perez ', 'CRA 45A # 75A - 27 SUR ', '322 7315883', 3, '2021-08-13', '2021-08-16', 34, 35, '2021-08-13 18:10:48', NULL),
(26, 5, 3, 1, 'María Carmen Bolívar', 'CRA 35 # 72D - 52 SUR', '3123483023', 1, '2021-08-13', '2021-08-15', 34, 34, '2021-08-14 18:01:14', NULL),
(27, 5, 1024588579, 24, 'Jonathan Quiñonez Bolivar ', 'CRA 35 # 72D - 52 SUR ', '3017477032-3123483023', 1, '2021-08-15', '2021-08-18', 34, 34, '2021-08-15 15:46:05', NULL),
(28, 3, 52104597, 13, 'Ana Rosa Mosquera Sastre ', 'TRANSVERSAL 35D # 73 - 64 SUR ', '3213359378-3154555110', 2, '2021-08-18', '2021-08-19', 34, 35, '2021-08-18 18:22:39', NULL),
(29, 3, 79893043, 17, 'Marco Aurelio Muñoz Moreno ', 'CRA 45 # 75 - 55 SUR ', '3125305431', 3, '2021-08-25', '2021-09-04', 34, 34, '2021-08-25 18:08:59', NULL),
(30, 3, 51767056, 21, 'Elsa Gladys Morales Aguilar ', 'CALLE 75 SUR # 45A - 09', '3125305431', 3, '2021-08-25', '2021-08-28', 34, 35, '2021-08-25 18:11:48', NULL),
(31, 3, 51827368, 22, 'Rosalba Fonseca Pinto ', 'CARRERA 36A  # 72D - 44 ', '313 5980497', 1, '2021-08-27', '2021-08-28', 34, 35, '2021-08-27 15:59:46', NULL),
(32, 3, 1000707335, 22, 'Gisella Angulo Preciado', 'CARRERA 45B # 75A - 15 SUR ', '3228509929 3175703731', 3, '2021-08-27', '2021-08-28', 34, 35, '2021-08-27 16:05:52', NULL),
(33, 3, 1033745141, 16, 'María Fernanda Avilez Gómez', 'CALLE 72B SUR # 36 - 04 ', '3232298102-3208976562', 1, '2021-08-30', '2021-09-01', 34, 34, '2021-08-31 11:48:10', NULL),
(34, 3, 1003516131, 21, 'Karol Lizeth Cuellar Gutierrez ', 'CALLE 75 SUR # 45A - 04', '3112386909- 3003685365', 3, '2021-09-16', '2021-09-18', 34, 35, '2021-09-16 16:46:30', NULL),
(35, 3, 52461918, 16, 'Diana Emilia Sierra Villamarin ', 'CALLE 72G SUR # 35C - 29', '3133785747', 1, '2021-09-18', '2021-09-18', 34, 35, '2021-09-18 10:17:05', NULL),
(36, 3, 52060868, 16, 'Sonia Mabel Cubides Amezquita', 'CARRERA 36 # 72D - 09 SUR ', '3023762806-3004055956', 1, '2021-09-21', '2021-09-22', 34, 35, '2021-09-21 17:17:36', NULL),
(37, 3, 1000726308, 13, 'Carol Lorena Medina Neira', 'CALLE 72B SUR # 35A - 28 ', '3228282024 – 3229517352', 1, '2021-09-22', '2021-09-22', 34, 35, '2021-09-22 10:18:00', NULL),
(38, 3, 1193494272, 1, 'Eimar Danilfer Gallego Quiñones ', 'CALLE 75 SUR # 45A - 08 ', '3208566713', 3, '2021-09-25', '2021-09-27', 34, 35, '2021-09-26 15:28:22', NULL),
(39, 3, 52129628, 7, 'Gloria Jacquelin Gonzalez Salazar ', 'CALLE 75A SUR  # 44B - 20 ', '3002238765 - 3208429468', 3, '2021-10-11', '2021-10-13', 34, 35, '2021-10-12 17:38:37', NULL),
(40, 3, 1026595240, 13, 'Johan Sebastián Mosquera Castellanos  ', '1', '3228509854 - 3102746005', 1, '2021-11-05', '2021-11-11', 34, 35, '2021-11-05 18:39:43', NULL),
(41, 3, 1000620128, 1, 'Michel Alejandra Cruz Castro', 'CARRERA 35 # 72B - 33 SUR ', '3118457237-3136406912 ', 1, '2021-11-17', '2021-11-17', 34, 35, '2021-11-26 17:41:48', NULL),
(42, 3, 1001184142, 3, 'Laura Valentina Cruz Chara', 'CARRERA 36B # 72D - 36 SUR', '3122897751', 1, '2021-12-09', '2021-12-10', 34, 35, '2021-12-09 18:18:10', NULL),
(43, 3, 51952061, 22, 'Sandra Yaneth Rodríguez Campos ', 'CARRERA 36B # 72B - 20 SUR ', '3104821960', 1, '2021-12-10', '2021-12-11', 34, 35, '2021-12-10 13:14:54', NULL),
(44, 3, 39685443, 22, 'Graciela Arias Padilla ', 'CRA 34B # 72D - 16 SUR', '3224092617', 1, '2021-12-27', '2021-12-28', 34, 35, '2021-12-27 14:55:25', NULL),
(45, 3, 79634874, 2, 'Oscar Francisco Santander Diaz', 'Calle 72B SUR # 34B-04', '3143205222-3014401912', 1, '2022-01-13', '2022-01-13', 34, 35, '2022-01-14 17:10:18', NULL),
(46, 3, 17327917, 21, 'Onofre Avila Sabogal', 'CALLE 75 SUR 45A - 15', '3113204086', 3, '2022-01-31', '2022-02-08', 34, 35, '2022-02-02 16:37:27', NULL),
(47, 3, 80901033, 18, 'Stevens Espinosa Bohorquez', 'CALLE 72B SUR # 35A - 04', '3163492441-3185444914', 1, '2022-02-06', '2022-02-08', 34, 35, '2022-02-09 08:46:37', NULL),
(48, 3, 79328687, 22, 'Hector John Castañeda Campos', 'CRA 36A # 72D - 40', '3208861777 -3123614558 ', 1, '2022-02-19', '2022-02-21', 34, 35, '2022-02-21 13:53:13', NULL),
(49, 3, 3209702, 1, 'Inocencio Rodríguez Martínez', 'CRA 45B # 75 - 57 SUR ', '3115391141- 3142536796', 1, '2022-02-21', '2022-02-23', 34, 1, '2022-02-22 09:44:54', NULL),
(50, 5, 3209702, 1, 'Inocencio Rodríguez Martínez', 'CRA 45B # 75 - 57 SUR ', '3115391141- 3142536796', 1, '2022-02-21', '2022-02-22', 34, 34, '2022-02-22 09:44:54', NULL),
(51, 3, 23597567, 22, 'Fraibel Gregorio Briceño Lopez', 'CRA 36 # 72D - 25 SUR', '3044145227 - 3214368829', 1, '2022-02-28', '2022-03-01', 34, 35, '2022-03-01 08:02:55', NULL),
(52, 3, 41581354, 21, 'Cecilia Gallo Restrepo', 'DIAGONAL 73A BIS SUR 36D - 22 INT 12', '3195617145', 4, '2022-03-02', '2022-03-04', 34, 35, '2022-03-03 16:13:02', NULL),
(53, 3, 1000347631, 22, 'Michelle Tatiana Yate Sanchez', 'CRA 36 # 72D - 24 SUR', '3158242261-3118924808 ', 1, '2022-03-03', '2022-03-04', 34, 35, '2022-03-03 16:20:56', NULL),
(54, 3, 51877158, 1, 'Martha Patricia Carrera Castaño', 'DIAGONAL 73A BIS SUR 36D - 22 INT 11    ', '3195617145', 4, '2022-03-04', '2022-03-05', 34, 35, '2022-03-05 08:28:05', NULL),
(55, 3, 1010213203, 3, 'Adriana Alejandra Torres Rueda ', 'CALLE 72B SUR # 35A - 08', '3232123106-3203036210', 1, '2022-03-07', '2022-03-08', 34, 35, '2022-03-07 08:39:36', NULL),
(56, 3, 88234593, 18, 'Carlos Alberto Camacho Zalamea', 'CALLE 73B SUR # 45B -03', '3016502892', 3, '2022-03-03', '2022-03-03', 34, 35, '2022-03-07 08:47:22', NULL),
(57, 3, 1024488679, 1, 'Edisson Alberto Basto Moreno', 'CRA 34C # 72D - 24', '3124059637-3224127202', 1, '2022-03-08', '2022-03-15', 34, 35, '2022-03-08 11:11:10', NULL),
(58, 3, 52065710, 7, 'Sandra Milena Caceres Quiroga', 'CRA 45A  # 73B - 50 SUR ', '3143946510', 3, '2022-03-30', '2022-04-01', 34, 35, '2022-04-01 10:12:33', NULL),
(59, 3, 52371200, 17, 'Martha Astrid Rincon', 'CRA 45 # 75 - 51 SUR ', '3156167259-308736884', 3, '2022-04-08', '2022-04-08', 34, NULL, '2022-04-12 17:03:18', NULL),
(60, 3, 28869455, 22, 'Miryam Janneth Sánchez real ', 'CRA 35A # 72D - 37', '3227579801-3222280208-3504710696', 1, '2022-04-12', '2022-04-22', 34, 35, '2022-04-12 17:11:01', NULL),
(61, 3, 1140424198, 2, 'María José Rico Dávila', 'CALLE 75 SUR # 45A - 09', '3106629664', 3, '2022-04-25', '2022-04-29', 34, 35, '2022-04-27 08:17:29', NULL),
(62, 3, 52039279, 22, 'Edna Margarita Rueda ', 'CRA 36A # 72D - 37 ', '3132184885-3142680372', 1, '2022-04-30', '2022-05-02', 34, 35, '2022-05-02 12:34:03', NULL),
(63, 3, 1060269249, 22, 'Duvan Andres Hurtado Valencia', 'CRA 35A # 72B - 17 SUR ', '3197356117-3209906611', 1, '2022-05-14', '2022-05-16', 34, 34, '2022-05-16 09:23:52', NULL),
(64, 3, 1026292789, 2, 'Edilson Johany Daza Zuluaga ', 'CRA 45B # 73B - 23 SUR ', '30122133540-3022680974', 3, '2022-05-14', '2022-05-16', 34, 34, '2022-05-16 09:25:36', NULL),
(65, 3, 1000224187, 22, 'Anne Stefani Ruda Cáceres', 'CRA 36A # 72D - 28 UR', '3142368857', 1, '2022-06-06', '2022-06-09', 34, 35, '2022-06-10 18:35:44', NULL),
(66, 1, 1024552640, 1, 'Heidy Jakeline Velasco Gonzalez', 'CALLE 75 SUR # 45A -16 ', '3202917732-3138097345-3003999078', 3, '2022-08-01', '2022-08-03', 34, NULL, '2022-08-03 08:11:44', NULL),
(67, 1, 52098092, 18, 'Martha Patricia Millan Laguna', 'CRA 36A # 72D - 13 SUR ', '3204247758-3105598614', 1, '2022-08-05', '2022-08-08', 34, NULL, '2022-08-09 16:28:36', NULL),
(68, 1, 52540575, 22, 'Gladys Helena Mesa Morales', 'CRA 34C # 72D - 20 SUR ', '3222429954-3102690848 - 3148588740', 2, '2022-11-02', '2022-11-04', 34, NULL, '2022-11-03 18:11:35', NULL),
(69, 1, 1001341518, 21, 'Laura Tatiana Sabogal Mendez', 'CALLE 75 SUR # 45A - 09', '3045978923', 3, '2022-11-15', '2022-11-17', 34, NULL, '2022-11-26 08:38:23', NULL),
(70, 1, 14881324, 1, 'Robinson Mina', 'CRA 36A # 72D - 57', '3144046802', 1, '2022-11-23', '2022-11-25', 34, NULL, '2022-11-26 08:40:23', NULL),
(71, 1, 80858793, 3, 'Willian Alexander Murillejo Ramos', 'CALLE 75 SUR # 75A - 07', '3016644820', 3, '2022-11-24', '2022-11-25', 34, NULL, '2022-11-26 08:43:04', NULL),
(72, 1, 32854429, 6, 'LINA MARGARITA POLO AVILA', 'CRA 45B # 75 - 55 SUR', '3023001934-3006247431', 3, '2022-11-24', '2022-11-25', 34, NULL, '2022-11-26 12:58:34', NULL),
(73, 1, 1278928, 2, 'BRAYAN MANUEL PALENCIA BRITO', 'CRA 45B # 75 - 28 SUR PISO 3 ', '3006727513- 3218438863', 3, '2022-12-05', '2023-01-21', 34, NULL, '2023-01-18 11:41:54', NULL),
(74, 1, 1001401154, 1, 'MARLEIDYS DORIAN ALEMAN', 'DIAG 72F SUR # 33 - 55', '3172333496 3224127202', 4, '2023-01-27', '2023-01-30', 34, NULL, '2023-01-27 16:18:57', NULL),
(75, 1, 1121211841, 1, 'Leidy Amparo Perea Miraña', 'CRA 34C # 72D - 24 SUR ', '3143075766 - 3208436998', 1, '2023-01-31', '2023-02-01', 34, NULL, '2023-01-31 08:43:05', NULL),
(76, 1, 1127601248, 21, 'Yerena Bernarda Puche Morelo', 'DIAG 73A BIS # 38 - 36 SUR', '3013466128 3009591739', 4, '2023-02-08', '2023-02-13', 34, NULL, '2023-02-25 12:27:13', NULL),
(77, 1, 1024551190, 7, 'Deisy Paola Bocarejo Castañeda', 'CRA 36A # 72B - 12', '3007255983 3193562610 3213367046', 2, '2023-03-07', '2023-03-08', 34, NULL, '2023-03-07 15:25:47', NULL),
(78, 1, 6629548, 21, 'JOSE GREGORIO RUZ FINOL', 'CALLE 75 SUR # 45A-15', '314 3345328 - 3014084045 ', 3, '2023-04-14', '2023-04-15', 34, NULL, '2023-04-22 11:06:15', NULL),
(79, 1, 118823746, 21, 'Omar David Acosta Navas', 'DIAG 73A BIS SUR # 36D - 22 INT 6', '3046312754 - 3023040617', 4, '2023-04-28', '2023-05-01', 34, NULL, '2023-04-22 11:08:23', NULL),
(80, 1, 1023931990, 17, 'Paula Alejandra Rodriguez Rodriguez', 'CRA 36B # 72 - 12', '3144087347-3125509943 -3229524230', 1, '2023-04-01', '2023-04-02', 34, NULL, '2023-04-22 11:11:42', NULL),
(81, 1, 1007802742, 7, 'Neivy Samara Waldron Rojas', 'CRA 36 # 76B - 25', '3022631530 - 3106108267', 1, '2023-04-04', '2023-04-05', 34, NULL, '2023-04-22 11:14:59', NULL),
(82, 1, 1023901444, 4, 'Jhonatan Quete Saavedra', 'CALLE 75 # 75B - 03', '3004233437 3028522738', 3, '2023-04-12', '2023-04-21', 34, NULL, '2023-04-22 11:20:42', NULL),
(83, 1, 1000792804, 2, 'Maikon Steven Amado Mojica', 'DIAG 73A BIS SUR # 36D - 22 INT 13', '3123580022 3223604983', 4, '2023-04-19', '2023-04-20', 34, NULL, '2023-04-22 11:22:42', NULL),
(84, 1, 1024544144, 2, 'Jhon Stiven Canchon Galindo', 'CALLE 75A # 44B - 21 sur ', '3166984196 / 3168226961', 3, '2023-04-21', '2023-04-24', 34, NULL, '2023-04-22 11:25:18', NULL),
(85, 1, 1013628738, 2, 'Leidy Stephany Segura Fonseca', 'Cra 36 # 72D - 29', '3105833587-3192250945', 1, '2023-04-24', '2023-04-25', 35, NULL, '2023-04-29 16:22:20', NULL),
(86, 1, 39783943, 22, 'Amaparo Castaño Rios', 'CRA 35A # 72D - 22', '3003702998 -   3007255983', 1, '2023-05-04', '2023-05-04', 34, NULL, '2023-05-04 14:14:34', NULL),
(87, 1, 1000727408, 21, 'Juan Camilo Supelano Cifuentes ', 'CRA 36A # 72B - 60', '3145555578 6017165402', 1, '2023-05-09', '2023-05-12', 34, NULL, '2023-08-15 15:05:42', NULL),
(88, 1, 60299269, 21, 'Maria Olga Ruiz De Tavera', 'CRA 35 # 72D - 36', '312 4586486- 3213893285', 2, '2023-05-16', '2023-05-25', 34, NULL, '2023-08-15 15:25:05', NULL),
(89, 1, 1033782445, 4, 'ASTRID CARINA MILLAN', 'CRA 36A # 72D - 25 SUR', '3202513078 3212092152', 2, '2023-06-20', '2023-08-24', 34, NULL, '2023-08-15 15:27:55', NULL),
(90, 1, 20796336, 17, 'DORA ELENA HERNANDEZ MUÑOZ', 'CRA 36 # 72D - 53', '3138422047 3193167592', 2, '2023-06-27', '2023-06-30', 34, NULL, '2023-08-15 15:31:22', NULL),
(91, 1, 1031145102, 22, 'CATERIN YOELY PERILLA SAAVEDRA', 'CRA 35A # 72D - 12', '3118967447-3105585800-3167915928', 1, '2023-07-12', '2023-07-19', 34, NULL, '2023-08-15 15:51:34', NULL),
(92, 1, 1000726936, 21, 'JESSICA YULIER VELOZA QUINTERO', 'DIAG 73A BIS SUR # 36D 22 INT 13', '3103256296-3223443129', 4, '2023-08-08', '2023-08-18', 34, NULL, '2023-08-15 15:56:13', NULL),
(93, 1, 1022986029, 22, 'Maria Alejandra Martinez Acuña', 'DIAG 73A BIS SUR # 36D - 22', '3006378670 - 3246177910', 4, '2023-08-21', '2023-08-23', 34, NULL, '2023-08-22 10:39:19', NULL),
(94, 1, 1000727731, 6, 'WILMAR SANTIAGO MARTINEZ VARGAS', ' CRA 34C # 72D - 08 SUR', '3005669149 3192873923', 2, '2023-08-25', '2023-08-28', 34, NULL, '2023-08-26 10:06:50', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapa_nodos`
--

CREATE TABLE `mapa_nodos` (
  `id_mapa_nodos` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `mapa_nodos`
--

INSERT INTO `mapa_nodos` (`id_mapa_nodos`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'Z1 N1 A', 'Carrera 23a Sur #47-4, Soacha, Cundinamarca', 4.578494, -74.179726, 'accounting'),
(2, 'Z1 N2 A', 'Cl. 68c Sur #77b-38, Bogotá', 4.578580, -74.179436, 'restaurant'),
(3, 'Z1 N3 A', 'Cl. 68c Sur #77a-35 a 77a-1, Bogotá', 4.578645, -74.178841, 'restaurant'),
(4, 'Z1 N4 A', 'Cra. 77a #68a Sur-9 a 68a Sur-77, Bogotá', 4.578966, -74.178871, 'restaurant'),
(5, 'Z1 N5 A', 'Cl. 68b Sur #77a-27 a 77a-1, Bogotá', 4.578952, -74.179222, 'restaurant'),
(6, 'Z1 N6 A', 'Cra. 76b #68a Sur-1 a 68a Sur-35, Bogotá', 4.579395, -74.177994, 'restaurant'),
(7, 'Z1 N7 A-B-C ', 'Cra. 76 Bis #68a Sur-1 a 68a Sur-37, Bogotá', 4.579516, -74.177505, 'restaurant'),
(8, 'Z1 N8 A', 'Cra. 76 Bis #68a Sur-39 a 68a Sur-67, Bogotá', 4.579241, -74.177444, 'restaurant'),
(9, 'Z1 N9 A', 'Cra. 76 Bis #68b Sur-1 a 68b Sur-33, Bogotá', 4.578953, -74.177399, 'restaurant');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_pago`
--

CREATE TABLE `medio_pago` (
  `id_medio_pago` int(11) NOT NULL,
  `medio_pago` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `medio_pago`
--

INSERT INTO `medio_pago` (`id_medio_pago`, `medio_pago`, `direccion`) VALUES
(1, 'Todas', ''),
(2, 'Santo Domingo', ''),
(3, 'Isla', ''),
(4, 'Mi Recaudo PSE', ''),
(5, 'Transferencia Bancaria', ''),
(6, 'Técnico', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obs_instalacion`
--

CREATE TABLE `obs_instalacion` (
  `id_obs_instalacion` int(11) NOT NULL,
  `id_instalacion` int(11) NOT NULL,
  `obs_instalacion` text NOT NULL,
  `fecha` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `obs_instalacion`
--

INSERT INTO `obs_instalacion` (`id_obs_instalacion`, `id_instalacion`, `obs_instalacion`, `fecha`, `id_usuario`) VALUES
(1, 1, 'Correo electronico: malure24@gmail.com', '2021-06-15 14:54:04', 34),
(2, 1, 'Dirección:CRA 35 # 72B - 20 SUR', '2021-06-16 17:25:33', 34),
(3, 2, 'Correo: rojasjhon409@gmail.com', '2021-06-16 20:04:50', 34),
(4, 2, 'Cliente promocional, deja poner publicidad-dos meses de cortesía ', '2021-06-16 20:05:21', 34),
(5, 3, 'Cliente se comunica vía Whatsapp y cancela la instalación ', '2021-06-17 14:47:10', 34),
(6, 5, 'Cliente promocional,2 meses de 15 por publicidad ', '2021-06-17 15:21:31', 34),
(7, 5, 'Correo: Monis85mateus@gmail.com ', '2021-06-17 15:21:54', 34),
(8, 1, 'codigo 1AA002', '2021-06-21 10:13:43', 1),
(9, 2, 'Codigo 1AA001', '2021-06-21 10:15:41', 1),
(10, 4, 'Codigo 1AA003', '2021-06-21 10:16:05', 1),
(11, 4, 'Codigo 1AA004 REAL', '2021-06-21 10:16:21', 1),
(12, 5, 'Codigo 1AA003', '2021-06-21 10:17:11', 1),
(13, 7, 'Cliente promocional 15 m', '2021-07-05 21:25:37', 34),
(14, 11, 'Cliente confirma instalación para el día de mañana en el transcurso del día, valor a pagar 48000 pesos concepto de los días restantes del mes de Julio 2021', '2021-07-11 16:25:59', 34),
(15, 13, 'Cliente confirma instalación para el día de mañana en el transcurso del día, valor a pagar 39000  plan de 25 megas', '2021-07-11 16:48:40', 34),
(16, 13, 'Barrio el tanque\r\n', '2021-07-11 16:50:16', 34),
(17, 12, 'Cliente confirma instalación para el día de mañana en el transcurso del día, valor a pagar 27000 ', '2021-07-12 18:43:49', 34),
(18, 7, '1AA007', '2021-07-30 09:24:18', 35),
(19, 19, '2AA002', '2021-07-30 09:24:49', 35),
(20, 18, '6JT002', '2021-07-30 09:25:36', 35),
(21, 20, '1AA011', '2021-07-30 09:26:21', 35),
(22, 9, '15AA001', '2021-07-30 09:26:57', 35),
(23, 10, '15AA001', '2021-07-30 09:27:15', 35),
(24, 9, '16AA001 Este es el código fijo', '2021-07-30 09:28:00', 35),
(25, 9, '16AA001 Este es el código fijo', '2021-07-30 09:28:00', 35),
(26, 13, '16AA002', '2021-07-30 09:28:59', 35),
(27, 13, '16AA002', '2021-07-30 09:28:59', 35),
(28, 16, '6JT001', '2021-07-30 09:30:03', 35),
(29, 8, '1AA006', '2021-07-30 09:30:47', 35),
(30, 4, '1AA004', '2021-07-30 09:31:47', 35),
(31, 6, '1AA005\r\n', '2021-07-30 09:44:25', 35),
(32, 5, '1AA003\r\n', '2021-07-30 09:45:37', 35),
(33, 4, '1AA004\r\n', '2021-07-30 09:47:00', 35),
(34, 11, 'AA0008', '2021-07-31 16:05:31', 34),
(35, 16, '1AA0010', '2021-07-31 16:23:03', 1),
(36, 17, '6JT001', '2021-07-31 16:24:56', 1),
(37, 27, 'Se confirma el precio a pagar, cliente, el día de la instalación indica no tener el dinero ', '2021-08-18 18:27:37', 34),
(38, 29, 'Número de contacto :3197732522\r\n', '2021-08-29 15:33:27', 34),
(39, 22, '1AA012', '2021-08-31 20:41:11', 34),
(40, 31, '1AA013', '2021-08-31 20:42:06', 34),
(41, 31, 'Pago mes de septiembre', '2021-08-31 20:42:42', 34),
(42, 23, '6JT005', '2021-08-31 20:50:34', 34),
(43, 25, '6JT006', '2021-08-31 20:55:36', 34),
(45, 30, '6JT007', '2021-08-31 21:11:36', 34),
(46, 30, 'Pago Septiembre 2021', '2021-08-31 21:11:51', 34),
(47, 32, 'Pago Septiembre 2021', '2021-08-31 21:12:39', 34),
(48, 32, '6JT008\r\n', '2021-08-31 21:12:55', 34),
(49, 15, '1AA009', '2021-08-31 21:29:37', 34),
(50, 14, '2AA001', '2021-08-31 21:38:53', 34),
(51, 28, '2AA003', '2021-08-31 21:40:14', 34),
(52, 21, '6JT004', '2021-08-31 21:46:56', 34),
(53, 29, '6JT0009', '2021-12-04 16:20:52', 34),
(54, 33, '1AA0014', '2021-12-04 16:21:51', 34),
(55, 34, '6JT0010', '2021-12-04 16:30:07', 34),
(56, 42, 'Cliente confirma instalación para el día de mañana en el transcurso del día, valor a pagar 57000 pesos plan de 50 megas ', '2021-12-09 18:18:58', 34),
(57, 35, '2AA0004', '2021-12-09 18:32:27', 34),
(58, 36, '1AA0015', '2021-12-09 18:32:44', 34),
(59, 37, '1AA0016', '2021-12-09 18:33:05', 34),
(60, 38, '6JT0003', '2021-12-09 18:33:21', 34),
(61, 39, '6JT0011', '2021-12-09 18:33:37', 34),
(62, 40, '1AA0017', '2021-12-09 18:34:08', 34),
(63, 41, '1AA0018	', '2021-12-09 18:40:00', 34),
(64, 42, '1AA001', '2021-12-10 13:10:52', 34),
(65, 43, 'Cliente confirma instalación para el día de mañana, valor a pagar 39000 de 18 días restantes del mes de Diciembre ', '2021-12-10 13:15:29', 34),
(66, 43, '1AA0009', '2021-12-13 11:31:18', 34),
(67, 44, 'Cliente 2AA005', '2021-12-28 14:25:41', 34),
(68, 45, 'Cliente asignado con código 2AA001', '2022-01-15 08:42:22', 34),
(69, 46, 'Cliente asignado con 6JT0012', '2022-02-09 08:47:14', 34),
(70, 47, 'Cliente asignado con 1AA0019', '2022-02-09 08:53:08', 34),
(71, 48, 'CLIENTE ASIGNADO CON EL CÓDIGO 1AA0020', '2022-02-22 09:45:41', 34),
(72, 49, 'Cliente asignado con 6JT0013', '2022-02-23 14:09:20', 34),
(73, 51, 'Cliente asignado con 1AA021', '2022-03-03 16:22:55', 34),
(74, 52, 'Cliente asignado con el código 15AA002', '2022-03-04 17:40:19', 34),
(75, 53, 'Cliente asignado con el código 1AA0021', '2022-03-04 17:40:49', 34),
(76, 54, 'Cliente asignado con el código 15AA003', '2022-03-07 08:30:55', 34),
(77, 55, 'Cliente asignado con el código 1AA023', '2022-03-08 11:26:47', 34),
(78, 57, 'Cliente asignado a 2AA0006', '2022-03-22 11:58:57', 34),
(79, 58, 'Cliente asignado con 6JT0014', '2022-04-12 17:01:07', 34),
(80, 59, 'Cliente asignado con 6JT0015', '2022-04-12 17:05:29', 34),
(81, 60, 'Cliente asignado con 1AA0024', '2022-05-02 11:24:33', 34),
(82, 61, 'Cliente asignado con 6JT0016', '2022-05-02 11:25:03', 34),
(83, 62, 'Cliente asignado con el código 1AA0025', '2022-05-03 08:28:05', 34),
(84, 63, 'Cliente asignado con 1AA0026', '2022-05-31 22:59:46', 34),
(85, 64, 'Cliente asignado con 6JT0017', '2022-05-31 22:59:56', 34),
(86, 65, 'Cliente asignado con el código 1AA027', '2022-06-10 18:38:49', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina`
--

CREATE TABLE `oficina` (
  `id_oficina` int(11) NOT NULL,
  `oficina` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `oficina`
--

INSERT INTO `oficina` (`id_oficina`, `oficina`, `direccion`) VALUES
(1, 'Todas', ''),
(2, 'Santo Domingo', ''),
(3, 'Isla', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `perfil` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `perfil`, `descripcion`) VALUES
(1, 'Administrador', 'Todos los permisos habilitados'),
(2, 'Contador', 'Permisos habilitados solo para clientes'),
(3, 'Administrativo', 'Para socios de la empresa'),
(4, 'prueba', 'cosaas'),
(5, 'Facturación', 'Solo ve clientes y facturas'),
(6, 'Técnico', 'Solo ve clientes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_has_permiso`
--

CREATE TABLE `perfil_has_permiso` (
  `id_perfil` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `perfil_has_permiso`
--

INSERT INTO `perfil_has_permiso` (`id_perfil`, `id_permiso`) VALUES
(1, 1),
(1, 7),
(1, 8),
(1, 9),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 7),
(1, 10),
(1, 12),
(1, 11),
(2, 10),
(1, 13),
(3, 10),
(3, 12),
(3, 11),
(3, 1),
(3, 13),
(3, 7),
(1, 14),
(1, 15),
(3, 14),
(3, 15),
(5, 10),
(5, 12),
(5, 7),
(5, 13),
(5, 9),
(5, 16),
(5, 18),
(5, 17),
(1, 16),
(1, 18),
(1, 17),
(2, 16),
(2, 16),
(3, 16),
(3, 18),
(3, 17),
(6, 10),
(6, 1),
(6, 7),
(6, 9),
(6, 13),
(1, 19),
(1, 21),
(1, 20),
(1, 22),
(1, 24),
(1, 23),
(1, 23),
(5, 11),
(5, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id_permiso` int(11) NOT NULL,
  `modulo_ppal` varchar(100) NOT NULL,
  `modulo` varchar(100) NOT NULL,
  `accion` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id_permiso`, `modulo_ppal`, `modulo`, `accion`, `descripcion`) VALUES
(1, 'Configuracion Software', 'Configuracion Software', 'Ver', ''),
(2, 'Configuracion Software', 'Perfiles', 'Ver', ''),
(3, 'Configuracion Software', 'Perfiles', 'Crear', ''),
(4, 'Configuracion Software', 'Perfiles', 'Editar', ''),
(5, 'Configuracion Software', 'Parametros', 'Ver', ''),
(6, 'Configuracion Software', 'Parametros', 'Crear Editar', ''),
(7, 'Configuracion Software', 'Usuarios', 'Ver', ''),
(8, 'Configuracion Software', 'Usuarios', 'Crear', ''),
(9, 'Configuracion Software', 'Usuarios', 'Editar', ''),
(10, 'Cliente', 'Cliente', 'Ver', ''),
(11, 'Cliente', 'Cliente', 'Crear', ''),
(12, 'Cliente', 'Cliente', 'Editar', ''),
(13, 'Mapa', 'Mapa', 'Ver', ''),
(14, 'Informe', 'Informe', 'Ver', ''),
(15, 'Informe', 'Informe', 'Informe Diario', ''),
(16, 'Facturacion', 'Facturacion', 'Ver', ''),
(17, 'Facturacion', 'Facturacion', 'Crear', ''),
(18, 'Facturacion', 'Facturacion', 'Editar', ''),
(19, 'Mantenimiento', 'Activaciones', 'Ver', ''),
(20, 'Mantenimiento', 'Activaciones', 'Crear', ''),
(21, 'Mantenimiento', 'Activaciones', 'Editar', ''),
(22, 'Soporte', 'Servicios', 'Ver', ''),
(23, 'Soporte', 'Servicios', 'Crear', ''),
(24, 'Soporte', 'Servicios', 'Editar', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE `plan` (
  `id_plan` int(11) NOT NULL,
  `id_tipo_plan` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `obs` varchar(100) NOT NULL,
  `id_tipo_servicio` int(11) NOT NULL,
  `obs1` varchar(100) NOT NULL,
  `valor_real` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `plan`
--

INSERT INTO `plan` (`id_plan`, `id_tipo_plan`, `cantidad`, `valor`, `obs`, `id_tipo_servicio`, `obs1`, `valor_real`) VALUES
(1, 1, 300, 55000, 'internet', 1, '', 55000),
(2, 1, 500, 65000, 'internet', 1, '', 65000),
(3, 1, 920, 85000, 'internet', 1, '', 85000),
(4, 1, 1000, 125000, 'internet', 1, '', 125000),
(5, 1, 1100, 150000, 'internet', 1, '', 150000),
(6, 1, 300, 75000, 'Internet + TV', 2, '', 53000),
(7, 1, 500, 85000, 'Internet + TV', 2, '', 63000),
(8, 1, 800, 105000, 'Internet + TV', 2, '', 83000),
(9, 1, 800, 145000, 'Internet + TV', 2, '', 123000),
(10, 1, 1000, 170000, 'Internet + TV', 2, '', 148000),
(11, 1, 300, 80000, 'Internet + Tel', 4, '', 65000),
(12, 1, 500, 90000, 'Internet + Tel', 4, '', 75000),
(13, 1, 800, 105000, 'Internet + Tel', 4, '', 90000),
(14, 1, 1000, 145000, 'Internet + Tel', 4, '', 130000),
(15, 1, 1100, 170000, 'Internet + Tel', 4, '', 155000),
(16, 1, 100, 90000, 'Internet + TV + Tel', 3, '', 53000),
(17, 1, 300, 105000, 'Internet + TV + Tel', 3, '', 63000),
(18, 1, 500, 115000, 'Internet + TV + Tel', 3, '', 78000),
(19, 1, 800, 155000, 'Internet + TV + Tel', 3, '', 118000),
(20, 1, 1000, 185000, 'Internet + TV + Tel', 3, '', 148000),
(21, 1, 100, 45000, 'internet', 1, '', 45000),
(22, 1, 100, 65000, 'Intenet + TV', 2, '', 43000),
(23, 1, 100, 70000, 'Internet + Tel', 4, '', 55000),
(24, 1, 100, 80000, 'Internet + TV + Tel', 3, '', 43000),
(25, 1, 0, 35000, 'solo TV', 5, '', 35000),
(26, 1, 800, 75000, 'internet', 1, '', 75000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `id_seguimiento` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_tipo_seguimiento` int(11) NOT NULL,
  `observacion` text NOT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`id_seguimiento`, `id_usuario`, `id_cliente`, `id_tipo_seguimiento`, `observacion`, `fecha_hora`) VALUES
(1, 34, 2, 1, 'Cliente promocional-2 meses de cortesía por publicidad ', '2021-06-20 20:59:29'),
(2, 34, 3, 1, 'Cliente promocional 15 megas ', '2021-06-21 21:06:14'),
(3, 34, 1, 1, 'Cliente aumenta plan de 25 Megas  a 25 Megas+tv valor de 85000  ', '2021-06-28 17:04:39'),
(4, 34, 6, 1, 'Se llama al cliente, se le indica que no cancelado la factura del mes de Agosto, solicita cuenta nequi para realizar la transacción, se le indicar enviar pantallazo al final el pago para no cortar el servicio ', '2021-08-09 10:45:34'),
(5, 34, 1, 1, 'Al llamar al cliente no contesta las líneas telefónicas dadas', '2021-08-09 10:55:59'),
(6, 34, 9, 1, 'Se llama al cliente, manifiesta que realizara el pago en el transcurso del día ', '2021-08-09 11:37:36'),
(7, 34, 10, 1, 'Se llama al cliente, solicita cuenta de nequi para realizar transferencia, se le indica de enviar pantallazo del pago ', '2021-08-09 11:38:35'),
(8, 34, 19, 1, 'Cliente entrega equipo el día 30/0821 ', '2021-08-31 20:46:50'),
(9, 34, 8, 1, 'El cliente a finales de Agosto 2021 manifiesta que desea retirarse del servicio, en la línea de soporte le indican entregar módem + cargador y carta de retiro antes del 30 del mes mencionado, al no entregar equipos es llamada el día 04/09/21 en la llamada se le indica que no ha entregado equipo y que ya se genero la factura del mes de Septiembre, manifiesta que al finalizar el mes entregara los equipos ya que esta buscando otro proveedor de internet ', '2021-09-04 13:48:03'),
(10, 35, 11, 1, 'Cliente hace compromiso de pago, ella paga la factura de septiembre en el mes de octubre', '2021-09-08 12:43:21'),
(11, 34, 23, 1, 'Al llamar al cliente no contesta las líneas telefónicas dadas', '2021-09-14 10:35:21'),
(12, 34, 22, 1, 'Se llama al cliente manifiesta que no se encuentra en la cuidad, manifiesta que enviara a alguien con el dinero hoy en la tarde o mañana temprano ', '2021-09-14 10:45:12'),
(13, 34, 20, 1, 'Se llama al cliente contesta la esposa manifiesta que el día de hoy realizara el pago ', '2021-09-14 10:48:17'),
(14, 34, 9, 1, 'Cliente no contesta líneas telefónicas dadas ', '2021-09-14 10:48:28'),
(15, 34, 7, 1, 'Cliente no contesta línea de teléfono dada ', '2021-09-14 10:49:46'),
(16, 34, 6, 1, 'Cliente no contesta líneas telefónicas dadas\r\n', '2021-09-14 10:50:44'),
(17, 34, 23, 1, 'Cliente fallece, los familiares se llevan módem + cargador ', '2021-09-24 12:07:03'),
(18, 34, 28, 1, 'Cliente paga mes de Octubre ', '2021-10-04 13:11:58'),
(19, 34, 1, 1, 'Cliente manifiesta que quiere cambiar su plan de 25M+tv a 25 M, se le indica enviar la carta para solicitar cambio de plan', '2021-10-07 13:55:41'),
(20, 34, 8, 1, 'Cliente manifiesta que quiere bajar su plan a 10m+tv,se le indica enviar carta antes del 30 del mes de Octubre ', '2021-10-07 18:44:18'),
(21, 34, 11, 1, 'Cliente paga valor de dos facturas', '2021-10-09 14:57:22'),
(22, 34, 20, 1, 'Cliente hace compromiso por la línea de ventas para el día 15 de Octubre ', '2021-10-13 11:20:58'),
(23, 34, 20, 1, 'Cliente incumple compromiso de pago, se corta el día 19/10/21 ', '2021-10-19 17:07:54'),
(24, 34, 38, 1, 'Cliente entrega módem + cargador, se entrega paz y salvo ', '2021-10-21 18:28:27'),
(25, 34, 3, 1, 'Se llama al cliente manifiesta que realizara el pago en 30 ya que no tiene dinero se le dirige a la línea de ventas para estudiar el caso ', '2021-10-22 11:28:36'),
(26, 34, 3, 1, 'Cliente paga mes de Octubre el día 30,se le reactiva el servicio ', '2021-10-22 11:33:43'),
(27, 34, 3, 1, 'Cliente incumple compromiso el servicio será cortado el día 2 De Noviembre ', '2021-10-30 17:11:58'),
(28, 34, 3, 1, 'Cliente pago saldo de Octubre y Noviembre ', '2021-11-02 12:48:53'),
(29, 34, 39, 1, 'Cliente manifiesta fecha de pago los días 15,a la espera de carta ', '2021-11-03 13:02:23'),
(31, 34, 1, 1, 'Se llama al cliente para acordar fecha de cambio de plan a solo internet ,manifiesta que esta esperando a otro operador de tv, en cuanto se realice dicho procedimiento se contactara con la entidad para cambiar el módem ', '2021-11-08 11:56:14'),
(32, 34, 8, 1, 'Cliente realiza compromiso de pago para el día 20 de Noviembre ', '2021-11-09 11:50:03'),
(33, 34, 23, 1, 'Se recupera equipo en la vivienda del usuario ', '2021-11-17 17:25:00'),
(34, 34, 8, 1, 'Cliente paga factura el día 22/Nov', '2021-11-23 11:00:09'),
(35, 34, 22, 1, 'Cliente entrega equipo y cargador ', '2021-11-27 12:53:47'),
(36, 34, 8, 1, 'Cliente radica carta para bajar el plan de 15m a 10 m + tv ', '2021-11-29 13:30:00'),
(37, 34, 6, 1, 'Cliente manifiesta que desea retirar el servicio se le indica entregar carta de retiro y módem + cargador el día 30/11/21 si se pasa de esta fecha se generara la factura ', '2021-11-29 17:16:31'),
(38, 34, 27, 1, 'Cliente se acerca a la oficina y realiza compromiso de pago para el día 13 de Diciembre ', '2021-12-06 17:49:51'),
(46, 34, 7, 1, 'Se envía mensaje de texto indicando pago oportuno del servicio.', '2021-12-16 08:45:57'),
(47, 34, 8, 1, 'Se envía mensaje de texto indicando pago oportuno del servicio.', '2021-12-16 08:46:08'),
(48, 34, 11, 1, 'Se envía mensaje de texto indicando pago oportuno del servicio.', '2021-12-16 08:46:26'),
(49, 34, 12, 1, 'Se envía mensaje de texto indicando pago oportuno del servicio.', '2021-12-16 08:46:39'),
(50, 34, 20, 1, 'Se envía mensaje de texto indicando pago oportuno del servicio.', '2021-12-16 08:46:56'),
(51, 34, 41, 1, 'Se envía mensaje de texto indicando pago oportuno del servicio.', '2021-12-16 08:47:06'),
(52, 34, 29, 1, 'Cliente retira el servicio ya que se mudo al barrio San Joaquin,entregar módem + cargador 27/12/21,se entrega paz y salvo ', '2021-12-27 12:05:28'),
(53, 34, 9, 1, '16AA001', '2021-12-29 10:41:08'),
(54, 34, 26, 1, 'Cliente entrega módem + cargador y carta de retiro ,se entrega paz y salvo ', '2021-12-29 13:04:16'),
(55, 34, 40, 1, 'Cliente cambia de 50 megas + telefonía a 50 megas ', '2022-01-03 10:51:06'),
(56, 34, 1, 1, 'Cliente cambia de plan 25 megas + tv a solo 25 megas', '2022-01-03 10:54:32'),
(57, 34, 7, 1, 'Cliente se le instala tv, se dará 3 meses de servicio gratuito ya que ha traído clientes a al entidad ', '2022-01-04 13:27:47'),
(58, 34, 8, 1, 'Se llama al cliente contesta la hija, se le indica nueva modalidad de pago vía pse con facilidad de pagar vía nequi ,se aclara que no se deben enviar transacciones directas ya que solo se recibirán pagos vía pse', '2022-01-05 11:36:29'),
(59, 34, 11, 1, 'Se llama al cliente se le indica nueva modalidad de pago vía pse ', '2022-01-05 11:42:20'),
(60, 34, 25, 1, 'Se llama al cliente , se le indica nueva modalidad de pago vía pse con facilidad de pagar vía nequi ,se aclara que no se deben enviar transacciones directas ya que solo se recibirán pagos vía pse', '2022-01-05 11:50:24'),
(61, 34, 33, 1, 'Se llama al cliente contesta la hija, se le indica nueva modalidad de pago vía pse con facilidad de pagar vía nequi ,se aclara que no se deben enviar transacciones directas,indica que le dara la razón a la titular ', '2022-01-05 11:56:53'),
(62, 34, 40, 1, 'Se llama al cliente se le indica pagos vía pse', '2022-01-05 11:59:53'),
(63, 34, 41, 1, 'Se llama al cliente contesta en la segunda línea se le indica modalidad de pagos vía pse ', '2022-01-05 12:32:57'),
(64, 34, 42, 1, 'Se llama al cliente no contesta líneas telefónicas dadas', '2022-01-05 12:35:53'),
(65, 34, 43, 1, 'Cliente no contesta líneas telefónicas dadas', '2022-01-05 12:37:50'),
(66, 34, 12, 1, 'Se llama al cliente se le indica pagos vía pse, manifiesta que desea realizar un traslado del servicio se le indica enviar dirección para verificar cobertura ', '2022-01-05 12:43:37'),
(67, 34, 35, 1, 'Cliente no contesta líneas telefónicas dadas', '2022-01-05 12:45:52'),
(68, 34, 97, 1, 'Se llama al cliente se le indica nueva modalidad de pago vía pse ', '2022-01-05 12:48:43'),
(69, 34, 28, 1, 'Cliente no contesta líneas telefónicas dadas', '2022-01-05 13:44:49'),
(70, 34, 27, 1, 'Se llama al cliente contesta la esposa se le indica nueva modalidad de pago ,manifiesta que ellos no manejan ninguna cuenta, ni nequi ni daviplata solo pueden realizar los pagos directamente en la oficina ', '2022-01-05 13:48:39'),
(71, 34, 18, 1, 'Cliente hace compromiso de pago para el día 16 de Enero ', '2022-01-06 09:07:08'),
(72, 34, 16, 1, 'Cliente hace compromiso de pago para el día 20 del enero ', '2022-01-13 08:32:42'),
(73, 34, 12, 1, 'Cliente paga el mes entrega equipos se le entrega paz y salvo ', '2022-01-13 14:25:07'),
(74, 34, 11, 1, 'Se llama al cliente contesta en la primera línea se le indica estado de corte manifiesta que no podido pagar por que su esposo esta accidentado, indica realizara cuerdo de pago para el día 26 de Enero', '2022-01-19 10:15:19'),
(75, 34, 11, 1, 'Cliente hace compromiso para el día 29 de Enero ', '2022-01-19 10:20:17'),
(76, 34, 39, 1, 'Se llama al cliente indica que realizara el pago el día de hoy en la tarde\r\n', '2022-01-19 10:32:47'),
(77, 34, 25, 1, 'Cliente hace compromiso de pago para el día 28 de Enero ', '2022-01-19 10:42:36'),
(78, 34, 25, 2, 'CLIENTE YA UTILIZO LA FACILIDAD DE COMPROMISO DE PAGO NO SE PUEDEN OFRECER MÁS DE ESTOS BENEFICIOS (19/01/22)', '2022-01-19 10:43:53'),
(79, 34, 11, 2, 'CLIENTE YA UTILIZO LA FACILIDAD DE COMPROMISO DE PAGO NO SE PUEDEN OFRECER MÁS DE ESTOS BENEFICIOS (19/01/22)', '2022-01-19 10:44:19'),
(80, 34, 8, 1, 'Cliente no contesta líneas telefónicas dadas', '2022-01-19 10:44:54'),
(81, 34, 20, 1, 'Se llama al cliente contesta en la segunda línea se le indica estado de corte manifiesta que realizara la transferencia hoy en la tarde se envía link de pago vía whatsapp ', '2022-01-19 10:59:46'),
(82, 34, 1, 1, 'Se cambia de equipo de internet +tv a solo internet,plan de 25 m +tv a solo internet', '2022-01-21 12:23:53'),
(83, 34, 8, 1, 'Cliente hace compromiso hasta el día 30 del mes de Enero ', '2022-01-21 13:53:52'),
(84, 34, 10, 1, 'Cliente entrega módem +cargador y carta de retiro ', '2022-01-31 20:37:26'),
(85, 34, 33, 1, '3227643961-Número de contacto adicional', '2022-02-01 08:35:17'),
(86, 34, 37, 1, 'Se realiza traslado a dirección CALLE 75 SUR # 45A -04 CONTINUA CONTINUA CON EL MISMO CÓDIGO', '2022-02-02 16:49:31'),
(87, 34, 31, 1, 'Cliente entrega módem + cargador el día 04/02/22,se retira del servicio a paz y salvo ', '2022-02-05 08:38:29'),
(88, 34, 9, 1, 'Cliente envía el dinero en efectivo se le entrega a Vanessa Rodríguez el día (5/02/22)', '2022-02-05 08:42:43'),
(89, 34, 25, 1, 'Cliente hace compromiso de pago para el día 15 de Febrero ', '2022-02-07 09:14:59'),
(90, 34, 43, 1, 'Cliente realiza traslado de un segundo piso a un primer piso,valor 10000 cobrar en factura de Marzo', '2022-02-17 09:12:47'),
(91, 34, 27, 1, 'Se llama al cliente para indicar estado de corte manifiesta que su jefe quebró así que no le pago los días trabajados, indica que si el mes de Marzo puede pagar dos facturas se le indica que el sistema no permite esto, se le da la facilidad de pagar y cambiar fecha de pago para el 15 del mes a la espera de respuesta por parte del titular ', '2022-02-17 16:12:36'),
(92, 34, 25, 1, 'Cliente solicita cambio de fecha de pago para los días 15 de cada mes', '2022-02-22 17:48:32'),
(93, 34, 27, 1, 'Cliente se comunica con la entidad, indica que el día domingo pagara el mes de Febrero y el día 15 de Marzo pagara el mes anteriormente mencionado en caso que el cliente incumpla con las fechas días el día siguiente será recogido el equipo ', '2022-02-23 15:12:18'),
(94, 34, 27, 1, 'Cliente cumple compromiso paga factura del mes de Febrero el día 27/02/22 se reactiva el servicio este día, se hace compromiso para el día 15 de Marzo para pago de dicho mesen caso de ser cumplido será recogido el equipo en la vivienda del usuario ', '2022-02-28 08:40:56'),
(95, 34, 97, 1, 'Cliente hace cambio de plan a triple play de 25 m por el valor de 100000 pesos', '2022-03-05 08:32:39'),
(96, 34, 100, 1, 'Se llama al cliente se le indica estado de corte manifiesta que en su trabajo le pagan el 5 de cada mes en cuanto le paguen se acerca a cancelar el saldo ', '2022-03-05 08:39:29'),
(97, 34, 98, 1, 'Se llama al cliente en la primera línea contesta pero indica no escuchar nada se le envía mensaje de texto indicando pago oportuno ', '2022-03-05 08:46:59'),
(98, 34, 43, 1, 'Se llama al cliente se le indica fecha de corte cercana indica que realizara el pago el día de mañana ya que esta de viaje se le indica valor a pagar 75000 concepto de 65000 mes de servicio y 10000 de un traslado de un piso a otro realizado el día 17/02/22', '2022-03-05 09:00:38'),
(99, 34, 1, 1, 'Se llama al cliente manifiesta que realizara el pago el día de mañana', '2022-03-05 09:18:35'),
(100, 34, 3, 1, 'Se llama al cliente para recordar pago no contesta líneas telefónicas se envía mensaje vía whatsapp\r\n', '2022-03-05 09:26:14'),
(101, 34, 32, 1, 'Se llama al cliente para recordar pago no contesta líneas telefónicas dadas', '2022-03-05 09:37:48'),
(102, 34, 34, 1, 'Se llama al cliente contesta en la primera línea manifiesta que realizara el pago el día de hoy ', '2022-03-05 09:42:56'),
(103, 34, 42, 1, 'Se llama al cliente para recordar pago no contesta línea telefónica dada', '2022-03-05 09:45:08'),
(104, 34, 17, 1, 'Se llama al cliente se le recuerda pago manifiesta que no le han enviado factura del servicio se le envía vía factura y link de pago ', '2022-03-05 10:02:02'),
(105, 34, 36, 1, ' Se llama al cliente para recordar pago no contesta líneas telefónicas dadas', '2022-03-05 10:14:31'),
(106, 34, 3, 1, 'Cliente hace compromiso para el día 15 de marzo ', '2022-03-11 12:31:11'),
(107, 34, 99, 1, 'Cliente hace compromiso hasta el día 22/03/22', '2022-03-14 16:51:41'),
(108, 34, 8, 1, 'Cliente paga saldo de 100000 pesos vía nequi', '2022-03-16 20:21:40'),
(109, 34, 40, 1, 'Cliente cambia de plan de 50M+Telefonía a 15M,cambio efectuado en plataforma el día 28/03/22 ', '2022-03-28 08:36:20'),
(110, 34, 8, 1, 'Cliente hace compromiso para el día el día 2 de Abril, valor a pagar 125000 pesos concepto de:60000 saldo restante del mes de Marzo + 65000 del mes a consumir Abril', '2022-03-29 12:23:00'),
(111, 34, 37, 1, 'Cliente entrega equipo (módem + tv) en el punto de pago barrio el tanque', '2022-03-31 16:32:29'),
(112, 34, 43, 1, 'Cliente se comunica con la entidad manifestando que al realizar el traslado del servicio su televisor tuvo averías, se analiza el caso teniendo en cuenta que la titular dio aviso el día 10/03/22 y este proceso se realizo el día 17 del mes de Febrero se comunica Edwin Lemus con la titular, manifiesta que se repare el equipo se le indica que se puede ayudar no cobrándole el traslado y la reconexión, cliente manifiesta que desea retirar el servicio', '2022-04-01 10:27:18'),
(113, 34, 30, 1, '3003111420', '2022-04-02 14:14:48'),
(114, 34, 11, 1, 'CLIENTE REALIZA COMPROMISO PARA EL DÍA 23/04/22 ULTIMO COMRPOMISO DEL AÑO', '2022-04-18 16:52:02'),
(115, 34, 34, 1, 'Cliente retira tv', '2022-04-30 21:11:17'),
(116, 34, 3, 1, 'Cliente solicita compromiso para el día 16 de Mayo,NO HAY MÁS COMPROMISOS PARA EL CLIENTE', '2022-05-13 17:03:50'),
(117, 34, 105, 1, 'Cliente se retira del servicio entrega el equipo el día 1/06/2022 en el punto de pago de San Rafael, llega a acuerdo con Edwin Lemus ', '2022-06-16 08:49:37'),
(118, 36, 25, 1, 'se le autoriza a el cliente, que pague los dias 16 maximo del mes, se le indica que no puede tener mas plazo de pago por que el sistema no lo permite, se hace comprimiso por el mes de junio, y se le agenda servicios tecnico para el dia martes 21 de junio 2022 en horas de la mañana', '2022-06-16 15:47:07'),
(119, 34, 97, 1, 'Cliente manifiesta continuas fallas en el servicio se remite visita técnica para verificar servicio pero el sistema opera con normalidad, en vista que el servicio no cumple con las expectativas del usuario se toma la decisión de retirar el servicio, cliente paga 5 días del mes de Julio y entrega el módem + cargador ', '2022-07-07 19:28:03'),
(120, 34, 103, 1, 'Cliente entrega equipo en el mes de Julio se retira a paz y salvo con la entidad', '2022-07-07 19:30:55'),
(121, 35, 101, 1, 'Cliente realiza compromiso para el 10 de Agosto', '2022-08-09 09:47:47'),
(122, 35, 113, 1, 'Cliente solicita compromiso para el 15 de Agosto', '2022-08-09 09:49:36'),
(123, 35, 107, 1, 'Cliente solicitaa compromiso para el 15 de Agosto', '2022-08-09 09:50:23'),
(124, 35, 99, 1, 'compromiso dia 15', '2022-08-09 09:59:21'),
(125, 35, 39, 1, 'Cliente paga del 15-20 de cada mes', '2022-08-09 10:08:28'),
(126, 35, 25, 1, 'Paga los 16 de cada mes', '2022-08-09 10:10:55'),
(127, 35, 108, 1, 'cliente solicita cambiar la fecha de pago para el dia 15 de cada mes', '2022-08-22 09:01:43'),
(128, 34, 107, 1, 'Cliente agrega tv,instala 1 tv-valor a pagar en el mes de Septiembre 85.000 - 65.000 pesos de internet + 20.000 pesos de parabólica ', '2022-08-24 18:18:48'),
(129, 34, 112, 1, 'Se llega acuerdo con el cliente de pagar 32.000 pesos concepto del mes de Agosto se envía link de pago pendiente por recoger equipo en la antigua dirección', '2022-08-26 10:44:13'),
(130, 35, 11, 1, 'El cliente realiza retiro de la telefonia el 15/8/2022, a partir de septiembre', '2022-08-29 10:29:11'),
(131, 34, 3, 1, 'Cliente pasa de plan 25m a 25m+tv ', '2022-08-31 08:14:38'),
(132, 34, 113, 1, 'Cliente solicita cambio de fecha de pago para el 15 de cada mes', '2022-09-03 09:00:03'),
(133, 34, 107, 1, 'Cliente solicita cambio de fecha de pago para los días 15 del mes', '2022-09-09 11:56:06'),
(134, 34, 101, 1, 'Cliente hace compromiso hasta el 9 de Septiembre', '2022-09-09 11:56:52'),
(135, 35, 35, 1, 'El 15/09/2022 se instala un TV en el segundo piso', '2022-09-22 09:21:05'),
(136, 34, 8, 1, 'Se llama al cliente por estado de mora manifiesta que desea continuar con el servicio,se le plazo máximo de pago el día 28/10/2022,se tiene habeus data', '2022-10-27 11:44:49'),
(137, 34, 1, 1, 'Cliente cambia plan de 25m a 25m+tv', '2022-10-29 15:37:22'),
(138, 34, 115, 1, 'Cliente solicita retiro del servicio ya que se muda de vivienda,se compromote a entregar el módem + cargdor el día 31/10/2022', '2022-10-31 13:41:47'),
(139, 34, 118, 1, 'Cliente solicita retiro del servicio de telefonía para el mes de Diciembre 2022', '2022-11-25 16:13:32'),
(140, 35, 25, 1, 'Cliente idicica que se acerca a pagar el 31/01/2023 la mora de diciembre y los dias restantes del mes de enero 28100 total 93100', '2023-01-17 15:26:52'),
(141, 35, 108, 1, 'Cliente se cambia de barrio, idica que va a pagar la deuda a inicios del otro mes. Desea traslado', '2023-01-17 15:40:04'),
(142, 35, 27, 1, 'Cliente dice que no esta en la ciudad, dice que apenas llegue se comunica con la empresa\r\n', '2023-01-17 15:52:57'),
(143, 34, 128, 2, 'Cliente se cobra 25m de navegación por 54.000 pesos promoción de Inttelgo SAS', '2023-01-18 11:44:13'),
(147, 34, 124, 2, 'CÓDIGO CORRECTO 6JT0017', '2023-01-18 12:07:41'),
(148, 34, 125, 2, 'CÓDIGO CORRECTO 6JT0021', '2023-01-18 12:08:07'),
(149, 34, 34, 1, 'cliente solicta aumento a 50 mega por 83,000 pesos', '2023-01-31 19:38:11'),
(150, 34, 130, 1, 'Cliente realiza cesión de contrato el día 24/02/2023-Cliente antiguo Yerena	Puche cc.1127601248-tel: 3013466128-3009591739-dirección:DIAG 73A BIS # 38 - 36 SUR-NUEVO TITULAR -Martha Liliana Vanegas MArtiezcc.51896082-3213388335-dirección DIAG 73A BIS # 38 - 36', '2023-02-25 12:50:53'),
(151, 34, 39, 1, 'Cliente se le indica estado de mora,se le indica pagar meses de Abril y Mayo 2023-primera notificación el día 26/04/2023', '2023-04-26 11:34:04'),
(152, 35, 39, 1, 'Cliente se compromete a realizar pago de los dos meses de mora, pago mayo. Paga cada 15 dias', '2023-05-09 09:13:44'),
(153, 35, 139, 1, 'El cliente solito compromiso de pago para el 5 de julio ya que esta pasando por una situacion economica fuerte. Paga 100.000 de junio y realiza cambio de plan a triple play de 10M. Para un total de 180.000', '2023-06-13 16:17:18'),
(154, 35, 103, 1, '1AA025\r\n', '2023-10-14 09:31:19'),
(155, 35, 125, 1, '6JT027', '2023-10-14 10:49:22'),
(156, 35, 155, 1, '15AA001', '2024-02-09 09:29:46'),
(157, 35, 147, 1, 'paga abril y mayo', '2024-04-19 14:49:45'),
(158, 34, 41, 1, '1AA0044 CÓDIGO ACTUAL 19/04/2024', '2024-04-19 16:52:28'),
(159, 34, 169, 1, '2AA0015 CÓDIGO ACTUAL 19-04-2024', '2024-04-19 16:55:55'),
(160, 35, 147, 1, 'pago junioy julio\r\n', '2024-06-11 21:52:37'),
(162, 38, 190, 1, 'El 04/07/2024 se instala servicio paga $50.000', '2024-07-10 14:23:39'),
(164, 38, 30, 1, 'El 04/07/2024 se realiza instalación de repetidor paga $30.000. ', '2024-07-10 14:27:14'),
(165, 38, 186, 1, 'El 04/07/2024 se realiza instalación punto adicional paga $65.000. ', '2024-07-10 14:28:35'),
(166, 38, 189, 1, 'El 06/07/2024 se realiza adición de punto. ', '2024-07-12 10:08:00'),
(167, 38, 192, 1, 'EL 13/07/2024 se instala servicio paga $39.000. ', '2024-07-16 14:02:46'),
(168, 38, 190, 1, 'Numero adicional: 3224505311.', '2024-07-16 15:16:55'),
(169, 38, 190, 1, 'Se confirma traslado misma casa para el 16/07/2024. valor a pagar $20.000. ', '2024-07-16 15:19:17'),
(170, 38, 190, 1, 'El 17/07/2024 se realiza traslado misma dirección CALLE 73A SUR # 35C - 07,mismo código:2AA0026. ', '2024-07-22 10:34:40'),
(171, 38, 193, 1, 'Se obsequian días de Julio 2024. se cobra $35.000 por punto adicional de TV. ', '2024-07-23 11:08:17'),
(172, 38, 125, 1, 'El 23/07/2024 se instala punto adicional. ', '2024-07-27 10:17:57'),
(173, 38, 194, 1, 'El 23/07/2024 se realiza instalación paga agosto $45.000. ', '2024-07-27 10:53:52'),
(179, 38, 195, 1, 'El 27/07/2024 se realiza instalación. Paga mes Agosto $65000.', '2024-08-01 11:32:12'),
(180, 38, 174, 1, 'El 27/07/2024 se realiza traslado de la dirección antigua CRA 36A # 72d - 16 a la dirección nueva CRA 35A # 72B - 20 SUR, mismo código;1AA0047. paga $20.000. ', '2024-08-01 11:34:15'),
(181, 38, 196, 1, 'El 30/07/2024 se realiza instalación. Paga 55.000 mensualidad Agosto. ', '2024-08-01 11:40:22'),
(182, 35, 147, 1, 'Paga Agosto, Septiembre y Octubre solo internet\r\n', '2024-08-06 16:03:29'),
(183, 38, 197, 1, 'El 02/08/2024 instala servicio paga mensualidad de Agosto $45.000. ', '2024-08-08 09:49:21'),
(185, 38, 160, 1, 'El 05/08/2024 se realiza traslado de la dirección antigua CRA 36 # 72D - 53 SUR a la dirección nueva CRA 35B # 72D - 52 SUR, mismo código 1AA0062. clienta paga $125.000 mensualidad y punto de tv adicional. ', '2024-08-08 09:55:12'),
(186, 38, 132, 1, 'El 16/08/2024 se realiza instalación del servicio misma dirección: CRA 36A # 72B - 12 SUR, mismo código: 1AA0021 - Cliente ya había tenido servicio anteriormente,  fecha antigua instalación: 0703/2023. mismo plan: 15M+TV. PAGO MENSUALIDAD DE SEPTIEMBRE: 65.000. ', '2024-08-21 09:55:31'),
(187, 38, 198, 1, 'El 17/08/2024 se realiza instalación del servicio paga $75.000 MENSUALIDAD DE SEPTIEMBRE 2024.  ', '2024-08-21 10:08:19'),
(189, 38, 156, 1, 'El 17/08/2024 se realiza traslado de la dirección antigua CRA 36A #72D - 61 a la dirección nueva CRA 36 # 72D - 09 SUR, mismo código: 1AA0061. paga $20.000 traslado. ', '2024-08-21 10:14:55'),
(190, 38, 158, 1, 'Cliente confirma traslado de modem para el dia 22/08/2024 AM- de piso 3 a piso 2, valor a pagar $ 20.000. ', '2024-08-21 15:21:52'),
(191, 38, 198, 1, 'Cliente confirma adición de punto para el 22/08/2024 primer piso valor a pagar $ 35.000. ', '2024-08-21 15:22:52'),
(192, 38, 174, 1, 'Cliente Realiza pago para incremento de megas pasa de 80M+TV A 150M+TV paga $105.000. ', '2024-08-22 11:19:45'),
(193, 38, 158, 1, 'Se realiza ratificación del plan que adquirió el cliente en el sistema estaba 80M - se cambia 80M+TV. $75.000. ', '2024-08-23 10:23:15'),
(194, 38, 158, 1, 'El 22/08/2024 se realiza traslado misma dirección CRA 35 # 72B - 09 mismo código:1AA0043. - se cobra $20.000. ', '2024-08-24 11:12:43'),
(195, 38, 198, 1, 'El 22/08/2024 se realiza adición de punto se cobra $35.000. ', '2024-08-24 11:27:23'),
(196, 38, 158, 1, 'El 24/08/2024 se realiza traslado misma dirección CRA 35 # 72B - 09 mismo código:1AA0043. - se cobra $20.000. ', '2024-08-26 15:14:16'),
(197, 38, 199, 1, 'El 27/08/2024 se realiza instalación - cliente paga mes de Septiembre 2024. $65.000 - no se realiza confirmación de llamada - Nicolas Aguirre realiza la confirmación por la linea. ', '2024-08-29 15:26:51'),
(198, 38, 190, 1, 'Se llama a hija del titula la señora Ahsly Cardenas e informa que el titular falleció, se indica la documentación para realizar cesión de contrato. ', '2024-09-05 14:52:05'),
(199, 38, 201, 1, 'EL 04/09/2024 se realiza instalación, cliente paga 38.000 correspondiente a mes de Septiembre 2024.  ', '2024-09-09 08:45:06'),
(200, 38, 202, 1, 'El 05/09/2024 se realiza instalación, cliente paga $50.000 repetidor + $68.000 días de septiembre 2024 = $118.000. ', '2024-09-09 09:03:11'),
(201, 38, 203, 1, 'El 07/09/2024 se realiza instalación, paga mensualidad de Septiembre $75000 ', '2024-09-11 14:04:37'),
(202, 38, 204, 1, 'EL 10/09/2024 se realiza instalación. Cliente paga 50.000 correspondiente a los días del mes de Septiembre 2024.   ', '2024-09-12 16:20:55'),
(204, 38, 199, 1, 'Se confirma adición de punto para el 17/09/2024 Valor a pagar $0. se informa al titular que si no esta cableado el cobro de la adición sera $15.000. Linea titular: 3102976566 - Linea encargada de recibir la instalación: 3102753311. ', '2024-09-16 11:34:00'),
(205, 38, 199, 1, 'El 18/09/2024 se realiza adición de punto. ', '2024-09-19 15:50:57'),
(206, 35, 187, 1, 'Cliente cambia a solo TV por 35.000', '2024-10-02 12:19:12'),
(207, 38, 205, 1, 'El 18/09/2024 se realiza instalación cliente paga mensualidad de octubre $65.000. ', '2024-10-11 15:10:02'),
(208, 38, 174, 1, 'Se actualiza linea 3105833587', '2024-10-11 15:14:41'),
(209, 38, 174, 1, 'El 04/10/2024 se realiza cambio de plan pasa de 100M+TV A 100M. ', '2024-10-11 15:21:33'),
(211, 38, 162, 1, 'Se llama al cliente para realizar cobro de servicio, se cobra 20.000 de re-conexión+5000 dias de octubre y mensualidad de Noviembre 55.000 total 80.000. plazo al 2 de Noviembre 2024. ', '2024-10-29 10:09:57'),
(212, 38, 207, 1, 'El 31/10/2024 se realiza instalación, cliente paga mensualidad de Noviembre 2024. $85.000.', '2024-11-05 09:53:48'),
(214, 38, 98, 1, 'El 06/11/2024 se recoge modem al cliente MAC: 1CEF03BF7130 y se retira a paz y salvo. ', '2024-11-06 16:52:19'),
(215, 38, 208, 1, 'El 12/11/2024 se realiza instalación del servicio paga días restantes del mes Noviembre 2024 $44.000. ', '2024-11-14 14:51:51'),
(216, 38, 203, 1, 'Cliente con intención de retiro por motivo de viaje, se indica la clausula mínima de permanencia e informa que va a esperar la clausula y realiza el pago de los 2 meses el 5 de Diciembre 2024. se informa sobre la cesión de contrato e indica que va a consultar si le sede el servicio a otra persona.   ', '2024-11-15 17:02:50'),
(217, 35, 147, 1, 'Paga Noviembre, Diciembre, Enero', '2024-12-07 11:26:22'),
(218, 38, 210, 1, 'Cliente adquiere solo TV $ 33000, cancelo servicio de Enero 2025 el 22 de diciembre 2024.', '2024-12-23 12:16:24'),
(219, 38, 148, 1, 'El 24/12/2024 se realiza traslado de la dirección antigua CRA 35A # 72D - 12 a la dirección nueva CRA 35A # 72D - 16 SUR, mismo código; 1AA0009\r\n', '2024-12-27 11:04:46'),
(220, 38, 211, 1, 'Cliente cancela mes anticipado Enero 2025.', '2024-12-31 08:47:50'),
(221, 38, 195, 1, 'El 08/01/2025 se realiza traslado de la dirección antigua CALLE 75 SUR # 45A - 03 a la dirección nueva CRA 45B # 75 SUR - 36, mismo código: 6JT0034.\r\n', '2025-01-09 14:34:36'),
(223, 35, 160, 1, 'Paga febrero y marzo', '2025-01-13 08:54:21'),
(224, 38, 41, 1, 'El 15/01/2025 realiza cesión de contrato, Cliente Antiguo: 1AA0044 C.C: 1000620128  Nombre: Michel	Cruz  Teléfonos: 3118457237 3136406912  Dirección: CARRERA 35 # 72B - 33 SUR  COD: 1AA0044 ,Cliente Nuevo:  C.C: 1023868374 Nombre: Sharik Tatiana Cruz Castro  Teléfonos: 3107668718 – 3123858299 Dirección: CRA 35 # 75D SUR - 29 COD:1AA0044', '2025-01-15 15:05:45'),
(225, 38, 212, 1, 'El 15/01/2025 realiza cesión de contrato, Cliente Antiguo: 1AA0044 C.C: 1000620128  Nombre: Michel	Cruz  Teléfonos: 3118457237 3136406912  Dirección: CARRERA 35 # 72B - 33 SUR  COD: 1AA0044 ,Cliente Nuevo:  C.C: 1023868374 Nombre: Sharik Tatiana Cruz Castro  Teléfonos: 3107668718 – 3123858299 Dirección: CRA 35 # 75D SUR - 29 COD:1AA0044', '2025-01-15 15:11:26'),
(226, 38, 212, 1, 'Cliente adquiere plan de 300M $ 55000,Nuevo titular solicita traslado de la dirección CARRERA 35 # 72B - 33 SUR a la nueva dirección: CRA 35 # 75D SUR - 29 , cancela el día del traslado $ 30.000, traslado queda para el 16/01/2025.', '2025-01-15 15:14:49'),
(227, 38, 208, 1, 'El 11/01/2025 se realiza traslado de la dirección antigua CRA 35 # 72D - 29 SUR a la dirección nueva CRA 35 # 72B SUR - 32, Mismo código: 1AA0010.\r\n', '2025-01-15 17:05:33'),
(228, 38, 33, 1, 'El 14/01/2025 se realiza instalación de un repetidor , se realiza sincronización se mueve modem para un punto estratégico. ', '2025-01-17 10:37:20'),
(230, 38, 150, 1, 'Cliente solicita reconexion del servicio plan 300M $ 55.000 para el 18 de enero 2025, posiblemente que sea a las 11:00 dirección: CRA 45B # 75 - 14 apartamento 402, Cancela $ 55.000 correspondiente al servicio de Febrero 2025.', '2025-01-17 14:14:58'),
(231, 38, 213, 1, 'Cliente activa el servicio el 16 de Enero 2025, plan de 500M $ 65000, cancelo los dias de Enero 2025 $ 33000 mas $80.000 de instalación valor total $ 113.000', '2025-01-18 11:47:12'),
(232, 38, 212, 1, 'El 16/01/2025 se realiza traslado de la dirección antigua CARRERA 35 # 72B - 33 SUR a la dirección nueva CRA 35 # 75D SUR - 29 código antiguo 1AA0044; código nuevo 1AA0044;\r\n', '2025-01-18 12:50:09'),
(233, 38, 150, 1, 'El 18/01/2025 se realiza conexion del servicio, para el mes de ABRIL 2024 solicita reconexiòn, Código antiguo;6JT0028 código nuevo;6JT00258 plan antiguo: 80M+TV $ 75000; direccion antigua:CRA 45B # 75 - 14  SE DEJA PLAN 300M $ 55000, CLIENTE CANCELA MES DE FEBRERO  2025 ANTICIPADO. . \r\n', '2025-01-20 11:53:44'),
(234, 38, 119, 1, 'Se programa traslado para 21/01/2025 en la misma casa  CRA 36 # 72D - 32 SUR   plan 800M+TV $ 105.000, adicional se le instala repetidor, no genera cobro, entregar servicio de internet y tv.', '2025-01-20 16:17:18'),
(235, 38, 119, 1, 'El 21/01/2025 se realiza traslado de la dirección antigua CRA 36 # 72D - 32 SUR a la dirección nueva CRA 36 # 72D - 32 SUR,código antiguo 1AA0029; código nuevo 1AA0029 ;\r\n', '2025-01-23 10:27:35'),
(236, 38, 7, 1, 'El 25/01/2025 se realiza traslado de la dirección antigua CRA 35A # 72D - 09 SUR a la dirección nueva CALLE 72B SUR # 35 -40 ,código antiguo 1AA0006; código nuevo 1AA0006;\r\n', '2025-01-29 13:02:13'),
(237, 38, 214, 1, 'Cliente contrato plan de $ 100M$ 45.000,cancelo mes anticipado Febrero 2025 $ 45.000', '2025-02-01 11:35:33'),
(238, 38, 215, 1, 'Plan contratado 300M$ 55000, Cancela mes anticipado Febrero 2025, $55000', '2025-02-01 11:40:52'),
(240, 38, 216, 1, 'Cliente contrata servicio de 100M+TV $ 65000  cancela mes anticipado Febrero 2025, $ 65000', '2025-02-03 11:12:28'),
(241, 38, 217, 1, 'Cliente  contrato plan de 100M $ 45.000, Cancelo mes de febrero por anticipado $ 45.000', '2025-02-03 11:18:44'),
(242, 38, 182, 1, 'Se recibe solicitud de cambio de plan 100M+TV $65000, se le obsequia la tv del mes de Febrero 2025.', '2025-02-03 11:33:12'),
(243, 38, 151, 1, 'Cliente solicita traslado para la dirección CRA 34A # 72D SUR - 09, se realiza el 5 de febrero 2025.', '2025-02-04 16:50:45'),
(244, 38, 7, 1, '03/02/2025 Se instala repetidor y 2 puntos de tv.', '2025-02-06 17:06:31'),
(245, 38, 182, 1, 'El 04/02/2025 se realiza instalación para 02 punto de TV cliente realiza cambio de plan de 100M a 100M+TV,cliente continua con el mismo código 2AA0021;Se obsequia servicio de TV para el mes de FEBRERO 2025.\r\n', '2025-02-07 13:12:06'),
(246, 38, 182, 1, 'Se confirma plan que el cliente adquirió es el de 100M+TV $ 65000', '2025-02-07 13:13:37'),
(247, 38, 151, 1, 'El 05/02/2025 se realiza traslado de la dirección antigua CRA 35 # 72D - 08 a la dirección nueva CRA 34A # 72D SUR - 09 ,código antiguo 1AA0041; código nuevo 1AA0041;\r\n', '2025-02-10 11:03:23'),
(248, 38, 218, 1, 'Cliente cancelo mes de febrero por link de pago  https://combopay.co/payment-link/web-master-colombia-sas/LK13951704.', '2025-02-12 11:13:51'),
(249, 38, 218, 1, 'Cliente contrato solo TV POR VALOR DE $ 35.000', '2025-02-12 11:27:44'),
(250, 38, 219, 1, 'Se le instala punto adicional de TV, Se le obsequia mes de febrero 2025, cancelo mes de marzo $ 2025 $ 65.000', '2025-02-17 10:32:27'),
(251, 38, 220, 1, 'Cliente cancela días de consumos mes de Febrero 2025, $ 56000.', '2025-02-17 10:36:22'),
(252, 38, 221, 1, 'PLAN QUE ADQUIRIÓ ES DE 800M $75.000.CANCELO DIAS DE FEBRERO $ 42.500', '2025-02-17 12:36:57'),
(253, 35, 203, 1, 'se realiza llamada de estado de corte las dos lineas suenan que estan temporalmente desactivadas (alisson)', '2025-02-19 10:51:33'),
(254, 35, 184, 1, 'se realiza llamada de estado de corte, la primer linea 3124635570 contesta pero dice no conocer al titular y cuega la segunda linea 301 6502892 no contesta (alisson)', '2025-02-19 10:56:31'),
(255, 35, 167, 1, 'se realiza llamada de estado de corte, las dos lineas suenan sistema correo de voz 3214827718	3212550194\r\n(alisson)', '2025-02-19 10:58:56'),
(256, 35, 155, 1, 'se realiza llamada de estado de corte contesta indica que hoy en la tarde realiza el pago (alisson)', '2025-02-19 11:05:15'),
(257, 35, 152, 1, 'se realiza llamada de estado de corte, los dos numeros suenan buzon de mensajes 3006378670	3246177910\r\n(alison)', '2025-02-19 11:06:28'),
(258, 35, 148, 1, 'se realiza llamada de estado de corte contesta indica que el dia 20 realiza el pago (alisson)', '2025-02-19 11:13:58'),
(259, 35, 136, 1, 'se realiza llamada de estado de corte contesta la segunda linea me da el numero del señor jhonatan pero no contesta 3054614794 (alisson)', '2025-02-19 11:23:24'),
(260, 35, 127, 1, 'se realiza llamada de estado de corte la linea suena sistema correo de voz 3222842178(alisson)', '2025-02-19 11:32:56'),
(261, 35, 107, 1, 'se realiza llamada de estado de corte indica que paga del 20 al 25 (alisson)', '2025-02-19 11:44:35'),
(262, 35, 33, 1, 'se realiza llamada de estado de corte contesta indica que ella habia solicitado que le dieran esta semana para pagar ya que la habian robado y esta es haciendo todo los tramites del robo (alisson)', '2025-02-19 11:52:13'),
(263, 35, 27, 1, 'se realiza llamada de estado de corte, no contesta a la linea que tiene registrada (alisson)', '2025-02-19 11:53:21'),
(264, 35, 25, 1, 'se realiza llamada de estado de corte contesta indica que ella habia solictado plazo hasta el sabado 22 para realizar el pago (alisson)', '2025-02-19 11:57:20'),
(265, 38, 211, 1, 'El 17/02/2025 se realiza instalación de un repetidor.cliente cancela $ 60.000\r\n', '2025-02-20 14:55:38'),
(266, 38, 222, 1, 'Cliente cancelo mes de marzo por anticipado $ 75000 2025', '2025-02-25 13:36:09'),
(267, 38, 223, 1, 'Cliente cancela mes de marzo 2025 $ 75.000.', '2025-03-03 08:14:12'),
(268, 38, 223, 1, 'Cliente contrato plan 800M $ 75.000', '2025-03-03 08:23:47'),
(269, 38, 223, 1, 'El 27/02/2025 se realiza instalación para 01 punto de TV cliente realiza cambio de plan de 800M a 300M+TV,cliente continua con el mismo código;Se obsequia servicio de TV para el mes de marzo 2025\r\n', '2025-03-04 08:14:41'),
(270, 38, 104, 1, 'Se envía traslado de módem y cambio del mismo de un cuarto a otro para el 6 de marzo 2025', '2025-03-05 16:15:33'),
(271, 38, 224, 1, 'Cancela los días de servicio de marzo $ 44000', '2025-03-08 13:11:19'),
(272, 38, 225, 1, 'Cliente cancela días  de servicio de marzo 2025 $ 30000', '2025-03-13 09:19:39'),
(273, 35, 220, 1, 'se realiza llamada de estado de corte, cliente no contesta a la linea que tiene registrada 3124915696 (alisson)\r\n', '2025-03-14 08:47:49'),
(274, 35, 218, 1, 'se realiza llamada de estado de corte  3505646127 cliente solicita el recibo para cancelar la factura, se envia desde la linea corporativa(alisson)\r\n', '2025-03-14 09:04:46'),
(275, 35, 217, 1, 'se realiza llamada de estado de corte, cliente no contesta a las lineas que tiene registradas 3214041485 3124835958 (alisson)\r\n', '2025-03-14 09:14:55'),
(276, 35, 213, 1, 'Se realiza llamada de estado de corte contesta al 3243901015 familiar indica que ya le va a decir que realice el pago (alisson)\r\n', '2025-03-14 09:20:37'),
(277, 35, 211, 1, 'se realiza llamada de estado de corte, el numero que tiene registrado esta desactivado(alisson)\r\n', '2025-03-14 09:23:25'),
(278, 35, 210, 1, 'se realiza llamada de estado de corte, cliente no contesta a las lineas que tiene registradas 3134890819 3001557189 (alisson)\r\n', '2025-03-14 09:24:59'),
(279, 35, 196, 1, 'se realiza llamada de estado de corte, cliente no contesta a la linea que tiene registrada 3124228378 (alisson)\r\n', '2025-03-14 09:29:36'),
(280, 35, 195, 1, 'se realiza llamada de estado de corte, cliente no contesta a las lineas que tiene registradas 3154421481 3155801503 (alisson)\r\n', '2025-03-14 09:32:21'),
(281, 35, 191, 1, 'se realiza llamada de estado de corte, cliente contesta la primer linea pero al decir que llamamos de webmaster cuelga la llamada, la segunda linea no contesta(alison)\r\n', '2025-03-14 09:35:26'),
(282, 35, 190, 1, 'se realiza llamada de estado de corte, cliente no contesta a las lineas que tiene registradas 3228219851 3197031109 (alisson)\r\n', '2025-03-14 09:38:00'),
(283, 35, 187, 1, 'se realiza llamada de estado de corte, cliente no contesta a las lineas que tiene registradas 3143584089 3138962958 (alisson)\r\n', '2025-03-14 09:40:25'),
(284, 35, 186, 1, 'se realiza llamada de estado de corte, cliente no contesta a las lineas que tiene registradas 3112285473 3024681029 (alisson)\r\n', '2025-03-14 09:42:43'),
(285, 35, 184, 1, 'se realiza llamada de estado de corte, cliente no contesta a las lineas que tiene registradas 3124635570 301 6502892 (alisson)\r\n', '2025-03-14 09:46:00'),
(286, 35, 174, 1, 'se realiza llamada de estado de corte, cliente no contesta a las lineas que tiene registradas 3144447729 3054565060 (alisson)\r\n', '2025-03-14 09:48:22'),
(287, 35, 155, 1, 'se realiza llamada de estado de corte, cliente no contesta a la linea que tiene registrada (alisson)\r\n', '2025-03-14 09:50:09'),
(288, 35, 151, 1, 'Se realiza llamada de estado de corte, contesta la seguda linea familiar del titular indica que que ya le va a decir que realice el pago de la factura(alisson)\r\n', '2025-03-14 09:58:51'),
(289, 35, 136, 1, 'se realiza llamada de estado de corte, cliente no contesta a ninguna de las tres lineas  3054614794 3004233437 3028522738\r\n', '2025-03-14 10:01:11'),
(290, 35, 133, 1, 'Se realiza llamada en estado de corte, cliente ya habia realizado el pago (alisson)', '2025-03-14 10:06:19'),
(291, 35, 33, 1, 'se realiza llamada de estado de corte, cliente ya habia realizado el pago (alison)', '2025-03-14 10:11:09'),
(292, 35, 17, 1, 'se realiza llamada de estado de corte, cliente ya habia pagado por nequi(alison)', '2025-03-14 10:14:57'),
(293, 35, 155, 1, 'se realiza de estado de corte cliente no contesta a la linea que tiene registrada 3192468242 (alisson)\r\n', '2025-03-14 10:16:11'),
(294, 35, 194, 1, 'se realiza llamada de recordar pago las dos lineas que tiene registradas no estan activadas 3015425872 3012104847 (alisson)\r\n', '2025-03-14 10:19:27'),
(295, 35, 18, 1, 'se realiza llamada de recordar pago las dos lineas que tiene registradas no estan activadas 3015425872 3012104847 (alisson)\r\n', '2025-03-14 10:19:31'),
(296, 35, 185, 1, 'se realiza llamada para recordar pago cliente no contesta la linea que tiene registrada 3212861146 (alisson)\r\n', '2025-03-14 10:21:01'),
(297, 35, 185, 1, 'se realiza llamada para recordar pago contesta al 3102753311 indica que le ha ido muy bien con el servicio pero que cuando llueve si se le cae un poco el internet, recibe la informacion  (alisson)\r\n', '2025-03-14 10:26:43'),
(298, 35, 141, 1, 'se realiza llamada para recordar pago cliente no contesta la linea que tiene registrada 3145555578 6017165402 (alisson)\r\n', '2025-03-14 10:31:40'),
(299, 35, 127, 1, 'se realiza llamada para recordar pago cliente no contesta la linea que tiene registrada 3222842178  (alisson)\r\n', '2025-03-14 10:32:17'),
(300, 35, 125, 1, 'se realiza llamada para recordar pago cliente no contesta la linea que tiene registrada 3016644820  (alisson)\r\n', '2025-03-14 10:33:04'),
(301, 35, 123, 1, 'se realiza llamada para recordar pago cliente no contesta la linea que tiene registrada 3144046802  3123304951 (alisson)\r\n', '2025-03-14 10:35:09'),
(302, 35, 101, 1, 'se realiza llamada para recordar pago la primer linea contesta pero dice no conocer al señor hector la segunda linea no contesta (alisson)\r\n', '2025-03-14 10:45:00'),
(303, 35, 35, 1, 'se realiza llamada para recordar pago cliente no contesta la linea que tiene registrada 3133785747   (alisson)\r\n', '2025-03-14 10:46:18'),
(304, 35, 25, 1, 'se realiza llamada de recordar pago contesta al indica que si mañana no puede realizar el pago solicita un compromiso a la linea de atencion ya que no sabe si le pagan mañana (alisson)\r\n', '2025-03-14 10:51:02'),
(305, 38, 226, 1, 'Cancela días de servicio de marzo 2025 $27000', '2025-03-14 11:49:03'),
(306, 35, 220, 1, 'se realiza llamada de estado de corte, 3124915696 nuevamente cliente no contesta la linea que tiene registrada (alisson)\r\n', '2025-03-18 11:45:26'),
(307, 35, 210, 1, 'se realiza llamada de estado de corte, 3134890819 3001557189  nuevamente cliente no contesta las lineas que tiene registradas (alisson)\r\n', '2025-03-18 11:48:26'),
(308, 35, 195, 1, 'se realiza llamada nuevamente de estado de corte, cliente no contesta a ninguna de las dos lineas que tiene registradas 3154421481 3155801503  (alisson)\r\n', '2025-03-18 11:55:41'),
(309, 35, 194, 1, 'se realiza llamada nuevamente las dos lineas que tiene registradas estan desactivadas 3015425872 3012104847 (alisson)\r\n', '2025-03-18 11:59:07'),
(310, 35, 18, 1, 'se realiza llamada nuevamente las dos lineas que tiene registradas estan desactivadas 3015425872 3012104847 (alisson)\r\n', '2025-03-18 11:59:11'),
(311, 35, 190, 1, 'se realiza llamada nuevamente de corte las dos lineas que tiene registradas estan descativadas 3228219851  3197031109 (alisson )\r\n', '2025-03-18 12:07:35'),
(312, 35, 184, 1, 'se realiza llamada nuevamente de estado de corte, contesta la primer linea 3124635570 indica no conocer al señor carlos que estamo equivocados, la segunda linea no le entran las llamadas 301 6502892  (alisson)\r\n', '2025-03-18 12:12:17'),
(313, 35, 180, 1, 'se realiza llamada de estado de corte cliente ya habia realizado el pago donde doña flor se le cambia el estado (alisson)\r\n', '2025-03-18 12:18:56'),
(314, 35, 174, 1, 'se realiza llamada nuevamente de estado de corte, cliente no contesta a ninguna de las dos lineas que tiene registradas 3144447729 3054565060  (alisson)\r\n', '2025-03-18 12:21:33'),
(316, 35, 152, 1, 'se realiza llamada nuevamente de corte las dos lineas que tiene registradas estan descativadas 3006378670  3246177910 (alisson )\r\n', '2025-03-18 13:06:00'),
(317, 35, 136, 1, 'se realiza llamada nuevamente de estado de corte, la primer linea no contesta 3004233437, contesta la segunda linea familiar del titular recibe la informacion 3028522738 (alisson)\r\n', '2025-03-18 13:10:42'),
(318, 35, 127, 1, 'se realiza nuevamente llamada de estado de corte, cliente no contesta la linea que tiene registrada 3222842178 (alisson)\r\n', '2025-03-18 13:11:49'),
(319, 35, 101, 1, 'se realiza llamada nuevamente de estado de corte, cliente no contesta a ninguna de las dos lineas que tiene registradas 3208861777 3123614558  (alisson)\r\n', '2025-03-18 13:13:47'),
(320, 35, 27, 1, 'se realiza nuevamente llamada de estado de corte, cliente no contesta la linea que tiene registrada 322 7315883 (alisson)\r\n', '2025-03-18 13:14:51'),
(321, 35, 25, 1, 'compromiso para el dia sabado 22\r\n', '2025-03-18 13:18:04'),
(322, 35, 194, 1, 'se realiza llamada nuevamente de estado de corte, cliente no contesta a ninguna de las dos lineas que tiene registradas 3015425872 3012104847  (alisson)\r\n', '2025-03-18 13:20:22'),
(323, 35, 18, 1, 'se realiza llamada nuevamente de estado de corte, cliente no contesta a ninguna de las dos lineas que tiene registradas 3015425872 3012104847  (alisson)\r\n', '2025-03-18 13:20:26'),
(324, 35, 9, 1, 'se realiza nuevamente llamada de estado de corte, cliente no contesta la linea que tiene registrada 3192468242 (alisson)\r\n', '2025-03-18 13:22:35'),
(325, 38, 141, 1, 'Cliente solicita cambio de plan de 100M a 100M+TV.', '2025-03-19 15:37:11'),
(326, 35, 174, 1, 'contesta el primer numero suegro del titular indica que buscara la manera en la que le pueda comunicar y decirle que pague la factura (alison)', '2025-03-22 11:18:12'),
(327, 35, 152, 1, 'cliente no contesta llamadas de estado de corte, se envia mensaje de whatsapp a las 2 lineas (alisson)', '2025-03-22 11:22:52'),
(328, 35, 148, 1, 'cliente no contesta llamada de corte, se envia mensaje de whatsapp (alisson)', '2025-03-22 11:24:28'),
(329, 35, 127, 1, 'cliente nuevamente no contesta llamada de estado de corte, no tiene whatsapp (alisson)', '2025-03-22 11:25:43'),
(330, 35, 107, 1, 'se realiza llamada de estado de corte contesta pero cuelga la llamada se envia mensaje de whatsapp (alison)', '2025-03-22 11:27:23'),
(331, 35, 101, 1, 'se realiza llamada de corte la primer linea contesta una señora indica que ella no conoce a ningun hector la segunda linea no responde 	3208861777	3123614558 (alisson) ', '2025-03-22 11:30:40'),
(332, 38, 141, 1, 'El 20/03/2025 se realiza instalación para 01 punto de TV cliente realiza cambio de plan de 100M a 100M+TV,cliente continua con el mismo codigo1AA0033.\r\n', '2025-03-22 13:31:49'),
(333, 38, 228, 1, 'CLIENTE CONTRATA REPETIDOR DIFERIDO EN 2 CUOTAS PRIMER PAGO DEL 1 AL 5 DE ABRIL POR VALOR DE 110,000 MAYO 110,000 INSTALA EN EL MES DE JUNIO PAGA 75,000 3 TV YA CUENTA CON CABLEADO', '2025-03-29 12:28:53'),
(334, 38, 229, 1, 'Cancela días de abril 2025 $ 48000', '2025-04-12 13:27:42'),
(335, 35, 158, 1, 'paga mayo 2025', '2025-04-16 16:29:16'),
(336, 38, 35, 1, 'Se le instala el repetidor el día 11/04/2025 cancela $ 50.000', '2025-04-16 17:00:39'),
(337, 38, 133, 1, 'se programa cambio de plan para el 21/04/2025 plan contratado 100M+TV $ 65000 se obsequia tv de los días restantes del mes de abril 2025 .', '2025-04-19 10:04:45'),
(338, 38, 133, 1, 'Numero de la persona que recibe el cambio de plan 3228609206- jose  3015273855 maria romero ..', '2025-04-19 10:13:27'),
(339, 38, 133, 1, 'El 21/04/2025 se realiza instalación para 01 punto de TV cliente realiza cambio de plan de 100M a 100M+TV,cliente continua con el mismo código; 6JT0024Se obsequia servicio de TV para el mes de ABRIL 2025\r\n', '2025-04-22 13:05:08'),
(340, 38, 230, 1, 'Cancela mes de mayo 2025 $45000', '2025-05-02 16:34:56'),
(341, 38, 231, 1, 'Cancela mes de mayo 2025 $ 45000', '2025-05-02 16:39:31'),
(342, 38, 230, 1, 'Se envía cambio de plan para el 7 de mayo 2025  plan 100M+TV $ 65.000 solo un punto de tv, se obsequia días del mes de mayo  2025 de TV.', '2025-05-06 13:41:38'),
(343, 38, 232, 1, 'Cancela mes de mayo 2025 $ 65000', '2025-05-08 12:33:44'),
(344, 38, 21, 1, 'El 7/05/2025 se realiza cambio de modem de un piso a otro', '2025-05-12 12:29:37'),
(345, 38, 230, 1, 'El 07/05/2025 se realiza instalación para 01 punto de TV cliente realiza cambio de plan de 100M a 100M+TV,cliente continua con el mismo codigo 15AA0034 ;Se obsequia servicio de TV para el mes de MAYO 2025\r\n', '2025-05-12 12:32:09'),
(346, 38, 225, 1, 'El 09/05/2025 se realiza instalación para 02 punto de TV cliente realiza cambio de plan de 100M a 100M+TV,cliente continua con el mismo codigo 1AA0075; Se obsequia servicio de TV para el mes de MAYO 2025\r\n', '2025-05-14 11:59:33'),
(347, 38, 233, 1, 'Cliente cancela días de mayo 2025 $ 34000', '2025-05-16 10:35:41'),
(348, 38, 234, 1, 'Cliente cancela $ 110.000, de $20.000 de activación y plan de 500M $ 90.000', '2025-06-24 11:44:44'),
(349, 38, 208, 1, 'El 07/06/2025 se realiza traslado de la dirección antigua CRA 35 # 72B SUR - 32 a la dirección nueva CRA 34C # 72B -32 SUR, Código anterior 1AA0010, Nuevo código: 2AA0010. ', '2025-06-24 11:50:15'),
(350, 38, 235, 1, 'Cancela mes de Junio 2025 $ 45000', '2025-06-24 14:31:11'),
(351, 38, 236, 1, 'Cliente cancela mes de junio 2025 $75000', '2025-06-24 16:10:04'),
(352, 38, 183, 1, 'El 16/06/2025 se realiza traslado de la dirección antigua CRA 45B # 74 - 34  a la dirección nueva CRA 45B # 74 - 34 ,código antiguo 6JT0010; código nuevo 6JT0010;\r\n', '2025-06-25 10:26:29'),
(353, 38, 202, 1, 'Cliente realiza reconexion el dia  10/06/2025 pago $ 57000', '2025-06-25 15:53:54'),
(354, 38, 237, 1, 'Cliente contrata plan  750M por $ 120.000', '2025-07-04 10:18:49'),
(355, 38, 237, 1, 'Cliente cancela en la instalacion la factura del mes de Julio 2025 por $ 120.000', '2025-07-09 15:37:57'),
(356, 38, 238, 1, 'Cancela días de Julio $ 54000', '2025-07-18 15:05:48'),
(357, 38, 133, 1, 'Se solicita traslado en la misma casa del primer al segundo piso , me comunico al numero 301 5273855 me contesta el señor Jose Ruz hermano del titular, me indica que ellos hace como 4 meses solicitaron la cesión a nombre de la esposa, se confirma traslado para el dia 22 de julio 2025. se le indica cancelar $ 30000', '2025-07-21 15:16:54'),
(358, 38, 133, 1, 'El 22/07/2025 se realiza traslado de la dirección antigua a la dirección nueva CALLE 75 SUR # 45A - 15 ,código antiguo CALLE 75 SUR # 45A - 15; código nuevo 6JT0024;\r\n', '2025-07-24 15:49:33'),
(359, 38, 239, 1, 'CLIENTE CANCELA MES DE AGOSTO 2025 $ 45000', '2025-08-01 10:08:19'),
(360, 35, 147, 1, 'Paga Agosto y Septiembre', '2025-08-11 10:05:53'),
(361, 38, 240, 1, 'Contactos \r\n3117133598 andres Agudelo\r\n3143847053 Daniela Mes', '2025-08-13 10:26:16'),
(362, 38, 240, 1, 'Cliente cancela dias de agosto $ 46.000 al Nequi de Nicolas Aguirre', '2025-08-13 10:26:53'),
(363, 38, 178, 1, 'cliente solicita traslado para la dirección : CRA 34B # 72B - 33 SUR cobrar $ 30.000', '2025-08-14 08:46:46'),
(364, 38, 230, 1, 'Se recibe solicitud de traslado para la dirección  CALLE 74 SUR # 38 - 46 ,solo un punto de tv, valor a cancelar $ 30.000', '2025-08-15 12:40:11');
INSERT INTO `seguimiento` (`id_seguimiento`, `id_usuario`, `id_cliente`, `id_tipo_seguimiento`, `observacion`, `fecha_hora`) VALUES
(365, 38, 162, 1, 'El 13/08/2025 se realiza conexion del servicio, Código antiguo;6JT0063  código nuevo;6JT0037 plan antiguo: 300M; direccion antigua: CRA 45A # 75A - 72 .cliente cancela 33 de los dias de agosto 2025 al NEQUI\r\n', '2025-08-16 13:30:06'),
(366, 38, 178, 1, 'El 14/08/2025 se realiza traslado de la dirección antigua  CRA 35B # 72D -  16 a la dirección nueva CRA 34B # 72B - 33 SUR ,código antiguo 1AA0045; código nuevo 1AA0045;\r\n', '2025-08-20 13:28:40'),
(367, 38, 241, 1, 'Cancela servicio hasta septiembre 2025 $ 65000.', '2025-08-20 14:51:36'),
(368, 38, 230, 1, 'El 16/08/2025 se realiza traslado de la dirección antigua DIAG 73A BIS SUR # 38 - 37  a la dirección nueva CALLE 74 SUR # 38 - 46 ,código antiguo 15AA0034 ; código nuevo 15AA0034;\r\n', '2025-08-23 12:32:25'),
(369, 38, 241, 1, 'El 19/08/2025 se realiza instalacion de dos puntos de televisión, la cliente no cancela los dos puntos \r\n', '2025-08-26 11:20:00'),
(370, 38, 209, 1, 'El 03/09/2025 se realiza instalacion de dos puntos de tv adicionales, cancela solo $ 30000. \r\n\r\n', '2025-09-08 12:28:38'),
(371, 38, 164, 1, 'El 06/09/2025 se realiza conexión del servicio, código nuevo;2AA0012 plan antiguo: 300M; dirección antigua:CALLE 72B # 34A - 08 . Cancela los días de servicio del mes de septiembre $ 75000\r\n', '2025-09-12 11:27:42'),
(372, 38, 242, 1, 'Cancela días de septiembre 2025 $ 22000', '2025-09-23 14:49:24'),
(373, 38, 243, 1, 'Cancela mes de septiembre 2025 $ 29000', '2025-09-23 14:57:15'),
(374, 38, 244, 1, 'CANCELA MES DE SEPTIEMBRE2025 $ 22000', '2025-09-23 15:03:33'),
(375, 38, 245, 1, 'Cancela $ 22.000 dias de servicio de septiembre 2025', '2025-09-23 15:11:42'),
(376, 38, 246, 1, 'Cancela mes de octubre 2025 $ 45000', '2025-09-23 15:16:15'),
(377, 38, 247, 1, 'Se realiza instalacion de repetidor cancela$ 70.000 mas $ 85.000 del servicio de octubre 2025.', '2025-10-03 12:42:00'),
(379, 38, 248, 1, 'Cancela mes de octubre 2025 $ 65000 PAGO POR NEQUI', '2025-10-04 12:50:32'),
(380, 38, 249, 1, 'Cancela mes de servicio de octubre 2025 $ 45000', '2025-10-07 14:35:03'),
(381, 38, 250, 1, 'CANCELA MES DE OCTUBRE 2025 $ 55000', '2025-10-09 12:12:59'),
(382, 38, 218, 1, 'El 16/10/2025 se realiza conexion del servicio, para el mes de octubre 2025 solicita reconexiòn, Código antiguo; 1AA0055 código nuevo;11AA084 plan antiguo:100M ; direccion antigua: CRA 36A # 72D - 17 SUR . \r\n', '2025-10-21 12:24:55'),
(383, 38, 218, 1, 'Cancelo mes de noviembre a través de Nequi  $ 45000', '2025-10-21 12:26:47'),
(384, 38, 251, 1, 'Cliente cancela días de octubre 2025 $ 27.000 mas $ 100000 de deposito, ', '2025-10-21 12:40:58'),
(385, 38, 118, 1, 'Cliente solicita un punto adicional de tv , no se genera costo queda programada para el dia jueves 23/10/2025 modem en le segundo piso, punto adicional en el 1 er piso.', '2025-10-21 15:31:17'),
(386, 38, 5, 1, 'SE OBSEQUIAN LA INSTALACIÓN DE  DOS TDT AL USUARIO. (AUTORIZA NICOLAS AGUIRRE)', '2025-10-24 11:41:22'),
(387, 38, 118, 1, 'El 27/10/2025 se realiza la instalacion del punto adicional .', '2025-10-29 11:20:02'),
(388, 35, 210, 1, 'se realiza acuerdo por retener cliente, en noviembre paga 23mil y el mes de diciembre es gratis, vuelve a pagar para el mes de enero\r\n', '2025-10-30 16:40:12'),
(389, 38, 252, 1, 'CANCELA MES DE NOVIEMBRE 2025 $ 85000', '2025-11-08 12:34:45'),
(390, 38, 155, 1, 'El 05/11/2025 se realiza traslado de la dirección antigua DIAGONAL 73A BIS SUR 36D - 22 INT 14 a la dirección nueva DIAG 73A BIS SUR 36D - 22 INT 14 ,código antiguo 15AA0004 ; código nuevo15AA0004 \r\n', '2025-11-10 16:22:44'),
(391, 38, 253, 1, 'CLIENTE CANCELA $ 30000 DIAS DEL MES DE NOVIEMBRE 2025.', '2025-11-13 10:45:07'),
(392, 35, 98, 1, 'SE CONFIRMA INSTALACION 18/11/25 AM 300M + TV MÁS 1 REPETIDOR // PAGA EN LA INSTALACION 75.000 PESOS CORRESPONDIENTES AL MES DE DICIEMBRE// LOS 70.000 PESOS DEL REPETIDOR SE LE COBRAN EN DICIEMBRE // SE LE OBSEQUIAN DIAS RESTANTES DE NOVIEMBRE', '2025-11-14 12:38:53'),
(393, 38, 176, 1, 'Cliente realiza entrega de Moden y cancela los dias restantes, se entrega paz y salvo ', '2025-11-14 15:43:43'),
(394, 35, 147, 1, 'PAGA NOV Y DIC', '2025-11-20 10:19:48'),
(395, 38, 98, 1, 'El 18/11/2025 se realiza conexion del servicio,  cliente para el mes de NOVIEMBRE 2024 retira el servicio a paz y salvo y para el mes de NOVIEMBRE  2025 solicita reconexiòn, Código antiguo;2AA0001  código nuevo; 2AA0035 plan antiguo:800M+TV ; direccion antigua: Calle 72B SUR # 34B -04	. \r\n', '2025-11-21 12:50:12'),
(396, 38, 98, 1, 'Cancela servicio de DICIEMBRE 2025 POR $ 75.000 , QUEDA PENDIENTE EL VALOR DEL REPETIDOR QUE CANCELA EN DICIEMBRE POR $ 70000', '2025-11-21 12:52:44'),
(397, 38, 254, 1, 'Titular cancela $ 55000 del servicio del mes de Diciembre 2025.', '2025-12-01 14:48:45'),
(398, 38, 255, 1, 'Titular cancela servicio del mes de Diciembre 2025 $ 85000', '2025-12-01 15:00:43'),
(399, 38, 256, 1, 'Titular cancela mes de diciembre  2025 $45000', '2025-12-01 15:05:17'),
(401, 38, 257, 1, 'Cliente cancela servicio de Diciembre 2025 $ 85000 .', '2025-12-03 12:08:08'),
(402, 38, 258, 1, 'Cancela servicio del mes de Diciembre 2025 $ 55000', '2025-12-06 12:24:55'),
(403, 38, 259, 1, 'Cancelo al nequi $ 45000', '2025-12-06 12:29:46'),
(404, 38, 260, 1, 'Cancela por nequi $ 100.000', '2025-12-06 12:33:07'),
(405, 38, 261, 1, 'Cancela mes de Diciembre 2025 $ 65000', '2025-12-09 10:03:16'),
(406, 35, 180, 1, 'cliente tiene 2 servicios, el de la mama es 1aa089', '2025-12-09 14:27:47'),
(407, 35, 178, 1, 'Codigo 2AA033 coloca codigo ernesto G', '2025-12-09 15:30:07'),
(408, 35, 233, 2, 'Paga los 15 de cada mes (thomas)', '2025-12-10 15:43:30'),
(409, 35, 231, 2, 'Paga los 20 de cada mes', '2025-12-10 15:44:16'),
(410, 35, 238, 2, 'paga los 15 de cada mes (thomas)', '2025-12-10 15:46:09'),
(415, 35, 245, 2, 'paga los 15 (thomas)', '2025-12-10 16:37:50'),
(416, 35, 242, 2, 'paga los 15', '2025-12-10 16:38:04'),
(417, 35, 202, 2, 'paga los 15 (thomas)', '2025-12-10 16:45:52'),
(418, 38, 182, 1, 'Se realiza instalacion de dos TDT como obsequio.', '2025-12-11 09:51:39'),
(419, 35, 147, 2, 'paga enero y febrero', '2025-12-16 09:10:16'),
(421, 38, 262, 1, 'Cancela días de Diciembre 2025 $ 37000 , pago al nequi', '2025-12-18 09:58:09'),
(422, 35, 210, 2, 'Vuelve a pagar en marzo, autoriza nico', '2025-12-18 12:43:18'),
(424, 35, 119, 2, 'pago mes adelantado (pago enero thomas)', '2025-12-26 16:24:36'),
(425, 35, 213, 1, 'CORTE: Se realiza llamada 	3243901015 contesta familiar indicando que le dará la información al titular ya que el creyó que había pagado ya el mes de diciembre, pero que le dirá para que se ponga al día. (PAULA)', '2025-12-27 09:25:46'),
(427, 35, 201, 1, 'CORTE: Se realiza llamada contesta titular al 3242833047 y luego de decir que era por parte de WM cuelga y no vuelve a contestar al llamado. (PAULA)', '2025-12-27 09:27:35'),
(429, 35, 101, 1, 'CORTE: Se realiza llamado contesta primera linea 3208861777 una señora indicando que no conoce al titular que no la vuelvan a llamar, 3123614558 segunda linea se va directo a buzón de voz. (PAULA)', '2025-12-27 09:29:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soportes`
--

CREATE TABLE `soportes` (
  `id_soportes` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_ejecucion` date NOT NULL,
  `observaciones` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_responsable` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Tabla que almacena los servicios de soportes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` int(11) NOT NULL,
  `id_estado_ticket` int(11) NOT NULL,
  `id_tipo_ticket` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `observacion_ticket` varchar(500) NOT NULL,
  `observacion_ticket_tec` text DEFAULT NULL,
  `fecha_hora` datetime NOT NULL,
  `fecha_hora_tec` datetime DEFAULT NULL,
  `id_usuario_fin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_contribuyente`
--

CREATE TABLE `tipo_contribuyente` (
  `id_tipo_contribuyente` int(11) NOT NULL,
  `tipo_contribuyente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_contribuyente`
--

INSERT INTO `tipo_contribuyente` (`id_tipo_contribuyente`, `tipo_contribuyente`) VALUES
(0, 'Regimen Comun'),
(1, 'Regimen Simplificado'),
(2, 'Gran Contribuyente'),
(3, 'Tercero Exterior');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_identificacion`
--

CREATE TABLE `tipo_identificacion` (
  `id_tipo_identificacion` int(11) NOT NULL,
  `tipo_identificacion` varchar(100) NOT NULL,
  `valor_identificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_identificacion`
--

INSERT INTO `tipo_identificacion` (`id_tipo_identificacion`, `tipo_identificacion`, `valor_identificacion`) VALUES
(0, 'NIT', 0),
(1, 'CC', 1),
(2, 'CE', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_plan`
--

CREATE TABLE `tipo_plan` (
  `id_tipo_plan` int(11) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `obs` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_plan`
--

INSERT INTO `tipo_plan` (`id_tipo_plan`, `plan`, `obs`) VALUES
(1, 'Hogar', ''),
(2, 'Comercial', ''),
(3, 'Corporativo', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_seguimiento`
--

CREATE TABLE `tipo_seguimiento` (
  `id_tipo_seguimiento` int(11) NOT NULL,
  `tipo_seguimiento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_seguimiento`
--

INSERT INTO `tipo_seguimiento` (`id_tipo_seguimiento`, `tipo_seguimiento`) VALUES
(1, 'Seguimiento'),
(2, 'Facturación ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--

CREATE TABLE `tipo_servicio` (
  `id_tipo_servicio` int(11) NOT NULL,
  `tipo_servicio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_servicio`
--

INSERT INTO `tipo_servicio` (`id_tipo_servicio`, `tipo_servicio`) VALUES
(1, 'Internet'),
(2, 'Internet + TV'),
(3, 'Internet + TV + Telefonia'),
(4, 'Internet + Telefonia'),
(5, 'television');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_ticket`
--

CREATE TABLE `tipo_ticket` (
  `id_tipo_ticket` int(11) NOT NULL,
  `tipo_ticket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_ticket`
--

INSERT INTO `tipo_ticket` (`id_tipo_ticket`, `tipo_ticket`) VALUES
(1, 'Lentitud'),
(2, 'Pon en rojo'),
(3, 'Sin WAN'),
(4, 'Sin Gestión Remota'),
(5, 'Falla en Nodo'),
(6, 'Otros'),
(7, 'Traslado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `identificacion` varchar(100) NOT NULL,
  `nombre_1` varchar(100) NOT NULL,
  `nombre_2` varchar(100) NOT NULL,
  `apellido_1` varchar(100) NOT NULL,
  `apellido_2` varchar(100) NOT NULL,
  `telefono_1` varchar(100) NOT NULL,
  `telefono_2` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `correo_personal` varchar(100) NOT NULL,
  `correo_corporativo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `identificacion`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `telefono_1`, `telefono_2`, `direccion`, `correo_personal`, `correo_corporativo`) VALUES
(1, '1022998351', 'Johan', 'Daniel', 'Aguirre', 'Carpeta', '3202881313', '3202881313', 'Cra 7 C Este # 89 c 82 Sur', 'johandanielaguirre@hotmail.es', 'johanaguirre@inttelgo.com'),
(34, '1024594196', 'Carlos', 'Daniel ', 'Arias ', 'Godoy', '3175405902', '', 'Diagonal 73 a bis sur  36 d 22 int 3', 'carlosdanielariasgodoy@gmail.com', 'carlosarias@webmastercolombia.net'),
(35, '1000353465', 'Angel', 'Nicolas', 'Aguirre', 'Carpeta', '3245056199', '', 'Cra 7c Este #89c - 82 sur', 'angelnicolasaguirre3@gmail.com', 'angelaguirre@webmastercolombia.net'),
(36, '1033699637', 'Edwin', 'Antonio', 'Lemus', 'Silva', '3108775780', '', 'Cra 18 F69 d 68 sur', ' edwinlemuss@gmail.com', ' edwinlemuss@gmail.com'),
(37, ' 1032460589', 'Vanessa', 'Carolina', 'Rodriguez', 'Perez', '3057829529', '3024547875', 'Kr 37 Este # 44 a 91', 'vanes-ssa14@hotmail.com', 'vanessarodriguez@inttelgo.com'),
(38, 'Dg 69A sur #18u-21', 'Nora', 'Lilian', 'Cortes', 'Lobaton', '3107903521', '', 'casa leidy', 'lilian@gmail.com', 'liliancortes@inttelgo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_has_profile`
--

CREATE TABLE `usuario_has_profile` (
  `usuario_has_profile` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `usuario_login` varchar(300) DEFAULT NULL,
  `pass_login` varchar(100) DEFAULT NULL,
  `id_estado_usuario` int(11) NOT NULL,
  `id_oficina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario_has_profile`
--

INSERT INTO `usuario_has_profile` (`usuario_has_profile`, `id_usuario`, `id_perfil`, `usuario_login`, `pass_login`, `id_estado_usuario`, `id_oficina`) VALUES
(1, 1, 1, 'Johan', 'Johan1037', 1, 2),
(23, 34, 5, 'Carlos', '3124635570', 2, 2),
(24, 35, 1, 'Nicolas', '20202578101', 1, 2),
(25, 36, 3, 'edwinlemus', '87654321', 1, 2),
(26, 37, 3, 'vanessarodriguez', 'Anaramiro1', 1, 2),
(27, 38, 5, 'liliancortes', '1032412276NC', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`id_barrio`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_estado_cliente_estado_cliente` (`id_estado_cliente`),
  ADD KEY `id_tipo_plan_tipo_plan_cliente` (`id_plan`),
  ADD KEY `id_ciudad` (`id_ciudad`),
  ADD KEY `id_barrio` (`id_barrio`),
  ADD KEY `id_tipo_identificacion` (`id_tipo_identificacion`),
  ADD KEY `id_tipo_contribuyente` (`id_tipo_contribuyente`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `estado_cliente`
--
ALTER TABLE `estado_cliente`
  ADD PRIMARY KEY (`id_estado_cliente`);

--
-- Indices de la tabla `estado_factura`
--
ALTER TABLE `estado_factura`
  ADD PRIMARY KEY (`id_estado_factura`);

--
-- Indices de la tabla `estado_instalacion`
--
ALTER TABLE `estado_instalacion`
  ADD PRIMARY KEY (`id_estado_instalacion`);

--
-- Indices de la tabla `estado_soporte`
--
ALTER TABLE `estado_soporte`
  ADD PRIMARY KEY (`id_estado_soporte`);

--
-- Indices de la tabla `estado_ticket`
--
ALTER TABLE `estado_ticket`
  ADD PRIMARY KEY (`id_estado_ticket`);

--
-- Indices de la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  ADD PRIMARY KEY (`id_estado_usuario`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_consecutivo` (`id_consecutivo`),
  ADD KEY `id_estado_factura` (`id_estado_factura`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `factura_consecutivo`
--
ALTER TABLE `factura_consecutivo`
  ADD PRIMARY KEY (`id_factura_consecutivo`);

--
-- Indices de la tabla `fb`
--
ALTER TABLE `fb`
  ADD PRIMARY KEY (`id_fb`);

--
-- Indices de la tabla `informe_diario`
--
ALTER TABLE `informe_diario`
  ADD PRIMARY KEY (`id_informe_diario`);

--
-- Indices de la tabla `instalacion`
--
ALTER TABLE `instalacion`
  ADD PRIMARY KEY (`id_instalacion`);

--
-- Indices de la tabla `mapa_nodos`
--
ALTER TABLE `mapa_nodos`
  ADD PRIMARY KEY (`id_mapa_nodos`);

--
-- Indices de la tabla `medio_pago`
--
ALTER TABLE `medio_pago`
  ADD PRIMARY KEY (`id_medio_pago`);

--
-- Indices de la tabla `obs_instalacion`
--
ALTER TABLE `obs_instalacion`
  ADD PRIMARY KEY (`id_obs_instalacion`);

--
-- Indices de la tabla `oficina`
--
ALTER TABLE `oficina`
  ADD PRIMARY KEY (`id_oficina`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `perfil_has_permiso`
--
ALTER TABLE `perfil_has_permiso`
  ADD KEY `id_perfil` (`id_perfil`),
  ADD KEY `id_permiso` (`id_permiso`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id_plan`),
  ADD KEY `id_tipo_plan` (`id_tipo_plan`),
  ADD KEY `id_servicio` (`id_tipo_servicio`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`id_seguimiento`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_tipo_seguimiento` (`id_tipo_seguimiento`);

--
-- Indices de la tabla `soportes`
--
ALTER TABLE `soportes`
  ADD PRIMARY KEY (`id_soportes`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Indices de la tabla `tipo_contribuyente`
--
ALTER TABLE `tipo_contribuyente`
  ADD PRIMARY KEY (`id_tipo_contribuyente`);

--
-- Indices de la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  ADD PRIMARY KEY (`id_tipo_identificacion`);

--
-- Indices de la tabla `tipo_plan`
--
ALTER TABLE `tipo_plan`
  ADD PRIMARY KEY (`id_tipo_plan`);

--
-- Indices de la tabla `tipo_seguimiento`
--
ALTER TABLE `tipo_seguimiento`
  ADD PRIMARY KEY (`id_tipo_seguimiento`);

--
-- Indices de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  ADD PRIMARY KEY (`id_tipo_servicio`);

--
-- Indices de la tabla `tipo_ticket`
--
ALTER TABLE `tipo_ticket`
  ADD PRIMARY KEY (`id_tipo_ticket`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuario_has_profile`
--
ALTER TABLE `usuario_has_profile`
  ADD PRIMARY KEY (`usuario_has_profile`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_perfil` (`id_perfil`),
  ADD KEY `id_estado_usuario` (`id_estado_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barrio`
--
ALTER TABLE `barrio`
  MODIFY `id_barrio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `estado_cliente`
--
ALTER TABLE `estado_cliente`
  MODIFY `id_estado_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `estado_factura`
--
ALTER TABLE `estado_factura`
  MODIFY `id_estado_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estado_instalacion`
--
ALTER TABLE `estado_instalacion`
  MODIFY `id_estado_instalacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `estado_soporte`
--
ALTER TABLE `estado_soporte`
  MODIFY `id_estado_soporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estado_ticket`
--
ALTER TABLE `estado_ticket`
  MODIFY `id_estado_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  MODIFY `id_estado_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura_consecutivo`
--
ALTER TABLE `factura_consecutivo`
  MODIFY `id_factura_consecutivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fb`
--
ALTER TABLE `fb`
  MODIFY `id_fb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `informe_diario`
--
ALTER TABLE `informe_diario`
  MODIFY `id_informe_diario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `instalacion`
--
ALTER TABLE `instalacion`
  MODIFY `id_instalacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `mapa_nodos`
--
ALTER TABLE `mapa_nodos`
  MODIFY `id_mapa_nodos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `medio_pago`
--
ALTER TABLE `medio_pago`
  MODIFY `id_medio_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `obs_instalacion`
--
ALTER TABLE `obs_instalacion`
  MODIFY `id_obs_instalacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `oficina`
--
ALTER TABLE `oficina`
  MODIFY `id_oficina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `plan`
--
ALTER TABLE `plan`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `id_seguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;

--
-- AUTO_INCREMENT de la tabla `soportes`
--
ALTER TABLE `soportes`
  MODIFY `id_soportes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_contribuyente`
--
ALTER TABLE `tipo_contribuyente`
  MODIFY `id_tipo_contribuyente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  MODIFY `id_tipo_identificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_plan`
--
ALTER TABLE `tipo_plan`
  MODIFY `id_tipo_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_seguimiento`
--
ALTER TABLE `tipo_seguimiento`
  MODIFY `id_tipo_seguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  MODIFY `id_tipo_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_ticket`
--
ALTER TABLE `tipo_ticket`
  MODIFY `id_tipo_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `usuario_has_profile`
--
ALTER TABLE `usuario_has_profile`
  MODIFY `usuario_has_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_tipo_identificacion`) REFERENCES `tipo_identificacion` (`id_tipo_identificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_barrio_cliente` FOREIGN KEY (`id_barrio`) REFERENCES `barrio` (`id_barrio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_ciudad_cliente` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_estado_cliente_estado_cliente` FOREIGN KEY (`id_estado_cliente`) REFERENCES `estado_cliente` (`id_estado_cliente`),
  ADD CONSTRAINT `id_tipo_plan_tipo_plan_cliente` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id_plan`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_estado_factura`) REFERENCES `estado_factura` (`id_estado_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `perfil_has_permiso`
--
ALTER TABLE `perfil_has_permiso`
  ADD CONSTRAINT `id_perfil_perfil_has_permiso` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_permiso_perfil_has_permiso` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `id_tipo_plan_id_tipo_servicio` FOREIGN KEY (`id_tipo_servicio`) REFERENCES `tipo_servicio` (`id_tipo_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_tipo_plan_tipo_plan` FOREIGN KEY (`id_tipo_plan`) REFERENCES `tipo_plan` (`id_tipo_plan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `seguimiento_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seguimiento_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seguimiento_ibfk_3` FOREIGN KEY (`id_tipo_seguimiento`) REFERENCES `tipo_seguimiento` (`id_tipo_seguimiento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_has_profile`
--
ALTER TABLE `usuario_has_profile`
  ADD CONSTRAINT `id_estado_usuario_has_profile` FOREIGN KEY (`id_estado_usuario`) REFERENCES `estado_usuario` (`id_estado_usuario`),
  ADD CONSTRAINT `id_perfil_usuario_has_profile` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_usuario_has_profile` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-11-2025 a las 17:41:50
-- Versión del servidor: 10.11.14-MariaDB-cll-lve
-- Versión de PHP: 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bukmycl_susi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Announcement`
--

CREATE TABLE `Announcement` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `authorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categoria`
--

CREATE TABLE `Categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cliente`
--

CREATE TABLE `Cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `razonSocial` varchar(191) DEFAULT NULL,
  `rut` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `telefono` varchar(191) DEFAULT NULL,
  `direccion` varchar(191) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `userId` int(11) NOT NULL,
  `mediosDePago` text DEFAULT NULL,
  `paymentStatus` enum('DEUDOR','PAGADO','PENDIENTE') NOT NULL DEFAULT 'PENDIENTE',
  `comuna` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Cliente`
--

INSERT INTO `Cliente` (`id`, `nombre`, `razonSocial`, `rut`, `email`, `telefono`, `direccion`, `latitud`, `longitud`, `createdAt`, `updatedAt`, `userId`, `mediosDePago`, `paymentStatus`, `comuna`) VALUES
(159, 'Juan Alejandro Fernández López', 'Juan Alejandro Fernández López', '10552434-K', 'fotografia.fernandezl@gmail.com', '56953074617', 'Pasaje Antofagasta 379 - Población El Mirador', NULL, NULL, '2025-10-11 22:48:25.610', '2025-10-11 22:48:27.948', 1, 'Crédito 3 Días', 'PENDIENTE', NULL),
(160, 'Joel Michel Riquelme Becerra', 'Joel Michel Riquelme Becerra', '13285735-0', 'joel.riquelme35@gmail.com', '56963249075', 'Santa Rosa 480', NULL, NULL, '2025-10-11 22:48:25.748', '2025-10-11 22:48:28.099', 1, 'Efectivo', 'PENDIENTE', NULL),
(161, 'Daniel Eduardo Allende Vargas', 'Daniel Eduardo Allende Vargas', '18769094-3', 'dallendev@outlook.com', '56995274900', 'Avenida Héctor Humeres 263', NULL, NULL, '2025-10-11 22:48:25.875', '2025-10-11 22:48:28.426', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(162, 'Inmobiliaria e Inversiones Aros Andina', 'Inmobiliaria e Inversiones Aros Andina', '76305579-5', 'arosandina@gmail.com', '56342294458', 'Esmeralda 277', NULL, NULL, '2025-10-11 22:48:26.080', '2025-10-11 22:48:26.080', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(163, 'Comercial Korama SpA', 'Comercial Korama SpA', '77355484-6', 'corimera@gmail.com', '56990891905', 'Rancagua 594', NULL, NULL, '2025-10-11 22:48:26.204', '2025-10-11 22:48:29.421', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(164, 'Constanza Gisele Godoy Corretaje agrícola EIRL', 'Constanza Gisele Godoy Corretaje agrícola EIRL', '76546742-K', 'nutalchile@gmail.com', '56996871429', 'Los Pinos 9100', NULL, NULL, '2025-10-11 22:48:26.306', '2025-10-11 22:48:28.657', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(165, 'Sociedad Panificadora Centenario Ltda.', 'Sociedad Panificadora Centenario Ltda.', '76770980-3', '-', '-', 'Paraguay 500', NULL, NULL, '2025-10-11 22:48:26.429', '2025-10-11 22:48:26.429', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(166, 'Sociedad Lobces Ltda.', 'Sociedad Lobces Ltda.', '77013694-6', 'alimentos.speranza.nuestra@gmail.com', '56953513974', 'Bernardo O´Higgins 488', NULL, NULL, '2025-10-11 22:48:26.818', '2025-10-11 22:48:29.084', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(167, 'Panadería y Pastelería Jesús Alberto Perdomo Abre', 'Panadería y Pastelería Jesús Alberto Perdomo Abre', '77070055-8', 'vasquezkeila376@gmail.com', '56963457078', 'Freire 339', NULL, NULL, '2025-10-11 22:48:26.954', '2025-10-11 22:48:26.954', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(168, 'Nois Frut SpA', 'Nois Frut SpA', '77183978-9', 'Abelurbinac@hotmail.cl', '56967286571', 'Alto El Puerto Casa Patronal S/N', NULL, NULL, '2025-10-11 22:48:27.132', '2025-10-11 22:48:29.266', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(169, 'Minimarket Jenor Romero E.I.R.L.', 'Minimarket Jenor Romero E.I.R.L.', '77420025-8', 'rrjkike@gmail.com', '56940659040', 'Lt A2 Avenida Alessandri 1609 - San Esteban', NULL, NULL, '2025-10-11 22:48:27.416', '2025-10-11 22:48:27.416', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(170, 'La Huella SpA', 'La Huella SpA', '77479887-0', 'vanesalfate1@gmail.com', '56982615646', 'Huellacanal 85', NULL, NULL, '2025-10-11 22:48:27.592', '2025-10-11 22:48:29.588', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(171, 'Paola Martínez Vargas', 'Paola Martínez Vargas', '8338610-K', 'paolamartinezvargas@gmail.com', '56975609948', 'Portales 739 - Local 4', NULL, NULL, '2025-10-11 22:48:27.765', '2025-10-11 22:48:29.781', 1, 'C/Entr. Ch. 30 Días', 'PENDIENTE', NULL),
(172, 'Juan Carlos Rojas Cornejo', 'Juan Carlos Rojas Cornejo', '9350698-7', 'todotransporte_jr@hotmail.com', '56950466664', 'Parcela 29 Lote B sitio 32 - Hornos de Huaquén', NULL, NULL, '2025-10-11 22:48:27.851', '2025-10-11 22:48:27.851', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(173, 'Evelyn Catherine Cabrera Aguilera', 'Evelyn Catherine Cabrera Aguilera', '13982138-6', 'ev.catherine.c@gmail.com', '56984106478', 'Hermano Fernando de la Fuente', NULL, NULL, '2025-10-11 22:48:28.283', '2025-10-11 22:48:28.283', 1, 'Transferencia Anticipada', 'PENDIENTE', NULL),
(174, 'Rosa Barahona Calderon', 'Rosa Barahona Calderon', NULL, 'rosa.barahonacalderon@gmsil.com', '+56991615389', 'Santamaria ', -33.45694, -70.64827, '2025-10-14 12:58:19.527', '2025-10-14 12:58:19.527', 2, 'Efectivo', 'PENDIENTE', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `NewsArticle`
--

CREATE TABLE `NewsArticle` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `authorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `NewsArticle`
--

INSERT INTO `NewsArticle` (`id`, `title`, `content`, `createdAt`, `authorId`) VALUES
(1, 'Version 0.4.1b', 'Se implementa sección de noticias en Home y sistema de mensajería del administrador hacia los usuarios.', '2025-10-06 13:58:00.439', 1),
(2, 'Version 0.4.2b', 'Agregado Sistema de informacion de deuda de clientes.', '2025-10-06 16:29:34.400', 1),
(3, 'Version 0.4.5b', 'Se Agrego Perfil para que aparesca en la nota de venta.', '2025-10-06 16:59:40.701', 1),
(4, 'Version 0.4.5.1b', 'se agrego funcion para que cuando se exporte nota de venta venga automaticamente con su numero.', '2025-10-06 19:32:31.548', 1),
(5, 'Version 0.4.5.4b', 'se arreglo visualizacion de mapas en ficha de clientes', '2025-10-07 18:07:33.996', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Producto`
--

CREATE TABLE `Producto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(191) NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `precioNeto` double NOT NULL,
  `precioTotal` double NOT NULL,
  `precioKilo` double DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `categoriaId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Producto`
--

INSERT INTO `Producto` (`id`, `codigo`, `nombre`, `precioNeto`, `precioTotal`, `precioKilo`, `createdAt`, `updatedAt`, `categoriaId`) VALUES
(1, 'BOMPA2009', 'Bombilla Papel 200x9mm (4.000 Unid.)', 45000, 53550, NULL, '2025-10-05 22:13:14.338', '2025-10-05 22:13:14.338', NULL),
(2, 'CAPMG0701', 'Cápsulas Perg. Blanca Nro.7 45x27 (Caja 32.000 Unid.)', 193116, 229808.04, NULL, '2025-10-05 22:13:14.340', '2025-10-05 22:13:14.340', NULL),
(3, 'BOMPA2005', 'Bombilla Papel 200x5mm (20x250 Unid.)(5.000 Unid.)', 40666, 48392.54, NULL, '2025-10-05 22:13:14.339', '2025-10-05 22:13:14.339', NULL),
(4, 'CAPAP1002', 'Cápsulas  Kraft Autoportante Color Cupcakes Nro.10 60X35 (Caja 250 Unid.)', 22596, 26889.24, NULL, '2025-10-05 22:13:14.339', '2025-10-05 22:13:14.339', NULL),
(5, 'CAPBB0301', 'Cápsulas Papel Oro Nro.3 28x21 (Caja 1.500 Unid.)', 18064, 21496.16, NULL, '2025-10-05 22:13:14.339', '2025-10-05 22:13:14.339', NULL),
(6, 'CAPBB0203', 'Cápsulas Perg. Marrón Nro.2 26x17 (Caja 2.500 Unid.)', 12156, 14465.64, NULL, '2025-10-05 22:13:14.340', '2025-10-05 22:13:14.340', NULL),
(7, 'CAPTL1402', 'Tulipas 140/50 Amarilla (Caja 2.000 Unid.)', 88241, 105006.79, NULL, '2025-10-05 22:13:14.340', '2025-10-05 22:13:14.340', NULL),
(8, 'CAPMG1403', 'Cápsulas P.S.Nro.8 Vichy Verde 50x30 (Caja 30.000 Unid.)', 252463, 300430.97, NULL, '2025-10-05 22:13:14.340', '2025-10-05 22:13:14.340', NULL),
(9, 'CAPAP0501', 'Capsula Blanca Autoportante 50x38 (Caja 7.500 Unid.)', 245856, 292568.64, NULL, '2025-10-05 22:13:14.339', '2025-10-05 22:13:14.339', NULL),
(10, 'CAPMG0703', 'Cápsulas Perg. Marrón Nro.7 45x27 (Caja 6.000 Unid.)', 43696, 51998.24, NULL, '2025-10-05 22:13:14.340', '2025-10-05 22:13:14.340', NULL),
(11, 'CAPBB0202', 'Cápsulas Papel Plata Nro.2 26x17 (Caja 1.500 Unid.)', 15074, 17938.06, NULL, '2025-10-05 22:13:14.340', '2025-10-05 22:13:14.340', NULL),
(12, 'CAPBB0302', 'Cápsulas Perg. Colores Nro.3 28x21 (Caja 1.500 Unid.)', 17865, 21259.35, NULL, '2025-10-05 22:13:14.339', '2025-10-05 22:13:14.339', NULL),
(13, 'CAPTL1502', 'Mix Tulipas 140/50 Marrón (Cj. 250 Unid.)', 11250, 13387.5, NULL, '2025-10-05 22:13:14.340', '2025-10-05 22:13:14.340', NULL),
(14, 'CAPMG0702', 'Cápsulas Perg. Colores Nro.7 45x27 (Caja 1.000 Unid.)', 10557, 12562.83, NULL, '2025-10-05 22:13:14.339', '2025-10-05 22:13:14.339', NULL),
(15, 'CAPAP1401', 'Cápsulas Kraft Dec. Autoportante Nro.14 90x25 (Caja 1.000 Unid.)', 54754, 65157.25999999999, NULL, '2025-10-05 22:13:14.339', '2025-10-05 22:13:14.339', NULL),
(16, 'CAPAP1003', 'Cápsulas Kraft Autoportante Dec. Nro.10 60x35 (Caja 1.000 Unid.)', 39698, 47240.62, NULL, '2025-10-05 22:13:14.339', '2025-10-05 22:13:14.339', NULL),
(17, 'CAPTL1503', 'Mix Tulipas Periódico 140/50 (Cj. 250 Unid.)', 11250, 13387.5, NULL, '2025-10-05 22:13:14.340', '2025-10-05 22:13:14.340', NULL),
(18, 'CAPTL1522', 'Tulipa 140/50 Marrón con Dorado (Cj. 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(19, 'CAPTL1403', 'Tulipas Muffins 140/50 Blanca (Caja 2.000 Unid.)', 55306, 65814.14, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(20, 'CAPTL1521', 'Tulipa 150/50 Marrón con Logo Dorado Guaioio (Cj. 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(21, 'CAPTL1523', 'Tulipa 150/50 Marrón con Dorado(Cj. 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(22, 'CAPTL1525', 'Tulipa 150/50 Negra (Cj. 3.200 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(23, 'CAPTL1524', 'Mix Tulipa 150/50 Marrón con Dorado (Cj. 250 Unid.)', 11250, 13387.5, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(24, 'CAPTL1404', 'Tulipas Muffins 140/50 Marrón (Caja 2.000 Unid.)', 57776, 68753.44, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(25, 'CAPTL1407', 'Tulipas Verde 140/50 (Caja 2.000 Unid.)', 88241, 105006.79, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(26, 'CAPTL1405', 'Tulipas Muffins Periódico 140/50 (Caja 2.000 Unid.)', 85695, 101977.05, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(27, 'CAPTL1527', 'Tulipa 140/50 Marrón (Cj. 4.000 Unid.)', 128000, 152320, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(28, 'CAPTL1406', 'Tulipas Rojas 140/50 (Caja 2.000 Unid.)', 88241, 105006.79, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(29, 'CAPTL1504', 'Tulipas 140/50 Café (Caja 2.000 Unid.)', 86721, 103197.99, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(30, 'CAPTL1505', 'Tulipas 140/50 Blanca (Caja 2.000 Unid.)', 88241, 105006.79, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(31, 'CAPTL1526', 'Tulipa 140/50 Marrón (Cj. 2.000 Unid.)', 64000, 76160, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(32, 'CAPTL1408', 'Tulipas 140/50 Amarilla (Caja 3.200 Unid.)', 104495, 124349.05, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(33, 'CAPTL1507', 'Tulipa 140/50 Marrón (Caja 6.400 Unid.)', 174551, 207715.69, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(34, 'CAPTL1529', 'Tulipa 150/50 Marrón (Cj. 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(35, 'CAPTL1508', 'Tulipa 140/50 Fucsia (Caja 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(36, 'CAPTL1528', 'Tulipa Marrón 140/50 (Cj. 5.000 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(37, 'CAPTL1509', 'Tulipa 140/50 Naranja (Caja 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(38, 'CAPTL1411', 'Tulipas 140/50 Celeste (Caja 3.200 Unid.)', 104495, 124349.05, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(39, 'CAPTL1530', 'Tulipa 140/50 Marrón (Paquete 100 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(40, 'CAPTL1512', 'Tulipa 140/50 Roja (Caja 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(41, 'CAPTL1510', 'Tulipa 140/50 Celeste (Caja 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(42, 'CAPTL1532', 'Tulipa 140/50 Roja (Paquete 100 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(43, 'CAPTL1511', 'Tulipa 140/50 Verde (Caja 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(44, 'CAPTL1409', 'Tulipas 140/50 Verde (Caja 3.200 Unid.)', 104495, 124349.05, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(45, 'CAPTL1531', 'Tulipa 140/50 Verde (Paquete 100 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(46, 'CAPTL1410', 'Tulipas 140/50 Naranja (Caja 3.200 Unid.)', 104495, 124349.05, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(47, 'CAPTL1533', 'Tulipa 140/50 Naranja (Paquete 100 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(48, 'CAPTL1535', 'Tulipa 140/50 Negra (Paquete 100 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(49, 'CAPTL1413', 'Tulipas 140/50 Roja (Caja 3.200 Unid.)', 104495, 124349.05, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(50, 'CAPTL1534', 'Tulipa 140/50 Navidad (Paquete 100 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(51, 'CAPTL1513', 'Tulipa 140/50 Amarilla (Caja 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(52, 'CAPTL1412', 'Tulipas 140/50 Fucsia (Caja 3.200 Unid.)', 104495, 124349.05, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(53, 'CAPTP0101', 'Cápsulas P.S.Nro.8 Topos Azul 50x30 (Caja 1.000 Unid.)', 9928, 11814.32, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(54, 'CAPTL1516', 'Mix Tulipas San Valentín (Caja 250 Unid.)', 11250, 13387.5, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(55, 'CAPTL1414', 'Tulipas 140/50 Brown It. (Caja 3.200 Unid.)', 105817, 125922.23, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(56, 'CAPTL1515', 'Mix Tulipas Navidad 140/50 (Caja 250 Unid.)', 11250, 13387.5, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(57, 'CAPAP1001', 'Cápsulas Estrella Kraft Autoportante Dec. Nro.10 40x45 (Caja 1.000 Unid.)', 43671, 51968.49, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(58, 'CAPTP0102', 'Cápsulas P.S.Nro.8 Topos Rosada 50x30 (Caja 1.000 Unid.)', 9928, 11814.32, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(59, 'CAPTL1415', 'Tulipas 160/50 Step Marrón (Caja 2.250 Unid.)', 68060, 80991.4, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(60, 'CAPTL1514', 'Mix Tulipas Halloween 140/50 (Caja 250 Unid.)', 11250, 13387.5, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(61, 'CAPTL1416', 'Mix Tulipas 110/30 Marrón (Cj. 250 Unid.)', 13075, 15559.25, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(62, 'CAPTL1417', 'Tulipas Muffins 110/30 Marrón (Caja 3.000 Unid.)', 107936, 128443.84, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(63, 'CARBLLC02', 'Blonda Litos Calada 34x41 Cmts. (Paq. 10px100 Unid.)', 65914, 78437.66, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(64, 'CAPTL1501', 'Mix Tulipas 140/50 (Caja 250 Unid.)', 11250, 13387.5, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(65, 'CAPTL1419', 'Tulipas 140/50 Blanca (Cj. 3200 Unid.)', 105817, 125922.23, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(66, 'CAPTL1418', 'Tulipas 160/50 Step Marrón (Caja 2.160 Unid.)', 80000, 95200, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(67, 'CAPTL1420', 'Tulipa 150/50 Marrón con Dorado (Cj. 3.200 Unid.)', 105817, 125922.23, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(68, 'CARBD0201', 'Bandeja Cartón Oro Nro.2 170x110 (Paq. 100 Unid.)', 4774, 5681.059999999999, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(69, 'CAPTP0103', 'Cápsulas P.S.Nro.8 Topos Verde 50x30 (Caja 1.000 Unid.)', 9043, 10761.17, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(70, 'CARBLLC03', 'Blonda Litos Calada 45x55 Cmts. (Paq. 10px100 Unid.)', 113699, 135301.81, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(71, 'CARBD1201', 'Bandeja Cartón Negro Nro.12 310x380 (Paq. 50 Unid.)', 23050, 27429.5, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(72, 'CARBLLC05', 'Blonda Litos Calada 45x55 Cmts. (Paq. 10px100 Unid.)', 113699, 135301.81, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(73, 'CARBD0202', 'Bandeja Cartón Plata Nro.2 170x110 (Paq. 100 Unid.)', 5072, 6035.679999999999, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(74, 'CARBLLC10', 'Blonda Litos Calada 34x41 Cmts. (Paq. 10px100 Unid.)', 113699, 135301.81, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(75, 'CARBD1202', 'Bandeja Cartón Plata Nro.12 310x380 (Paq. 50 Unid.)', 21793, 25933.67, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(76, 'CARBLLC24', 'Rodal Litos Calado 25 Cmts. (Paq. 10px100 Unid.)', 35935, 42762.65, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(77, 'CARBLLC25', 'Rodal Litos Calado 32 Cmts. (Paq. 10px100 Unid.)', 52012, 61894.28, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(78, 'CARBLLC26', 'Rodal Litos Calado 35 Cmts. (Paq. 10px100 Unid.)', 60354, 71821.26, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(79, 'CARBLLC27', 'Rodal Litos Calado 38 Cmts. (Paq. 10px100 Unid.)', 72496, 86270.23999999999, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(80, 'CARBLLC28', 'Rodal Litos Calado 40 Cmts. (Paq. 10px100 Unid.)', 72028, 85713.31999999999, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(81, 'CAPTL1517', 'Mix Tulipas Fiestas Patrias (Caja 250 Unid.)', 11250, 13387.5, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(82, 'CAPTL1518', 'Tulipa 140/50 Marrón (Caja 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(83, 'CARBLLC29', 'Rodal Litos Calado 45 Cmts. (Paq. 10px100 Unid.)', 91998, 109477.62, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(84, 'CARBLLC33', 'Blonda Litos Calada 13x31 Cmts. (Paq. 10px100 Unid.)', 46610, 55465.89999999999, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(85, 'CARBLLC34', 'Blonda Litos Calada 16x42 Cmts. (Paq. 10px100 Unid.)', 48700, 57953, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(86, 'CARBLLC47', 'Rodal Litos Calados 40cm (100 Unid.)', 7800, 9282, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(87, 'CAPTL1519', 'Tulipa 160/50 Blanca (Caja 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(88, 'CARBD1301', 'Bandeja Cartón E Oro Nro.13 340x420 (Paq. 50 Unid.)', 29781, 35439.39, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(89, 'CAPMG1404', 'Cápsulas P.S.Nro.8 Estrella Azul 50x30 (Caja 30.000 Unid.)', 252463, 300430.97, NULL, '2025-10-05 22:13:14.341', '2025-10-05 22:13:14.341', NULL),
(90, 'CAPTL1520', 'Tulipa 140/50 Blanca (Caja 2.400 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(91, 'CAPMG0801', 'Cápsulas Perg. Star Nro.8 Amarillo 50x30 (Caja 30.000 Unid.)', 226831, 269928.89, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(92, 'CARBLLC48', 'Rodal Litos Calados 45cm (100 Unid.)', 9300, 11067, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(93, 'CARBLLC36', 'Rodal Oro Calado 28 Cmts. (Paq. 100 Unid.)', 14999, 17848.81, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(94, 'CARBLLC38', 'Corazón Litos Calado 27 Cmts. (Paq. 10px100 Unid.)', 36421, 43340.99, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(95, 'CAPMG1405', 'Cápsulas P.S.Nro.8 Estrella Rosada 50x30 (Caja 30.000 Unid.)', 252463, 300430.97, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(96, 'CARBLLC37', 'Rodal Oro Calado 30 Cmts. (Paq. 100 Unid.)', 16526, 19665.94, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(97, 'CARBLLC40', 'Blonda Litos Caladas 31x38 (100 Unid.)', 6950, 8270.5, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(98, 'CARBLLC41', 'Blonda Litos Caladas 34x41 (100 Unid.)', 7000, 8330, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(99, 'CARBLLC42', 'Blonda Litos Caladas 45x55 (100 Unid.)', 9600, 11424, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(100, 'CARBLLC43', 'Rodal Litos Calados 25cm (100 Unid.)', 4700, 5593, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(101, 'CARBLLC44', 'Rodal Litos Calados 32cm (100 Unid.)', 5500, 6545, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(102, 'CARBLLC50', 'Blonda Litos Calada 26x32cm (100 Unid.)', 5000, 5950, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(103, 'CARBLLC45', 'Rodal Litos Calados 35cm (100 Unid.)', 6200, 7378, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(104, 'CAPMG0802', 'Cápsulas Perg. Star Nro.8 Azul 50x30 (Caja 30.000 Unid.)', 223182, 265586.58, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(105, 'CARBLLC49', 'Blonda Litos Calada 21x27cm (100 Unid.)', 4000, 4760, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(106, 'CAPMG0803', 'Cápsulas Perg. Star Nro.8 Blanca 50x30 (Caja 30.000 Unid.)', 174909, 208141.71, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(107, 'CARBD0401', 'Bandeja Cartón E Oro Nro.4 210x140 (Paq. 100 Unid.)', 12319, 14659.61, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(108, 'CAPMG0804', 'Cápsulas Magdalena Blanco 50x29 (Caja 32.680 Unid.)', 204210, 243009.9, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(109, 'CARBLLC30', 'Blonda Litos Calada 21x27 Cmts. (Paq. 10px100 Unid.)', 35017, 41670.23, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(110, 'CARBLLC51', 'Blonda Litos Calada 40x50 (100 Unid.)', 9600, 11424, NULL, '2025-10-05 22:13:14.342', '2025-10-05 22:13:14.342', NULL),
(111, 'CAPMG0805', 'Cápsulas Magdalena Marrón 50x29 (Caja 32.680 Unid.)', 251425, 299195.75, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(112, 'CAPMG1406', 'Cápsulas P.S.Nro.8 Estrella Verde 50x30 (Caja 30.000 Unid.)', 333000, 396270, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(113, 'CARBD0402', 'Bandeja Cartón Plata Nro.4 210x140 (Paq. 100 Unid.)', 6966, 8289.539999999999, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(114, 'CARBD1302', 'Bandeja Cartón Plata Nro.13 340x420 (Paq. 50 Unid.)', 41782, 49720.57999999999, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(115, 'CARBLLC52', 'Blonda Litos Calada 13x31cm (100 Unid.)', 4900, 5831, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(116, 'CARBLLC54', 'Corazón Litos Calado 27cm (100 Unid.)', 4000, 4760, NULL, '2025-10-05 22:13:14.344', '2025-10-05 22:13:14.344', NULL),
(117, 'CARBLOR03', 'Bandeja Blonda Oro31x39 Cmts. (Int24x32cm) (Caja 4px25 Unid.)', 111114, 132225.66, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(118, 'CAPAP1402', 'Capsula Blanca Autoportante 50x38 (Caja 250 Unid.)', 10600, 12614, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(119, 'CARBLLC31', 'Blonda Litos Calada 26x32 Cmts. (Paq. 10px100 Unid.)', 45165, 53746.35, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(120, 'CARBLLC46', 'Rodal Litos Calados 38cm (100 Unid.)', 7500, 8925, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(121, 'CARBLLC53', 'Blonda Litos Calada 16x42cm (100 Unid.)', 5000, 5950, NULL, '2025-10-05 22:13:14.344', '2025-10-05 22:13:14.344', NULL),
(122, 'CARBD1503', 'Bandeja Cartón E Blanca Nro.8 220x280 (Paq. 100 Unid.)', 17224, 20496.56, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(123, 'CARBD0601', 'Bandeja Cartón E Oro Nro.6 250x180 (Paq. 100 Unid.)', 13544, 16117.36, NULL, '2025-10-05 22:13:14.344', '2025-10-05 22:13:14.344', NULL),
(124, 'CAPMG0806', 'Cápsulas Magdalena Marron 50x29 (Caja 26.000 Unid.)', 188881, 224768.39, NULL, '2025-10-05 22:13:14.343', '2025-10-05 22:13:14.343', NULL),
(125, 'CARBLPA24', 'Blonda Parafinada Tabaco 16x42 (100 Unid.)', 60638, 72159.22, NULL, '2025-10-05 22:13:14.344', '2025-10-05 22:13:14.344', NULL),
(126, 'CARBD1504', 'Bandeja Cartón E Blanca Nro.10 250x330 (Paq. 100 Unid.)', 22952, 27312.88, NULL, '2025-10-05 22:13:14.344', '2025-10-05 22:13:14.344', NULL),
(127, 'CARBT0201', 'Batea Oro con Asa Nro.2 10x17 (Paq. 100 Unid.)', 21059, 25060.21, NULL, '2025-10-05 22:13:14.344', '2025-10-05 22:13:14.344', NULL),
(128, 'CARBD1505', 'Bandeja Cartón E Blanca Nro.13 340x420 (Paq. 50 Unid.)', 20474, 24364.06, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(129, 'CAPMG1407', 'Cápsulas P.S.Nro.8 Topos Azul 50x30 (Caja 30.000 Unid.)', 252463, 300430.97, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(130, 'CARBD0602', 'Bandeja Cartón Plata Nro.6 250x180 (Paq. 100 Unid.)', 12371, 14721.49, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(131, 'CARBD1506', 'Bandeja Cartón E Oro Nro.11 280x360 (Paq. 50 Unid.)', 18794, 22364.86, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(132, 'CARBD0801', 'Bandeja Cartón E Oro Nro.8 220x280 (Paq. 100 Unid.)', 18842, 22421.98, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(133, 'CARBT0401', 'Batea Oro con Asa Nro.4 14x21 (Paq. 100 Unid.)', 28683, 34132.77, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(134, 'CARBD0802', 'Bandeja Cartón Plata Nro.8 220x280 (Paq. 100 Unid.)', 17937, 21345.03, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(135, 'CARBLOP05', 'Blonda Opalina Calada 21x27 Cmts. (Paq. 10px100 Unid.)', 51129, 60843.50999999999, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(136, 'CARCJMF09', 'Caja para CupCakes 2 Unid. (Caja 100 Unid.)', 60722, 72259.18, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(137, 'CARBD1001', 'Bandeja Cartón E Oro Nro.10 250x330 (Paq. 100 Unid.)', 30089, 35805.91, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(138, 'CARCJMF10', 'Caja para CupCakes 4 Unid. (Caja 100 Unid.)', 86120, 102482.8, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(139, 'CARCJMF11', 'Caja para CupCakes 6 Unid. (Caja 100 Unid.)', 100711, 119846.09, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(140, 'CARBLOR04', 'Bandeja Blonda Oro35x41 Cmts. (Int28x34cm) (Caja 2x50 Unid.)', 122743, 146064.17, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(141, 'CARBT0802', 'Batea Oro con Asa Nro.8 22x28 (Paq. 50 Unid.)', 27622, 32870.18, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(142, 'CARDC2101', 'Disco Ondas Negro/Blanco 21 Cmts. (Paq. 100 Unid.)', 18780, 22348.2, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(143, 'CARBD1002', 'Bandeja Cartón Plata Nro.10 250x330 (Paq. 100 Unid.)', 29257, 34815.83, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(144, 'CARBLPA17', 'Blonda Parafinada Blanca 21x27 (100 Unid.)', 60638, 72159.22, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(145, 'CARBLPA09', 'Blonda Parafinada Blanca 21x27 Cmts. (Paq. 10px100 Unid.)', 40449, 48134.31, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(146, 'CARBLPA12', 'Blonda Parafinada Blanca 16x42 Cmts. (Paq. 10px100 Unid.)', 46889, 55797.91, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(147, 'CARBLPA10', 'Blonda Parafinada Blanca 26x32 Cmts. (Paq. 10px100 Unid.)', 54772, 65178.68, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(148, 'CARBLPA13', 'Blonda Parafinada Tabaco 21x27 Cmts. (Paq. 10px100 Unid.)', 52246, 62172.74, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(149, 'CARBLPA11', 'Blonda Parafinada Blanca 13x31 Cmts. (Paq. 10px100 Unid.)', 33747, 40158.93, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(150, 'CARBLOP06', 'Blonda Opalina Calada 26x32 Cmts. (Paq. 10px100 Unid.)', 62645, 74547.55, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(151, 'CARBLPA14', 'Blonda Parafinada Tabaco 26x32 Cmts. (Paq. 10px100 Unid.)', 70053, 83363.06999999999, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(152, 'CARDC2102', 'Disco Oro Borde Ondulado 21 Cmts. (Paq. 100 Unid.)', 20593, 24505.67, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(153, 'CARBD1507', 'Bandeja Cartón E Oro Nro.12 310x380 (Paq. 50 Unid.)', 22837, 27176.03, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(154, 'CARDC2201', 'Disco E Oro Borde Liso 22,5 Cmts. (Paq. 100 Unid.)', 21659, 25774.21, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(155, 'CARBLPA15', 'Blonda Parafinada Tabaco 13x31 Cmts. (Paq. 10px100 Unid.)', 43161, 51361.59, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(156, 'CAPMG0809', 'Cápsula Magdalena Marrón  50x29 (Caja 33.000 Unid.)', 239530, 285040.7, NULL, '2025-10-05 22:13:14.344', '2025-10-05 22:13:14.344', NULL),
(157, 'CARBLPA16', 'Blonda Parafinada Tabaco 16x42 Cmts. (Paq. 10px100 Unid.)', 60638, 72159.22, NULL, '2025-10-05 22:13:14.344', '2025-10-05 22:13:14.344', NULL),
(158, 'CARBLLC32', 'Blonda Litos Calada 40x50 (Paq. 10px100 Unid.)', 93584, 111364.96, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(159, 'CARDC5002', 'Disco Rígido Marmoleado Blanco 10 cm Pq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(160, 'CARDC3002', 'Disco Oro Borde Ondulado 30 Cmts. (Paq. 100 Unid.)', 54861, 65284.59, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(161, 'CAPMG1408', 'Cápsulas P.S.Nro.8 Topos Rosada 50x30 (Caja 30.000 Unid.)', 252463, 300430.97, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(162, 'CARBLOP08', 'Blonda Opalina Calada 16x42 Cmts. (Paq. 10px100 Unid.)', 85251, 101448.69, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(163, 'CARBLPA18', 'Blonda Parafinada Blanca 26x32 (100 Unid.)', 60638, 72159.22, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(164, 'CARDC3003', 'Disco E Oro Borde Liso 30 Cmts. (Paq. 100 Unid.)', 34758, 41362.02, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(165, 'CARDC5003', 'Disco Rígido Oro 15 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(166, 'CARBLOP07', 'Blonda Opalina Calada 13x31 Cmts. (Paq. 10px100 Unid.)', 68263, 81232.97, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(167, 'CARBLOP09', 'Blonda Opalina Calada 21x27 (100 Unid.)', 5200, 6188, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(168, 'CARBLOP10', 'Blonda Opalina Calada 26x32 (100 Unid.)', 6300, 7497, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(169, 'CARBLOP11', 'Blonda Opalina Calada 13x31 (100 Unid.)', 7000, 8330, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(170, 'CARDC5005', 'Disco Rígido Oro 18 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(171, 'CARBLOP12', 'Blonda Opalina Calada 16x42 (100 Unid.)', 8600, 10234, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(172, 'CAPMG0902', 'Cápsulas Leo Cupcakes 91/2 48x50 (Caja 15.000 Unid.)', 273141, 325037.79, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(173, 'CARDC5007', 'Disco Rígido Oro 22 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(174, 'CAPMG0901', 'Cápsulas Magdalena Blanco 50x38 (Caja 18.240 Unid.)', 159519, 189827.61, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(175, 'CARDC5006', 'Disco Rígido Marmoleado Blanco 18 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(176, 'CARDC5004', 'Disco Rígido Marmoleado Blanco 15 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(177, 'CARDC5008', 'Disco Rígido Marmoleado Blanco 22 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(178, 'CARDC3004', 'Disco Ondas Negro/Blanco 30 Cmts. (Paq. 100 Unid.)', 51358, 61116.02, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(179, 'CAPMG1002', 'Cápsulas Perg. Candor Nro.8 Marrón 50x30 (Caja 1.000 Unid.)', 9196, 10943.24, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(180, 'CARDC5009', 'Disco Rígido Oro 26 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(181, 'CAPMG1001', 'Cápsulas Perg. Marrón Nro.10 50x40 (Caja 23.000 Unid.)', 242885, 289033.15, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(182, 'CARDC5010', 'Disco Rígido Marmoleado Blanco 26 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(183, 'CAPMG1101', 'Cápsulas Perg. Blanca Nro.7 45x27 (Caja 1.000 Unid.)', 6035, 7181.65, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(184, 'CARDC5012', 'Disco Rígido Marmoleado Blanco 28 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(185, 'CAPMG1102', 'Cápsulas Perg. Star Nro.8 Amarillo 50x30 (Caja 1.000 Unid.)', 10600, 12614, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(186, 'CARBD1101', 'Bandeja Cartón Plata Nro.11 280x360 (Paq. 50 Unid.)', 18396, 21891.24, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(187, 'CAPMG1103', 'Cápsulas Perg. Star Nro.8 Azul 50x30 (Caja 1.000 Unid.)', 8927, 10623.13, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(188, 'CARDC5013', 'Disco Rígido Oro 30 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(189, 'CARDC2601', 'Disco Liso Negro/Blanco 26 Cmts. (Paq. 100 Unid.)', 26609, 31664.71, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(190, 'CARDC5011', 'Disco Rígido Oro 28 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(191, 'CARBD1508', 'Bandeja Cartón Negro Nro.11 280x360 (Paq. 50 Unid.)', 19513, 23220.47, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(192, 'CARDC4013', 'Disco E Oro Borde Liso 28 Cmts. (Paq. 100 Unid.)', 31759, 37793.21, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(193, 'CARDC3001', 'Disco Liso Negro/Blanco 30 Cmts. (Paq. 100 Unid.)', 34758, 41362.02, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(194, 'CARDC5017', 'Disco Liso Oro Molderil 28 cm (Paq. 200 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(195, 'CARBLPA19', 'Blonda Parafinada Blanca 13x31 (100 Unid.)', 60638, 72159.22, NULL, '2025-10-05 22:13:14.345', '2025-10-05 22:13:14.345', NULL),
(196, 'CAPMG1409', 'Cápsulas P.S.Nro.8 Topos Verde 50x30 (Caja 30.000 Unid.)', 333000, 396270, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(197, 'CARDC5018', 'Disco Liso Negro Molderil 28 cm (Paq. 200 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(198, 'CARPL3002', 'Plato Cartón Plata 30 Cmts. (Paq. 100 Unid.)', 46356, 55163.64, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(199, 'CARDC5001', 'Disco Rígido Oro 10 cm. ( Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(200, 'CARBD1509', 'Bandeja Cartón Negro Nro.13 340x420 (Paq. 50 Unid.)', 40689, 48419.91, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(201, 'CAPMG1410', 'Capsula Autoportante Blanca 50x37 (Caja 5.000 Unid.)', 153887, 183125.53, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(202, 'CARPL3001', 'Plato Cartón Oro 30 Cmts. (Paq. 100 Unid.)', 48994, 58302.86, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(203, 'CARPL3601', 'Plato Liso Cartón Oro 36 Cmts. (Paq. 50 Unid.)', 40952, 48732.88, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(204, 'CAPMG1411', 'Capsula Blanca Autoportante 50x38 (Caja 7.500 Unid.)', 276996, 329625.24, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(205, 'CARBLPA20', 'Blonda Parafinada Blanca 16x42 (100 Unid.)', 60638, 72159.22, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(206, 'CARBLLC01', 'Blonda Litos Calada 31x38 Cmts. (Paq. 10px100 Unid.)', 64548, 76812.12, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(207, 'CARPL3602', 'Plato Liso Cartón Plata 36 Cmts. (Paq. 50 Unid.)', 33256, 39574.64, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(208, 'CARPL4002', 'Plato Liso Cartón Plata 40 Cmts. (Paq. 50 Unid.)', 50284, 59837.96, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(209, 'CAPMG1415', 'Cápsulas Magdalena Amarilla 50x29 (Caja 32.680 Unid.)', 284632, 338712.08, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(210, 'CARPL4001', 'Plato Liso Cartón Oro 40 Cmts. (Paq. 50 Unid.)', 60350, 71816.5, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(211, 'CARPL3101', 'Plato Blonda Oro 38 Cmts. Int.31 Cmts. (Paq. 100 Unid.)', 123857, 147389.83, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(212, 'CARRDLC01', 'Rodal Litos Calado 10 Cmts. (Paq. 10px100 Unid.)', 12170, 14482.3, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(213, 'CARRDLC05', 'Rodal Litos Calados 28 cm (100 Unid.)', 4600, 5474, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(214, 'CARFORM01', 'Pestaña Triangular Oro/Plata 13,20x10 (Paq. 100 Unid.)', 9330, 11102.7, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(215, 'CARRDLC06', 'Rodal Litos Calados 30 cm (100 Unid.)', 5000, 5950, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(216, 'CARBLPA21', 'Blonda Parafinada Tabaco 21x27 (100 Unid.)', 60638, 72159.22, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(217, 'CARDC2602', 'Disco Oro Borde Ondulado 26 Cmts. (Paq. 100 Unid.)', 28844, 34324.36, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(218, 'CARFORM02', 'Pestaña Rectangular Oro/Plata 14x4 (Paq. 100 Unid.)', 6713, 7988.469999999999, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(219, 'CAPMG1416', 'Cápsulas Perg. Candor Nro.8 Marrón 50x30 (Caja 30.000 Unid.)', 242774, 288901.06, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(220, 'CARRDPL01', 'Rodal Plata Calado 28 Cmts. (Paq. 100 Unid.)', 14175, 16868.25, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(221, 'CARBLPA22', 'Blonda Parafinada Tabaco 26x32 (100 Unid.)', 60638, 72159.22, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(222, 'CARRDPL02', 'Rodal Plata Calado 30 Cmts. (Paq. 100 Unid.)', 16149, 19217.31, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(223, 'CARFORM03', 'Pestaña Cuadrado Negro 7.5x7.5 (Paq. 100 Unid.)', 7419, 8828.609999999999, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(224, 'CAPMG1419', 'Cápsulas P.S.Nro. 8 Vichy Celeste 50x30 (Caja 1.000 Unid.)', 9928, 11814.32, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(225, 'CARRDPL09', 'Rodal Opalina Calado 25 Cmts. (Paq. 10px100 Unid.)', 49258, 58617.02, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(226, 'CARRDPL04', 'Rodal Plata Calado 30 Cmts. (Paq. 100 Unid.)', 17764, 21139.16, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(227, 'CARRDPL10', 'Rodal Opalina Calado 28 Cmts. (Paq. 10px100 Unid.)', 57682, 68641.58, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(228, 'CARBLPA23', 'Blonda Parafinada Tabaco 13x31 (100 Unid.)', 60638, 72159.22, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(229, 'CAPMG1420', 'Cápsulas P.S.Nro. 8 Vichy Rosa 50x30 (Caja 1.000 Unid.)', 9928, 11814.32, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(230, 'CARRDPL12', 'Rodal Opalina Calado 32 Cmts. (Paq. 10px100 Unid.)', 69354, 82531.26, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(231, 'CARRDPL11', 'Rodal Opalina Calado 30 Cmts. (Paq. 10px100 Unid.)', 61660, 73375.4, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(232, 'CAPMG1421', 'Cápsulas P.S.Nro. 8 Vichy Verde 50x30 (Caja 1.000 Unid.)', 9928, 11814.32, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(233, 'CARPL2201', 'Plato Blonda Oro 30 Cmts. Int.22 Cmts. (Paq. 100 Unid.)', 117482, 139803.58, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(234, 'CARRDPL13', 'Rodal Oro Calado 25 Cmts. (Paq. 100 Unid.)', 12306, 14644.14, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(235, 'CAPMG1201', 'Cápsulas Leo Cupcakes 91/2 48x50 (Caja 500 Unid.)', 24627, 29306.13, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(236, 'CARRDPL14', 'Rodal Plata Calado 25 Cmts. (Paq. 100 Unid.)', 12914, 15367.66, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(237, 'CARRDPL16', 'Rodal Opalina Calada 28cm (100 Unid.)', 6000, 7140, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(238, 'CARRDPL17', 'Rodal Opalina Calada 30cm (100 Unid.)', 6500, 7735, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(239, 'CARDC5014', 'Disco Rigido Marmoleado Blanco 30 cm (Pa. 50 Unid.', 75900, 90321, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(240, 'CARPL2801', 'Plato Blonda Oro 35 Cmts. Int.28 Cmts. (Paq. 100 Unid.)', 113960, 135612.4, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(241, 'CARRDPL18', 'Rodal Opalina Calada 32cm (100 Unid.)', 7000, 8330, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(242, 'CAPBB0201', 'Cápsulas Metalizadas Oro Nro.2 26x17 (Caja 1.000 Unid.)', 38329, 45611.50999999999, NULL, '2025-10-05 22:13:14.339', '2025-10-05 22:13:14.339', NULL),
(243, 'CARRDPL15', 'Rodal Opalina Calada 25cm (100 Unid.)', 5000, 5950, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(244, 'CATCRCD01', 'Pestaña Cuadrado a Oro 7.5x7.5 (Paq. 100 Unid.)', 7419, 8828.609999999999, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(245, 'CAPMG1422', 'Cápsulas P.S.Nro. 8 Estrella Azul 50x30 (Caja 1.000 Unid.)', 9928, 11814.32, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(246, 'CATCRCD02', 'Pestaña Cuadrada Molderil 7.5x7.5 cm (Paq. 50 Unid.)', 7419, 8828.609999999999, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(247, 'ENVBWEN01', 'Kraft Salad Bowl 750 Ml. (25 Oz) (Paq. 300 Unid.)', 56150, 66818.5, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(248, 'CAPMG1202', 'Cápsulas Perg. Marrón Nro.10 50x40 (Caja 1.000 Unid.)', 12979, 15445.01, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(249, 'CARDC5015', 'Disco Liso Oro Molderil 22 cm (Paq. 200 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(250, 'CARDC2603', 'Disco E Oro Borde Liso 26 Cmts. (Paq. 100 Unid.)', 26609, 31664.71, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(251, 'CAPMG1301', 'Cápsulas Magdalena Blanca 50x30 (Caja 1.000 Unid.)', 12600, 14994, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(252, 'CARPL4003', 'Plato Blonda Oro 40 Cmts. Int.33 Cmts. (Paq. 100 Unid.)', 182048, 216637.12, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(253, 'CATCRRD01', 'Pestaña Redondo Oro 8 Cmts. (Paq. 100 Unid.)', 7633, 9083.27, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(254, 'CARDC2604', 'Disco Ondas Negro/Blanco 26 Cmts. (Paq. 100 Unid.)', 28911, 34404.09, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(255, 'ENVBWEN03', 'Kraft Salad Bowl 1300 Ml. (44 Oz) (Paq. 300 Unid.)', 70050, 83359.5, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(256, 'CARDC5016', 'Disco Liso Oro Molderil 26 cm (Paq. 200 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(257, 'CATCRRD02', 'Pestaña Redonda Molderil 8 cm (Paq. 50 Unid.)', 75900, 90321, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(258, 'CARDC2801', 'Disco Liso Negro/Blanco 28 Cmts. (Paq. 100 Unid.)', 32319, 38459.61, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(259, 'CARRDLC02', 'Rodal Litos Calado 28 Cmts. (Paq. 10px100 Unid.)', 42223, 50245.37, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(260, 'CARPL4008', 'Plato Cartón Oro 25 Cmts. (Paq. 100 Unid.)', 22238, 26463.22, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(261, 'ENVBWEN08', 'Kraft Caja Delivery Ventana 900 (Caja 200 Unid.)', 40000, 47600, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(262, 'ENVBWEN05', 'Kraft Caja 900 (Caja 200 Unid.)', 62866, 74810.54, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(263, 'ENVBWEN06', 'Kraft Caja 1200 (Caja 200 Unid.)', 78540, 93462.59999999999, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(264, 'ENVBWK500', 'Kraft Salad Bowl 500 cc (6x50 Unid.)(300 Unid.)', 31338, 37292.22, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(265, 'MOLBZ2201', 'Molde para Bizcochuelo 220x70 (Paq. 200 Unid.)', 28162, 33512.78, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(266, 'MOLBZ2401', 'Molde para Bizcochuelo 240x70 (Paq. 200 Unid.)', 29522, 35131.18, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(267, 'ENVBWEN07', 'Kraft Caja Delivery Ventana 500 (Caja 200 Unid.)', 32300, 38437, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(268, 'CAPMG1423', 'Cápsulas P.S.Nro. 8 Estrella Rosada 50x30 (Caja 1.000 Unid.)', 9928, 11814.32, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(269, 'MOLBZ2706', 'Molde para Bizcochuelo 220x70 (Paq. 200 Unid.)', 38641, 45982.79, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(270, 'MOLBZ2601', 'Molde para Bizcochuelo 260X70 (Paq. 200 Unid.)', 30202, 35940.38, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(271, 'ENVBWEN02', 'Kraft Salad Bowl 1000 Ml. (34 Oz) (Paq. 300 Unid.)', 57480, 68401.2, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(272, 'ENVBWEN11', 'Caja Comida para llevar N° 4 (Caja 160 Unid.)', 39800, 47362, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(273, 'MOLBZ2001', 'Molde para Bizcochuelo 200x50 (Paq. 200 Unid.)', 26802, 31894.38, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(274, 'ENVBWEN09', 'Kraft Caja Delivery Ventana 1200 (Caja 200 Unid.)', 46200, 54978, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(275, 'ENVPA2050', 'Envase Kraft para Papas Fritas 8oz (20x50 Unid.)(1.000 Unid.)', 40014, 47616.66, NULL, '2025-10-05 22:13:14.346', '2025-10-05 22:13:14.346', NULL),
(276, 'MOLES2301', 'Ecos Mould E230-23 Brown Paper  (Caja 260 Unid.)', 77065, 91707.34999999999, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(277, 'MOLES1801', 'Optima Mould OP180-35 (Caja 720 Unid.)', 246779, 293667.01, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(278, 'MOLES2101', 'Optima Mould OP215-42 (Caja 180 Unid.)', 75739, 90129.40999999999, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(279, 'MOLES2303', 'Molde Tartaleta 220x25 (450 Unid.)', 136311, 162210.09, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(280, 'CAPMG1302', 'Cápsulas Magdalena Blanca 50x38 (Caja 750 Unid.)', 18667, 22213.73, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(281, 'MOLES2002', 'Optima Mould OP205-25 (Caja 600 Unid.)', 121200, 144228, NULL, '2025-10-05 22:13:14.347', '2025-10-13 15:22:17.685', NULL),
(282, 'ENVBWEN10', 'Caja Comida para llevar N° 8 (Caja 300 Unid.)', 45380, 54002.2, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(283, 'CARRDLC03', 'Rodal Litos Calado 30 Cmts. (Paq. 10px100 Unid.)', 48291, 57466.29, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(284, 'CAPMG1425', 'Cápsulas Magdalena Blanca 40x25 (Caja 42.240 Unid.)', 231461, 275438.59, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(285, 'CAPMG1429', 'Cápsulas Perg. Nro. 6 Blanca (Magdalena 40x25) (Caja 36.000 Unid.)', 267627, 318476.13, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(286, 'MOLES2603', 'Multiporcion 4P1 (Caja 750 Unid.)', 249375, 296756.25, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(287, 'CARRDLC04', 'Rodal Litos Calados 10 cm (100 Unid.)', 3000, 3570, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(288, 'CAPMG1303', 'Cápsulas Perg. Marrón Nro.7  45x27 (Caja 1.000 Unid.)', 6661, 7926.589999999999, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(289, 'MOLBZ2002', 'Molde para Bizcochuelo 200x70 (Paq. 200 Unid.)', 25442, 30275.98, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(290, 'CAPMT4801', 'Bandeja con Cápsulas Autoportantes 2Oz. 48 x1 (Caja 100 Unid.)', 194337, 231261.03, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(291, 'MOLES2001', 'Ecos Mould E205-25 Brown Paper (Caja 1.380 Unid.)', 276554, 329099.26, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(292, 'CAPMG1401', 'Cápsulas P.S.Nro.8 Vichy Celeste 50x30 (Caja 30.000 Unid.)', 333000, 396270, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(293, 'CAPMG1424', 'Cápsulas P.S.Nro. 8 Estrella Verde 50x30 (Caja 1.000 Unid.)', 9928, 11814.32, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(294, 'MOLES2602', 'Optima Mould OP175x175x32,5 (Caja 500 Unid.)', 145635, 173305.65, NULL, '2025-10-05 22:13:14.347', '2025-10-05 22:13:14.347', NULL),
(295, 'CAPMG1427', 'Cápsulas Magdalena Blanca 40x25 (Caja 48.840 Unid.)', 267627, 318476.13, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(296, 'CAPMT5801', 'Cápsulas Autoportante Blanco 50x32 (Caja 8.640 Unid.)', 145152, 172730.88, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(297, 'CAPMG1402', 'Cápsulas P.S.Nro.8 Vichy Rosa 50x30 (Caja 30.000 Unid.)', 252463, 300430.97, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(298, 'MOLES2605', 'Easy Bake 153x88x60 (Caja 300 Unid.)', 136294, 162189.86, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(299, 'MOLES2614', 'Ecos Mould E209-19 Brown (Caja 1.800 Unid.)', 300289, 357343.91, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(300, 'MOLESFG01', 'Molde Horneable Forma Pino Navidad (Caja 200 Unid.)', 67308, 80096.51999999999, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(301, 'CAPMT2401', 'Bandeja con Cápsulas Autoportantes 2Oz. 24 x1 (Caja 125 Unid.)', 204016, 242779.04, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(302, 'MOLES2604', 'Molde Forma Corazón 130x133x35 (Caja 300 Unid.)', 75190, 89476.09999999999, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(303, 'MOLPP1401', 'Molde Pan de Pascua 140x50 Micro (Caja 1.000 Unid.)', 59381, 70663.39, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(304, 'MOLPP1506', 'Molde Pan de Pascua 150x50 Liso (Caja 500 Unid.)', 33303, 39630.57, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(305, 'MOLPP1504', 'Molde Pan de Pascua C/E 150x50 Micro (Caja 1.500 Unid.)', 93750, 111562.5, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(306, 'MOLPP1605', 'Molde Pan de Pascua 160x60 Liso (Caja 1.500 Unid.)', 102459, 121926.21, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(307, 'MOLPP1602', 'Molde Pan de Pascua 160x50 Liso (Caja 1.500 Unid.)', 101184, 120408.96, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(308, 'MOLPP1402', 'Molde Pan de Pascua 140x50 Liso (Caja 1.500 Unid.)', 93534, 111305.46, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(309, 'MOLPP1801', 'Molde Pan de Pascua 185x60 (Paq. 200 Unid.)', 22671, 26978.49, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(310, 'MOLPP2002', 'Molde Pan de Pascua 140x50 Micro (Caja 500 Unid.)', 29691, 35332.29, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(311, 'MOLPP1603', 'Molde Pan de Pascua 160x50 Micro (Caja 500 Unid.)', 31391, 37355.29, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(312, 'MOLPP2003', 'Molde Pan de Pascua 140x50 Liso (Caja 1.000 Unid.)', 61700, 73423, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(313, 'MOLPP2011', 'Molde Pan de Pascua 170x60 Micro (Caja 1.000 Unid.)', 66100, 78659, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(314, 'MOLPP2010', 'Molde Pan de Pascua 170x50 Micro (Caja 1.000 Unid.)', 66100, 78659, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(315, 'MOLPP1703', 'Molde Pan de Pascua 170x60 Liso (Paq. 500 Unid.)', 38828, 46205.32, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(316, 'MOLPP1606', 'Molde Pan de Pascua 160x60  Micro (Caja 500 Unid.)', 31688, 37708.72, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(317, 'MOLPP1604', 'Molde Pan de Pascua C/E 160x60 Micro (Caja 1.500 Unid.)', 96750, 115132.5, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(318, 'MOLPP1704', 'Molde Pan de Pascua 17x6 Micro (Paq. 500 Unid.)', 33303, 39630.57, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(319, 'MOLPP2012', 'Molde Pan de Pascua 13,4x5 500 Gr. (1.800 Unid.)', 111060, 132161.4, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(320, 'MOLPP1505', 'Molde Pan de Pascua 150X50 Liso (Caja 1.500 Unid.)', 99909, 118891.71, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(321, 'MOLPP1601', 'Molde Pan de Pascua C/E 160x50 Micro (Caja 1.500 Unid.)', 94500, 112455, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(322, 'MOLPT1003', 'Molde para Panettone 100 Grs. 70x55 (Caja 1.500 Unid.)', 41412, 49280.28, NULL, '2025-10-05 22:13:14.349', '2025-10-05 22:13:14.349', NULL),
(323, 'MOLPT0101', 'Molde para Panettone 100 Grs. 70x55 (Caja 1.500 Unid.)', 36703, 43676.57, NULL, '2025-10-05 22:13:14.349', '2025-10-05 22:13:14.349', NULL),
(324, 'MOLPP1607', 'Molde Pan de Pascua 160x60 Liso (Caja 1.200 Unid.)', 81967, 97540.73, NULL, '2025-10-05 22:13:14.348', '2025-10-05 22:13:14.348', NULL),
(325, 'MOLPT1004', 'Molde para Panettone 100 grs. 70x45 (Cj. 4.000 Unid.)', 127658, 151913.02, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(326, 'MOLPP2013', 'Molde Pan de Pascua 14,5x5 500 Gr. (1.620 Unid.)', 99954, 118945.26, NULL, '2025-10-05 22:13:14.349', '2025-10-05 22:13:14.349', NULL),
(327, 'MOLPT0102', 'Molde para Panettone 100 Grs.70x55 (Caja 2.400 Unid.)', 97893, 116492.67, NULL, '2025-10-05 22:13:14.349', '2025-10-05 22:13:14.349', NULL);
INSERT INTO `Producto` (`id`, `codigo`, `nombre`, `precioNeto`, `precioTotal`, `precioKilo`, `createdAt`, `updatedAt`, `categoriaId`) VALUES
(328, 'MOLPP2014', 'Molde Pan de Pascua C/E 140x50 Micro (Caja 1.500 Unid.)', 59381, 70663.39, NULL, '2025-10-05 22:13:14.349', '2025-10-05 22:13:14.349', NULL),
(329, 'MOLPT1K01', 'Molde para Panettone 1 Kgs. 140X120 (Paq. 500 Unid.)', 33643, 40035.17, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(330, 'MOLPT2501', 'Molde para Panettone 250 Grs. 90X75 (Caja 1.200 Unid.)', 63607, 75692.33, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(331, 'MOLPT2502', 'Molde para Panettone 250 Grs. 90x75 (Caja 1.800 Unid.)', 95411, 113539.09, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(332, 'MOLQQ1501', 'Molde Queque 200 Grs. 155x50x40 (Caja 1.000 Unid.)', 82620, 98317.79999999999, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(333, 'MOLPT8007', 'Molde para Panettone 700 Grs. 130x120 (Caja 1.000 Unid.)', 64056, 76226.64, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(334, 'MOLPT5001', 'Molde para Panettone 500 Grs. 115x105 (Caja 1.000 Unid.)', 58106, 69146.14, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(335, 'MOLPT7001', 'Molde para Panettone 700 Grs. 130x120 (Paq. 500 Unid.)', 31682, 37701.58, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(336, 'MOLPT8006', 'Molde para Panettone 1 Kgs. 140X120 (Caja 1.000 Unid.)', 77450, 92165.5, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(337, 'MOLQQ1503', 'Mould Optima Plumk 158x54x50 White Gold (Caja 720 Unid.)', 95705, 113888.95, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(338, 'MOLPT8008', 'Molde para Panettone 500 Grs. 115x105 (Caja 1.200 Unid.)', 69727, 82975.12999999999, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(339, 'MOLQQ1804', 'Molde Queque Chico 186x50x50 (Caja 1.000 Unid.)', 89760, 106814.4, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(340, 'MOLQQ1901', 'Molde Queque Grande 19x8x6 (Caja 1.000 Unid.)', 119680, 142419.2, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(341, 'MOLQQ1902', 'Mould Optima Plumk 198x72x60 Green (Caja 480 Unid.)', 139331, 165803.89, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(342, 'MOLQQ1903', 'Mould Optima Plumk 198x72x60 Red (Caja 480 Unid.)', 111465, 132643.35, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(343, 'MOLQQ2201', 'Paper Plum Cake PM 227x70x65 (Caja 480 Unid.)', 180274, 214526.06, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(344, 'MOLQQ2301', 'Paper Plum Cake PM 238x80x70 (Caja 480 Unid.)', 180408, 214685.52, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(345, 'MOLQQ2601', 'Paper Plum Cake PM 260x67x50 (Caja 1.000 Unid.)', 283274, 337096.06, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(346, 'MOLQQ2806', 'Molde Vichy 45x45x40 Azul (Caja 2.500 Unid.)', 244269, 290680.11, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(347, 'MOLQQ2808', 'Molde Vichy 80x40x40 Azul (Caja 3.000 Unid.)', 306185, 364360.15, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(348, 'MOLQQ2807', 'Molde Vichy 45x45x40 Rosa (Caja 2.500 Unid.)', 244269, 290680.11, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(349, 'MOLQQ2810', 'Molde Vichy 125x47x45 Azul (Caja 1.700 Unid.)', 218940, 260538.6, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(350, 'MOLQQ2815', 'Molde Queque Constanza 19x5x5 (Caja 500 Unid.)', 15000, 17850, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(351, 'MOLQQ2811', 'Molde Vichy 125x47x45 Rosa (Caja 1.700 Unid.)', 218940, 260538.6, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(352, 'MOLQQ1701', 'Paper Plum Cake PM 178x75x50 (Caja 300 Unid.)', 84617, 100694.23, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(353, 'MOLQQ3003', 'Plumpy Marrón 199x73x62 550 Gr. (600 Unid.)', 103390, 123034.1, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(354, 'MOLQQ3001', 'Molde Queque Chico Especial D.R. 185x50x40 (Caja 400 Unid.)', 36924, 43939.56, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(355, 'MOLQQ3004', 'Plumpy Rojo 199x73x62 550 Gr. (600 Unid.)', 103390, 123034.1, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(356, 'MOLQQ3005', 'Plumpy Verde 199x73x62 550 Gr. (600 Unid.)', 103390, 123034.1, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(357, 'MOLQQ3008', 'Molde Queque Chico Especial 185x50x40 (1.000 Unid.)', 98718, 117474.42, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(358, 'MOLRS1801', 'Molde para Rosca 185x50 (Caja 300 Unid.)', 53779, 63997.00999999999, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(359, 'MOLQQ3006', 'Plumpy Marrón 158x55x52 (Caja 675 Unid.)', 103390, 123034.1, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(360, 'MOLTT2202', 'Molde para Tartaleta 220x250 (Paq. 400 Unid.)', 63430, 75481.7, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(361, 'MOLRS2001', 'Molde para Rosca 200x50 (Caja 300 Unid.)', 53336, 63469.84, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(362, 'MOLQQ3007', 'Mini Plumpy Marrón 80x40x40 (Caja 600 Unid.)', 65000, 77350, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(363, 'MOLTT2001', 'Molde Redondo Tarta 200 x 35 (Paq. 120 Unid.)', 17636, 20986.84, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(364, 'MOLTT2603', 'Molde para Tartaleta 190x250 (Caja 400 Unid.)', 60000, 71400, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(365, 'MOLTT2605', 'Molde para Tartaleta 200x350 (Paq. 300 Unid.)', 45023, 53577.37, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(366, 'MOLTT2401', 'Molde para Tartaleta 240x250 (Paq. 200 Unid.)', 26800, 31892, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(367, 'MOLTT2601', 'Molde para Tartaleta 220x25 (Caja 400 Unid.)', 65495, 77939.05, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(368, 'MOLTT2602', 'Molde para Tartaleta 150x35 (Caja 500 Unid.)', 30000, 35700, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(369, 'MOLTT2606', 'Molde para Tartaleta 240x350 (Paq. 400 Unid.)', 48028, 57153.32, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(370, 'MOLTT2607', 'Molde para Tartaleta 240x250 (Paq. 400 Unid.)', 60000, 71400, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(371, 'MOLTT2610', 'Tapa Plástico MOLQQ1701 180x80x55 (Caja 300 Unid.)', 144519, 171977.61, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(372, 'MOLTT2613', 'Molde Redondo Tarta Marrón 200x35 (Caja 280 Unid.)', 37000, 44030, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(373, 'MOLTT2614', 'Molde Redondo Tarta Marrón 200x35 (Caja 200 Unid.)', 54740, 65140.6, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(374, 'MOLRS1802', 'Molde para Rosca 185x50 (Caja 250 Unid.)', 42280, 50313.2, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(375, 'MOLTT2608', 'Molde para Tartaleta 240x250 (Paq. 400 Unid.)', 62640, 74541.59999999999, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(376, 'PAPHOMB01', 'Papel Multibake 33x39 Cmts. (Caja 500 Unid.)', 22825, 27161.75, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(377, 'MOLTT2612', 'Molde Redondo Tarta Dorado 200x35 (Caja 200 Unid.)', 54740, 65140.6, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(378, 'PAPANTI01', 'Papel Antiadherente para Freidora de Aire (Caja 2.880 Unid.)', 84200, 100198, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(379, 'POSAL2500', 'Pocillo Salsero Plástico Transparente 1,5oz (25x100 Unid.)(2.500 Unid.)', 28796, 34267.24, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(380, 'PAPHOMB02', 'Papel Multibake 40x60 Cmts. (Caja 500 Unid.)', 30845, 36705.55, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(381, 'MOLTT2201', 'Molde para Tartaleta 220x250 (Paq. 400 Unid.)', 47667, 56723.73, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(382, 'POTPOKR08', 'Pote Polipapel Kraft Cup 8oz (500 Unid.)', 34992, 41640.48, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(383, 'POSAL2501', 'Pocillo Salsero Plástico Transparente 2oz (25x100 Unid.)(2.500 Unid.)', 34673, 41260.87, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(384, 'MOLTT2604', 'Molde para Tartaleta 200x250 (Paq. 300 Unid.)', 44513, 52970.47, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(385, 'MOLQQ2814', 'Molde Queque Chico con Fleje 19x5x5 (Caja 650 Unid.)', 58344, 69429.36, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(386, 'MOLQQ1502', 'Mould Optima Plumk 158x54x50 Brown Gold (Caja 720 Unid.)', 105276, 125278.44, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(387, 'MOLQQ3002', 'Paper Plum Cake 175x50x50 (Caja 980 Unid.)', 103390, 123034.1, NULL, '2025-10-05 22:13:14.354', '2025-10-05 22:13:14.354', NULL),
(388, 'POTPOKR16', 'Pote Polipapel Kraft 16oz con Tapa (250 Unid.)', 42980, 51146.2, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(389, 'POTPOKR17', 'Pote Polipapel Kraft 12oz con Tapa (500 Unid.)', 39238, 46693.22, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(390, 'POTPOKR09', 'Pote Polipapel Kraft Cup 12oz (500 Unid.)', 34992, 41640.48, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(391, 'POTPOKR18', 'Pote Polipapel Kraft 16oz con Tapa (500 Unid.)', 50744, 60385.36, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(392, 'POTPOKR19', 'Pote Polipapel Kraft 320z con Tapa (500 Unid.)', 65798, 78299.62, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(393, 'POTPOPL16', 'Pote Polipapel Kraft Cup 16oz con Tapa Plástica (250 Unid.)', 29292, 34857.48, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(394, 'TAPPL1701', 'Tapa Plástico MOLES2602 175x175x36 (Caja 250 Unid.)', 127352, 151548.88, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(395, 'TAPBWK500', 'Tapa Ensalda PET 500 cc. (6x50 Unid.)(300 Unid.)', 14414, 17152.66, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(396, 'TAPPL1801', 'Plástico Cover OP180-35 (Caja 360 Unid.)', 98441, 117144.79, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(397, 'TAPPL1802', 'Tapa Plástico MOLQQ1701 180x80x55 (Caja 270 Unid.)', 108389, 128982.91, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(398, 'TAPPOKR10', 'Tapa pp. 32oz (500 Unid.)', 24678, 29366.82, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(399, 'TAPPOKR08', 'Tapa pp. 8oz (20x25 Unid.)(500 Unid.)', 15528, 18478.32, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(400, 'TAPPOKR09', 'Tapa pp. 12 y 16oz (500 Unid.)', 17953, 21364.07, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(401, 'TAPSA2500', 'Tapa Pocillo Salsero Plástico Transparente 1,5 y 2oz (25x100 Unid.)(2.500 Unid.)', 23058, 27439.02, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(402, 'TAPPT1801', 'Tapa Ensalada Pet 184 Mm / 1300 Ml. (Caja 300 Unid.)', 25700, 30583, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(403, 'TAPPT1501', 'Tapa Ensalada Pet 150 Mm /  500, 750 y 1000 Ml. (Caja 300 Unid.)', 20700, 24633, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(404, 'VASCABL01', 'Vaso para Café color Blanco 6oz (1.000 Unid.)', 26413, 31431.47, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(405, 'VASCABL02', 'Vaso para Café color Blanco 8oz (1.000 Unid.)', 30956, 36837.64, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(406, 'VASCABL03', 'Vaso para Café color Blanco 12oz (1.000 Unid.)', 44000, 52360, NULL, '2025-10-05 22:13:14.355', '2025-10-05 22:13:14.355', NULL),
(407, 'BOMPA1505', 'Bombilla Papel 150x5mm (20x250 Unid.)(5.000 Unid.)', 31970, 38044.3, NULL, '2025-10-05 22:13:14.339', '2025-10-05 22:13:14.339', NULL),
(408, 'CHODETR02', 'Transfer Novios Nro.1 - 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(409, 'CHODETR01', 'Transfer Corazón 29x39 cm. 4 Diseños (Caja 5x4 Hojas)', 47117, 56069.23, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(410, 'CHODETR04', 'Transfer Romántico 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(411, 'CHODETR03', 'Transfer Baby Shower Nro.1 - 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(412, 'CHODETR12', 'Transfer Frutas 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(413, 'CHODETR08', 'Transfer Kamasutra 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(414, 'CHODETR11', 'Transfer Primavera Nro.2 - 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(415, 'CHODETR10', 'Transfer Primavera Nro.1 - 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(416, 'CHODETX05', 'Textura Pelotita 30x40 Cmts. (Paquete 10 Unid.)', 10081, 11996.39, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(417, 'CHOFYBA04', 'Fantasy Maracuyá (Barra 1x1)', 5049, 6008.309999999999, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(418, 'CHODETR07', 'Transfer Baby Shower Nro.2 - 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(419, 'CHODETR13', 'Transfer Micelaneo Nro.1 - 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(420, 'CHODETR05', 'Transfer Texturas Nro.1 - 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(421, 'CHOFYBA03', 'Fantasy Limón (Barra 1x1)', 5049, 6008.309999999999, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(422, 'CHODETR06', 'Transfer Fiesta 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(423, 'CHODETR15', 'Transfer Novios Nro.2 - 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(424, 'CHODETX03', 'Textura Ajedrez 30x40 Cmts. (Paquete 10 Unid.)', 10081, 11996.39, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(425, 'CHODETR14', 'Transfer Micelaneo Nro.2 - 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(426, 'CHODETR09', 'Transfer Animal Print 4 Diseños (Caja 5x4 Hojas)', 48567, 57794.73, NULL, '2025-10-13 15:22:17.683', '2025-10-13 15:22:17.683', NULL),
(427, 'CHODETX01', 'Textura Espiral 30x40 Cmts. (Paquete 10 Unid.)', 10081, 11996.39, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(428, 'CHOFYBA05', 'Fantasy Naranja (Barra 1x1)', 5049, 6008.309999999999, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(429, 'CHOFYBA06', 'Fantasy Pistacho (Barra 1x1)', 5049, 6008.309999999999, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(430, 'CHOFYBA02', 'Fantasy Frambuesa (Barra 1x1)', 5049, 6008.309999999999, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(431, 'CHODETX02', 'Textura Cacao 30x40 Cmts. (Paquete 10 Unid.)', 10081, 11996.39, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(432, 'CHOPRMO01', 'Moneda Blanca Fraccionada (Bolsa 1,01 Kg.)', 6950, 8270.5, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(433, 'CHOPRBA03', 'Baño Medio Amargo Premium (Barra 1,01 Kg.)', 3486, 4148.34, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(434, 'CHOPTSA01', 'Baño Blanco Prática (Saco 25 Kg.)', 82515, 98192.84999999999, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(435, 'CHOPRMO03', 'Moneda Semi-Amarga Fracccionada (Bolsa 1,01 Kg.)', 6330, 7532.7, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(436, 'CHOPRBA02', 'Baño Leche Premium (Barra 1,01 Kg.)', 3388, 4031.72, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(437, 'CHOPTBA01', 'Baño Blanco Prática (Barra 1,01 Kg.)', 3701, 4404.19, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(438, 'CHOPRMO02', 'Moneda Leche Fracccionada (Bolsa 1,01 Kg.)', 3646, 4338.74, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(439, 'CHOPTBA02', 'Baño Leche Prática (Barra 1,01 Kg.)', 3311, 3940.09, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(440, 'CHOFYBA01', 'Fantasy Arándano (Barra 1x1)', 5049, 6008.309999999999, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(441, 'CHOPTBA03', 'Baño Medio Amargo Prática (1,01 Kg.)', 3522, 4191.179999999999, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(442, 'CHOPRBA01', 'Baño Blanco Premium (Barra 1,01 Kg.)', 3566, 4243.54, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(443, 'CHODETX04', 'Textura Cuadrada 30x40 Cmts. (Paquete 10 Unid.)', 10081, 11996.39, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(444, 'CHODETX06', 'Textura Corteza de Arból 30x40 Cmts. (Paquete 10 Unid.)', 10081, 11996.39, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(445, 'CHOPTSA02', 'Baño Repostería con Leche Prática (Saco 1x25 Kg.)', 72394, 86148.86, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(446, 'DESHESP02', 'Cebolla Crispy en Hojuelas (Caja 10 Kg.)', 71420, 84989.8, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(447, 'CHOPTSA03', 'Baño Repostería Medio Amargo Prática (Saco 1x25 Kg.)', 125243, 149039.17, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(448, 'CHOPTSA04', 'Baño Repostería Medio Amargo Fraccionado (Saco 1x25kg.)', 105243, 125239.17, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(449, 'DESHESP01', 'Ajo Deshidratado Picado (Caja 20 Kg.)', 57418, 68327.42, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(450, 'FRTCRCC01', 'Cereza Confitada (Caja 10 Kg.)', 62445, 74309.55, NULL, '2025-10-13 15:22:17.684', '2025-10-13 15:22:17.684', NULL),
(451, 'FRTFCCC04', 'Fruta Confitada Manar (Caja 15x1 Kg.)', 33000, 39270, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(452, 'FRTFCCC01', 'Fruta Confitada (Caja 10 Kg.)', 21014.67, 25007.4573, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(453, 'FRTFCCC02', 'Fruta Confitada Art. 6-8 mm (Caja 10 Kg.)', 18343, 21828.17, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(454, 'FRTFCCC03', 'Fruta Confitada Carmín (Caja 10 Kg.)', 18300, 21777, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(455, 'DESHESP03', 'Cebolla Crispy en Hojuelas (Caja 8x1 Kg.)', 71420, 84989.8, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(456, 'FRTFCCC06', 'Fruta Confitada Roja Natural (Caja 10 Kg.)', 28400, 33796, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(457, 'FRTFCCC07', 'Fruta Confitada Verde Natural (Caja 10 Kg.)', 28400, 33796, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(458, 'FRTFCSC01', 'Fruta Confitada Sin Colorante (Caja 10 Kg.)', 18343, 21828.17, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(459, 'FRTFCCC05', 'Fruta Confitada Manar (Caja 10 Kg.)', 28400, 33796, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(460, 'FRTFCCC08', 'Fruta Confitada Manar 6 mm (Caja 10 Kg.)', 28400, 33796, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(461, 'FRTNADL01', 'Naranja Confitada Cubos Orieta (Caja 10 Kg.)', 49350, 58726.5, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(462, 'FRTNAAM02', 'Naranja Confitada Cubos Sicola (Caja 10 Kg.)', 49350, 58726.5, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(463, 'HELCNBA01', 'Barquillo Rollito de Chocolate (Caja 100 Unid.)', 5414, 6442.66, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(464, 'HELCNES03', 'Cono Standard (Caja 288 Unid.)', 18360, 21848.4, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(465, 'HELCNES01', 'Cono Standard (Caja 720 Unid.)', 52560, 62546.39999999999, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(466, 'FRTNADL02', 'Naranja Confitada Cubos Manar (Caja 10 Kg.)', 49350, 58726.5, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(467, 'HELCNOB01', 'Oblea Dulce Waflin (Caja 300 Unid.)', 14472, 17221.68, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(468, 'HELCNMX02', 'Cono Maxi (Caja 48 Unid.) (Bartori)', 6336, 7539.839999999999, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(469, 'PASACMG01', 'Mangas Descartables 9 Rollos (Caja 20 Unid.)', 76890, 91499.09999999999, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(470, 'HELCNMX01', 'Cono Maxi (Caja 304 Unid.)', 45600, 54264, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(471, 'PASDEAA02', 'Azúcar Antihumedad (Bolsa 5 Kg.)', 15998, 19037.62, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(472, 'HELCNES02', 'Cono Standard (Caja 360 Unid.)', 19760, 23514.4, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(473, 'PASDEAC03', 'Decoración Azúcar Cristal Plata (12 Jarras x 148 Grs.)', 109425, 130215.75, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(474, 'PASDEAC01', 'Decoración Cristal Ruby (Caja 4x3,632 Kg.)', 109425, 130215.75, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(475, 'PASDEAA01', 'Azúcar Antihumedad (Saco 22,68 Kg.)', 137920, 164124.8, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(476, 'PASDEAC02', 'Decoración Azúcar Cristal Oro (12 Jarras x 148 Grs.)', 109425, 130215.75, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(477, 'PASDEAC04', 'Decoración Azúcar Cristal Rojo Ruby (12 Jarras x 148 Grs.)', 109425, 130215.75, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(478, 'PASDEAC05', 'Decoración Azúcar Cristal Azul (12 Jarras x 148 Grs.)', 109425, 130215.75, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(479, 'PASDEAG02', 'Azúcar Granulado Blanco (Bolsa 1 Kg.)', 3508, 4174.52, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(480, 'PASDEAC07', 'Decoración Azúcar Cristal Verde (12 Jarras x 148 Grs.)', 109425, 130215.75, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(481, 'PASDEAC08', 'Decoración Azúcar Cristal Naranjo (12 Jarras x 148 Grs.)', 109425, 130215.75, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(482, 'PASDEAC06', 'Decoración Azúcar Cristal Morado (12 Jarras x 148 Grs.)', 109425, 130215.75, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(483, 'PASDEAG05', 'Azúcar Granulado Verde (Bolsa 1 Kg.)', 3508, 4174.52, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(484, 'PASDEAG01', 'Azúcar Granulado Amarillo (Bolsa 1 Kg.)', 3508, 4174.52, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(485, 'PASDEBR02', 'Cristal Brillo Frio (Caja 10x1 Kg.)', 49264, 58624.16, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(486, 'PASDEAG04', 'Azúcar Granulado Rosado (Bolsa 1 Kg.)', 3508, 4174.52, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(487, 'PASDEAG03', 'Azúcar Granulado Celeste (Bolsa 1 Kg.)', 3508, 4174.52, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(488, 'PASDEAC09', 'Decoración Azúcar Cristal Rosa Neón  (12 Jarras x 148 Grs.)', 109425, 130215.75, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(489, 'PASDEBR01', 'Brillolist Caliente (Caja 25x500 Gr.)', 48046, 57174.74, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(490, 'PASDEBR03', 'Cristal Brillo Frio (Pack 2x5 Kg.)', 43251, 51468.69, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(491, 'PASDECC01', 'Coco Rallado (Saco 25 Kg.)', 159000, 189210, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(492, 'PASDECA01', 'Cacao (Saco 25 Kg.)', 97304, 115791.76, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(493, 'PASDEBR04', 'Brillolist (Bidón (7 Kg.)', 19080, 22705.2, NULL, '2025-10-13 15:22:17.685', '2025-10-13 15:22:17.685', NULL),
(494, 'PASDECC04', 'Coco Laminado (Caja 10 Kg.)', 97000, 115430, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(495, 'PASDECE04', 'Cereal B/N Mini (Caja 3x2Kg.)', 45170, 53752.3, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(496, 'PASDECE06', 'Cereal Micro C/Baño Multicolor (Caja 3x2 Kg.) Ex 8072', 45000, 53550, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(497, 'PASDECE07', 'Cereal Tricolor 3mm. (Caja 4x1,8 Kg.)', 29990, 35688.1, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(498, 'PASDECE05', 'Cereal B/R Nat. Perla (Caja 4x1.816 Kg.)', 29990, 35688.1, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(499, 'PASDEDU03', 'Candy Crumbs Sabor Frutilla (12 Jarras x 85 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(500, 'PASDEDU02', 'Rock Candy Blanca con Brillo (12 Jarras x 75 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(501, 'PASDECH02', 'Chips Pingo 2000 Horneable (Caja 4x2,5 Kg.)', 42395, 50450.05, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(502, 'PASDEDU01', 'Rock Candy Rosada con Brillo (12 Jarras x 75 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(503, 'PASDECE03', 'Cereal B/N Micro Power Ball (Caja 3x2 Kg.)', 45000, 53550, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(504, 'PASDECH03', 'Chips Pingo 4000 Horneable (Caja 2x5 Kg.)', 57990, 69008.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(505, 'PASDEDU05', 'Candy Crumbs Sabor Mango (12 Jarras x 85 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(506, 'PASDEDU04', 'Candy Crumbs Sabor Chocolate (12 Jarras x 85 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(507, 'PASDECE09', 'Cereal B/M Chocopower Ball 6 mm (Caja 3x2 Kg.)', 39790, 47350.1, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(508, 'PASDEFD04', 'Decoración Fondant Navidad Reno y Santa (24 Bandejas x 12 Figuras)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(509, 'PASDEFD05', 'Decoración Fondant Navidad Reno y Santa (16 Bandejas x 50 Figuras)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(510, 'PASDEFD03', 'Decoración Fondant Unicornio (24 Bandejas x 8 Figuras)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(511, 'PASDEFD01', 'Decoración Fondant Baby Shower (24 Bandejas x 10 Figuras)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(512, 'PASDEFD06', 'Decoración Fondant Navidad Pingüino, Santa y Snowman (24 Bandejas x 12 Figuras)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(513, 'PASDEFD09', 'Decoración Fondant Navidad Galleta de Jengibre y Casa (16  Bandejas x 50 Fgs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(514, 'PASDEFD07', 'Decoración Fondant Navidad Pingüino, Santa y Snowman (16  Bandejas x 50 Figuras)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(515, 'PASDEFD08', 'Decoración Fondant Navidad Galleta de Jengibre y Casa (24 Bandejas x 12 Figuras)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(516, 'PASDEFG05', 'Decoración Choco Giros (Caja 2x3 Kg.)', 38860, 46243.4, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(517, 'PASDEFG08', 'Decoración Boquitas (Caja 5 Kg.)', 18067, 21499.73, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(518, 'PASDEFG09', 'Confite Figura Coches (Caja 2x5 Kg.)', 35442, 42175.98, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(519, 'PASDEFG02', 'Semiguín Naranja (Bolsa 1 Kg.)', 2620, 3117.8, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(520, 'PASDEFG06', 'Decoración Christmas Crispies (Caja 4x 1.81 Kg.)', 81569, 97067.11, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(521, 'PASDEFG01', 'Semiguín Amarillo (Bolsa 1 Kg.)', 2620, 3117.8, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(522, 'PASDEFG13', 'Decoración Corazón (Caja 2x5 Kg.)', 52112, 62013.28, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(523, 'PASDEFG12', 'Decoración Navidad (Caja 5 Kg.)', 31990, 38068.1, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(524, 'PASDEFG10', 'Decoración Flores (Caja 2x5 Kg.)', 53112, 63203.28, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(525, 'PASDEFG11', 'Decoración Fantasmas Halloween (Caja 2x2.27 Kg.)', 27850, 33141.5, NULL, '2025-10-13 15:22:17.686', '2025-10-13 15:22:17.686', NULL),
(526, 'PASDEFG14', 'Decoración Estrella Pastel (Caja 4x2.27 Kg.)', 29990, 35688.1, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(527, 'PASDEFG07', 'Decoración Alfabeto (Caja 2x5 Kg.)', 19990, 23788.1, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(528, 'PASDEFG15', 'Decoración Estrellas (Caja 2x5 Kg.)', 52112, 62013.28, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(529, 'PASDEFG16', 'Decoración Fondo de Mar (Caja 2x5 Kg.)', 19990, 23788.1, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(530, 'PASDEFG18', 'Decoración Mini Confetti (Caja 2x5 Kg.)', 53112, 63203.28, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(531, 'PASDEFG17', 'Decoración Micro Confetti (Caja 2x5 Kg.)', 52890, 62939.1, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(532, 'PASDEFG22', 'Semiguin Rojo (Bolsa 1 Kg.)', 2620, 3117.8, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(533, 'PASDEFG25', 'Decoración Estrellas Tricolor (Caja 11,33 Kg.)', 91265, 108605.35, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(534, 'PASDEFG24', 'Decoración Flocos Sabor Chocolate (Caja 20x500 Gr.)', 47146, 56103.74, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(535, 'PASDEFG23', 'Semiguin Verde (Bolsa 1 Kg.)', 2620, 3117.8, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(536, 'PASDEFG21', 'Decoración Pino Navidad (Caja 4x2,27 Kg.)', 60874, 72440.06, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(537, 'PASDEFG29', 'Decoración Estrellas Blanca (Caja 2x5 Kg.)', 53112, 63203.28, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(538, 'PASDEFG20', 'Decoración Copo Nieve Frozen (Caja 4x2,27 Kg.)', 55914, 66537.66, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(539, 'PASDEFG26', 'Decoración Cereal Hallowen (Caja 4 x1,8 Kg.)', 81457, 96933.83, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(540, 'PASDEFG47', 'Decoración Dinosaurios (Caja 1x11,34 Kg.)', 26990, 32118.1, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(541, 'PASDEFG48', 'Decoración Hojas de Otoño (Caja 2x2.27 Kg.)', 29990, 35688.1, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(542, 'PASDEFG49', 'Decoración Ojos Pequeños (800 Figuras x Caja)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(543, 'PASDEGA01', 'Ginger Bread House para Armar (4 Casas x Caja)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(544, 'PASDEGA03', 'Galleta Granulada Cacao Negro (12 Jarras x 88 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(545, 'PASDEGA04', 'Galleta Granulada Brown (12 Jarras x 88 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(546, 'PASDEGA02', 'Galleta de Jengibre Granulada Cookie Flavor (12 Jarras x 88 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.687', '2025-10-13 15:22:17.687', NULL),
(547, 'PASDEGA05', 'Galleta Granulada Sabor Frutilla (12 Jarras x 88 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(548, 'PASDEGG01', 'Gragea Color 1 (Caja 10x500 Gr.)', 23740, 28250.6, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(549, 'PASDEGG02', 'Gragea Color 1,5 (Saco 25 Kg.)', 105799, 125900.81, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(550, 'PASDEGG04', 'Gragea Colores Natural (Caja 4x3,632 Kg.)', 29990, 35688.1, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(551, 'PASDEGG09', 'Mix Gragea Navidad (12 Jarras x 80 Grs.)', 35990, 42828.1, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(552, 'PASDEGG03', 'Gragea Colores 0 (Saco 20 Kg.)', 80205, 95443.95, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(553, 'PASDEGG06', 'Gragea Colores 1 (Saco 25 Kg.)', 104458, 124305.02, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(554, 'PASDEGG11', 'Decoración Perla Plata 4 mm (12 Jarras x 141 Grs.)', 35990, 42828.1, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(555, 'PASDEGG12', 'Decoración Perla Rosada 4 mm (12 Jarras x 141 Grs.)', 35990, 42828.1, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(556, 'PASDEGG05', 'Gragea Chocolate (Caja 2x5 Kg.)', 45990, 54728.1, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(557, 'PASDEGG07', 'Gragea Oro 1 (Caja 2x5 Kg.)', 39990, 47588.1, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(558, 'PASDEGG08', 'Gragea Plata 1 (Caja 2x5 Kg.)', 35990, 42828.1, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(559, 'PASDEGG13', 'Decoración Perla Blanca 4 mm (12 Jarras x 141 Grs.)', 35990, 42828.1, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(560, 'PASDEGG14', 'Decoración Perla Mix Rainbow 4 mm (12 Jarras x 141 Grs.)', 35990, 42828.1, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(561, 'PASDEGL04', 'Glaseado Donuts Blanco (Balde 9,98 Kg.)', 64000, 76160, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(562, 'PASDEGL01', 'Glaze Real (Caja 10 Bolsas x 1 Kg.)', 46258, 55047.02, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(563, 'PASDEGG10', 'Mix Gragea Navidad (Caja 10 Kg.)', 35990, 42828.1, NULL, '2025-10-13 15:22:17.688', '2025-10-13 15:22:17.688', NULL),
(564, 'PASDEGL05', 'Glaseado Donuts Transparente (Balde 18,14 Kg.)', 82828, 98565.31999999999, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(565, 'PASDEGL11', 'Glaseado Frutale (Balde 18,14 Kg.)', 82672, 98379.68, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(566, 'PASDEGL15', 'Crema Chocolate con Leche (Balde 2,3 Kg.)', 14682, 17471.58, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(567, 'PASDEGL16', 'Glaseado Instantáneo en Polvo (Saco 22,68 Kg.)', 99890, 118869.1, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(568, 'PASDEGL14', 'Crema Chocolate Semi-Amargo (Balde 4 Kg.)', 25203, 29991.57, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(569, 'PASDEGL13', 'Crema Chocolate Blanco (Balde 4 Kg.)', 25203, 29991.57, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(570, 'PASDEGL06', 'Triple Glaseado Chocolate (Balde 22,68 Kg.)', 99555, 118470.45, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(571, 'PASDEGR02', 'Granillo Chocolate Crocante (Caja 10x1,01 Kg.)', 37588, 44729.72, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(572, 'PASDEGR01', 'Granillo Chocolate Blando (Caja 10x1,01 Kg.)', 29951, 35641.69, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(573, 'PASDEGR04', 'Granillo Colores (Caja 20x500 Gr.)', 36432, 43354.07999999999, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(574, 'PASDEGR03', 'Granillo Chocolate Crocante (Saco 25 Kg.)', 76298, 90794.62, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(575, 'PASDEGR05', 'Granillo Colores (Saco 20 Kg.)', 61054, 72654.26, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(576, 'PASDEGR06', 'Granillo Amarillo (Saco 25 Kg.)', 76332, 90835.08, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(577, 'PASDEGR08', 'Granillo Blanco (Saco 25 Kg.)', 76332, 90835.08, NULL, '2025-10-13 15:22:17.690', '2025-10-13 15:22:17.690', NULL),
(578, 'PASDEGR12', 'Granillo Naranja (Saco 25 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.690', '2025-10-13 15:22:17.690', NULL),
(579, 'PASDEGR07', 'Granillo Azul (Saco 25 Kg.)', 65438, 77871.22, NULL, '2025-10-13 15:22:17.689', '2025-10-13 15:22:17.689', NULL),
(580, 'PASDEGR10', 'Granillo Rojo (Saco 25 Kg.)', 76332, 90835.08, NULL, '2025-10-13 15:22:17.690', '2025-10-13 15:22:17.690', NULL),
(581, 'PASDEGR11', 'Granillo Verde (Saco 25 Kg.)', 76332, 90835.08, NULL, '2025-10-13 15:22:17.690', '2025-10-13 15:22:17.690', NULL),
(582, 'PASDEGR21', 'Flocos Crujientes Sabor Chocolate (Caja 12x750 Grs.)', 31200, 37128, NULL, '2025-10-13 15:22:17.690', '2025-10-13 15:22:17.690', NULL),
(583, 'PASDEGR23', 'Relleno Horneable de Maracuya (Caja 8x1,05 Kg.)', 40291, 47946.29, NULL, '2025-10-13 15:22:17.690', '2025-10-13 15:22:17.690', NULL),
(584, 'PASDEGR28', 'Crocante Sabor Caramelo Salado (Caja 6x1,05 Kg.)', 29350, 34926.5, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(585, 'PASDEGR22', 'Crocante Sabor Dulce de Leche (Caja 6x1,05 Kg.)', 37810, 44993.9, NULL, '2025-10-13 15:22:17.690', '2025-10-13 15:22:17.690', NULL),
(586, 'PASDEGR27', 'Crema de Avellana con Cacao (Caja 6x1,01 Kg.)', 54773, 65179.87, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(587, 'PASDEGR26', 'Relleno Sabor Chocolate de Leche con Avellana (Caja 6x1,01 Kg.)', 46994, 55922.86, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(588, 'PASDEGR29', 'Galletas en Gotas Sabor Chocolate (Caja 6x1 Kg.)', 33400, 39746, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(589, 'PASDEGR31', 'Crocante Maní (Caja 4x2,5 Kg.)', 64699, 76991.81, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(590, 'PASDEGR30', 'Galletas Granuladas Sabor Fresa (Caja 6x1 Kg.)', 39878, 47454.82, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(591, 'PASDEGR32', 'Relleno Horneable Sabor Fresa (Caja 8x1,01 Kg.)', 40291, 47946.29, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(592, 'PASDEGR38', 'Decoración Figura Ojos con Pestañas (Caja 2x3 Kg.)', 71005, 84495.95, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(593, 'PASDEGR34', 'Decoración Mix Matte (Caja 2x3 Kg.)', 64531, 76791.89, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(594, 'PASDEGR35', 'Decoración Barra Oro 7 mm (Caja 2x3 Kg.)', 71895, 85555.05, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(595, 'PASDEGR37', 'Decoración Figura Ojos Grandes (Caja 2x3 Kg.)', 66237, 78822.03, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(596, 'PASDEGR33', 'Decoración Confetti Mix Flores (Caja 2x3 Kg.)', 67142, 79898.98, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(597, 'PASDEGR36', 'Decoración Coronas Doradas (Caja 2x3 Kg.)', 57418, 68327.42, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(598, 'PASDEGR40', 'Decoración Perlas Blancas 4 mm (Caja 2x3 Kg.)', 40390, 48064.1, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(599, 'PASDEGR41', 'Decoración Perlas Verde 10 mm (Caja 2x3 Kg.)', 57418, 68327.42, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(600, 'PASDEGR39', 'Decoración Mini Corazón (Caja 2x3 Kg.)', 56065, 66717.34999999999, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(601, 'PASDEGR43', 'Decoración Perlas Blancas 10 mm (Caja 2x3 Kg.)', 43864, 52198.16, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(602, 'PASDEGR46', 'Gragea Roja 2 mm (Caja 2x3 Kg.)', 40136, 47761.84, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(603, 'PASDEGR42', 'Decoración Perlas Rosadas 10 mm (Caja 2x3 Kg.)', 43864, 52198.16, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(604, 'PASDEGR45', 'Decoración Perla Oro 10 mm (Caja 2x3 Kg.)', 54424, 64764.56, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(605, 'PASDEGR47', 'Granillo Oro (Caja 2x3 Kg.)', 60133, 71558.26999999999, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(606, 'PASDEGR44', 'Relleno Horneable de Maracuya (Caja 8x1,01 Kg.)', 29291, 34856.29, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(607, 'PASDEGR48', 'Granillo Plata (Caja 2x3 Kg.)', 50797, 60448.43, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(608, 'PASDEGR49', 'Decoración Mix Perla Pastel (Caja 2x3 Kg.)', 54119, 64401.61, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(609, 'PASDEGR24', 'Galletas Granuladas Sabor Chocolate (Caja 6x1 Kg.)', 27395, 32600.05, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(610, 'PASDEGR25', 'Galletas Granuladas Sabor Vainilla (Caja 6x1 Kg.)', 27395, 32600.05, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(611, 'PASDEGR51', 'Decoración Mix Bastones (Caja 2x3 Kg.)', 64969, 77313.11, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(612, 'PASDEGR53', 'Decoración Perla Oro 4 mm (Caja 2x3 Kg.)', 53932, 64179.07999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(613, 'PASDEGR52', 'Decoración Estrella Oro (Caja 2x3 Kg.)', 59508, 70814.52, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(614, 'PASDEGR50', 'Decoración Mix Conejitos (Caja 2x3 Kg.)', 48814, 58088.66, NULL, '2025-10-13 15:22:17.691', '2025-10-13 15:22:17.691', NULL),
(615, 'PASDEGR54', 'Decoración Perla Negra 4 mm (Caja 2x3 Kg.)', 40051, 47660.69, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(616, 'PASDEGR56', 'Decoración Estrella Plata (2x3 Kg.)', 58017, 69040.23, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(617, 'PASDEGR57', 'Decoración Mix Bebé (2x3 Kg.)', 55441, 65974.79, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(618, 'PASDEGR55', 'Decoración Copo de Nieve (2x3 Kg.)', 48915, 58208.85, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(619, 'PASDEGR58', 'Decoración Mix Oro Halloween (2x3 Kg.)', 75102, 89371.37999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(620, 'PASDEGR59', 'Decoración Perla Verde 4 mm (Caja 2x3 Kg.)', 40051, 47660.69, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(621, 'PASDEGR62', 'Decoración Mix Conejo de Pascua (2x3 Kg.)', 57475, 68395.25, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(622, 'PASDEGR63', 'Granillo Naranja (Caja 4,5 Kg.)', 20990, 24978.1, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(623, 'PASDEGR66', 'Mix Granillo Navidad  (12 Jarras x 80 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(624, 'PASDEGR68', 'Granillo Chocolate Crocante Manar (Saco 25 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(625, 'PASDEGR64', 'Mix Gragea Halloween con Ojo (Caja 2x5 Kg.)', 72168, 85879.92, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(626, 'PASDEGR60', 'Decoración Perla Azul 4 mm (Caja 2x3 Kg.)', 40051, 47660.69, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(627, 'PASDESP01', 'Mix Sprinkles Halloween Araña (Caja 2x5 Kg.)', 72168, 85879.92, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(628, 'PASDEGR65', 'Mix Gragea Halloween con Ojo (12 Jarras x 80 Grs.)', 22209, 26428.71, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(629, 'PASDESP02', 'Mix Sprinkles Halloween Fantasma (Caja 2x5 Kg.)', 72168, 85879.92, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(630, 'PASDESP04', 'Mix Sprinkles Halloween Calabaza (Caja 2x5 Kg.)', 72168, 85879.92, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(631, 'PASDEGR67', 'Mix Granillo Navidad (Caja 10 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(632, 'PASDESP03', 'Mix Sprinkles Halloween Ojo (Caja 2x5 Kg.)', 72168, 85879.92, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(633, 'PASDESP05', 'Mix Sprinkles Unicornio (Caja 2x5 Kg.)', 81480, 96961.2, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(634, 'PASDESP06', 'Mix Sprinkles Tiburón (Caja 2x5 Kg.)', 81480, 96961.2, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(635, 'PASDESP11', 'Mix Sprinkles Halloween Ojo (12 Jarras x 80 Grs.)', 21790, 25930.1, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(636, 'PASDESP07', 'Mix Sprinkles Cupcake (Caja 2x5 Kg.)', 81480, 96961.2, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(637, 'PASDEGR61', 'Decoración Mix Fiesta (2x3 Kg.)', 57475, 68395.25, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(638, 'PASDESP08', 'Mix Sprinkles Arcoíris (Caja 2x5 Kg.)', 81480, 96961.2, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(639, 'PASDESP13', 'Mix Sprinkles Halloween RIP (12 Jarras x 80 Grs.)', 20533, 24434.27, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(640, 'PASDESP10', 'Mix Sprinkles Halloween Fantasma (12 Jarras x 80 Grs)', 20533, 24434.27, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(641, 'PASDESP12', 'Mix Sprinkles Halloween Calabaza (12 Jarras x 80 Grs.)', 20533, 24434.27, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(642, 'PASDESP14', 'Mix Sprinkles Halloween Murciélago (12 Jarras x 80 Grs.)', 20533, 24434.27, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(643, 'PASDESP16', 'Mix Sprinkles Tiburón (12 Jarras x 80 Grs.)', 23047, 27425.93, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(644, 'PASDESP17', 'Mix Sprinkles Cupcake (12 Jarras x 80 Grs.)', 23047, 27425.93, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(645, 'PASDESP18', 'Mix Sprinkles Arcoíris (12 Jarras x 80 Grs.)', 23047, 27425.93, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(646, 'PASDESP15', 'Mix Sprinkles Unicornio (12 Jarras x 80 Grs.)', 23047, 27425.93, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(647, 'PASDESP20', 'Mix Sprinkles Navidad Estrella Blanca (Caja 10 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(648, 'PASDESP19', 'Mix Sprinkles Navidad Estrella Blanca (12 Jarras x 80 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(649, 'PASDESP21', 'Mix Sprinkles Navidad Snowman  (12 Jarras x 72 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(650, 'PASDESP09', 'Mix Sprinkles Halloween Araña (12 Jarras x 80 Grs.)', 20114, 23935.66, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(651, 'PASDESP22', 'Mix Sprinkles Navidad Snowman  (Caja 10 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(652, 'PASDESP25', 'Mix Sprinkles Remolino de Colores (12 Jarras x 66 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(653, 'PASDESP23', 'Mix Sprinkles Navidad Copo de Nieve (12 Jarras x 80 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(654, 'PASDESP24', 'Mix Sprinkles Navidad Copo de Nieve (Caja 10 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(655, 'PASDESP27', 'Mix Sprinkles Navidad Galleta de Jengibre (12 Jarras x 70 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(656, 'PASDESP28', 'Mix Sprinkles Navidad Galleta de Jengibre (Caja 10 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(657, 'PASDESP26', 'Mix Sprinkles Remolino de Colores (Caja 10 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(658, 'PASDESP31', 'Mix Sprinkles Bastones de Navidad (12 Jarras x 126 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(659, 'PASDESP30', 'Mix Sprinkles Trebol Navidad (Caja 10 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL);
INSERT INTO `Producto` (`id`, `codigo`, `nombre`, `precioNeto`, `precioTotal`, `precioKilo`, `createdAt`, `updatedAt`, `categoriaId`) VALUES
(660, 'PASDESP29', 'Mix Sprinkles Trebol Navidad (12 Jarras x 122 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.692', '2025-10-13 15:22:17.692', NULL),
(661, 'PASDESP33', 'Mix Sprinkles Navidad Estrellas Metalizadas (12 Jarras x 124 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(662, 'PASDESP32', 'Mix Sprinkles Bastones de Navidad (Caja 10 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(663, 'PASDESP34', 'Mix Sprinkles Navidad Estrellas Metalizadas (Caja 10 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(664, 'PASDESP36', 'Mix Sprinkles Hojas de Navidad (Caja 10 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(665, 'PASDESP38', 'Mix Sprinkles Oro y Blanco 4 Variedades (Caja 12 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(666, 'PASDESP35', 'Mix Sprinkles Hojas de Navidad (12 Jarras x 124 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(667, 'PASDESP37', 'Mix Sprinkles Oro y Blanco 4 Variedades (8 Jarras x 83 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(668, 'PASDESP40', 'Mix Sprinkles Oro y Blanco Estrellas 4 Variedades (Caja 12 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(669, 'PASDESP39', 'Mix Sprinkles Oro y Blanco Estrellas 4 Variedades (8 Jarras x 138 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(670, 'PASDESP42', 'Mix Sprinkles Plata y Blanco Estrellas 4 Variedades (Caja 12 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(671, 'PASDESP44', 'Mix Sprinkles Confetti Navidad 6 Variedades (8 Jarras x 95 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(672, 'PASDESP43', 'Mix Sprinkles Navidad Verde y Rojo 4 Variedades (8 Jarras x 126 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.693', '2025-10-13 15:22:17.693', NULL),
(673, 'PASDESP46', 'Mix Sprinkles Oro y Plata 6 variedades  (8 Jarras x 198 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(674, 'PASDESP45', 'Mix Sprinkles Navidad 6 Variedades (8 Jarras x 198 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(675, 'PASDESP41', 'Mix Sprinkles Plata y Blanco Estrellas 4 Variedades (8 Jarras x 138 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(676, 'PASDESP48', 'Mix Sprinkles Árbol de Navidad (6 Jarras x 315 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(677, 'PASDESP47', 'Mix Sprinkles Oro y Plata 6 variedades  (Caja 12 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(678, 'PASDESP49', 'Mix Perlas Árbol de Navidad con Estrella Oro (8 Jarras x 125 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(679, 'PASDESP50', 'Mix Sprinkles Campana de Oro (24 Jarras x 82 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(680, 'PASDESP51', 'Mix Sprinkles Navidad Copo de Nieve Plata (24 Jarras x 80 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(681, 'PASDESP52', 'Mix Sprinkles Navidad 3 Variedades (24 Jarras x 210 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(682, 'PASDESP54', 'Mix Sprinkles Azules y Verdes Variedad (Caja 12 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(683, 'PASDLHE01', 'Dulce Leche Heladero (Cuñete 10 Kg.)', 29700, 35343, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(684, 'PASDESP53', 'Mix Sprinkles Azules y Verdes Variedad (8 Jarras x 76 Grs.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(685, 'PASDLEC01', 'Dulce Leche El Sosiego (Caja 10 Kg.)', 21700, 25823, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(686, 'PASDESP55', 'Mix Sprinkles Cactus Verde (Caja 12 x 1 Kg.)', 65490, 77933.09999999999, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(687, 'PASDLPR04', 'Dulce Leche Sublime Premium (Cuñete 10 Kg.)', 31920, 37984.8, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(688, 'PASDLPR02', 'Dulce Leche Agustina Premium (Cuñete 10 Kg.)', 31920, 37984.8, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(689, 'PASDLPR06', 'Dulce Leche Sublime Premium (Balde 4 Kg.)', 11331, 13483.89, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(690, 'PASDLMB09', 'Manjar Blanco (Caja 2x5 Kg.)', 30400, 36176, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(691, 'PASDLPR08', 'Dulce Leche Clásico Premium (Cuñete 10 Kg.)', 30400, 36176, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(692, 'PASDLPR07', 'Dulce Leche Repostero Premium (Balde 4 Kg.)', 11331, 13483.89, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(693, 'PASDLPR05', 'Dulce Leche Repostero Premium (Cuñete 10 Kg.)', 31920, 37984.8, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(694, 'pasfefg29', 'Decoración Mix Navidad (Caja 4x 2,27 Kg.)', 110314, 131273.66, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(695, 'PASDOCO01', 'Donas Congeladas (52 Gr. x 84 Unid.)', 42000, 49980, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(696, 'PASMEHO02', 'Mermelada Damasco (Balde 13 Kg.)', 33593, 39975.67, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(697, 'PASMEHO03', 'Dulce Membrillo (Caja 15 Kg.)', 28586, 34017.34, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(698, 'PASMEHO04', 'Mermelada Damasco Horneable (Balde 5 Kg.)', 14581, 17351.39, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(699, 'PASMEHO05', 'Mermelada Durazno Horneable (Balde 5 Kg.)', 17009, 20240.71, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(700, 'PASMEHO06', 'Mermelada Frambuesa Horneable (Balde 5 Kg.)', 30661, 36486.59, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(701, 'PASMEHO07', 'Mermelada Frutilla Horneable (Balde 5 Kg.)', 21416, 25485.04, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(702, 'PASMEHO08', 'Mermelada Manzana Horneable (Balde 5 Kg.)', 18251, 21718.69, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(703, 'PASMEHO09', 'Mermelada Membrillo Horneable (Cuñete 10 Kg.)', 23121, 27513.99, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(704, 'PASMEHO11', 'Mermelada Naranja Horneable (Balde 13 Kg.)', 29671, 35308.49, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(705, 'PASMEHO10', 'Mermelada Naranja Horneable (Balde 5 Kg.)', 16640, 19801.6, NULL, '2025-10-13 15:22:17.694', '2025-10-13 15:22:17.694', NULL),
(706, 'PASMEHO12', 'Mermelada de Damasco (Cuñete 10 Kg.)', 33593, 39975.67, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(707, 'PASMEMG02', 'Mermelada Manzana Mangas (Caja 7 Kg.)', 12192, 14508.48, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(708, 'PASMEMG01', 'Mermelada Damasco Mangas (Caja 7 Kg.)', 11473, 13652.87, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(709, 'PASMEHO13', 'Mermelada de Naranja (Cuñete 10 Kg.)', 33593, 39975.67, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(710, 'PASMEMG03', 'Mermelada Piña Mangas (Caja 7 Kg.)', 21226, 25258.94, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(711, 'PASMEMG04', 'Mermelada Arándano Mangas (Caja 7 Kg.)', 26581, 31631.39, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(712, 'PASMEMG05', 'Mermelada Durazno Mangas (Caja 7 Kg.)', 16476, 19606.44, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(713, 'PASMEMG09', 'Mermelada Frutos del Bosque Mangas (Caja 7 Kg.)', 23705, 28208.95, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(714, 'PASMEMG08', 'Mermelada Naranja Mangas (Caja 7 Kg.)', 17160, 20420.4, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(715, 'PASMEMG06', 'Mermelada Frutilla Mangas (Caja 7 Kg.)', 19441, 23134.79, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(716, 'PASMEMG07', 'Mermelada Frambuesa Mangas (Caja 7 Kg.)', 31341, 37295.79, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(717, 'PASMEMG10', 'Mermelada Zarzamora Mangas (Caja 7 Kg.)', 31341, 37295.79, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(718, 'PASMEMG11', 'Mermelada Maracuyá Mangas (Caja 7 Kg.)', 30707, 36541.33, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(719, 'PASMERP01', 'Mermelada Arándano Repostera (Cuñete 5 Kg.)', 14997, 17846.43, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(720, 'PASMERP03', 'Mermelada Durazno Repostera (Cuñete 5 Kg.)', 13818, 16443.42, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(721, 'PASMERP04', 'Mermelada Frambuesa Repostera (Cuñete 5 Kg.)', 22315, 26554.85, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(722, 'PASMERP05', 'Mermelada Frutilla Repostera (Cuñete 5 Kg.)', 20016, 23819.04, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(723, 'PASNUCH01', 'Concentrado Chocolate en Polvo (Saco 22,68 Kg.)', 81698, 97220.62, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(724, 'PASMERP02', 'Mermelada Damasco Repostera (Cuñete 5 Kg.)', 11744, 13975.36, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(725, 'PASNUDO01', 'Concentrado Donas Yeast 2880 (Saco 22,68 Kg.)', 73185, 87090.15, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(726, 'PASMERP06', 'Mermelada Naranja Repostera (Cuñete 5 Kg.)', 13084, 15569.96, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(727, 'PASNUVA02', 'Concentrado Donas Yeast 2880 (Saco 22,68 Kg.)', 73185, 87090.15, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(728, 'PASNUVA01', 'Concentrado Vainilla en Polvo (Saco 22,68 Kg.)', 73185, 87090.15, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(729, 'PASPACL02', 'Pasta Americana Vermelha Roja (Caja 10x500 Gr.)', 40046, 47654.74, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(730, 'PASPMBR03', 'Premezcla Brownie Manar (Saco 20 Kg.)', 57000, 67830, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(731, 'PASPMBR02', 'Brownie Mix (Saco 22,68 Kg.)', 76925, 91540.75, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(732, 'PASPACL01', 'Pasta Americana Negra (Caja 10x500 Gr.)', 40046, 47654.74, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(733, 'PASPATR02', 'Pasta Americana Tradicional (Caja 12x800 Gr.)', 53190, 63296.1, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(734, 'PASPMCH02', 'Creme Cake Chocolate Manar (Saco 20 Kg.)', 51326, 61077.94, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(735, 'PASPMBR04', 'Premezcla Brownie Manar (Caja 10x1 Kg.)', 36950, 43970.5, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(736, 'PASPMCH04', 'Creme Cake Chocolate Manar (Caja 10x1 Kg.)', 50864, 60528.16, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(737, 'PASPMCO01', 'Premezcla Cocada Manar (Saco 10 Kg.)', 48948, 58248.12, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(738, 'PASPMCO02', 'Premezcla Cocada Manar (Caja 10x1 Kg.)', 52858, 62901.02, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(739, 'PASPMRV03', 'Premezcla Red Velvet Manar (Saco 20 Kg.)', 54923, 65358.37, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(740, 'PASPMDT02', 'Premezcla Donas Yeast Manar BK (Saco 20 Kg.)', 91948, 109418.12, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(741, 'PASPMMG01', 'Creme Cake Magdalena Manar (Saco 20 kg)', 42140, 50146.6, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(742, 'PASPMDT01', 'Premezcla Donas Yeast (Saco 22,68 Kg.)', 51948, 61818.12, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(743, 'PASPMRV02', 'Red Velvet Creme Cake (Saco 22,68 Kg.)', 67362, 80160.78, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(744, 'PASPMRV04', 'Premezcla Red Velvet Manar (Caja 10x1 Kg.)', 32180, 38294.2, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(745, 'PASPMVA06', 'Creme Cake Vainilla Manar BK (Saco 20 Kg.)', 40100, 47719, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(746, 'PASPMVA02', 'Creme Cake Vainilla Manar (Saco 20 Kg.)', 46100, 54859, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(747, 'PASPMZH02', 'Crema Cake Zanahoria Dawn (Saco 22,68 Kg.)', 72576, 86365.44, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(748, 'PASPMZH03', 'Crema Cake Zanahoria Manar (Caja 10x1 Kg.)', 38410, 45707.9, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(749, 'PASPMZH04', 'Crema Cake Zanahoria Manar (Saco 20 Kg.)', 72576, 86365.44, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(750, 'PASPOFD01', 'Postre Sabor Frutilla (Caja 2x12x100 Gr.)', 26877, 31983.63, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(751, 'PASPMVA05', 'Creme Cake Vainilla Manar (Caja 10x1 Kg.)', 24585, 29256.15, NULL, '2025-10-13 15:22:17.695', '2025-10-13 15:22:17.695', NULL),
(752, 'PASRECH01', 'Chocolate Donuts Icing  (Balde 18,14 Kg.)', 83374, 99215.06, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(753, 'PASPOFD04', 'Postre Sabor Maracuya (Caja 2x12x100 Gr.)', 26877, 31983.63, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(754, 'PASPOFD02', 'Postre Sabor Frutos Rojos (Caja 2x12x100 Gr.)', 26877, 31983.63, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(755, 'PASPOFD03', 'Postre Sabor Limón (Caja 2x12x100 Gr.)', 26877, 31983.63, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(756, 'PASRECB02', 'Relleno Crema Bavarian (Balde 15,88 Kg.)', 40135, 47760.65, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(757, 'PASRECP01', 'Crema Pastelera Manar (Caja 15x400 Gr.)', 22258, 26487.02, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(758, 'PASREFB01', 'Relleno Frambuesa (Balde 15,88 Kg.)', 43747, 52058.93, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(759, 'PASREJC01', 'Jarabe Tres Leches Chocolate  (Caja 10x1 Kg.)', 46276, 55068.44, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(760, 'PASREFR01', 'Relleno Frutilla (Balde 15,88 Kg.)', 56615, 67371.84999999999, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(761, 'PASREJL01', 'Jarabe Tres Leches (Caja 10x1 Kg.)', 46276, 55068.44, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(762, 'PASREQC01', 'Relleno Queso Crema (Balde 9,07 Kg.)', 46276, 55068.44, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL),
(763, 'PASREMZ01', 'Relleno Sabor Manzana  (Balde 15,88 Kg.)', 40876, 48642.44, NULL, '2025-10-13 15:22:17.696', '2025-10-13 15:22:17.696', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Setting`
--

CREATE TABLE `Setting` (
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `apellido` varchar(191) DEFAULT NULL,
  `nombre` varchar(191) DEFAULT NULL,
  `rut` varchar(191) DEFAULT NULL,
  `zona` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `User`
--

INSERT INTO `User` (`id`, `username`, `password`, `role`, `createdAt`, `updatedAt`, `apellido`, `nombre`, `rut`, `zona`, `email`) VALUES
(1, 'rdroguetts', '$2a$10$I2WBSldbN4nsOlHDF0FYnOhDb4/0doNor0bUsgaqthWHcWjK7zpZS', 'ADMIN', '2025-10-05 21:53:10.995', '2025-10-06 17:01:18.535', ' Droguett', 'Rodrigo', '15.767.815-9', 'Administracion', NULL),
(2, 'spfeiferdiaz', '$2a$10$dINdsdyoJqKTxS9BBhdyse.QzZNcDTfQuZaRW0.5wugtH5NaaIm/y', 'USER', '2025-10-05 22:13:54.270', '2025-10-05 22:13:54.270', NULL, NULL, NULL, NULL, NULL),
(3, 'nlorca', '$2a$10$4LNghTpCvpzAo5HQM019Yumb2gxdx/F6PU2WoOHJClY1.7d61r0fS', 'USER', '2025-10-05 22:14:03.645', '2025-10-05 22:14:03.645', NULL, NULL, NULL, NULL, NULL),
(4, 'admin', '$2a$10$0ZW/qfEqL4Qg.6LEKXpHEOjKL9IhDCD9qbvOq1MXsEgX7.BcxPUxm', 'ADMIN', '2025-10-06 00:36:01.782', '2025-10-06 00:36:01.782', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Venta`
--

CREATE TABLE `Venta` (
  `id` int(11) NOT NULL,
  `fecha` datetime(3) NOT NULL,
  `descripcion` varchar(191) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `clienteId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Venta`
--

INSERT INTO `Venta` (`id`, `fecha`, `descripcion`, `createdAt`, `updatedAt`, `clienteId`, `userId`) VALUES
(2, '2025-10-15 00:00:00.000', 'prueba', '2025-10-15 23:46:00.908', '2025-10-15 23:46:00.908', 163, 1),
(3, '2025-10-16 00:00:00.000', NULL, '2025-10-16 00:07:52.008', '2025-10-16 00:07:52.008', 164, 1),
(4, '2025-10-16 00:00:00.000', NULL, '2025-10-16 16:14:28.344', '2025-10-16 16:14:28.344', 174, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VentaProducto`
--

CREATE TABLE `VentaProducto` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioAlMomento` double NOT NULL,
  `ventaId` int(11) NOT NULL,
  `productoId` int(11) NOT NULL,
  `descuento` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `VentaProducto`
--

INSERT INTO `VentaProducto` (`id`, `cantidad`, `precioAlMomento`, `ventaId`, `productoId`, `descuento`) VALUES
(2, 1, 68327.42, 2, 449, 0),
(3, 1, 78659, 3, 313, 0),
(4, 3, 25007.4573, 4, 452, 0),
(5, 2, 39270, 4, 451, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Announcement`
--
ALTER TABLE `Announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Announcement_authorId_fkey` (`authorId`);

--
-- Indices de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Categoria_nombre_key` (`nombre`);

--
-- Indices de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Cliente_email_key` (`email`),
  ADD UNIQUE KEY `Cliente_rut_key` (`rut`),
  ADD KEY `Cliente_userId_fkey` (`userId`);

--
-- Indices de la tabla `NewsArticle`
--
ALTER TABLE `NewsArticle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NewsArticle_authorId_fkey` (`authorId`);

--
-- Indices de la tabla `Producto`
--
ALTER TABLE `Producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Producto_codigo_key` (`codigo`),
  ADD KEY `Producto_categoriaId_fkey` (`categoriaId`);

--
-- Indices de la tabla `Setting`
--
ALTER TABLE `Setting`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `Setting_key_key` (`key`);

--
-- Indices de la tabla `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_username_key` (`username`),
  ADD UNIQUE KEY `User_rut_key` (`rut`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Indices de la tabla `Venta`
--
ALTER TABLE `Venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Venta_userId_fkey` (`userId`),
  ADD KEY `Venta_clienteId_fkey` (`clienteId`);

--
-- Indices de la tabla `VentaProducto`
--
ALTER TABLE `VentaProducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `VentaProducto_productoId_fkey` (`productoId`),
  ADD KEY `VentaProducto_ventaId_fkey` (`ventaId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Announcement`
--
ALTER TABLE `Announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de la tabla `NewsArticle`
--
ALTER TABLE `NewsArticle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Producto`
--
ALTER TABLE `Producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=764;

--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Venta`
--
ALTER TABLE `Venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `VentaProducto`
--
ALTER TABLE `VentaProducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Announcement`
--
ALTER TABLE `Announcement`
  ADD CONSTRAINT `Announcement_authorId_fkey` FOREIGN KEY (`authorId`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Cliente`
--
ALTER TABLE `Cliente`
  ADD CONSTRAINT `Cliente_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `NewsArticle`
--
ALTER TABLE `NewsArticle`
  ADD CONSTRAINT `NewsArticle_authorId_fkey` FOREIGN KEY (`authorId`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Producto`
--
ALTER TABLE `Producto`
  ADD CONSTRAINT `Producto_categoriaId_fkey` FOREIGN KEY (`categoriaId`) REFERENCES `Categoria` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `Venta`
--
ALTER TABLE `Venta`
  ADD CONSTRAINT `Venta_clienteId_fkey` FOREIGN KEY (`clienteId`) REFERENCES `Cliente` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Venta_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `VentaProducto`
--
ALTER TABLE `VentaProducto`
  ADD CONSTRAINT `VentaProducto_productoId_fkey` FOREIGN KEY (`productoId`) REFERENCES `Producto` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `VentaProducto_ventaId_fkey` FOREIGN KEY (`ventaId`) REFERENCES `Venta` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

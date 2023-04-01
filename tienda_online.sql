-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3305
-- Tiempo de generación: 01-04-2023 a las 02:28:00
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `descuento` tinyint(3) NOT NULL DEFAULT 0,
  `id_categoria` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `descuento`, `id_categoria`, `activo`) VALUES
(1, 'Lenovo Legion 5', 'Computadora portátil para juegos, pantalla FHD de 15.6 pulgadas y 120 Hz, AMD Ryzen 5 5600H, GeForce RTX 3050Ti, 32 GB de RAM, SSD NVMe PCIe de 1 TB, teclado retroiluminado RGB, Wireless-AX, DP, HDMI, Windows 11 Home', '20900', 15, 1, 1),
(2, 'HP Laptop Pavilion Gaming 15-ec1035la', 'Windows 10, AMD Ryzen 5, 8GB, NVIDIA® GeForce® GTX 1050 (GDDR5 3GB), 256GB SSD, FHD 15.6\", Teclado en Español', '14499', 0, 1, 1),
(3, 'Asus TUF Gaming A15', 'AMD Ryzen 7 / NVIDIA GeForce RTX 3050 / 512GB SSD / 8GB RAM/Teclado en español', '20999', 0, 1, 1),
(4, 'MOLGRIA Light Cyan Keycaps', 'Juego de 129 teclas para teclado mecánico, tapas de perfil PBT XDA personalizadas con extractor de teclas para Gateron Kailh Cherry MX Switch 104/84/74/68/64/61 ANSI/ISO', '804', 0, 1, 1),
(5, 'MOLGRIA Keycaps(flor de ciruelo)', 'Juego de 110 teclas para teclado mecánico de tamaño completo, teclas de perfil OEM PBT personalizadas, estilo japonés con extractor de teclas para Cherry MX 104/87/71/61 60% teclado (flor de ciruelo)', '755', 0, 1, 1),
(6, 'Teclado Mecánico E-YOOSO by TERPORT', 'Teclado Mecánico de Español Latam de 62 Teclas con Azul Interruptores, Teclado 60% mecánico Gaming con ñ y Retroiluminación Amarilla de 18 Colores,Teclado cable de Anti-Ghosting', '699', 14, 1, 1),
(7, 'Teclado Mecanico Snpurdiri ', 'Teclado para juegos 60% con cable, retroiluminación RGB, ultra compacto, teclado pequeño y compacto de 61 teclas para PC o Mac gamer, mecanógrafo, viajes, fácil de llevar en viajes de negocios (negro-blanco)', '599', 0, 1, 1),
(8, 'AMD Procesador Ryzen™ 5 5600G', 'AMD Procesador Ryzen™ 5 5600G - 6 núcleos de CPU - Socket-AM4-3.90GHz - 16MB L3 Cache - Incluye Disipador Wraith Stealth', '6411', 0, 1, 1),
(9, 'Procesador Intel Core™ i5-11400F', 'Procesador Intel Core i5-11400F para Equipos de sobremesa 6 núcleos hasta 4,4 GHz LGA1200 Serie 500 y selectos chipset Serie 400 65W', '2647', 0, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

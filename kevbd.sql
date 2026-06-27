-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2026 a las 07:14:17
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kevbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kev`
--

CREATE TABLE `kev` (
  `COMIDA` varchar(255) DEFAULT NULL,
  `Bebidas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `kev`
--

INSERT INTO `kev` (`COMIDA`, `Bebidas`) VALUES
('Tortas', 'Refresco'),
('Quesadillas', 'Jugo de Naranja'),
('Pan', 'Cafe'),
('Galletas', 'Leche fria'),
('Pan de Temporada', 'leche de chocolate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_precios`
--

CREATE TABLE `lista_precios` (
  `Articulo` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `lista_precios`
--

INSERT INTO `lista_precios` (`Articulo`, `precio`) VALUES
('cafe', 15.00),
('chocolate caliente', 25.00),
('Galletas', 22.00),
('Jugo de Naranja', 35.00),
('Leche fria', 10.00),
('pan de temporada', 25.00),
('pan dulce', 15.00),
('Quesadillas', 30.00),
('Refresco', 25.00),
('Tortas', 45.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lista_precios`
--
ALTER TABLE `lista_precios`
  ADD PRIMARY KEY (`Articulo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

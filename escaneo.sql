-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2020 a las 19:31:28
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escaneo`
--
CREATE DATABASE IF NOT EXISTS `escaneo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escaneo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puertos`
--

CREATE TABLE IF NOT EXISTS `puertos` (
  `puerto` varchar(10) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `servicio` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puertos`
--

INSERT INTO `puertos` (`puerto`, `estado`, `servicio`, `ip`) VALUES
('22/tcp', 'open', 'ssh', '200.33.171.13'),
('25/tcp', 'filtered', 'smtp', '200.33.171.13'),
('80/tcp', 'open', 'http', '200.33.171.13'),
('110/tcp', 'open', 'pop3', '200.33.171.13'),
('119/tcp', 'open', 'nntp', '200.33.171.13'),
('135/tcp', 'filtered', 'msrpc', '200.33.171.13'),
('139/tcp', 'filtered', 'netbios-ssn', '200.33.171.13'),
('143/tcp', 'open', 'imap', '200.33.171.13'),
('445/tcp', 'filtered', 'microsoft-ds', '200.33.171.13'),
('1025/tcp', 'filtered', 'NFS-or-IIS', '200.33.171.13'),
('6129/tcp', 'filtered', 'unknown', '200.33.171.13'),
('8008/tcp', 'open', 'http', '200.33.171.13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

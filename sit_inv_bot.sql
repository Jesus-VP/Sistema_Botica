-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2021 a las 21:18:13
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sit_inv_bot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_prov` int(11) DEFAULT NULL,
  `email_prov` varchar(30) DEFAULT NULL,
  `direc_prov` varchar(30) DEFAULT NULL,
  `tel_prov` varchar(9) DEFAULT NULL,
  `repons_prov` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_prov`, `email_prov`, `direc_prov`, `tel_prov`, `repons_prov`) VALUES
(1, 'juan@gmail.com', 'villa olmos Mz-Z Lt-3', '965321564', 'Raul Peña Mamani'),
(2, 'alberto@gmail.com', 'villa florencia Mz-B Lt-33', '986532145', 'Pedro Lanchipa Chata'),
(3, 'ruiz_231@gmail.com', 'Modesto Basadre Mz-A Lt-25', '954863215', 'Michelle Urbina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usu` int(11) NOT NULL,
  `nombre_usu` varchar(30) DEFAULT NULL,
  `contra_usu` varchar(20) DEFAULT NULL,
  `tipo_usu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usu`, `nombre_usu`, `contra_usu`, `tipo_usu`) VALUES
(1, 'admin', 'admin', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

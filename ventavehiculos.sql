-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2021 a las 08:14:39
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventavehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `idAdmin` tinyint(2) NOT NULL,
  `mailAdmin` varchar(30) NOT NULL,
  `passwordAdmin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idAdmin`, `mailAdmin`, `passwordAdmin`) VALUES
(1, 'admin1@mail.com', 'admin1234'),
(2, 'admin2@mail.com', 'admin5678'),
(3, 'admin3@mail.com', 'adminbkn');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `rutCliente` int(8) NOT NULL,
  `nombreCliente` varchar(30) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `regionCliente` enum('Region de Arica y Parinacota','Region de Tarapaca','Region de Antofagasta','Region de Atacama','Region de Coquimbo','Region de Valparaiso','Region Metropolitana de Santiago','Region del Libertador General Bernardo O''Higgins','Region del Maule','Region de Ñuble','Region del Biobio','Region de La Araucania','Region de Los Rios','Region de Los Lagos','Region de Aysen','Region de Magallanes y de la Antartica Chilena') NOT NULL,
  `telefonoCliente` int(11) NOT NULL,
  `mailCliente` varchar(30) NOT NULL,
  `passwordCliente` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`rutCliente`, `nombreCliente`, `fechaNacimiento`, `regionCliente`, `telefonoCliente`, `mailCliente`, `passwordCliente`) VALUES
(11994542, 'Francisca Cervantes', '1965-11-30', 'Region de Arica y Parinacota', 916831575, 'francisca.cervantes@gmail.com', 'francer'),
(14109637, 'Xavi Manzano', '1971-12-29', 'Region de Aysen', 965101411, 'xavi.manzano@gmail.com', 'xaman'),
(14230088, 'Emiliano Sabater', '1983-06-10', 'Region Metropolitana de Santiago', 980685142, 'emiliano.sabater@gmail.com', 'emisab'),
(14530674, 'Vidal Mosquera', '1975-08-13', 'Region de Coquimbo', 946316238, 'vidal.mosquera@gmail.com', 'vidmos'),
(17234374, 'Jaime Ríos', '1986-04-16', 'Region del Biobio', 964581243, 'jaime.rios@gmail.com', 'JaimERiosxD'),
(17521408, 'Raul Alvarez', '1987-11-05', 'Region de La Araucania', 988120799, 'raul.alvarez@gmail.com', 'abduzcan'),
(17600495, 'Aimar Dorado', '1988-04-08', 'Region Metropolitana de Santiago', 981495413, 'aimar.dorado@gmail.com', 'aido'),
(18370564, 'Maribel Soto', '1992-01-30', 'Region de Valparaiso', 985591756, 'maribel.soto@gmail.com', 'marisoto'),
(18635948, 'Juan Moraga', '1994-10-31', 'Region de Arica y Parinacota', 981497513, 'juan@gmail.com', 'juan123'),
(25913700, 'Violeta Cid', '1970-11-30', 'Region del Maule', 967626730, 'violeta.cid@gmail.com', 'violetaaaa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `local`
--

CREATE TABLE `local` (
  `idLocal` int(3) NOT NULL,
  `nombreLocal` varchar(30) NOT NULL,
  `regionLocal` enum('Region de Arica y Parinacota','Region de Tarapaca','Region de Antofagasta','Region de Atacama','Region de Coquimbo','Region de Valparaiso','Region Metropolitana de Santiago','Region del Libertador General Bernardo O''Higgins','Region del Maule','Region de Ñuble','Region del Biobio','Region de La Araucania','Region de Los Rios','Region de Los Lagos','Region de Aysen','Region de Magallanes y de la Antartica Chilena') NOT NULL,
  `telefonoLocal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `local`
--

INSERT INTO `local` (`idLocal`, `nombreLocal`, `regionLocal`, `telefonoLocal`) VALUES
(1, 'Concesionario Arica', 'Region de Arica y Parinacota', 988956086),
(2, 'Concesionario Antofagasta', 'Region de Antofagasta', 988927386),
(3, 'Concesionario Atacama', 'Region de Atacama', 996763899),
(4, 'Concesionario Coquimbo', 'Region de Coquimbo', 989222252),
(5, 'Concesionario Valparaíso', 'Region de Valparaiso', 944247598),
(6, 'Concesionario Maule', 'Region del Maule', 986574387),
(7, 'Concesionario Biobío', 'Region del Biobio', 917584657),
(8, 'Concesionario La Araucanía', 'Region de La Araucania', 977654769),
(9, 'Concesionario Magallanes', 'Region de Magallanes y de la Antartica Chilena', 912323432),
(10, 'Concesionario Metropolitana', 'Region Metropolitana de Santiago', 98786789);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(10) NOT NULL,
  `rutCliente` int(8) NOT NULL,
  `patenteVehiculo` varchar(10) NOT NULL,
  `idAdmin` tinyint(2) NOT NULL,
  `fechaReserva` date NOT NULL,
  `fechaEntrega` date NOT NULL,
  `estadoReserva` enum('cancelado','en espera','en revision','reservado','finalizado') NOT NULL,
  `valorReserva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`idReserva`, `rutCliente`, `patenteVehiculo`, `idAdmin`, `fechaReserva`, `fechaEntrega`, `estadoReserva`, `valorReserva`) VALUES
(2, 14230088, 'AJ8530', 0, '2021-04-03', '2021-04-08', 'en espera', 4990000),
(3, 17521408, 'XB0940', 0, '2021-05-02', '2021-05-07', 'en revision', 9690000),
(4, 14530674, 'KB5954', 0, '2021-06-10', '2021-06-15', 'finalizado', 2999000),
(5, 25913700, 'FE1117', 0, '2021-03-03', '2021-03-03', 'cancelado', 7890000),
(6, 18635948, 'VC6619', 0, '2021-07-22', '2021-07-27', 'en espera', 12340000),
(7, 14109637, 'GHT093', 0, '2021-02-11', '2021-02-16', 'finalizado', 15390000),
(8, 11994542, 'BJWZ19', 0, '2021-04-30', '2021-05-05', 'reservado', 7890000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `patenteVehiculo` varchar(10) NOT NULL,
  `idLocal` int(3) NOT NULL,
  `estado` enum('nuevo','usado') NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `kilometraje` int(10) NOT NULL,
  `transmision` varchar(20) NOT NULL,
  `combustible` varchar(20) NOT NULL,
  `anno` year(4) NOT NULL,
  `valorVehiculo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`patenteVehiculo`, `idLocal`, `estado`, `tipo`, `marca`, `modelo`, `color`, `kilometraje`, `transmision`, `combustible`, `anno`, `valorVehiculo`) VALUES
('AJ8530', 9, 'usado', 'Camioneta', 'Kia', 'Frontier II plus 2.5', 'Verde', 189107, 'Manual', 'Gasolina', 2008, 4990000),
('BJWZ19', 5, 'nuevo', 'Automovil', 'Suzuki', 'Baleno GLS', 'Blanco', 0, 'Manual', 'Gasolina', 2018, 7890000),
('FE1117', 10, 'nuevo', 'Station Wagon', 'Lexus', 'NX300H 2.5', 'Borgoña', 0, 'Mecánica', 'Diesel', 2019, 7890000),
('GHT093', 6, 'nuevo', 'SUV', 'Suzuki', 'S-Presso', 'Gris ', 0, 'Mecánica', 'Gasolina', 2022, 15390000),
('KB5954', 10, 'usado', 'Automovil', 'Daewoo', 'Leganza G 720', 'Azul', 207093, 'Automática', 'Diesel', 2000, 2999000),
('VC6619', 10, 'nuevo', 'Station Wagon', 'Peugeot', '3008 GT BLUEHDI 2 0 ', 'Gris ', 0, 'Automática', 'Gasolina', 2021, 12340000),
('VX5465', 2, 'nuevo', 'Automovil', 'Kia', 'Frontier', 'Blanco', 0, 'Manual', 'Gasolina', 0000, 700),
('XB0940', 3, 'nuevo', 'Automovil', 'Volkswagen', 'Voyage Trendline 1.6', 'Negro', 0, 'Mecánica', 'Diesel', 2020, 9690000),
('YA2474', 1, 'usado', 'Camioneta', 'Hyundai', 'Porter 2.6', 'Azul', 300231, 'Mecánica', 'Diesel', 1997, 1799000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`rutCliente`);

--
-- Indices de la tabla `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`idLocal`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `rutCliente` (`rutCliente`),
  ADD KEY `patenteVehiculo` (`patenteVehiculo`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`patenteVehiculo`),
  ADD KEY `idLocal` (`idLocal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idAdmin` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `local`
--
ALTER TABLE `local`
  MODIFY `idLocal` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`rutCliente`) REFERENCES `cliente` (`rutCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`patenteVehiculo`) REFERENCES `vehiculo` (`patenteVehiculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

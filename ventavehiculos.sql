-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2021 a las 15:23:22
-- Versión del servidor: 8.0.25
-- Versión de PHP: 8.0.12

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
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `rutCliente` int NOT NULL,
  `nombreCliente` varchar(30) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `regionCliente` enum('Region de Arica y Parinacota','Region de Tarapaca','Region de Antofagasta','Region de Atacama','Region de Coquimbo','Region de Valparaiso','Region Metropolitana de Santiago','Region del Libertador General Bernardo O''Higgins','Region del Maule','Region de Ñuble','Region del Biobio','Region de La Araucania','Region de Los Rios','Region de Los Lagos','Region de Aysen','Region de Magallanes y de la Antartica Chilena') NOT NULL,
  `telefonoCliente` int NOT NULL,
  `mailCliente` varchar(30) NOT NULL,
  `passwordCliente` varchar(30) NOT NULL,
  `rol` enum('Usuario','Administrador') NOT NULL DEFAULT 'Usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`rutCliente`, `nombreCliente`, `fechaNacimiento`, `regionCliente`, `telefonoCliente`, `mailCliente`, `passwordCliente`, `rol`) VALUES
(1234, 'random1 random2', '2021-11-06', 'Region del Libertador General Bernardo O\'Higgins', 12345, 'random@gmail.com', '1234', 'Usuario'),
(1234456, 'ffeon ofnoen', '2021-12-15', 'Region de Coquimbo', 123456, '1234rdsdfgh@gmail.com', '234lmedk', 'Usuario'),
(11994542, 'Francisca Cervantes', '1965-11-30', 'Region de Arica y Parinacota', 916831575, 'francisca.cervantes@gmail.com', 'francer', 'Usuario'),
(14109637, 'Xavi Manzano', '1971-12-29', 'Region de Aysen', 965101411, 'xavi.manzano@gmail.com', 'xaman', 'Usuario'),
(14230088, 'Emiliano Sabater', '1983-06-10', 'Region Metropolitana de Santiago', 980685142, 'emiliano.sabater@gmail.com', 'emisab', 'Usuario'),
(14530674, 'Vidal Mosquera', '1975-08-13', 'Region de Coquimbo', 946316238, 'vidal.mosquera@gmail.com', 'vidmos', 'Usuario'),
(17234374, 'Jaime Ríos', '1986-04-16', 'Region del Biobio', 964581243, 'jaime.rios@gmail.com', 'JaimERiosxD', 'Usuario'),
(17521408, 'Raul Alvarez', '1987-11-05', 'Region de La Araucania', 988120799, 'raul.alvarez@gmail.com', 'abduzcan', 'Usuario'),
(17600495, 'Aimar Dorado', '1988-04-08', 'Region Metropolitana de Santiago', 981495413, 'aimar.dorado@gmail.com', 'aido', 'Usuario'),
(18370564, 'Maribel Soto', '1992-01-30', 'Region de Valparaiso', 985591756, 'maribel.soto@gmail.com', 'marisoto', 'Usuario'),
(18635948, 'Juan Moraga', '1994-10-31', 'Region de Arica y Parinacota', 981497513, 'juan@gmail.com', 'juan123', 'Usuario'),
(20392034, 'Sebastián Delgado', '2021-04-03', 'Region de Los Lagos', 932453265, 'Sebastian.Delgado@gmail.com', 'Sebastián Delgado', 'Usuario'),
(25913700, 'Violeta Cid', '1970-11-30', 'Region del Maule', 967626730, 'violeta.cid@gmail.com', 'violetaaaa', 'Usuario'),
(123454321, 'random3 rans2', '2021-12-22', 'Region de Ñuble', 12321765, 'random3rans2@gmail.com', '1233234esdc', 'Administrador'),
(123456789, 'defn doemoe', '2021-12-17', 'Region de La Araucania', 12345678, '12wdg3rd33@gmail.com', '1234edfes', 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `local`
--

CREATE TABLE `local` (
  `idLocal` int NOT NULL,
  `nombreLocal` varchar(30) NOT NULL,
  `regionLocal` enum('Region de Arica y Parinacota','Region de Tarapaca','Region de Antofagasta','Region de Atacama','Region de Coquimbo','Region de Valparaiso','Region Metropolitana de Santiago','Region del Libertador General Bernardo O''Higgins','Region del Maule','Region de Ñuble','Region del Biobio','Region de La Araucania','Region de Los Rios','Region de Los Lagos','Region de Aysen','Region de Magallanes y de la Antartica Chilena') NOT NULL,
  `telefonoLocal` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `idReserva` int NOT NULL,
  `rutCliente` int NOT NULL,
  `patenteVehiculo` varchar(10) NOT NULL,
  `idAdmin` tinyint NOT NULL,
  `fechaReserva` date NOT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `estadoReserva` enum('cancelado','en espera','en revision','reservado','finalizado') NOT NULL,
  `valorReserva` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`idReserva`, `rutCliente`, `patenteVehiculo`, `idAdmin`, `fechaReserva`, `fechaEntrega`, `estadoReserva`, `valorReserva`) VALUES
(1, 14230088, 'AJ8530', 0, '2021-04-03', '2021-04-08', 'en espera', 4990000),
(2, 17521408, 'XB0940', 0, '2021-05-02', '2021-05-07', 'en revision', 9690000),
(3, 14530674, 'KB5954', 0, '2021-06-10', '2021-06-15', 'finalizado', 2999000),
(4, 25913700, 'FE1117', 0, '2021-03-03', '2021-03-03', 'cancelado', 7890000),
(5, 18635948, 'VC6619', 0, '2021-07-22', '2021-07-27', 'en espera', 12340000),
(6, 14109637, 'GHT093', 0, '2021-02-11', '2021-02-16', 'finalizado', 15390000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `patenteVehiculo` varchar(10) NOT NULL,
  `idLocal` int NOT NULL,
  `idPublicacion` int NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT ' ''default.jpg''',
  `estado` enum('nuevo','usado') NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `kilometraje` int NOT NULL DEFAULT '0',
  `transmision` varchar(20) NOT NULL,
  `combustible` varchar(20) NOT NULL,
  `anno` year NOT NULL,
  `valorVehiculo` int NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`patenteVehiculo`, `idLocal`, `idPublicacion`, `image`, `estado`, `tipo`, `marca`, `modelo`, `color`, `kilometraje`, `transmision`, `combustible`, `anno`, `valorVehiculo`, `descripcion`) VALUES
('AJ8530', 9, 1, 'default.jpg', 'usado', 'Camioneta', 'Kia', 'Frontier II plus 2.5', 'Verde', 189107, 'Manual', 'Gasolina', 2008, 4990000, ''),
('DJ34ER', 7, 44, 'PEUGEOT_RIFTER.jpg', 'nuevo', 'SUV', 'Peugeot', 'Rifter', 'Azul', 0, 'Automática', 'Bencina', 2010, 11000000, ''),
('FE1117', 10, 3, 'default.jpg', 'nuevo', 'Station Wagon', 'Lexus', 'NX300H 2.5', 'Borgoña', 0, 'Mecánica', 'Diesel', 2019, 7890000, ''),
('GHT093', 6, 4, 'default.jpg', 'nuevo', 'SUV', 'Suzuki', 'S-Presso', 'Gris', 0, 'Mecánica', 'Gasolina', 2022, 15390000, ''),
('KB5954', 10, 5, 'default.jpg', 'usado', 'Automovil', 'Daewoo', 'Leganza G 720', 'Azul', 207093, 'Automática', 'Diesel', 2000, 2999000, ''),
('USGR34', 6, 11, 'Onix-Turbo-rs.png', 'usado', 'Hatchback', 'Chevrolet', 'Onix Turbo', 'Negro', 2000, 'Automática', 'Bencina', 2000, 7090000, 'Manejar el Onix Turbo es vivir una experiencia inédita por su diseño, tecnología y confort. Cuentas con conectividad total y soluciones innovadoras, como conexión Wi-Fi propia y computador a bordo. Y, además, un motor turbo de alto rendimiento, preparado para superar las expectativas de los más exigentes.'),
('VC6619', 10, 6, 'default.jpg', 'nuevo', 'Station Wagon', 'Peugeot', '3008 GT BLUEHDI 2 0 ', 'Gris', 0, 'Automática', 'Gasolina', 2021, 12340000, ''),
('VX5465', 2, 7, 'default.jpg', 'nuevo', 'Automovil', 'Kia', 'Frontier', 'Blanco', 0, 'Manual', 'Gasolina', 0000, 700, ''),
('XB0940', 3, 8, 'default.jpg', 'nuevo', 'Sedan', 'Volkswagen', 'Voyage Trendline 1.6', 'Negro', 0, 'Mecánica', 'Diesel', 2020, 9690000, ''),
('YA2474', 1, 9, 'default.jpg', 'usado', 'Camioneta', 'Hyundai', 'Porter 2.6', 'Azul', 300231, 'Mecánica', 'Diesel', 1997, 1799000, '');

--
-- Índices para tablas volcadas
--

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
  ADD KEY `idLocal` (`idLocal`),
  ADD KEY `idPublicacion` (`idPublicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `local`
--
ALTER TABLE `local`
  MODIFY `idLocal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `idPublicacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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

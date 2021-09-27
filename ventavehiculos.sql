-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2021 a las 05:02:54
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
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `rutCliente` int(8) NOT NULL,
  `nombreCliente` varchar(30) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `direccion_region` varchar(50) NOT NULL,
  `direccion_comuna` varchar(50) NOT NULL,
  `direccion_calle` varchar(50) NOT NULL,
  `telefonoCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`rutCliente`, `nombreCliente`, `fechaNacimiento`, `direccion_region`, `direccion_comuna`, `direccion_calle`, `telefonoCliente`) VALUES
(11994542, 'Francisca Cervantes', '1965-11-30', 'Maule', 'Maule', 'Uno Sur 1365', 916831575),
(14109637, 'Xavi Manzano', '1971-12-29', 'Aysén', 'Aysén', 'Avenida Concepción Nº264', 965101411),
(14230088, 'Emiliano Sabater', '1983-06-10', 'Metropolitana', 'Santiago', 'Valentin Letelier 1382', 980685142),
(14530674, 'Vidal Mosquera', '1975-08-13', 'Coquimbo', 'La Serena', 'Calle Pintor Mr.rou, 1269', 946316238),
(17234374, 'Jaime Ríos', '1986-04-16', 'Biobío', 'Concepción', 'Calle Patricio Lynch, 22110', 964581243),
(17521408, 'Raul Alvarez', '1987-11-05', 'Araucanía', 'Araucanía', 'Guido Beck De Ramberga 920', 988120799),
(17600495, 'Aimar Dorado', '1988-04-08', 'Metropolitana', 'San Miguel', 'Calle Angamos, 58113', 981495413),
(18370564, 'Maribel Soto', '1992-01-30', 'Valparaíso', 'Viña del mar', 'Calle 5 de Abril, #1', 985591756),
(18635948, 'John Doe', '1994-10-31', 'Arica y Parinacota', 'Arica', 'Pasaje Sangra 558', 981497513),
(25913700, 'Violeta Cid', '1970-11-30', 'Metropolitana', 'La Granja', 'Calle Capitán Avalos, 059', 967626730);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `rutEmpleado` int(8) NOT NULL,
  `idLocal` int(3) NOT NULL,
  `nombreEmpleado` varchar(30) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `direccion_region` varchar(50) NOT NULL,
  `direccion_comuna` varchar(50) NOT NULL,
  `direccion_calle` varchar(50) NOT NULL,
  `telefonoEmpleado` int(11) NOT NULL,
  `fechaContrato` date NOT NULL,
  `cargo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`rutEmpleado`, `idLocal`, `nombreEmpleado`, `fechaNacimiento`, `direccion_region`, `direccion_comuna`, `direccion_calle`, `telefonoEmpleado`, `fechaContrato`, `cargo`) VALUES
(7094714, 8, 'Ariel Gomez', '1967-01-07', 'La Araucanía', 'Temuco', 'Calle Antumalal, 01064', 987889789, '2012-09-09', 'Vendedor'),
(13062346, 7, 'Pablo Jara', '1971-04-03', 'Biobío', 'Talcahuano', 'Calle Riquelme, 463', 95746385, '2017-09-30', 'Vendedor'),
(13878434, 10, 'Francisco Schwarz', '1975-01-30', 'Metropolitana', 'Las Condes', 'Calle Málaga, 115', 2147483647, '2010-02-01', 'Jefe'),
(15612640, 4, 'Gerardo Rivera', '1995-05-01', 'Coquimbo', 'Coquimbo', 'Camino Las Parcelas, 36', 912134532, '2020-03-21', 'Vendedor'),
(18503242, 6, 'Marcelo Díaz', '1989-04-04', 'Maule', 'Curicó', 'Calle Manuel Montt, 481', 2147483647, '2015-04-01', 'Vendedor'),
(19320751, 3, 'Humberto Campos', '1980-02-05', 'Atacama', 'Tierra Amarilla', 'Av. Miguel Lemeur 544', 986787234, '2020-01-01', 'Vendedor'),
(20226653, 1, 'Carla Fernandez', '1981-07-27', 'Arica', 'Arica', 'Avenida Alejandro Azolas, 2579', 986316142, '2010-07-12', 'Vendedor'),
(21238664, 10, 'Brayan Flores', '1999-08-07', 'Metropolitana', 'Estación Central', 'Calle Francisco Zelada 181', 2147483647, '2020-01-01', 'Vendedor'),
(22032585, 2, 'Mauricio Vera', '1991-01-21', 'Antofagasta', 'Antofagasta', 'Avda Antonio Rendic 4984', 2147483647, '2019-10-11', 'Vendedor'),
(24683944, 5, 'Alex Bravo', '1992-01-03', 'Valparaíso', 'Limache', 'Avenida Palmira Romano Sur, 0', 2147483647, '2021-01-01', 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `local`
--

CREATE TABLE `local` (
  `idLocal` int(3) NOT NULL,
  `nombreLocal` varchar(30) NOT NULL,
  `direccion_region` varchar(50) NOT NULL,
  `direccion_comuna` varchar(50) NOT NULL,
  `direccion_calle` varchar(50) NOT NULL,
  `telefonoLocal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `local`
--

INSERT INTO `local` (`idLocal`, `nombreLocal`, `direccion_region`, `direccion_comuna`, `direccion_calle`, `telefonoLocal`) VALUES
(1, 'Concesionario Arica', 'Arica', 'Arica', 'Avda Alejandro Azolas 2651', 988956086),
(2, 'Concesionario Antofagasta', 'Antofagasta', 'Antofagasta', 'Calle Héroes De La Concepción, 97054', 988927386),
(3, 'Concesionario Atacama', 'Atacama', 'Copiapó', 'Calle Pedro León Gallo, 766 - Villa Los Olivos', 996763899),
(4, 'Concesionario Coquimbo', 'Coquimbo', 'La Serena', 'Calle Los Arrayanes, 0000', 989222252),
(5, 'Concesionario Valparaíso', 'Valparaíso', 'Valparaíso', 'Chacabuco 2000', 944247598),
(6, 'Concesionario Maule', 'Maule', 'Talca', 'Calle 14 Oriente, 1288', 986574387),
(7, 'Concesionario Biobío', 'Biobío', 'Concepción', 'Avenida Los Fresnos, 1484 - Villa San Pedro', 917584657),
(8, 'Concesionario La Araucanía', 'La Araucanía', 'Temuco', 'Avenida Simón Bolívar, 01885', 977654769),
(9, 'Concesionario Magallanes', 'Magallanes', 'Punta Arenas', 'Calle Almirante Manuel Señoret, 1045', 912323432),
(10, 'Concesionario Metropolitana', 'Metropolitana', 'Santiago', 'Calle Lira, 441', 98786789);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(10) NOT NULL,
  `rutCliente` int(8) NOT NULL,
  `patenteVehiculo` varchar(10) NOT NULL,
  `idLocal` int(3) NOT NULL,
  `fechaReserva` datetime NOT NULL,
  `fechaEntrega` date NOT NULL,
  `estadoReserva` enum('cancelado','en espera','en revision','reservado','finalizado') NOT NULL,
  `valorReserva` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`idReserva`, `rutCliente`, `patenteVehiculo`, `idLocal`, `fechaReserva`, `fechaEntrega`, `estadoReserva`, `valorReserva`) VALUES
(1, 18370564, 'FR2840', 5, '2021-01-01 00:00:00', '2021-01-01', 'cancelado', 7890000),
(2, 14230088, 'AJ8530', 10, '2021-04-03 00:00:00', '2021-04-08', 'en espera', 4990000),
(3, 17521408, 'XB0940', 8, '2021-05-02 00:00:00', '2021-05-07', 'en revision', 9690000),
(4, 14530674, 'KB5954', 4, '2021-06-10 00:00:00', '2021-06-15', 'finalizado', 2999000),
(5, 25913700, 'FE1117', 10, '2021-03-03 00:00:00', '2021-03-03', 'cancelado', 7890000),
(6, 18635948, 'VC6619', 1, '2021-07-22 00:00:00', '2021-07-27', 'en espera', 12340000),
(7, 14109637, 'GHT093', 9, '2021-02-11 00:00:00', '2021-02-16', 'finalizado', 15390000),
(8, 11994542, 'BJWZ19', 6, '2021-04-30 00:00:00', '2021-05-05', 'reservado', 7890000),
(9, 17600495, 'FR2840', 10, '2021-05-05 00:00:00', '2021-05-10', 'en espera', 7890000),
(10, 18370564, 'YN4713', 5, '2021-08-01 00:00:00', '2021-08-06', 'en revision', 5450000);

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
('AJ8530', 9, 'usado', 'Camioneta', 'Kia', 'Frontier II plus 2.5', 'Verde Esmeralda', 189107, 'Manual', 'Gasolina', 2008, 4990000),
('BJWZ19', 5, 'nuevo', 'Automovil', 'Suzuki', 'Baleno GLS', 'Blanco perlado', 0, 'Manual', 'Gasolina', 2018, 7890000),
('FE1117', 10, 'nuevo', 'Station Wagon', 'Lexus', 'NX300H 2.5', 'Borgoña', 0, 'Mecánica', 'Diesel', 2019, 7890000),
('FR2840', 5, 'usado', 'Furgon', 'Fiat', 'Fiorino Fire 1.4', 'Negro Nacarado', 106000, 'Mecánica', 'Gasolina', 2014, 7890000),
('GHT093', 6, 'nuevo', 'SUV', 'Suzuki', 'S-Presso', 'Gris Granito', 0, 'Mecánica', 'Gasolina', 2022, 15390000),
('KB5954', 10, 'usado', 'Automovil', 'Daewoo', 'Leganza G 720', 'Azul', 207093, 'Automática', 'Diesel', 2000, 2999000),
('VC6619', 10, 'nuevo', 'Station Wagon', 'Peugeot', '3008 GT BLUEHDI 2 0 ', 'Gris Artense', 0, 'Automática', 'Gasolina', 2021, 12340000),
('XB0940', 3, 'nuevo', 'Automovil', 'Volkswagen', 'Voyage Trendline 1.6', 'Negro Oscuro', 0, 'Mecánica', 'Diesel', 2020, 9690000),
('YA2474', 1, 'usado', 'Camioneta', 'Hyundai', 'Porter 2.6', 'Azul metalizado', 300231, 'Mecánica', 'Diesel', 1997, 1799000),
('YN4713', 2, 'usado', 'Automovil', 'Chevrolet', 'Prisma', 'Rojo Sangriento', 46915, 'Automática', 'Gasolina', 2019, 5450000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`rutCliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`rutEmpleado`),
  ADD KEY `idLocal` (`idLocal`);

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
  ADD KEY `patenteVehiculo` (`patenteVehiculo`),
  ADD KEY `idLocal` (`idLocal`);

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
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`rutCliente`) REFERENCES `cliente` (`rutCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`patenteVehiculo`) REFERENCES `vehiculo` (`patenteVehiculo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserva_ibfk_3` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-10-2024 a las 19:30:46
-- Versión del servidor: 11.5.2-MariaDB
-- Versión de PHP: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Aulas`
--

CREATE TABLE `Aulas` (
  `id` int(11) NOT NULL,
  `año` varchar(3) NOT NULL,
  `seccion` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estudiantes`
--

CREATE TABLE `Estudiantes` (
  `id` int(11) NOT NULL,
  `cedula` varchar(25) NOT NULL,
  `primer_nombre` varchar(30) NOT NULL,
  `segundo_nombre` varchar(30) DEFAULT NULL,
  `primer_apellido` varchar(30) NOT NULL,
  `segundo_apellido` varchar(30) DEFAULT NULL,
  `fecha_nacimiento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Materias`
--

CREATE TABLE `Materias` (
  `Codigo` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Materias`
--

INSERT INTO `Materias` (`Codigo`, `nombre`) VALUES
(1001, 'castellano'),
(1002, 'matematica'),
(1003, 'ingles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Matricula`
--

CREATE TABLE `Matricula` (
  `id_aula` int(11) NOT NULL,
  `cedula_estuadiante` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Aulas`
--
ALTER TABLE `Aulas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Estudiantes`
--
ALTER TABLE `Estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cedula` (`cedula`);

--
-- Indices de la tabla `Materias`
--
ALTER TABLE `Materias`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `Matricula`
--
ALTER TABLE `Matricula`
  ADD KEY `id_aula` (`id_aula`),
  ADD KEY `cedula_estuadiante` (`cedula_estuadiante`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Aulas`
--
ALTER TABLE `Aulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Estudiantes`
--
ALTER TABLE `Estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Matricula`
--
ALTER TABLE `Matricula`
  ADD CONSTRAINT `Matricula_ibfk_1` FOREIGN KEY (`id_aula`) REFERENCES `Aulas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Matricula_ibfk_2` FOREIGN KEY (`cedula_estuadiante`) REFERENCES `Estudiantes` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-11-2024 a las 21:32:08
-- Versión del servidor: 11.5.2-MariaDB
-- Versión de PHP: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema1`
--
CREATE DATABASE IF NOT EXISTS `sistema1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `sistema1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` bigint(20) NOT NULL,
  `nombre` text NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text DEFAULT NULL,
  `horas_semanales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas_pendientes`
--

CREATE TABLE `asignaturas_pendientes` (
  `id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `asignatura_id` bigint(20) NOT NULL,
  `ano_escolar_id` bigint(20) NOT NULL,
  `estado` enum('Pendiente','Aprobada','Reprobada') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `id` bigint(20) NOT NULL,
  `nombre` text NOT NULL,
  `capacidad` int(11) NOT NULL,
  `ubicacion` text DEFAULT NULL,
  `tipo` enum('Teórica','Práctica','Laboratorio') NOT NULL,
  `profesor_guia_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` bigint(20) NOT NULL,
  `nombre_completo` text NOT NULL,
  `cedula_identidad` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` enum('Masculino','Femenino','Otro') NOT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `fecha_inscripcion` date DEFAULT curdate(),
  `representante_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `aula_id` bigint(20) NOT NULL,
  `fecha_matricula` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `asignatura_id` bigint(20) NOT NULL,
  `nota` decimal(5,2) NOT NULL CHECK (`nota` >= 0 and `nota` <= 20),
  `fecha_registro` date DEFAULT curdate(),
  `corte1` decimal(5,2) DEFAULT NULL CHECK (`corte1` >= 0 and `corte1` <= 20),
  `corte2` decimal(5,2) DEFAULT NULL CHECK (`corte2` >= 0 and `corte2` <= 20),
  `corte3` decimal(5,2) DEFAULT NULL CHECK (`corte3` >= 0 and `corte3` <= 20),
  `nota_definitiva` decimal(5,2) GENERATED ALWAYS AS ((`corte1` + `corte2` + `corte3`) / 3) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_finales_ano`
--

CREATE TABLE `notas_finales_ano` (
  `id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL,
  `ano_escolar_id` bigint(20) NOT NULL,
  `promedio_final` decimal(5,2) DEFAULT NULL CHECK (`promedio_final` >= 0 and `promedio_final` <= 20),
  `estado` enum('Aprobado','Reprobado') NOT NULL,
  `asignatura_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantel`
--

CREATE TABLE `plantel` (
  `id` bigint(20) NOT NULL,
  `nombre` text NOT NULL,
  `codigo_plantel` text NOT NULL,
  `direccion` text NOT NULL,
  `telefono` text DEFAULT NULL,
  `director` text DEFAULT NULL,
  `tipo` enum('Público','Privado') NOT NULL,
  `turno` enum('Mañana','Tarde','Noche','Completo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` bigint(20) NOT NULL,
  `nombre_completo` text NOT NULL,
  `cedula_identidad` text NOT NULL,
  `telefono` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `especialidad` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores_asignaturas`
--

CREATE TABLE `profesores_asignaturas` (
  `id` bigint(20) NOT NULL,
  `profesor_id` bigint(20) NOT NULL,
  `asignatura_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_ano_escolar`
--

CREATE TABLE `registro_ano_escolar` (
  `id` bigint(20) NOT NULL,
  `ano_inicio` int(11) NOT NULL,
  `ano_fin` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representantes`
--

CREATE TABLE `representantes` (
  `id` bigint(20) NOT NULL,
  `nombre_completo` text NOT NULL,
  `cedula_identidad` text NOT NULL,
  `telefono` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `direccion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` bigint(20) NOT NULL,
  `nombre` text NOT NULL,
  `grado` int(11) NOT NULL CHECK (`grado` between 1 and 5),
  `turno` enum('Mañana','Tarde','Noche') NOT NULL,
  `aula_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `nombre_usuario` text NOT NULL,
  `contrasena` text NOT NULL,
  `rol` enum('Administrador','Profesor','Estudiante','Representante') NOT NULL,
  `email` text NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`) USING HASH;

--
-- Indices de la tabla `asignaturas_pendientes`
--
ALTER TABLE `asignaturas_pendientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_estudiante_pendiente` (`estudiante_id`),
  ADD KEY `fk_asignatura_pendiente` (`asignatura_id`),
  ADD KEY `fk_ano_escolar_pendiente` (`ano_escolar_id`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_profesor_guia` (`profesor_guia_id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula_identidad` (`cedula_identidad`) USING HASH,
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `fk_representante` (`representante_id`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_estudiante` (`estudiante_id`),
  ADD KEY `fk_aula` (`aula_id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_estudiante_nota` (`estudiante_id`),
  ADD KEY `fk_asignatura_nota` (`asignatura_id`);

--
-- Indices de la tabla `notas_finales_ano`
--
ALTER TABLE `notas_finales_ano`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_estudiante_final` (`estudiante_id`),
  ADD KEY `fk_ano_escolar_final` (`ano_escolar_id`),
  ADD KEY `fk_asignatura_final` (`asignatura_id`);

--
-- Indices de la tabla `plantel`
--
ALTER TABLE `plantel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_plantel` (`codigo_plantel`) USING HASH;

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula_identidad` (`cedula_identidad`) USING HASH,
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indices de la tabla `profesores_asignaturas`
--
ALTER TABLE `profesores_asignaturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_profesor` (`profesor_id`),
  ADD KEY `fk_asignatura` (`asignatura_id`);

--
-- Indices de la tabla `registro_ano_escolar`
--
ALTER TABLE `registro_ano_escolar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `representantes`
--
ALTER TABLE `representantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula_identidad` (`cedula_identidad`) USING HASH,
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_aula_seccion` (`aula_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`) USING HASH,
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignaturas_pendientes`
--
ALTER TABLE `asignaturas_pendientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notas_finales_ano`
--
ALTER TABLE `notas_finales_ano`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plantel`
--
ALTER TABLE `plantel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profesores_asignaturas`
--
ALTER TABLE `profesores_asignaturas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro_ano_escolar`
--
ALTER TABLE `registro_ano_escolar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `representantes`
--
ALTER TABLE `representantes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas_pendientes`
--
ALTER TABLE `asignaturas_pendientes`
  ADD CONSTRAINT `fk_ano_escolar_pendiente` FOREIGN KEY (`ano_escolar_id`) REFERENCES `registro_ano_escolar` (`id`),
  ADD CONSTRAINT `fk_asignatura_pendiente` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `fk_estudiante_pendiente` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`);

--
-- Filtros para la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `fk_profesor_guia` FOREIGN KEY (`profesor_guia_id`) REFERENCES `profesores` (`id`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `fk_representante` FOREIGN KEY (`representante_id`) REFERENCES `representantes` (`id`);

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `fk_aula` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`),
  ADD CONSTRAINT `fk_estudiante` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `fk_asignatura_nota` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `fk_estudiante_nota` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`);

--
-- Filtros para la tabla `notas_finales_ano`
--
ALTER TABLE `notas_finales_ano`
  ADD CONSTRAINT `fk_ano_escolar_final` FOREIGN KEY (`ano_escolar_id`) REFERENCES `registro_ano_escolar` (`id`),
  ADD CONSTRAINT `fk_asignatura_final` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `fk_estudiante_final` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`);

--
-- Filtros para la tabla `profesores_asignaturas`
--
ALTER TABLE `profesores_asignaturas`
  ADD CONSTRAINT `fk_asignatura` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `fk_profesor` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`);

--
-- Filtros para la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD CONSTRAINT `fk_aula_seccion` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

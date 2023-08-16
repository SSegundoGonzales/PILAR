-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-08-2023 a las 12:04:14
-- Versión del servidor: 5.7.42-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vriunap_pilar3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicAmpliaciones`
--

CREATE TABLE `dicAmpliaciones` (
  `Id` int(11) NOT NULL,
  `IdTram` int(11) NOT NULL,
  `FechaApro` datetime NOT NULL,
  `FechaPre` datetime NOT NULL,
  `Dias` int(11) NOT NULL,
  `Doc` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicEstadTram`
--

CREATE TABLE `dicEstadTram` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(150) CHARACTER SET latin1 NOT NULL,
  `Descrip` varchar(800) CHARACTER SET latin1 NOT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docEstudios`
--

CREATE TABLE `docEstudios` (
  `Id` int(11) NOT NULL,
  `IdDocente` int(5) NOT NULL,
  `Universidad` varchar(99) CHARACTER SET utf8 NOT NULL,
  `IdGrado` int(11) NOT NULL DEFAULT '1',
  `AbrevGrado` varchar(7) CHARACTER SET utf8 NOT NULL,
  `Mencion` varchar(120) CHARACTER SET utf8 NOT NULL,
  `Archivo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docLineas`
--

CREATE TABLE `docLineas` (
  `Id` int(11) NOT NULL,
  `IdDocente` int(5) NOT NULL,
  `IdLinea` int(5) NOT NULL,
  `Tipo` int(2) NOT NULL DEFAULT '1',
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Estado` int(3) NOT NULL,
  `Obs` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `docLineas`
--

INSERT INTO `docLineas` (`Id`, `IdDocente`, `IdLinea`, `Tipo`, `Fecha`, `Estado`, `Obs`) VALUES
(1, 1, 1, 1, '2023-08-23 05:00:00', 2, 'ninguna'),
(2, 2, 1, 1, '2023-08-01 15:34:01', 2, 'ninguna'),
(3, 3, 1, 1, '2023-08-01 15:35:18', 2, 'ninguna'),
(4, 4, 1, 1, '2023-08-01 15:35:50', 2, 'ninguna'),
(5, 2, 1, 1, '2023-08-01 16:08:28', 1, 'ninguna'),
(6, 1, 1, 1, '2023-08-01 16:08:41', 1, 'ninguna'),
(7, 1, 2, 1, '2023-08-01 16:09:42', 2, 'ninguna'),
(8, 1, 2, 1, '2023-08-01 16:09:49', 2, 'ninguna'),
(9, 1, 2, 1, '2023-08-01 16:09:55', 1, 'ninguna'),
(10, 1, 2, 1, '2023-08-01 16:10:01', 1, 'ninguna'),
(11, 1, 2, 1, '2023-08-01 16:10:08', 1, 'ninguna'),
(12, 1, 2, 1, '2023-08-01 16:10:14', 1, 'ninguna'),
(13, 7, 3, 0, '2023-08-01 16:10:14', 2, 'ninguna'),
(14, 8, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(15, 9, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(16, 10, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(17, 11, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(18, 12, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(19, 13, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(20, 9, 4, 0, '2023-08-01 16:10:14', 2, 'ninguna'),
(21, 6, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(22, 7, 4, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(23, 11, 4, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(24, 12, 4, 1, '2023-08-01 16:10:14', 2, 'ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docParentesco`
--

CREATE TABLE `docParentesco` (
  `Id` int(11) NOT NULL,
  `Filiacion` varchar(5) NOT NULL,
  `IdDocente1` int(11) NOT NULL,
  `IdDocente2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estTramBach`
--

CREATE TABLE `estTramBach` (
  `Id` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `IdFac` int(11) NOT NULL,
  `IdCarr` int(11) NOT NULL,
  `IdTesista` int(11) NOT NULL,
  `IdJurado` int(11) NOT NULL,
  `IdAsesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logCordinads`
--

CREATE TABLE `logCordinads` (
  `Id` int(11) NOT NULL,
  `IdUser` int(4) NOT NULL,
  `IdCarrera` int(3) NOT NULL,
  `IdOperacion` int(3) NOT NULL,
  `Tipo` varchar(1) CHARACTER SET latin1 NOT NULL,
  `Just` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Detalle` varchar(800) CHARACTER SET latin1 NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `logCordinads`
--

INSERT INTO `logCordinads` (`Id`, `IdUser`, `IdCarrera`, `IdOperacion`, `Tipo`, `Just`, `Detalle`, `Fecha`) VALUES
(1, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 09:39:07'),
(2, 1, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 09:39:13'),
(3, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 09:39:16'),
(4, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:15:26'),
(5, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:31:06'),
(6, 1, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:52:23'),
(7, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:52:24'),
(8, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:53:57'),
(9, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:55:24'),
(10, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:56:25'),
(11, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:07:12'),
(12, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:13:06'),
(13, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:32:22'),
(14, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:35:06'),
(15, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:35:46'),
(16, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:39:23'),
(17, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:41:51'),
(18, 1, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:43:06'),
(19, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:43:08'),
(20, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:43:44'),
(21, 1, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:46:10'),
(22, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:46:12'),
(23, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 12:06:27'),
(24, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 12:23:39'),
(25, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 12:26:21'),
(26, 1, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 12:27:21'),
(27, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 12:27:32'),
(28, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:03:41'),
(29, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:08:53'),
(30, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:10:11'),
(31, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:30:00'),
(32, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:31:35'),
(33, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:51:24'),
(34, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:53:28'),
(35, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:14:10'),
(36, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:16:35'),
(37, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:17:52'),
(38, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:18:22'),
(39, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:35:51'),
(40, 1, 1, 3, 'C', 'Publico Sustentación', '(2) Se programó la sustentación del código 2020-002', '2023-08-08 13:37:12'),
(41, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:38:20'),
(42, 1, 1, 1, 'C', 'Cambio estado Docente : R-wee', '(1 to 6 )ya se ha habilitado ', '2023-08-08 13:40:49'),
(43, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 11:24:12'),
(44, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 11:28:39'),
(45, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 11:37:23'),
(46, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 11:38:22'),
(47, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 11:49:50'),
(48, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 12:51:47'),
(49, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 13:18:43'),
(50, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 13:40:20'),
(51, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 13:41:37'),
(52, 1, 3, 3, 'C', 'Publico Sustentación', '(10) Se programó la sustentación del código 2020-010', '2023-08-11 13:43:30'),
(53, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 13:49:33'),
(54, 1, 3, 1, 'C', 'Cambio estado Docente : ', '(12 to 0 ) ', '2023-08-11 13:49:47'),
(55, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 13:54:03'),
(56, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-15 11:53:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logCorreos`
--

CREATE TABLE `logCorreos` (
  `Id` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `IdTesista` int(11) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Mensaje` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logCorreos`
--

INSERT INTO `logCorreos` (`Id`, `Fecha`, `IdDocente`, `IdTesista`, `Correo`, `Titulo`, `Mensaje`) VALUES
(1, '2023-08-02 09:41:23', 1, 1, 'gleidysegundogonzales@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(2, '2023-08-02 11:16:51', 1, 1, 'gleidysegundogonzales@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-001</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(3, '2023-08-02 11:56:37', 2, 2, 'sadith@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(4, '2023-08-02 13:09:59', 3, 3, 's@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(5, '2023-08-02 13:09:59', 3, 3, 'gleidysegundogonzales@gmail.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-003</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(6, '2023-08-02 13:50:11', 2, 2, 'sadith@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-002</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(7, '2023-08-02 13:50:11', 2, 2, 'sadithsegundogonzales@gmail.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>002-2020-VRI-UNAP</b><br>Codigo : <b> 2020-002 </b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(8, '2023-08-02 13:50:11', 2, 2, 'laditasegundogonzales@gmail.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>002-2020-VRI-UNAP</b><br>Codigo : <b> 2020-002 </b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(9, '2023-08-02 13:50:11', 2, 2, 'saditasegundogonzales@gmail.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>002-2020-VRI-UNAP</b><br>Codigo : <b> 2020-002 </b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(10, '2023-08-02 15:15:34', 0, 2, 'sadith@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(11, '2023-08-02 15:15:34', 0, 2, 'sadithsegundogonzales@gmail.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(12, '2023-08-02 15:15:34', 0, 2, 'laditasegundogonzales@gmail.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(13, '2023-08-02 15:15:34', 0, 2, 'saditasegundogonzales@gmail.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(14, '2023-08-02 15:15:34', 0, 2, 'gleidysegundogonzales@gmail.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(15, '2023-08-03 10:00:54', 2, 2, 'sadith@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-002</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(16, '2023-08-03 10:25:17', 0, 2, 'sadith@gmail.com', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-002 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.'),
(17, '2023-08-03 10:57:04', 0, 2, 'sadithsegundogonzales@gmail.com', 'Subida de Borrador', '<br>Se ha actualizado el trámite: <b>2020-002</b><br><br> Título de Borrador de Tesis: <b>TITULO </b> <br><br>       Ud. debe apersonarse a Plataforma para revisar el formato y la conformación de su <b>Jurado Evaluador</b> de lo contrario no se procede con el envio para que el tramite de su borrador continue.'),
(18, '2023-08-03 11:02:12', 2, 2, 'sadith@gmail.com', 'Borrador enviado a Revisión', '<h4>Borrador enviado a Revisión</h4><br>Su Borrador de Tesis: <b>2020-002</b> ha sido enviado a los cuatro miembros de su Jurado. El mismo que será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(19, '2023-08-03 11:02:12', 2, 2, 'sadithsegundogonzales@gmail.com', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>003-2020-VRI-UNAP</b><br>Tesista(s) : <b>Segovia, Elmer</b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(20, '2023-08-03 11:02:12', 2, 2, 'laditasegundogonzales@gmail.com', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>003-2020-VRI-UNAP</b><br>Tesista(s) : <b>Segovia, Elmer</b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(21, '2023-08-03 11:02:12', 2, 2, 'saditasegundogonzales@gmail.com', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>003-2020-VRI-UNAP</b><br>Tesista(s) : <b>Segovia, Elmer</b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(22, '2023-08-03 11:02:12', 2, 2, 'gleidysegundogonzales@gmail.com', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>003-2020-VRI-UNAP</b><br>Tesista(s) : <b>Segovia, Elmer</b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(23, '2023-08-03 11:06:04', 0, 2, 'sadith@gmail.com', 'Subida de Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(24, '2023-08-03 11:06:04', 0, 2, 'sadithsegundogonzales@gmail.com', 'Borrador Final ', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(25, '2023-08-03 11:06:04', 0, 2, 'laditasegundogonzales@gmail.com', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(26, '2023-08-03 11:06:04', 0, 2, 'saditasegundogonzales@gmail.com', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(27, '2023-08-03 11:06:04', 0, 2, 'gleidysegundogonzales@gmail.com', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(28, '2023-08-03 16:07:27', 0, 4, 'yguillen@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-004</b><br><br> Título de Proyecto: <b>PRUEBA</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(29, '2023-08-03 16:15:15', 4, 4, 'jmartinez@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(30, '2023-08-03 16:15:15', 4, 4, 'eluque@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-004</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(31, '2023-08-03 16:17:39', 3, 3, 'gvalderrama@unamba.edu.pe', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-003</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(32, '2023-08-03 16:17:39', 3, 3, 'eordonez@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>004-2020-VRI-UNAP</b><br>Codigo : <b> 2020-003 </b><br>Título : <b> 111223 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(33, '2023-08-03 16:17:39', 3, 3, 'eluque@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>004-2020-VRI-UNAP</b><br>Codigo : <b> 2020-003 </b><br>Título : <b> 111223 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(34, '2023-08-03 16:17:39', 3, 3, 'mperalta@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>004-2020-VRI-UNAP</b><br>Codigo : <b> 2020-003 </b><br>Título : <b> 111223 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(35, '2023-08-03 16:30:38', 0, 3, 'gvalderrama@unamba.edu.pe', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(36, '2023-08-03 16:30:38', 0, 3, 'eordonez@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(37, '2023-08-03 16:30:38', 0, 3, 'eluque@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(38, '2023-08-03 16:30:38', 0, 3, 'mperalta@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(39, '2023-08-03 16:30:38', 0, 3, 'fcari@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(40, '2023-08-03 16:34:36', 3, 3, 'gvalderrama@unamba.edu.pe', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-003</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(41, '2023-08-10 11:52:43', 0, 5, 'minas1@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-005</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(42, '2023-08-10 11:54:09', 5, 5, 'minas1@unamba.edu.pe', 'Corregir Formato Retornado', '<b>Saludos</b><br><br>\r\nSu proyecto ha sido rechazado, contiene los siguientes errores:\r\n<br><br><ul>\r\n<li> La redacción tiene que ser mejorada.\r\n</ul><br>\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\n<br><b>Nota</b>: Revise el <a href=\'http://vriunap.pe/vriadds/pilar/doc/manual_tesistav3.pdf\'>manual de tesista aquí.</a>'),
(43, '2023-08-10 11:55:19', 0, 6, 'minas1@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-006</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(44, '2023-08-10 11:56:24', 6, 6, 'minas1@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(45, '2023-08-10 11:56:24', 6, 6, 'jmerma@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-006</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(46, '2023-08-10 11:59:38', 0, 7, 'minas2@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-007</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(47, '2023-08-10 12:00:00', 7, 7, 'minas2@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(48, '2023-08-10 12:00:00', 7, 7, 'jmerma@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-007</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(49, '2023-08-10 12:00:34', 9, 0, 'minas1@unamba.edu.pe', 'Rechazo del Director', 'El Director/Asesor ha rechazado su proyecto de tesis por lo que deberá cambiarlo o coordinar personalmente.'),
(50, '2023-08-10 12:03:12', 0, 8, 'minas1@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-008</b><br><br> Título de Proyecto: <b>RFE</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(51, '2023-08-10 12:03:53', 8, 8, 'minas1@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(52, '2023-08-10 12:03:53', 8, 8, 'walquer@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-008</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(53, '2023-08-10 12:05:04', 8, 8, 'minas1@unamba.edu.pe', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-008</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(54, '2023-08-10 12:05:04', 8, 8, 'jmerma@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>005-2020-VRI-UNAP</b><br>Codigo : <b> 2020-008 </b><br>Título : <b> RFE </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(55, '2023-08-10 12:05:04', 8, 8, 'DMinas4@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>005-2020-VRI-UNAP</b><br>Codigo : <b> 2020-008 </b><br>Título : <b> RFE </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(56, '2023-08-10 12:05:04', 8, 8, 'DMinas3@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>005-2020-VRI-UNAP</b><br>Codigo : <b> 2020-008 </b><br>Título : <b> RFE </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(57, '2023-08-10 12:06:23', 7, 7, 'minas2@unamba.edu.pe', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-007</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(58, '2023-08-10 12:06:23', 7, 7, 'rmattos@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>006-2020-VRI-UNAP</b><br>Codigo : <b> 2020-007 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(59, '2023-08-10 12:06:23', 7, 7, 'walquer@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>006-2020-VRI-UNAP</b><br>Codigo : <b> 2020-007 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(60, '2023-08-10 12:06:23', 7, 7, 'DMinas2@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>006-2020-VRI-UNAP</b><br>Codigo : <b> 2020-007 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(61, '2023-08-10 13:02:59', 0, 9, 'minas3@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-009</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(62, '2023-08-10 13:03:06', 9, 9, 'minas3@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(63, '2023-08-10 13:03:06', 9, 9, 'jmerma@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-009</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(64, '2023-08-10 13:03:24', 9, 0, 'minas3@unamba.edu.pe', 'Rechazo del Director', 'El Director/Asesor ha rechazado su proyecto de tesis por lo que deberá cambiarlo o coordinar personalmente.'),
(65, '2023-08-10 14:06:00', 0, 10, 'minas3@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-010</b><br><br> Título de Proyecto: <b>DW</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(66, '2023-08-10 14:06:24', 10, 10, 'minas3@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(67, '2023-08-10 14:06:24', 10, 10, 'jmerma@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-010</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(68, '2023-08-10 14:06:53', 10, 10, 'minas3@unamba.edu.pe', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-010</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(69, '2023-08-10 14:06:53', 10, 10, 'rmattos@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>007-2020-VRI-UNAP</b><br>Codigo : <b> 2020-010 </b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(70, '2023-08-10 14:06:53', 10, 10, 'DMinas2@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>007-2020-VRI-UNAP</b><br>Codigo : <b> 2020-010 </b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(71, '2023-08-10 14:06:53', 10, 10, 'DMinas4@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>007-2020-VRI-UNAP</b><br>Codigo : <b> 2020-010 </b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(72, '2023-08-11 11:10:19', 0, 11, 'minas4@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-011</b><br><br> Título de Proyecto: <b>DMINAS 2</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(73, '2023-08-11 11:10:33', 11, 11, 'minas4@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(74, '2023-08-11 11:10:33', 11, 11, 'DMinas2@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-011</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(75, '2023-08-11 11:11:44', 11, 11, 'minas4@unamba.edu.pe', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-011</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(76, '2023-08-11 11:11:44', 11, 11, 'walquer@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>008-2020-VRI-UNAP</b><br>Codigo : <b> 2020-011 </b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(77, '2023-08-11 11:11:44', 11, 11, 'rmattos@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>008-2020-VRI-UNAP</b><br>Codigo : <b> 2020-011 </b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(78, '2023-08-11 11:11:44', 11, 11, 'DMinas3@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>008-2020-VRI-UNAP</b><br>Codigo : <b> 2020-011 </b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(79, '2023-08-11 11:43:50', 0, 11, 'minas4@unamba.edu.pe', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(80, '2023-08-11 11:43:50', 0, 11, 'walquer@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(81, '2023-08-11 11:43:50', 0, 11, 'rmattos@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(82, '2023-08-11 11:43:50', 0, 11, 'DMinas3@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(83, '2023-08-11 11:43:50', 0, 11, 'DMinas2@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(84, '2023-08-11 11:49:34', 11, 11, 'minas4@unamba.edu.pe', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-011</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(85, '2023-08-11 11:58:48', 0, 14, 'minas4@unamba.edu.pe', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-011 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.'),
(86, '2023-08-11 12:01:17', 11, 11, 'minas4@unamba.edu.pe', 'Borrador enviado a Revisión', '<h4>Borrador enviado a Revisión</h4><br>Su Borrador de Tesis: <b>2020-011</b> ha sido enviado a los cuatro miembros de su Jurado. El mismo que será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(87, '2023-08-11 12:01:17', 11, 11, 'walquer@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>009-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(88, '2023-08-11 12:01:17', 11, 11, 'rmattos@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>009-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(89, '2023-08-11 12:01:17', 11, 11, 'DMinas3@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>009-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(90, '2023-08-11 12:01:17', 11, 11, 'DMinas2@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>009-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(91, '2023-08-11 12:18:27', 11, 11, 'minas4@unamba.edu.pe', 'Borrador enviado a Revisión', '<h4>Borrador enviado a Revisión</h4><br>Su Borrador de Tesis: <b>2020-011</b> ha sido enviado a los cuatro miembros de su Jurado. El mismo que será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(92, '2023-08-11 12:18:27', 11, 11, 'walquer@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(93, '2023-08-11 12:18:27', 11, 11, 'rmattos@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(94, '2023-08-11 12:18:27', 11, 11, 'DMinas3@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(95, '2023-08-11 12:18:27', 11, 11, 'DMinas2@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(96, '2023-08-11 12:56:06', 0, 10, 'minas3@unamba.edu.pe', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(97, '2023-08-11 12:56:06', 0, 10, 'rmattos@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(98, '2023-08-11 12:56:06', 0, 10, 'DMinas2@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(99, '2023-08-11 12:56:06', 0, 10, 'DMinas4@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(100, '2023-08-11 12:56:06', 0, 10, 'jmerma@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(101, '2023-08-11 12:57:21', 10, 10, 'minas3@unamba.edu.pe', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-010</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(102, '2023-08-11 13:01:49', 0, 17, 'minas3@unamba.edu.pe', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-010 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.'),
(103, '2023-08-11 13:01:55', 0, 17, 'minas3@unamba.edu.pe', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-010 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.'),
(104, '2023-08-11 13:33:21', 0, 10, 'minas3@unamba.edu.pe', 'Subida de Borrador', '<br>Se ha actualizado el trámite: <b>2020-010</b><br><br> Título de Borrador de Tesis: <b>DW</b> <br><br>       Ud. debe apersonarse a Plataforma para revisar el formato y la conformación de su <b>Jurado Evaluador</b> de lo contrario no se procede con el envio para que el tramite de su borrador continue.'),
(105, '2023-08-11 13:36:27', 10, 10, 'minas3@unamba.edu.pe', 'Borrador enviado a Revisión', '<h4>Borrador enviado a Revisión</h4><br>Su Borrador de Tesis: <b>2020-010</b> ha sido enviado a los cuatro miembros de su Jurado. El mismo que será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(106, '2023-08-11 13:36:27', 10, 10, 'rmattos@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno3 Minas, Alumno3 Minas</b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(107, '2023-08-11 13:36:27', 10, 10, 'DMinas2@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno3 Minas, Alumno3 Minas</b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(108, '2023-08-11 13:36:27', 10, 10, 'DMinas4@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno3 Minas, Alumno3 Minas</b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(109, '2023-08-11 13:36:27', 10, 10, 'jmerma@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno3 Minas, Alumno3 Minas</b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(110, '2023-08-11 13:39:59', 0, 10, 'minas3@unamba.edu.pe', 'Subida de Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(111, '2023-08-11 13:39:59', 0, 10, 'rmattos@unamba.edu.pe', 'Borrador Final ', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(112, '2023-08-11 13:39:59', 0, 10, 'DMinas2@unamba.edu.pe', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(113, '2023-08-11 13:39:59', 0, 10, 'DMinas4@unamba.edu.pe', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(114, '2023-08-11 13:39:59', 0, 10, 'jmerma@unamba.edu.pe', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(115, '2023-08-14 16:29:53', 0, 12, 'minas5@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-010</b><br><br> Título de Proyecto: <b>SDFDF</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(116, '2023-08-14 16:32:36', 0, 13, 'minas5@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-012</b><br><br> Título de Proyecto: <b>A</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(117, '2023-08-15 10:32:23', 0, 14, 'minas5@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-012</b><br><br> Título de Proyecto: <b>SA</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(118, '2023-08-15 10:36:18', 14, 14, 'minas5@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(119, '2023-08-15 10:36:18', 14, 14, 'walquer@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-012</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(120, '2023-08-15 11:49:07', 0, 15, 'minas6@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-013</b><br><br> Título de Proyecto: <b>RT</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logLogins`
--

CREATE TABLE `logLogins` (
  `Id` int(11) NOT NULL,
  `Tipo` varchar(2) CHARACTER SET utf8 NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Accion` varchar(25) CHARACTER SET utf8 NOT NULL,
  `IP` varchar(16) CHARACTER SET utf8 NOT NULL,
  `OS` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Browser` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logLogins`
--

INSERT INTO `logLogins` (`Id`, `Tipo`, `IdUser`, `Fecha`, `Accion`, `IP`, `OS`, `Browser`) VALUES
(1, 'T', 11, '2023-08-01 10:27:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(2, 'T', 11, '2023-08-01 15:51:11', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(3, 'T', 11, '2023-08-01 15:52:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(4, 'T', 11, '2023-08-01 15:52:08', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(5, 'T', 11, '2023-08-01 16:06:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(6, 'T', 11, '2023-08-01 16:07:37', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(7, 'T', 11, '2023-08-02 09:21:02', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(8, 'T', 2, '2023-08-02 09:28:55', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(9, 'D', 1, '2023-08-02 10:08:18', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(10, 'D', 2, '2023-08-02 10:49:38', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(11, 'T', 2, '2023-08-02 11:25:25', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(12, 'D', 1, '2023-08-02 11:55:50', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(13, 'T', 3, '2023-08-02 12:47:30', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(14, 'D', 1, '2023-08-02 13:09:03', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(15, 'D', 2, '2023-08-02 13:53:28', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(16, 'D', 3, '2023-08-02 15:11:46', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(17, 'D', 4, '2023-08-02 15:12:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(18, 'T', 2, '2023-08-02 15:14:45', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(19, 'T', 2, '2023-08-02 15:14:49', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(20, 'D', 1, '2023-08-02 15:16:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(21, 'D', 3, '2023-08-02 15:17:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(22, 'D', 2, '2023-08-02 15:18:24', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(23, 'D', 1, '2023-08-02 16:08:04', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(24, 'D', 3, '2023-08-02 16:09:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(25, 'D', 4, '2023-08-02 16:10:18', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(26, 'T', 2, '2023-08-02 16:13:00', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(27, 'D', 2, '2023-08-02 16:38:09', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(28, 'D', 1, '2023-08-02 16:39:11', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(29, 'T', 2, '2023-08-03 10:01:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(30, 'D', 1, '2023-08-03 10:55:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(31, 'D', 2, '2023-08-03 10:55:56', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(32, 'D', 3, '2023-08-03 11:03:09', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(33, 'D', 4, '2023-08-03 11:03:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(34, 'D', 1, '2023-08-03 11:04:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(35, 'T', 2, '2023-08-03 11:04:35', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(36, 'D', 2, '2023-08-03 11:07:14', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(37, 'D', 2, '2023-08-03 11:07:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(38, 'D', 2, '2023-08-03 11:08:11', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(39, 'T', 2, '2023-08-03 11:08:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(40, 'D', 3, '2023-08-03 11:09:34', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(41, 'T', 2, '2023-08-03 11:10:10', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(42, 'T', 2, '2023-08-03 12:02:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(43, 'D', 1, '2023-08-03 12:02:55', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(44, 'D', 2, '2023-08-03 12:05:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(45, 'T', 2, '2023-08-03 13:52:03', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(46, 'T', 2, '2023-08-03 14:13:23', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(47, 'T', 11, '2023-08-03 15:59:38', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(48, 'T', 11, '2023-08-03 15:59:56', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(49, 'T', 11, '2023-08-03 16:00:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(50, 'T', 2, '2023-08-03 16:00:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(51, 'T', 6, '2023-08-03 16:02:41', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(52, 'T', 6, '2023-08-03 16:02:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(53, 'T', 7, '2023-08-03 16:03:53', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(54, 'D', 1, '2023-08-03 16:08:19', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(55, 'T', 11, '2023-08-03 16:11:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(56, 'T', 7, '2023-08-03 16:12:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(57, 'D', 1, '2023-08-03 16:13:50', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(58, 'T', 6, '2023-08-03 16:14:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(59, 'D', 1, '2023-08-03 16:15:45', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(60, 'D', 2, '2023-08-03 16:18:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(61, 'D', 3, '2023-08-03 16:20:27', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(62, 'D', 3, '2023-08-03 16:20:30', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(63, 'D', 4, '2023-08-03 16:21:22', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(64, 'D', 1, '2023-08-03 16:22:02', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(65, 'T', 2, '2023-08-03 16:25:03', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(66, 'T', 2, '2023-08-03 16:25:07', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(67, 'T', 7, '2023-08-03 16:26:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(68, 'T', 11, '2023-08-03 16:26:36', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(69, 'T', 3, '2023-08-03 16:27:22', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(70, 'T', 3, '2023-08-03 16:27:25', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(71, 'D', 2, '2023-08-03 16:31:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(72, 'D', 3, '2023-08-03 16:32:16', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(73, 'D', 4, '2023-08-03 16:32:38', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(74, 'T', 7, '2023-08-03 16:35:08', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(75, 'T', 3, '2023-08-03 16:35:52', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(76, 'T', 3, '2023-08-03 16:35:56', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(77, 'T', 3, '2023-08-03 16:35:59', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(78, 'T', 2, '2023-08-08 13:42:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(79, 'D', 2, '2023-08-08 13:43:37', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(80, 'D', 2, '2023-08-08 13:43:41', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(81, 'T', 15, '2023-08-10 11:00:42', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(82, 'T', 15, '2023-08-10 11:00:45', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(83, 'T', 15, '2023-08-10 11:54:46', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(84, 'T', 15, '2023-08-10 11:54:56', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(85, 'T', 15, '2023-08-10 11:54:56', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(86, 'D', 9, '2023-08-10 11:57:05', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(87, 'T', 16, '2023-08-10 11:59:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(88, 'D', 9, '2023-08-10 12:00:20', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(89, 'T', 16, '2023-08-10 12:01:06', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(90, 'T', 15, '2023-08-10 12:01:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(91, 'T', 15, '2023-08-10 12:02:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(92, 'D', 8, '2023-08-10 12:03:42', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(93, 'T', 15, '2023-08-10 12:58:22', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(94, 'D', 9, '2023-08-10 13:01:00', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(95, 'T', 17, '2023-08-10 13:02:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(96, 'D', 9, '2023-08-10 13:03:19', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(97, 'T', 15, '2023-08-10 14:05:03', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(98, 'T', 17, '2023-08-10 14:05:22', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(99, 'D', 9, '2023-08-10 14:06:14', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(100, 'D', 9, '2023-08-11 11:02:41', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(101, 'D', 8, '2023-08-11 11:05:59', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(102, 'D', 8, '2023-08-11 11:06:03', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(103, 'T', 14, '2023-08-11 11:09:34', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(104, 'D', 11, '2023-08-11 11:10:57', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(105, 'D', 8, '2023-08-11 11:39:40', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(106, 'D', 8, '2023-08-11 11:39:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(107, 'D', 7, '2023-08-11 11:40:18', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(108, 'D', 7, '2023-08-11 11:40:25', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(109, 'D', 7, '2023-08-11 11:40:30', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(110, 'D', 12, '2023-08-11 11:41:05', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(111, 'D', 9, '2023-08-11 11:42:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(112, 'D', 11, '2023-08-11 11:42:35', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(113, 'T', 15, '2023-08-11 11:43:16', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(114, 'T', 14, '2023-08-11 11:43:32', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(115, 'D', 8, '2023-08-11 11:44:38', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(116, 'D', 7, '2023-08-11 11:48:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(117, 'D', 12, '2023-08-11 11:48:52', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(118, 'T', 14, '2023-08-11 11:51:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(119, 'D', 8, '2023-08-11 12:00:17', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(120, 'D', 8, '2023-08-11 12:00:21', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(121, 'D', 8, '2023-08-11 12:00:34', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(122, 'T', 14, '2023-08-11 12:16:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(123, 'T', 14, '2023-08-11 12:37:37', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(124, 'T', 14, '2023-08-11 12:37:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(125, 'T', 17, '2023-08-11 12:53:26', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(126, 'D', 7, '2023-08-11 12:54:05', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(127, 'D', 7, '2023-08-11 12:54:42', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(128, 'D', 11, '2023-08-11 12:54:59', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(129, 'D', 13, '2023-08-11 12:55:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(130, 'T', 17, '2023-08-11 12:55:51', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(131, 'D', 7, '2023-08-11 12:56:17', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(132, 'D', 11, '2023-08-11 12:56:37', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(133, 'D', 13, '2023-08-11 12:56:51', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(134, 'T', 17, '2023-08-11 12:58:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(135, 'T', 15, '2023-08-11 13:17:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(136, 'D', 11, '2023-08-11 13:18:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(137, 'T', 17, '2023-08-11 13:21:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(138, 'T', 15, '2023-08-11 13:21:30', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(139, 'T', 17, '2023-08-11 13:22:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(140, 'D', 11, '2023-08-11 13:36:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(141, 'D', 7, '2023-08-11 13:37:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(142, 'D', 13, '2023-08-11 13:37:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(143, 'T', 17, '2023-08-11 13:38:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(144, 'D', 9, '2023-08-11 13:38:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(145, 'T', 17, '2023-08-11 13:39:35', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(146, 'D', 9, '2023-08-11 13:40:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(147, 'D', 11, '2023-08-11 13:40:54', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(148, 'D', 11, '2023-08-11 13:42:57', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(149, 'T', 17, '2023-08-11 13:45:07', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(150, 'T', 14, '2023-08-11 13:46:28', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(151, 'T', 14, '2023-08-11 13:50:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(152, 'T', 17, '2023-08-11 15:34:59', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(153, 'D', 11, '2023-08-11 15:38:05', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(154, 'D', 11, '2023-08-11 15:54:00', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(155, 'T', 17, '2023-08-14 16:23:51', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(156, 'T', 13, '2023-08-14 16:29:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(157, 'T', 13, '2023-08-15 10:30:42', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(158, 'D', 8, '2023-08-15 10:34:54', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(159, 'T', 12, '2023-08-15 11:48:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logTramites`
--

CREATE TABLE `logTramites` (
  `Id` int(11) NOT NULL,
  `Tipo` varchar(2) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `Quien` varchar(30) NOT NULL,
  `Accion` varchar(50) NOT NULL,
  `Detalle` varchar(500) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logTramites`
--

INSERT INTO `logTramites` (`Id`, `Tipo`, `IdUser`, `IdTramite`, `Quien`, `Accion`, `Detalle`, `Fecha`) VALUES
(1, 'T', 11, 1, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-001</b><br><br> Título de Proyecto: <b>RQ</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-01 17:28:50'),
(2, 'T', 2, 2, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-002</b><br><br> Título de Proyecto: <b>TITULO </b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-02 11:38:45'),
(3, 'T', 3, 3, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-003</b><br><br> Título de Proyecto: <b>111223</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-02 12:47:59'),
(4, 'A', 2, 3, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-003</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-02 13:09:59'),
(5, 'D', 1, 3, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-02 13:10:13'),
(6, 'A', 3, 2, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-002  -- Linea: 1\n- Presidente: (2) \n- Primer Miembro: (4) \n- Segundo Miembro: (3) \n- Director: (1)', '2023-08-02 13:50:11'),
(7, 'D', 2, 2, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-08-02 13:56:02'),
(8, 'D', 3, 2, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-08-02 15:12:11'),
(9, 'D', 4, 2, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-08-02 15:13:18'),
(10, 'T', 2, 2, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-02 15:15:34'),
(11, 'D', 2, 2, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2020-002</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-08-02 16:01:30'),
(12, 'D', 1, 2, 'Pilar', 'Dictaminación de Jurado 4', '<br>Procesando Proyecto : <b>2020-002</b> con <b>1</b><br>Orden de Jurado : 4<br>Iteracion : 2', '2023-08-02 16:08:46'),
(13, 'D', 3, 2, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2020-002</b> con <b>1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-08-02 16:09:58'),
(14, 'D', 4, 2, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2020-002</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-08-02 16:10:48'),
(15, 'A', 3, 2, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-002</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-08-03 10:00:54'),
(16, 'T', 2, 2, 'Tesista', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-002 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.', '2023-08-03 10:25:17'),
(17, 'T', 2, 2, 'Tesista', 'Subida de Borrador', '<br>Se ha actualizado el trámite: <b>2020-002</b><br><br> Título de Borrador de Tesis: <b>TITULO </b> <br><br>       Ud. debe apersonarse a Plataforma para revisar el formato y la conformación de su <b>Jurado Evaluador</b> de lo contrario no se procede con el envio para que el tramite de su borrador continue.', '2023-08-03 10:57:04'),
(18, 'D', 2, 2, 'Pilar', 'Fin de Correcciones Borrador Jurado 1', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 1<br>Iteracion : 4', '2023-08-03 11:02:40'),
(19, 'D', 3, 2, 'Pilar', 'Fin de Correcciones Borrador Jurado 3', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 3<br>Iteracion : 4', '2023-08-03 11:03:22'),
(20, 'D', 4, 2, 'Pilar', 'Fin de Correcciones Borrador Jurado 2', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 2<br>Iteracion : 4', '2023-08-03 11:03:57'),
(21, 'D', 1, 2, 'Pilar', 'Fin de Correcciones Borrador Jurado 4', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 4<br>Iteracion : 4', '2023-08-03 11:04:21'),
(22, 'T', 2, 2, 'Tesista', 'Subida de Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-03 11:06:04'),
(23, 'T', 6, 4, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-004</b><br><br> Título de Proyecto: <b>PRUEBA</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-03 16:07:27'),
(24, 'A', 2, 4, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-004</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-03 16:15:15'),
(25, 'A', 3, 3, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-003  -- Linea: 1\n- Presidente: (3) \n- Primer Miembro: (2) \n- Segundo Miembro: (4) \n- Director: (1)', '2023-08-03 16:17:39'),
(26, 'D', 2, 3, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2020-003</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-08-03 16:18:49'),
(27, 'D', 3, 3, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2020-003</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-08-03 16:20:49'),
(28, 'D', 4, 3, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2020-003</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-08-03 16:21:44'),
(29, 'T', 3, 3, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-03 16:30:38'),
(30, 'D', 2, 3, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2020-003</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-08-03 16:31:54'),
(31, 'D', 3, 3, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2020-003</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-08-03 16:32:21'),
(32, 'D', 4, 3, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2020-003</b> con <b>-1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-08-03 16:32:42'),
(33, 'A', 3, 3, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-003</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-08-03 16:34:36'),
(34, 'T', 15, 5, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-005</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 11:52:43'),
(35, 'T', 15, 6, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-006</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 11:55:19'),
(36, 'A', 2, 6, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-006</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-10 11:56:24'),
(37, 'T', 16, 7, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-007</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 11:59:38'),
(38, 'A', 2, 7, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-007</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-10 12:00:00'),
(39, 'D', 9, 7, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-10 12:00:29'),
(40, 'D', 9, 6, 'Pilar', 'Rechazo del Director', 'El Director/Asesor ha rechazado su proyecto de tesis por lo que deberá cambiarlo o coordinar personalmente.', '2023-08-10 12:00:34'),
(41, 'T', 15, 8, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-008</b><br><br> Título de Proyecto: <b>RFE</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 12:03:12'),
(42, 'A', 2, 8, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-008</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-10 12:03:53'),
(43, 'D', 8, 8, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-10 12:04:01'),
(44, 'A', 2, 8, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-008  -- Linea: 3\n- Presidente: (9) \n- Primer Miembro: (13) \n- Segundo Miembro: (12) \n- Director: (8)', '2023-08-10 12:05:04'),
(45, 'A', 2, 7, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-007  -- Linea: 3\n- Presidente: (7) \n- Primer Miembro: (8) \n- Segundo Miembro: (11) \n- Director: (9)', '2023-08-10 12:06:23'),
(46, 'T', 17, 9, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-009</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 13:02:59'),
(47, 'A', 2, 9, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-009</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-10 13:03:06'),
(48, 'D', 9, 9, 'Pilar', 'Rechazo del Director', 'El Director/Asesor ha rechazado su proyecto de tesis por lo que deberá cambiarlo o coordinar personalmente.', '2023-08-10 13:03:24'),
(49, 'T', 17, 10, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-010</b><br><br> Título de Proyecto: <b>DW</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 14:06:00'),
(50, 'A', 2, 10, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-010</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-10 14:06:24'),
(51, 'D', 9, 10, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-10 14:06:30'),
(52, 'A', 2, 10, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-010  -- Linea: 3\n- Presidente: (7) \n- Primer Miembro: (11) \n- Segundo Miembro: (13) \n- Director: (9)', '2023-08-10 14:06:53'),
(53, 'T', 14, 11, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-011</b><br><br> Título de Proyecto: <b>DMINAS 2</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-11 11:10:19'),
(54, 'A', 2, 11, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-011</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-11 11:10:33'),
(55, 'D', 11, 11, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-11 11:11:13'),
(56, 'A', 3, 11, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-011  -- Linea: 3\n- Presidente: (8) \n- Primer Miembro: (7) \n- Segundo Miembro: (12) \n- Director: (11)', '2023-08-11 11:11:44'),
(57, 'D', 8, 11, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2020-011</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-08-11 11:39:55'),
(58, 'D', 7, 11, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2020-011</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-08-11 11:40:40'),
(59, 'D', 12, 11, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2020-011</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-08-11 11:41:14'),
(60, 'T', 14, 11, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-11 11:43:50'),
(61, 'D', 8, 11, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2020-011</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-08-11 11:45:03'),
(62, 'D', 7, 11, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2020-011</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-08-11 11:48:34'),
(63, 'D', 12, 11, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2020-011</b> con <b>1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-08-11 11:48:57'),
(64, 'A', 3, 11, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-011</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-08-11 11:49:34'),
(65, 'T', 14, 11, 'Tesista', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-011 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.', '2023-08-11 11:58:48'),
(66, 'D', 7, 10, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-08-11 12:54:28'),
(67, 'D', 11, 10, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-08-11 12:55:14'),
(68, 'D', 13, 10, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-08-11 12:55:35'),
(69, 'T', 17, 10, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-11 12:56:06'),
(70, 'D', 7, 10, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2020-010</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-08-11 12:56:24'),
(71, 'D', 11, 10, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2020-010</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-08-11 12:56:41'),
(72, 'D', 13, 10, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2020-010</b> con <b>1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-08-11 12:56:56'),
(73, 'A', 3, 10, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-010</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-08-11 12:57:21'),
(74, 'T', 17, 10, 'Tesista', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-010 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.', '2023-08-11 13:01:49'),
(75, 'T', 17, 10, 'Tesista', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-010 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.', '2023-08-11 13:01:55'),
(76, 'T', 17, 10, 'Tesista', 'Subida de Borrador', '<br>Se ha actualizado el trámite: <b>2020-010</b><br><br> Título de Borrador de Tesis: <b>DW</b> <br><br>       Ud. debe apersonarse a Plataforma para revisar el formato y la conformación de su <b>Jurado Evaluador</b> de lo contrario no se procede con el envio para que el tramite de su borrador continue.', '2023-08-11 13:33:21'),
(77, 'D', 11, 10, 'Pilar', 'Fin de Correcciones Borrador Jurado 2', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 2<br>Iteracion : 4', '2023-08-11 13:36:59'),
(78, 'D', 7, 10, 'Pilar', 'Fin de Correcciones Borrador Jurado 1', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 1<br>Iteracion : 4', '2023-08-11 13:37:22'),
(79, 'D', 13, 10, 'Pilar', 'Fin de Correcciones Borrador Jurado 3', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 3<br>Iteracion : 4', '2023-08-11 13:37:49'),
(80, 'D', 9, 10, 'Pilar', 'Fin de Correcciones Borrador Jurado 4', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 4<br>Iteracion : 4', '2023-08-11 13:39:06'),
(81, 'T', 17, 10, 'Tesista', 'Subida de Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-11 13:39:59'),
(82, 'T', 13, 12, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-010</b><br><br> Título de Proyecto: <b>SDFDF</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-14 16:29:53'),
(83, 'T', 13, 13, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-012</b><br><br> Título de Proyecto: <b>A</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-14 16:32:36'),
(84, 'T', 13, 14, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-012</b><br><br> Título de Proyecto: <b>SA</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-15 10:32:23'),
(85, 'A', 2, 14, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-012</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-15 10:36:18'),
(86, 'D', 8, 14, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-15 10:36:33'),
(87, 'T', 12, 15, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-013</b><br><br> Título de Proyecto: <b>RT</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-15 11:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Repositorio`
--

CREATE TABLE `Repositorio` (
  `Id` int(11) NOT NULL,
  `DNI` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Codigo` varchar(8) CHARACTER SET utf8 NOT NULL,
  `IdFacultad` int(5) NOT NULL,
  `IdCarrera` int(5) NOT NULL,
  `IdEspec` int(5) NOT NULL,
  `Apellidos` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Nombres` varchar(75) CHARACTER SET utf8 NOT NULL,
  `IdModal` int(11) NOT NULL,
  `FechaReg` datetime NOT NULL,
  `SemReg` varchar(25) CHARACTER SET utf8 NOT NULL,
  `FechaSus` date NOT NULL,
  `Link1` varchar(99) NOT NULL,
  `Link2` varchar(99) NOT NULL,
  `NroCelular` varchar(12) CHARACTER SET utf8 NOT NULL,
  `Correo` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblCorrects`
--

CREATE TABLE `tblCorrects` (
  `Id` int(11) NOT NULL,
  `IdTramite` int(5) NOT NULL,
  `Iteracion` int(5) NOT NULL,
  `IdDocente` int(5) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Mensaje` varchar(1024) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblCorrects`
--

INSERT INTO `tblCorrects` (`Id`, `IdTramite`, `Iteracion`, `IdDocente`, `Fecha`, `Mensaje`) VALUES
(1, 2, 1, 2, '2023-08-02 18:55:07', 'Hasta mi fecha de conocimiento en septiembre de 2021, GenMailer no es una herramienta o software ampliamente conocido o documentado. Parece ser que GenMailer se refiere a un nombre específico de alguna aplicación o script personalizado.\r\n\r\nDado que no tengo información específica sobre GenMailer, no puedo proporcionar instrucciones precisas para hacerlo funcionar en Ubuntu 18.04. Sin embargo, puedo ofrecerte un enfoque general para hacer que cualquier herramienta o script funcione en Ubuntu 18.04:'),
(2, 2, 1, 2, '2023-08-02 18:55:38', 'Descarga o obtén GenMailer:\r\n\r\n    Si GenMailer es una herramienta o script disponible públicamente, asegúrate de descargarlo desde una fuente confiable o obtenerlo del desarrollador original.'),
(3, 2, 1, 3, '2023-08-02 20:12:06', 'te falta muchacho'),
(4, 2, 1, 4, '2023-08-02 20:13:01', 'hola'),
(5, 2, 4, 2, '2023-08-03 16:02:34', 'dfdfgfrdgrrghrtgth'),
(6, 2, 4, 2, '2023-08-03 16:02:37', 'gfhhfgfgffg'),
(7, 2, 4, 3, '2023-08-03 16:03:20', '1'),
(8, 2, 4, 4, '2023-08-03 16:03:54', '2'),
(9, 2, 4, 1, '2023-08-03 16:04:19', 'qwswd'),
(10, 3, 1, 2, '2023-08-03 21:18:37', 'Correcion'),
(11, 3, 1, 2, '2023-08-03 21:18:44', 'correcion'),
(12, 3, 1, 3, '2023-08-03 21:20:42', 'correcion 1'),
(13, 3, 1, 3, '2023-08-03 21:20:46', 'correcion2'),
(14, 3, 1, 4, '2023-08-03 21:21:35', 'correcion 1'),
(15, 3, 1, 4, '2023-08-03 21:21:39', 'correcion2'),
(16, 3, 1, 4, '2023-08-03 21:21:43', 'correcion 3'),
(17, 11, 1, 8, '2023-08-11 16:39:52', '1'),
(18, 11, 1, 7, '2023-08-11 16:40:38', '1'),
(19, 11, 1, 12, '2023-08-11 16:41:12', '3'),
(20, 10, 4, 11, '2023-08-11 18:36:57', 'de'),
(21, 10, 4, 7, '2023-08-11 18:37:20', 'ed'),
(22, 10, 4, 13, '2023-08-11 18:37:47', 'e'),
(23, 10, 4, 9, '2023-08-11 18:39:03', 'e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblManagers`
--

CREATE TABLE `tblManagers` (
  `Id` int(11) NOT NULL,
  `Nivel` int(11) NOT NULL,
  `Responsable` varchar(32) NOT NULL,
  `Usuario` varchar(12) NOT NULL,
  `Clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblManagers`
--

INSERT INTO `tblManagers` (`Id`, `Nivel`, `Responsable`, `Usuario`, `Clave`) VALUES
(2, 0, 'user', 'user', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(3, 1, 'sadith', 'Sadith', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblMemos`
--

CREATE TABLE `tblMemos` (
  `Id` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Ordinal` int(11) NOT NULL,
  `Anio` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblMemos`
--

INSERT INTO `tblMemos` (`Id`, `Tipo`, `Ordinal`, `Anio`, `IdTramite`, `IdCarrera`, `Fecha`) VALUES
(1, 1, 1, 2020, 1, 1, '2023-08-02 11:16:51'),
(2, 1, 2, 2020, 2, 1, '2023-08-02 13:50:11'),
(3, 4, 3, 2020, 2, 1, '2023-08-03 11:02:12'),
(4, 1, 4, 2020, 3, 1, '2023-08-03 16:17:39'),
(5, 1, 5, 2020, 8, 3, '2023-08-10 12:05:04'),
(6, 1, 6, 2020, 7, 3, '2023-08-10 12:06:23'),
(7, 1, 7, 2020, 10, 3, '2023-08-10 14:06:53'),
(8, 1, 8, 2020, 11, 3, '2023-08-11 11:11:44'),
(9, 4, 9, 2020, 11, 3, '2023-08-11 12:01:17'),
(10, 4, 10, 2020, 11, 3, '2023-08-11 12:18:27'),
(11, 4, 11, 2020, 10, 3, '2023-08-11 13:36:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblPreguntas`
--

CREATE TABLE `tblPreguntas` (
  `idpregunta` int(11) NOT NULL,
  `pregunta` varchar(500) DEFAULT NULL,
  `respuesta` varchar(500) DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='¿Tenemos libre albedrío?';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblSecres`
--

CREATE TABLE `tblSecres` (
  `Id` int(11) NOT NULL,
  `Id_Facultad` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `UserLevel` int(3) NOT NULL,
  `Resp` varchar(400) NOT NULL,
  `Usuario` varchar(70) NOT NULL,
  `Clave` varchar(90) NOT NULL,
  `Celular` varchar(9) NOT NULL,
  `Correo` varchar(300) NOT NULL,
  `Direccion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblSecres`
--

INSERT INTO `tblSecres` (`Id`, `Id_Facultad`, `IdCarrera`, `UserLevel`, `Resp`, `Usuario`, `Clave`, `Celular`, `Correo`, `Direccion`) VALUES
(1, 1, 1, 1, 'Guillermo', 'Coordinador', '123', '983375009', 'coordinador@gmail.com', 'dir'),
(2, 1, 1, 2, 'Sadith', 'coordinador', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', '983375003', 'coordinador@gmail.com', 'dd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblTesistas`
--

CREATE TABLE `tblTesistas` (
  `Id` int(11) NOT NULL,
  `Activo` int(5) NOT NULL DEFAULT '1',
  `DNI` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Sexo` varchar(4) NOT NULL,
  `Codigo` varchar(8) CHARACTER SET utf8 NOT NULL,
  `IdFacultad` int(5) NOT NULL,
  `IdCarrera` int(5) NOT NULL,
  `IdEspec` int(5) NOT NULL,
  `Apellidos` varchar(75) CHARACTER SET utf8 NOT NULL,
  `Nombres` varchar(75) CHARACTER SET utf8 NOT NULL,
  `FechaReg` datetime NOT NULL,
  `SemReg` varchar(25) CHARACTER SET utf8 NOT NULL,
  `Direccion` varchar(50) CHARACTER SET utf8 NOT NULL,
  `NroCelular` varchar(12) CHARACTER SET utf8 NOT NULL,
  `Correo` varchar(75) CHARACTER SET utf8 NOT NULL,
  `Clave` varchar(90) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblTesistas`
--

INSERT INTO `tblTesistas` (`Id`, `Activo`, `DNI`, `Sexo`, `Codigo`, `IdFacultad`, `IdCarrera`, `IdEspec`, `Apellidos`, `Nombres`, `FechaReg`, `SemReg`, `Direccion`, `NroCelular`, `Correo`, `Clave`) VALUES
(2, 1, '77889885', 'm', '123445', 1, 1, 1, 'Segovia Durand', 'Elmer', '2023-08-15 00:00:00', '2022-2', 'jr.huancavelica 840', '88778654', 'esegovia@unamba.edu.pe', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(3, 1, '566554343', 'm', '12344', 1, 1, 1, 'Valderrama Baldarrago', 'Gabriel', '2023-08-01 00:00:00', '2023-2', '*', '98678999', 'gvalderrama@unamba.edu.pe', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(5, 1, '22222221', 'm', '1111', 1, 1, 1, 'Ruiz  Guzman', 'Julian', '2023-08-01 00:00:00', '2023', 'jr', '982342344', 'jruiz@@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(6, 1, '70082899', 'f', '121221', 1, 1, 1, 'Martinez Alva', 'Julio', '2023-08-01 00:00:00', 'primera', 'jr.huancavelica 840', '983375009', 'jmartinez@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(7, 1, '70082890', 'f', '121221', 1, 1, 1, 'Guillen Borja', 'Yudith', '2023-08-01 00:00:00', 'primera', 'jr.huancavelica 840', '983375009', 'yguillen@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(11, 1, '70082897', 'f', '121221', 1, 1, 1, 'Segundo Gonzales', 'Gleidy Sadith', '2023-08-01 00:00:00', 'primera', 'jr.huancavelica 840', '983375009', 'gsegundo@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(12, 1, '70082800', 'f', '111', 1, 3, 1, 'Alumno5 minas', 'Alumno5 minas', '2023-08-01 00:00:00', 'primera', 'jr.huancavelica 840', '983375009', 'minas6@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(13, 1, '70082811', 'f', '222', 1, 3, 1, 'Alumno5 minas', 'Alumno2 civil', '2023-08-01 00:00:00', 'primera', 'jr.huancavelica 840', '983375009', 'minas5@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(14, 1, '70082822', 'f', '333', 1, 3, 1, 'Alumno4 minas', 'Alumno3 civil', '2023-08-01 00:00:00', 'primera', 'jr.huancavelica 840', '983375009', 'minas4@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(15, 1, '70082833', 'f', '444', 1, 3, 1, 'Alumno1 Minas', 'Alumno1 Minas', '2023-08-01 00:00:00', 'primera', 'jr.huancavelica 840', '983375009', 'minas1@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(16, 1, '70082844', 'f', '555', 1, 3, 1, 'Alumno2 Minas', 'Alumno2 Minas', '2023-08-01 00:00:00', 'primera', 'jr.huancavelica 840', '983375009', 'minas2@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(17, 1, '70082855', 'f', '666', 1, 3, 1, 'Alumno3 Minas', 'Alumno3 Minas', '2023-08-01 00:00:00', 'primera', 'jr.huancavelica 840', '983375009', 'minas3@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesJuCambios`
--

CREATE TABLE `tesJuCambios` (
  `Id` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Referens` varchar(50) NOT NULL,
  `IdJurado1` int(11) NOT NULL,
  `IdJurado2` int(11) NOT NULL,
  `IdJurado3` int(11) NOT NULL,
  `IdJurado4` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Motivo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesJuCambios`
--

INSERT INTO `tesJuCambios` (`Id`, `IdTramite`, `Tipo`, `Referens`, `IdJurado1`, `IdJurado2`, `IdJurado3`, `IdJurado4`, `Fecha`, `Motivo`) VALUES
(1, 2, 1, 'Coords', 2, 4, 3, 1, '2023-08-02 13:50:11', 'Sortea'),
(2, 3, 1, 'Coords', 3, 2, 4, 1, '2023-08-03 16:17:39', 'Sortea'),
(3, 8, 1, 'Coords', 9, 13, 12, 8, '2023-08-10 12:05:04', 'Sortea'),
(4, 7, 1, 'Coords', 7, 8, 11, 9, '2023-08-10 12:06:23', 'Sortea'),
(5, 10, 1, 'Coords', 7, 11, 13, 9, '2023-08-10 14:06:53', 'Sortea'),
(6, 11, 1, 'Coords', 8, 7, 12, 11, '2023-08-11 11:11:44', 'Sortea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesProyHabs`
--

CREATE TABLE `tesProyHabs` (
  `Id` int(11) NOT NULL,
  `IdTram` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `PosJurado` int(11) NOT NULL,
  `Motivo` varchar(300) NOT NULL,
  `FechSort` datetime NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesSustenAct`
--

CREATE TABLE `tesSustenAct` (
  `Id` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Dictamen` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Num` int(11) NOT NULL,
  `Obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesSustens`
--

CREATE TABLE `tesSustens` (
  `Id` int(11) NOT NULL,
  `Activo` int(4) NOT NULL DEFAULT '1',
  `Tipo` int(11) NOT NULL DEFAULT '1',
  `IdBorrador` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `Codigo` varchar(12) NOT NULL,
  `Fecha` datetime NOT NULL,
  `FechaDic` date NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Lugar` varchar(100) NOT NULL,
  `obs` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesSustens`
--

INSERT INTO `tesSustens` (`Id`, `Activo`, `Tipo`, `IdBorrador`, `IdTramite`, `Codigo`, `Fecha`, `FechaDic`, `IdCarrera`, `Lugar`, `obs`) VALUES
(1, 1, 1, 2, 2, '2020-002', '2023-08-12 12:00:00', '2023-08-08', 1, 'Auditorio de Ingenierìa informàtica y Sistemas', ''),
(2, 1, 1, 10, 10, '2020-010', '2023-08-08 11:00:00', '2023-08-08', 3, 'auditorio', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesSustensSolic`
--

CREATE TABLE `tesSustensSolic` (
  `Id` int(4) NOT NULL,
  `Estado` int(3) NOT NULL,
  `IdTramite` int(7) NOT NULL,
  `IdTesista` int(11) NOT NULL,
  `IdCarrera` int(4) NOT NULL,
  `UrlRepo` varchar(300) NOT NULL,
  `FechDic` date NOT NULL,
  `FechSusten` date NOT NULL,
  `FileDiapo` varchar(200) NOT NULL,
  `DateSolic` datetime NOT NULL,
  `DateModif` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesTramDoc`
--

CREATE TABLE `tesTramDoc` (
  `Id` int(11) NOT NULL,
  `Tipo` int(2) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `Title` varchar(350) CHARACTER SET utf8 NOT NULL,
  `Abstract` text CHARACTER SET utf8 NOT NULL,
  `Keywords` varchar(99) CHARACTER SET utf8 NOT NULL,
  `Conclus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesTramDoc`
--

INSERT INTO `tesTramDoc` (`Id`, `Tipo`, `IdTramite`, `Title`, `Abstract`, `Keywords`, `Conclus`) VALUES
(1, 1, 1, 'RQ', 'rt', 'erter', ''),
(2, 1, 2, 'TITULO ', 'ndfweljkntge', 'sdfsdf', ''),
(3, 1, 3, '111223', '123', '123', ''),
(4, 1, 2, 'TITULO ', 'fref', 'fefg lmdnglvjevngjngkjeg', '*'),
(5, 2, 2, 'TITULO ', 'dfgfdfg', 'dfgdfg', 'fgddfgdfg'),
(6, 3, 2, 'TITULO ', 'sdcdfsg', 'fddgf', 'dggggggggg'),
(7, 1, 4, 'PRUEBA', 'Prueba', 'prueba', ''),
(8, 1, 3, '111223', 'prueba', 'prueba', '*'),
(9, 1, 5, '123', '132', '123', ''),
(10, 1, 6, '123', '123', '1232', ''),
(11, 1, 7, '123', 'ffdh', 'sdggf', ''),
(12, 1, 8, 'RFE', 'erg', 'er', ''),
(13, 1, 9, '123', '3345', '2344', ''),
(14, 1, 10, 'DW', 'we', 'e', ''),
(15, 1, 11, 'DMINAS 2', 'Dminas 2', 'Dminas 2', ''),
(16, 1, 11, 'DMINAS 2', 'de', '3', '*'),
(17, 1, 10, 'DW', 'a', 'AS', '*'),
(18, 2, 10, 'DW', 'g', 'g', 'g'),
(19, 3, 10, 'DW', 'w', 'e', 'e'),
(20, 1, 12, 'SDFDF', 'dfd', 'dfgdg', ''),
(21, 1, 13, 'A', 'as', 'AS', ''),
(22, 1, 14, 'SA', 'sa', 'Dminas 2', ''),
(23, 1, 15, 'RT', '5t', 'rt', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesTramites`
--

CREATE TABLE `tesTramites` (
  `Id` int(11) NOT NULL,
  `Tipo` int(2) NOT NULL DEFAULT '1',
  `Codigo` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Anio` int(5) NOT NULL,
  `Orden` int(5) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Estado` int(2) NOT NULL,
  `SuEst` int(2) NOT NULL,
  `IdTesista1` int(7) NOT NULL,
  `IdTesista2` int(7) NOT NULL,
  `IdLinea` int(5) NOT NULL,
  `IdLinAlte` int(5) NOT NULL,
  `IdJurado1` int(5) NOT NULL,
  `IdJurado2` int(5) NOT NULL,
  `IdJurado3` int(5) NOT NULL,
  `IdJurado4` int(5) NOT NULL,
  `FechRegProy` datetime NOT NULL,
  `FechActBorr` datetime NOT NULL,
  `_T_` varchar(5) NOT NULL,
  `FechModif` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesTramites`
--

INSERT INTO `tesTramites` (`Id`, `Tipo`, `Codigo`, `Anio`, `Orden`, `IdCarrera`, `Estado`, `SuEst`, `IdTesista1`, `IdTesista2`, `IdLinea`, `IdLinAlte`, `IdJurado1`, `IdJurado2`, `IdJurado3`, `IdJurado4`, `FechRegProy`, `FechActBorr`, `_T_`, `FechModif`) VALUES
(1, 1, '2020-001', 2020, 1, 1, 4, 0, 11, 0, 1, 0, 0, 0, 0, 1, '2023-08-01 17:28:50', '0000-00-00 00:00:00', '', '2023-08-02 16:16:51'),
(2, 3, '2020-002', 2020, 2, 1, 14, 0, 2, 0, 1, 0, 2, 4, 3, 1, '2023-08-02 11:38:45', '2023-08-03 10:25:17', '', '2023-08-08 18:37:12'),
(3, 1, '2020-003', 2020, 3, 1, 6, 0, 3, 0, 1, 0, 3, 2, 4, 1, '2023-08-02 12:47:59', '2023-04-07 00:00:00', '', '2023-08-08 21:34:36'),
(4, 1, '2020-004', 2020, 4, 3, 2, 0, 6, 0, 1, 0, 0, 0, 0, 2, '2023-08-03 16:07:27', '0000-00-00 00:00:00', '', '2023-07-30 21:15:15'),
(5, 0, '2020-005', 2020, 5, 3, 0, 0, 15, 0, 3, 0, 0, 0, 0, 9, '2023-08-10 11:52:43', '0000-00-00 00:00:00', '', '2023-08-10 16:52:43'),
(6, 0, '2020-006', 2020, 6, 3, 0, 0, 15, 0, 3, 0, 0, 0, 0, 9, '2023-07-10 11:55:19', '0000-00-00 00:00:00', '', '2023-08-10 16:52:43'),
(7, 1, '2020-007', 2020, 7, 3, 4, 0, 16, 0, 3, 0, 7, 8, 11, 9, '2023-08-10 11:59:38', '0000-00-00 00:00:00', '', '2023-08-10 16:52:43'),
(8, 1, '2020-008', 2020, 8, 3, 4, 0, 15, 0, 3, 0, 9, 13, 12, 8, '2023-08-10 12:03:12', '0000-00-00 00:00:00', '', '2023-08-10 17:05:04'),
(9, 0, '2020-009', 2020, 9, 3, 0, 0, 17, 0, 4, 0, 0, 0, 0, 9, '2023-08-10 13:02:59', '0000-00-00 00:00:00', '', '2023-08-10 16:52:43'),
(10, 3, '2023-010', 2023, 10, 3, 14, 0, 17, 0, 3, 0, 7, 11, 13, 9, '2023-07-29 14:06:00', '2023-08-11 13:01:55', '', '2023-08-11 18:43:30'),
(11, 2, '2020-011', 2023, 11, 3, 10, 0, 14, 0, 3, 0, 8, 7, 12, 11, '2023-07-11 11:10:19', '2023-08-11 11:58:48', '', '2023-08-11 17:50:42'),
(14, 1, '2023-012', 2023, 12, 3, 3, 0, 13, 0, 3, 0, 0, 0, 0, 8, '2023-08-15 10:32:23', '0000-00-00 00:00:00', '', '2023-08-15 15:36:33'),
(15, 1, '2023-013', 2023, 13, 3, 1, 0, 12, 0, 3, 0, 0, 0, 0, 11, '2023-08-15 11:49:07', '0000-00-00 00:00:00', '', '2023-08-15 16:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesTramsBach`
--

CREATE TABLE `tesTramsBach` (
  `Id` int(5) NOT NULL,
  `Estado` int(5) NOT NULL,
  `IdTramite` int(5) NOT NULL,
  `IdTesista` int(5) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `NroRes` int(11) NOT NULL,
  `AnioRes` int(11) NOT NULL,
  `DateRes` date NOT NULL,
  `DateUpolad` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `File` varchar(20) NOT NULL,
  `Obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesTramsBach`
--

INSERT INTO `tesTramsBach` (`Id`, `Estado`, `IdTramite`, `IdTesista`, `IdCarrera`, `NroRes`, `AnioRes`, `DateRes`, `DateUpolad`, `File`, `Obs`) VALUES
(1, 1, 2, 2, 1, 12, 2020, '2023-08-03', '2023-08-03 14:25:17', 'd00000002-Bach.pdf', '-'),
(2, 1, 11, 14, 3, 123, 2020, '2023-08-01', '2023-08-11 15:58:48', 'd00000014-Bach.pdf', '-'),
(3, 1, 10, 17, 3, 1233, 2020, '2023-08-17', '2023-08-11 17:01:49', 'd00000017-Bach.pdf', '-'),
(4, 1, 10, 17, 3, 1233, 2020, '2023-08-17', '2023-08-11 17:01:55', 'd00000017-Bach.pdf', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesTramsDet`
--

CREATE TABLE `tesTramsDet` (
  `Id` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `Iteracion` int(2) NOT NULL,
  `Titulo` varchar(350) CHARACTER SET utf8 NOT NULL,
  `Archivo` varchar(25) CHARACTER SET utf8 NOT NULL,
  `vb1` int(2) NOT NULL,
  `vb2` int(2) NOT NULL,
  `vb3` int(2) NOT NULL,
  `vb4` int(2) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Obs` varchar(75) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesTramsDet`
--

INSERT INTO `tesTramsDet` (`Id`, `IdTramite`, `Iteracion`, `Titulo`, `Archivo`, `vb1`, `vb2`, `vb3`, `vb4`, `Fecha`, `Obs`) VALUES
(1, 1, 1, 'RQ', 'd00000011-Proy.pdf', 0, 0, 0, 0, '2023-08-01 17:28:50', ''),
(2, 2, 1, 'TITULO ', 'd00000002-Proy.pdf', 1, 1, 1, 0, '2023-08-02 11:38:45', ''),
(3, 3, 1, '111223', 'd00000003-Proy.pdf', 1, 1, 1, 0, '2023-03-02 12:47:59', ''),
(4, 2, 2, 'TITULO ', 'd00000002-Proy.pdf', 1, 1, 1, 1, '2023-08-02 15:15:34', ''),
(5, 2, 3, 'TITULO ', 'd00000002-Proy.pdf', 1, 1, 1, 1, '2023-03-03 10:00:54', ''),
(6, 2, 4, 'TITULO ', 'd00000002-Borr.pdf', 1, 1, 1, 1, '2023-08-03 10:57:04', ''),
(7, 4, 1, 'PRUEBA', 'd00000007-Proy.pdf', 0, 0, 0, 0, '2023-08-03 16:07:27', ''),
(8, 3, 2, '111223', 'd00000003-Proy.pdf', 1, 1, -1, 0, '2023-08-03 16:30:38', ''),
(9, 3, 3, '111223', 'd00000003-Proy.pdf', 1, 1, -1, 0, '2023-08-03 16:34:36', ''),
(10, 2, 5, 'TITULO ', 'd00000002-Borr.pdf', -1, -1, -1, -1, '2023-08-08 13:37:12', 'Sustentacion'),
(11, 5, 1, '123', 'd00000015-Proy.pdf', 0, 0, 0, 0, '2023-08-10 11:52:43', ''),
(12, 6, 1, '123', 'd00000015-Proy.pdf', 0, 0, 0, 0, '2023-08-10 11:55:19', ''),
(13, 7, 1, '123', 'd00000016-Proy.pdf', 0, 0, 0, 0, '2023-08-10 11:59:38', ''),
(14, 8, 1, 'RFE', 'd00000015-Proy.pdf', 0, 0, 0, 0, '2023-08-10 12:03:12', ''),
(15, 9, 1, '123', 'd00000017-Proy.pdf', 0, 0, 0, 0, '2023-08-10 13:02:59', ''),
(16, 10, 1, 'DW', 'd00000017-Proy.pdf', 1, 1, 1, 0, '2023-08-10 14:06:00', ''),
(17, 11, 1, 'DMINAS 2', 'd00000014-Proy.pdf', 1, 1, 1, 0, '2023-08-11 11:10:19', ''),
(18, 11, 2, 'DMINAS 2', 'd00000014-Proy.pdf', 1, 1, 1, 0, '2023-08-11 11:43:50', ''),
(19, 11, 3, 'DMINAS 2', 'd00000014-Proy.pdf', 1, 1, 1, 0, '2023-04-11 11:49:34', ''),
(20, 10, 2, 'DW', 'd00000017-Proy.pdf', 1, 1, 1, 0, '2023-08-11 12:56:06', ''),
(21, 10, 3, 'DW', 'd00000017-Proy.pdf', 1, 1, 1, 0, '2023-04-11 12:57:21', ''),
(22, 10, 4, 'DW', 'd00000017-Borr.pdf', 1, 1, 1, 1, '2023-08-11 13:33:21', ''),
(23, 10, 5, 'DW', 'd00000017-Borr.pdf', -1, -1, -1, -1, '2023-08-11 13:43:30', 'Sustentacion'),
(24, 12, 1, 'SDFDF', 'd00000013-Proy.pdf', 0, 0, 0, 0, '2023-08-14 16:29:53', ''),
(25, 13, 1, 'A', 'd00000013-Proy.pdf', 0, 0, 0, 0, '2023-08-14 16:32:36', ''),
(26, 14, 1, 'SA', 'd00000013-Proy.pdf', 0, 0, 0, 0, '2023-08-15 10:32:23', ''),
(27, 15, 1, 'RT', 'd00000012-Proy.pdf', 0, 0, 0, 0, '2023-08-15 11:49:07', '');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwAnoingJuly`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwAnoingJuly` (
`Id` int(11)
,`Tipo` int(2)
,`Estado` int(2)
,`Codigo` varchar(10)
,`IdCarrera` int(11)
,`IdTesista1` int(7)
,`IdTesista2` int(7)
,`Iteracion` int(2)
,`Titulo` varchar(350)
,`vb1` int(2)
,`vb2` int(2)
,`vb3` int(2)
,`vb4` int(2)
,`Fecha` datetime
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxDatDocentes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxDatDocentes` (
`Id` int(11)
,`IdDocente` int(11)
,`Activo` int(11)
,`Codigo` varchar(12)
,`DNI` varchar(10)
,`IdCategoria` int(11)
,`Tipo` varchar(1)
,`CategAbrev` varchar(15)
,`IdFacultad` int(11)
,`FacuAbrev` varchar(1)
,`IdCarrera` int(11)
,`Carrera` varchar(100)
,`DatosPers` varchar(152)
,`DatosNom` varchar(151)
,`Antiguedad` int(7)
,`FechaAsc` date
,`FechaIn` date
,`NroCelular` varchar(12)
,`Correo` varchar(50)
,`Clave` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxDatTesistas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxDatTesistas` (
`Id` int(11)
,`Activo` int(5)
,`DNI` varchar(10)
,`Codigo` varchar(8)
,`IdFacultad` int(5)
,`Facultad` varchar(100)
,`IdCarrera` int(5)
,`Carrera` varchar(100)
,`IdEspec` int(5)
,`DatosPers` varchar(152)
,`Apellidos` varchar(75)
,`Nombres` varchar(75)
,`FechaReg` datetime
,`SemReg` varchar(25)
,`Direccion` varchar(50)
,`NroCelular` varchar(12)
,`Correo` varchar(75)
,`Clave` varchar(90)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxDocInLin`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxDocInLin` (
`IdDocente` int(5)
,`IdLinea` int(5)
,`LinEstado` int(3)
,`TipoLin` int(2)
,`TipoDoc` varchar(1)
,`CategAbrev` varchar(15)
,`DatosPers` varchar(152)
,`Activo` int(11)
,`IdCarrera` int(11)
,`IdCategoria` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxDocInLinEx`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxDocInLinEx` (
`IdDocente` int(5)
,`IdLinea` int(5)
,`Linea` varchar(300)
,`TipoLin` int(2)
,`TipoDoc` varchar(1)
,`CategAbrev` varchar(15)
,`DatosPers` varchar(152)
,`Activo` int(11)
,`IdCarrera` int(11)
,`IdCategoria` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxLineas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxLineas` (
`Id` int(5)
,`Nombre` varchar(300)
,`Repets` bigint(21)
,`TotDoceRegs` bigint(21)
,`IdArea` int(1)
,`IdSubArea` int(2)
,`IdDiscip` int(3)
,`IdFacultad` int(2)
,`IdCarrera` int(2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxMemos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxMemos` (
`Id` int(11)
,`Tipo` int(11)
,`Ordinal` int(11)
,`Anio` int(11)
,`IdTramite` int(11)
,`IdCarrera` int(11)
,`Fecha` datetime
,`Codigo` varchar(10)
,`Estado` int(2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxSustens`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxSustens` (
`Id` int(11)
,`Activo` int(4)
,`IdTramite` int(11)
,`Codigo` varchar(12)
,`Pendiente` int(1)
,`IdCarrera` int(11)
,`IdFacultad` int(11)
,`Carrera` varchar(100)
,`Fecha` datetime
,`Lugar` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxTesTramites`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxTesTramites` (
`Id` int(11)
,`Tipo` int(2)
,`Codigo` varchar(10)
,`Anio` int(5)
,`Orden` int(5)
,`IdCarrera` int(11)
,`Estado` int(2)
,`IdTesista1` int(7)
,`IdTesista2` int(7)
,`IdLinea` int(5)
,`IdLinAlte` int(5)
,`IdJurado1` int(5)
,`IdJurado2` int(5)
,`IdJurado3` int(5)
,`IdJurado4` int(5)
,`FechRegProy` datetime
,`FechActBorr` datetime
,`_T_` varchar(5)
,`FechModif` timestamp
,`IdEspec` bigint(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxZumLoginDoc`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxZumLoginDoc` (
`Id` int(11)
,`Tipo` varchar(2)
,`IdUser` int(11)
,`DatosPers` varchar(151)
,`Fecha` datetime
,`Accion` varchar(25)
,`OS` varchar(45)
,`Browser` varchar(45)
,`IP` varchar(16)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxZumLoginDocEx`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxZumLoginDocEx` (
`Tipo` varchar(2)
,`IdUser` int(11)
,`DatosPers` varchar(151)
,`A1` decimal(23,0)
,`A2` decimal(23,0)
,`Total` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxZumLoginTes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxZumLoginTes` (
`Id` int(11)
,`Tipo` varchar(2)
,`IdUser` int(11)
,`DatosPers` varchar(151)
,`Fecha` datetime
,`Accion` varchar(25)
,`OS` varchar(45)
,`Browser` varchar(45)
,`IP` varchar(16)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vwAnoingJuly`
--
DROP TABLE IF EXISTS `vwAnoingJuly`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwAnoingJuly`  AS  select `T`.`Id` AS `Id`,`T`.`Tipo` AS `Tipo`,`T`.`Estado` AS `Estado`,`T`.`Codigo` AS `Codigo`,`T`.`IdCarrera` AS `IdCarrera`,`T`.`IdTesista1` AS `IdTesista1`,`T`.`IdTesista2` AS `IdTesista2`,`D`.`Iteracion` AS `Iteracion`,`D`.`Titulo` AS `Titulo`,`D`.`vb1` AS `vb1`,`D`.`vb2` AS `vb2`,`D`.`vb3` AS `vb3`,`D`.`vb4` AS `vb4`,`D`.`Fecha` AS `Fecha` from (`tesTramites` `T` join `tesTramsDet` `D`) where ((`T`.`Estado` = 5) and (`T`.`Tipo` = 1) and (`T`.`Id` = `D`.`IdTramite`) and (`D`.`Iteracion` = 2)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxDatDocentes`
--
DROP TABLE IF EXISTS `vxDatDocentes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxDatDocentes`  AS  select `D`.`Id` AS `Id`,`D`.`Id` AS `IdDocente`,`D`.`Activo` AS `Activo`,`D`.`Codigo` AS `Codigo`,`D`.`DNI` AS `DNI`,`D`.`IdCategoria` AS `IdCategoria`,`K`.`Tipo` AS `Tipo`,`K`.`Abrev` AS `CategAbrev`,`D`.`IdFacultad` AS `IdFacultad`,'F' AS `FacuAbrev`,`D`.`IdCarrera` AS `IdCarrera`,`C`.`Nombre` AS `Carrera`,concat(upper(`D`.`Apellidos`),', ',upper(`D`.`Nombres`)) AS `DatosPers`,concat(upper(`D`.`Nombres`),' ',upper(`D`.`Apellidos`)) AS `DatosNom`,(to_days(now()) - to_days(`D`.`FechaAsc`)) AS `Antiguedad`,`D`.`FechaAsc` AS `FechaAsc`,`D`.`FechaIn` AS `FechaIn`,`D`.`NroCelular` AS `NroCelular`,`D`.`Correo` AS `Correo`,`D`.`Clave` AS `Clave` from ((`vriunap_absmain`.`tblDocentes` `D` join `vriunap_absmain`.`dicCarreras` `C`) join `vriunap_absmain`.`dicCategorias` `K`) where ((`C`.`Id` = `D`.`IdCarrera`) and (`K`.`Id` = `D`.`IdCategoria`) and (`D`.`Activo` >= 1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxDatTesistas`
--
DROP TABLE IF EXISTS `vxDatTesistas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxDatTesistas`  AS  select `T`.`Id` AS `Id`,`T`.`Activo` AS `Activo`,`T`.`DNI` AS `DNI`,`T`.`Codigo` AS `Codigo`,`T`.`IdFacultad` AS `IdFacultad`,`F`.`Nombre` AS `Facultad`,`T`.`IdCarrera` AS `IdCarrera`,`C`.`Nombre` AS `Carrera`,`T`.`IdEspec` AS `IdEspec`,concat(`T`.`Apellidos`,', ',`T`.`Nombres`) AS `DatosPers`,`T`.`Apellidos` AS `Apellidos`,`T`.`Nombres` AS `Nombres`,`T`.`FechaReg` AS `FechaReg`,`T`.`SemReg` AS `SemReg`,`T`.`Direccion` AS `Direccion`,`T`.`NroCelular` AS `NroCelular`,`T`.`Correo` AS `Correo`,`T`.`Clave` AS `Clave` from ((`tblTesistas` `T` join `vriunap_absmain`.`dicCarreras` `C`) join `vriunap_absmain`.`dicFacultades` `F`) where ((`F`.`Id` = `T`.`IdFacultad`) and (`C`.`Id` = `T`.`IdCarrera`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxDocInLin`
--
DROP TABLE IF EXISTS `vxDocInLin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxDocInLin`  AS  select `L`.`IdDocente` AS `IdDocente`,`L`.`IdLinea` AS `IdLinea`,`L`.`Estado` AS `LinEstado`,`L`.`Tipo` AS `TipoLin`,`D`.`Tipo` AS `TipoDoc`,`D`.`CategAbrev` AS `CategAbrev`,`D`.`DatosPers` AS `DatosPers`,`D`.`Activo` AS `Activo`,`D`.`IdCarrera` AS `IdCarrera`,`D`.`IdCategoria` AS `IdCategoria` from (`docLineas` `L` join `vriunap_absmain`.`vwDocentes` `D`) where ((`L`.`IdDocente` = `D`.`Id`) and (`D`.`Activo` >= 1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxDocInLinEx`
--
DROP TABLE IF EXISTS `vxDocInLinEx`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxDocInLinEx`  AS  select `L`.`IdDocente` AS `IdDocente`,`L`.`IdLinea` AS `IdLinea`,(select `vriunap_absmain`.`tblLineas`.`Nombre` from `vriunap_absmain`.`tblLineas` where (`vriunap_absmain`.`tblLineas`.`Id` = `L`.`IdLinea`)) AS `Linea`,`L`.`Tipo` AS `TipoLin`,`D`.`Tipo` AS `TipoDoc`,`D`.`CategAbrev` AS `CategAbrev`,`D`.`DatosPers` AS `DatosPers`,`D`.`Activo` AS `Activo`,`D`.`IdCarrera` AS `IdCarrera`,`D`.`IdCategoria` AS `IdCategoria` from (`docLineas` `L` join `vriunap_absmain`.`vwDocentes` `D`) where ((`L`.`IdDocente` = `D`.`Id`) and (`D`.`Activo` >= 1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxLineas`
--
DROP TABLE IF EXISTS `vxLineas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxLineas`  AS  select `L`.`Id` AS `Id`,`L`.`Nombre` AS `Nombre`,count(0) AS `Repets`,(select count(0) from `docLineas` where (`docLineas`.`IdLinea` = `L`.`Id`)) AS `TotDoceRegs`,`L`.`IdArea` AS `IdArea`,`L`.`IdSubArea` AS `IdSubArea`,`L`.`IdDiscip` AS `IdDiscip`,`L`.`IdFacultad` AS `IdFacultad`,`L`.`IdCarrera` AS `IdCarrera` from `vriunap_absmain`.`tblLineas` `L` where (`L`.`Estado` = 1) group by `L`.`Nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxMemos`
--
DROP TABLE IF EXISTS `vxMemos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxMemos`  AS  select `M`.`Id` AS `Id`,`M`.`Tipo` AS `Tipo`,`M`.`Ordinal` AS `Ordinal`,`M`.`Anio` AS `Anio`,`M`.`IdTramite` AS `IdTramite`,`M`.`IdCarrera` AS `IdCarrera`,`M`.`Fecha` AS `Fecha`,`T`.`Codigo` AS `Codigo`,`T`.`Estado` AS `Estado` from (`tblMemos` `M` join `tesTramites` `T`) where (`T`.`Id` = `M`.`IdTramite`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxSustens`
--
DROP TABLE IF EXISTS `vxSustens`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxSustens`  AS  select `S`.`Id` AS `Id`,`S`.`Activo` AS `Activo`,`S`.`IdTramite` AS `IdTramite`,`S`.`Codigo` AS `Codigo`,if((now() > `S`.`Fecha`),0,1) AS `Pendiente`,`C`.`Id` AS `IdCarrera`,`C`.`IdFacultad` AS `IdFacultad`,`C`.`Nombre` AS `Carrera`,`S`.`Fecha` AS `Fecha`,`S`.`Lugar` AS `Lugar` from (`tesSustens` `S` join `vriunap_absmain`.`dicCarreras` `C`) where (`C`.`Id` = `S`.`IdCarrera`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxTesTramites`
--
DROP TABLE IF EXISTS `vxTesTramites`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxTesTramites`  AS  select `T`.`Id` AS `Id`,`T`.`Tipo` AS `Tipo`,`T`.`Codigo` AS `Codigo`,`T`.`Anio` AS `Anio`,`T`.`Orden` AS `Orden`,`T`.`IdCarrera` AS `IdCarrera`,`T`.`Estado` AS `Estado`,`T`.`IdTesista1` AS `IdTesista1`,`T`.`IdTesista2` AS `IdTesista2`,`T`.`IdLinea` AS `IdLinea`,`T`.`IdLinAlte` AS `IdLinAlte`,`T`.`IdJurado1` AS `IdJurado1`,`T`.`IdJurado2` AS `IdJurado2`,`T`.`IdJurado3` AS `IdJurado3`,`T`.`IdJurado4` AS `IdJurado4`,`T`.`FechRegProy` AS `FechRegProy`,`T`.`FechActBorr` AS `FechActBorr`,`T`.`_T_` AS `_T_`,`T`.`FechModif` AS `FechModif`,(select `tblTesistas`.`IdEspec` from `tblTesistas` where (`tblTesistas`.`Id` = `T`.`IdTesista1`) limit 1) AS `IdEspec` from `tesTramites` `T` where (`T`.`Estado` > 0) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxZumLoginDoc`
--
DROP TABLE IF EXISTS `vxZumLoginDoc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxZumLoginDoc`  AS  select `L`.`Id` AS `Id`,`L`.`Tipo` AS `Tipo`,`L`.`IdUser` AS `IdUser`,concat(`D`.`Apellidos`,' ',`D`.`Nombres`) AS `DatosPers`,`L`.`Fecha` AS `Fecha`,`L`.`Accion` AS `Accion`,`L`.`OS` AS `OS`,`L`.`Browser` AS `Browser`,`L`.`IP` AS `IP` from (`logLogins` `L` join `vriunap_absmain`.`tblDocentes` `D`) where ((`L`.`Tipo` = 'D') and (`D`.`Id` = `L`.`IdUser`)) order by `L`.`Id` desc ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxZumLoginDocEx`
--
DROP TABLE IF EXISTS `vxZumLoginDocEx`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxZumLoginDocEx`  AS  select `L`.`Tipo` AS `Tipo`,`L`.`IdUser` AS `IdUser`,`L`.`DatosPers` AS `DatosPers`,sum(if((`L`.`Accion` = 'Ingreso'),1,0)) AS `A1`,sum(if((`L`.`Accion` = 'Clave incorrecta'),1,0)) AS `A2`,count(0) AS `Total` from `vxZumLoginDoc` `L` group by `L`.`IdUser` order by count(0) desc ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxZumLoginTes`
--
DROP TABLE IF EXISTS `vxZumLoginTes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxZumLoginTes`  AS  select `L`.`Id` AS `Id`,`L`.`Tipo` AS `Tipo`,`L`.`IdUser` AS `IdUser`,concat(`T`.`Apellidos`,' ',`T`.`Nombres`) AS `DatosPers`,`L`.`Fecha` AS `Fecha`,`L`.`Accion` AS `Accion`,`L`.`OS` AS `OS`,`L`.`Browser` AS `Browser`,`L`.`IP` AS `IP` from (`logLogins` `L` join `tblTesistas` `T`) where ((`L`.`Tipo` = 'T') and (`T`.`Id` = `L`.`IdUser`)) order by `L`.`Id` desc ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dicAmpliaciones`
--
ALTER TABLE `dicAmpliaciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicEstadTram`
--
ALTER TABLE `dicEstadTram`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `docEstudios`
--
ALTER TABLE `docEstudios`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `docLineas`
--
ALTER TABLE `docLineas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `docParentesco`
--
ALTER TABLE `docParentesco`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `estTramBach`
--
ALTER TABLE `estTramBach`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `logCordinads`
--
ALTER TABLE `logCordinads`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `logCorreos`
--
ALTER TABLE `logCorreos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `logLogins`
--
ALTER TABLE `logLogins`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `logTramites`
--
ALTER TABLE `logTramites`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Repositorio`
--
ALTER TABLE `Repositorio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblCorrects`
--
ALTER TABLE `tblCorrects`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblManagers`
--
ALTER TABLE `tblManagers`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblMemos`
--
ALTER TABLE `tblMemos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblPreguntas`
--
ALTER TABLE `tblPreguntas`
  ADD PRIMARY KEY (`idpregunta`);

--
-- Indices de la tabla `tblSecres`
--
ALTER TABLE `tblSecres`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblTesistas`
--
ALTER TABLE `tblTesistas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesJuCambios`
--
ALTER TABLE `tesJuCambios`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesProyHabs`
--
ALTER TABLE `tesProyHabs`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesSustenAct`
--
ALTER TABLE `tesSustenAct`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesSustens`
--
ALTER TABLE `tesSustens`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesSustensSolic`
--
ALTER TABLE `tesSustensSolic`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesTramDoc`
--
ALTER TABLE `tesTramDoc`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesTramites`
--
ALTER TABLE `tesTramites`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesTramsBach`
--
ALTER TABLE `tesTramsBach`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesTramsDet`
--
ALTER TABLE `tesTramsDet`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dicAmpliaciones`
--
ALTER TABLE `dicAmpliaciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `docEstudios`
--
ALTER TABLE `docEstudios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `docLineas`
--
ALTER TABLE `docLineas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `docParentesco`
--
ALTER TABLE `docParentesco`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estTramBach`
--
ALTER TABLE `estTramBach`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `logCordinads`
--
ALTER TABLE `logCordinads`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT de la tabla `logCorreos`
--
ALTER TABLE `logCorreos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT de la tabla `logLogins`
--
ALTER TABLE `logLogins`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT de la tabla `logTramites`
--
ALTER TABLE `logTramites`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT de la tabla `Repositorio`
--
ALTER TABLE `Repositorio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblCorrects`
--
ALTER TABLE `tblCorrects`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `tblManagers`
--
ALTER TABLE `tblManagers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tblMemos`
--
ALTER TABLE `tblMemos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tblPreguntas`
--
ALTER TABLE `tblPreguntas`
  MODIFY `idpregunta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblSecres`
--
ALTER TABLE `tblSecres`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tblTesistas`
--
ALTER TABLE `tblTesistas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `tesJuCambios`
--
ALTER TABLE `tesJuCambios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tesProyHabs`
--
ALTER TABLE `tesProyHabs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tesSustenAct`
--
ALTER TABLE `tesSustenAct`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tesSustens`
--
ALTER TABLE `tesSustens`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tesSustensSolic`
--
ALTER TABLE `tesSustensSolic`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tesTramDoc`
--
ALTER TABLE `tesTramDoc`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `tesTramites`
--
ALTER TABLE `tesTramites`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `tesTramsBach`
--
ALTER TABLE `tesTramsBach`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tesTramsDet`
--
ALTER TABLE `tesTramsDet`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

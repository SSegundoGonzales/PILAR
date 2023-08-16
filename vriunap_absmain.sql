-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-08-2023 a las 12:03:37
-- Versión del servidor: 5.7.42-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vriunap_absmain`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicCarreras`
--

CREATE TABLE `dicCarreras` (
  `Id` int(11) NOT NULL,
  `IdFacultad` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Titulo` varchar(90) CHARACTER SET utf8 NOT NULL,
  `RutaArchivo` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicCarreras`
--

INSERT INTO `dicCarreras` (`Id`, `IdFacultad`, `Nombre`, `Titulo`, `RutaArchivo`) VALUES
(1, 1, 'Ingeniera Informática y Sistemas', 'Ingeniero Informático y Sistemas', NULL),
(2, 1, 'Ingeniería Civil', 'Ingeniero civil', NULL),
(3, 1, 'Ingeniería de Minas', 'Ingeniero de Minas', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicCategorias`
--

CREATE TABLE `dicCategorias` (
  `Id` int(11) NOT NULL,
  `Tipo` varchar(1) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Abrev` varchar(15) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicCategorias`
--

INSERT INTO `dicCategorias` (`Id`, `Tipo`, `Nombre`, `Abrev`) VALUES
(1, 'N', 'DOCENTE PRINCIPAL D.E.', 'PRINC.D.E'),
(2, 'N', 'DOCENTE PRINCIPAL T.C.', 'PRINC.T.C'),
(3, 'N', 'DOCENTE PRINCIPAL T.P.', 'PRINC.T.P'),
(4, 'N', 'DOCENTE ASOCIADO D.E.', 'ASOC.D.E.'),
(5, 'N', 'DOCENTE ASOCIADO T.C.', 'ASOC.T.C.'),
(6, 'N', 'DOCENTE ASOCIADO T.P.', 'ASOC.T.P.'),
(7, 'N', 'DOCENTE AUXILIAR D.E.', 'AUX.D.E.'),
(8, 'N', 'DOCENTE AUXILIAR T.C.', 'AUX.T.C.'),
(9, 'N', 'DOCENTE AUXILIAR T.P.', 'AUX.T.P.'),
(10, 'N', 'DOCENTE J.P.D.E.', 'J.P.D.E.'),
(11, 'N', 'DOCENTE J.P.T.C.', 'J.P.T.C.'),
(12, 'N', 'DOCENTE J.P.T.P.', 'J.P.T.P.'),
(13, 'C', 'CONTRATADO ASOCIADO T.C.', 'ASOC.T.C.'),
(14, 'C', 'CONTRATADO ASOCIADO T.P.', 'ASOC.T.P.'),
(15, 'C', 'CONTRATADO AUXILIAR T.C.', 'AUX.T.C.'),
(16, 'C', 'CONTRATADO AUXILIAR T.P.', 'AUX.T.P.'),
(17, 'C', 'CONTRATADO J.P.T.C.', 'J.P.T.C.'),
(18, 'C', 'CONTRATADO J.P.T.P.', 'J.P.T.P.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicDocIndex`
--

CREATE TABLE `dicDocIndex` (
  `Id` int(11) NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Dina` varchar(200) NOT NULL,
  `Regina` varchar(100) NOT NULL,
  `Orcid` varchar(100) NOT NULL,
  `Scopus` varchar(100) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicEspecialis`
--

CREATE TABLE `dicEspecialis` (
  `Id` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Cod` varchar(7) CHARACTER SET utf8 NOT NULL,
  `Nombre` varchar(75) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicEspecialis`
--

INSERT INTO `dicEspecialis` (`Id`, `IdCarrera`, `Cod`, `Nombre`) VALUES
(1, 1, '12', 'Ingenierìa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicEstadosDoc`
--

CREATE TABLE `dicEstadosDoc` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicEstadosDoc`
--

INSERT INTO `dicEstadosDoc` (`Id`, `Nombre`) VALUES
(0, 'Sin Contrato (Ingrese Justificación)'),
(1, 'CESE Docente (Ingrese Resolución)'),
(2, 'Sancionado (Ingrese Resolución)'),
(3, 'Licencia/Sabatico (Ingrese Resolución)'),
(4, 'Autoridad Universitaria (Ingrese Resoluc'),
(5, 'Dirección-Decanato(Resolución)'),
(6, 'Habilitado'),
(7, 'Colegio Porfesional (Ingrese Fecha)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicFacultades`
--

CREATE TABLE `dicFacultades` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Abrev` varchar(20) CHARACTER SET utf8 NOT NULL,
  `IdArea` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicFacultades`
--

INSERT INTO `dicFacultades` (`Id`, `Nombre`, `Abrev`, `IdArea`) VALUES
(1, 'Ingenieria', 'ING', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicSunedu`
--

CREATE TABLE `dicSunedu` (
  `Id` int(11) NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Fecha` varchar(14) NOT NULL,
  `Tipo` int(2) NOT NULL,
  `Grado` varchar(150) NOT NULL,
  `Proceden` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicSunedu`
--

INSERT INTO `dicSunedu` (`Id`, `IdDocente`, `DNI`, `Fecha`, `Tipo`, `Grado`, `Proceden`) VALUES
(1, 1, '29413634', '17/06/2002', 2, 'MAGISTER SCIENTIAE  TECNOLOGIA DE ALIMENTOS ', 'UNIVERSIDAD NACIONAL AGRARIA LA MOLINA\n* PERU'),
(2, 1, '29413634', '12/07/1996', 4, 'INGENIERO AGROINDUSTRIAL ', 'UNIVERSIDAD NACIONAL DEL ALTIPLANO\n* PERU'),
(3, 1, '29413634', '-', 2, 'GRADO DE MAESTRÍA EN HIGIENE DE ANIMALES Y ALIMENTOS <I>TIPO: RECONOCIMIENTO</I>', 'OBIHIRO UNIVERSITY OF AGRICULTURE AND VETERINARY MEDICINE\n* JAPÓN'),
(4, 109, '01319870', '', 2, 'GRADO ACADÉMICO DE MAGÍSTER EN PRODUCCIÓN ANIMAL', 'PONTIFICIA UNIVERSIDAD CATOLICA DE CHILE\r\n* PERU');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicSuneOgt`
--

CREATE TABLE `dicSuneOgt` (
  `Id` int(11) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `IdSune` int(11) NOT NULL,
  `Tipo` varchar(6) NOT NULL,
  `Grado` varchar(100) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Univ` varchar(100) NOT NULL,
  `Pais` varchar(20) NOT NULL,
  `FechObte` varchar(12) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicUbigeos`
--

CREATE TABLE `dicUbigeos` (
  `Id` int(11) NOT NULL,
  `Ubigeo` varchar(10) NOT NULL,
  `U1` varchar(2) NOT NULL,
  `U2` varchar(2) NOT NULL,
  `U3` varchar(2) NOT NULL,
  `Depa` varchar(75) NOT NULL,
  `Prov` varchar(75) NOT NULL,
  `Dist` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicUbigeos`
--

INSERT INTO `dicUbigeos` (`Id`, `Ubigeo`, `U1`, `U2`, `U3`, `Depa`, `Prov`, `Dist`) VALUES
(1, '200101', '20', '01', '01', 'PUNO', 'PUNO', 'PUNO'),
(2, '200102', '20', '01', '02', 'PUNO', 'PUNO', 'ACORA'),
(3, '200103', '20', '01', '03', 'PUNO', 'PUNO', 'ATUNCOLLA'),
(4, '200104', '20', '01', '04', 'PUNO', 'PUNO', 'CAPACHICA'),
(5, '200105', '20', '01', '05', 'PUNO', 'PUNO', 'COATA'),
(6, '200106', '20', '01', '06', 'PUNO', 'PUNO', 'CHUCUITO'),
(7, '200107', '20', '01', '07', 'PUNO', 'PUNO', 'HUATA'),
(8, '200108', '20', '01', '08', 'PUNO', 'PUNO', 'MAÑAZO'),
(9, '200109', '20', '01', '09', 'PUNO', 'PUNO', 'PAUCARCOLLA'),
(10, '200110', '20', '01', '10', 'PUNO', 'PUNO', 'PICHACANI'),
(11, '200111', '20', '01', '11', 'PUNO', 'PUNO', 'SAN ANTONIO'),
(12, '200112', '20', '01', '12', 'PUNO', 'PUNO', 'TIQUILLACA'),
(13, '200113', '20', '01', '13', 'PUNO', 'PUNO', 'VILQUE'),
(14, '200114', '20', '01', '14', 'PUNO', 'PUNO', 'PLATERIA'),
(15, '200115', '20', '01', '15', 'PUNO', 'PUNO', 'AMANTANI'),
(16, '200201', '20', '02', '01', 'PUNO', 'AZANGARO', 'AZANGARO'),
(17, '200202', '20', '02', '02', 'PUNO', 'AZANGARO', 'ACHAYA'),
(18, '200203', '20', '02', '03', 'PUNO', 'AZANGARO', 'ARAPA'),
(19, '200204', '20', '02', '04', 'PUNO', 'AZANGARO', 'ASILLO'),
(20, '200205', '20', '02', '05', 'PUNO', 'AZANGARO', 'CAMINACA'),
(21, '200206', '20', '02', '06', 'PUNO', 'AZANGARO', 'CHUPA'),
(22, '200207', '20', '02', '07', 'PUNO', 'AZANGARO', 'JOSE DOMINGO CHOQUEHUANCA'),
(23, '200208', '20', '02', '08', 'PUNO', 'AZANGARO', 'MUÑANI'),
(24, '200210', '20', '02', '10', 'PUNO', 'AZANGARO', 'POTONI'),
(25, '200212', '20', '02', '12', 'PUNO', 'AZANGARO', 'SAMAN'),
(26, '200213', '20', '02', '13', 'PUNO', 'AZANGARO', 'SAN ANTON'),
(27, '200214', '20', '02', '14', 'PUNO', 'AZANGARO', 'SAN JOSE'),
(28, '200215', '20', '02', '15', 'PUNO', 'AZANGARO', 'SAN JUAN DE SALINAS'),
(29, '200216', '20', '02', '16', 'PUNO', 'AZANGARO', 'SANTIAGO DE PUPUJA'),
(30, '200217', '20', '02', '17', 'PUNO', 'AZANGARO', 'TIRAPATA'),
(31, '200301', '20', '03', '01', 'PUNO', 'CARABAYA', 'MACUSANI'),
(32, '200302', '20', '03', '02', 'PUNO', 'CARABAYA', 'AJOYANI'),
(33, '200303', '20', '03', '03', 'PUNO', 'CARABAYA', 'AYAPATA'),
(34, '200304', '20', '03', '04', 'PUNO', 'CARABAYA', 'COASA'),
(35, '200305', '20', '03', '05', 'PUNO', 'CARABAYA', 'CORANI'),
(36, '200306', '20', '03', '06', 'PUNO', 'CARABAYA', 'CRUCERO'),
(37, '200307', '20', '03', '07', 'PUNO', 'CARABAYA', 'ITUATA'),
(38, '200308', '20', '03', '08', 'PUNO', 'CARABAYA', 'OLLACHEA'),
(39, '200309', '20', '03', '09', 'PUNO', 'CARABAYA', 'SAN GABAN'),
(40, '200310', '20', '03', '10', 'PUNO', 'CARABAYA', 'USICAYOS'),
(41, '200401', '20', '04', '01', 'PUNO', 'CHUCUITO', 'JULI'),
(42, '200402', '20', '04', '02', 'PUNO', 'CHUCUITO', 'DESAGUADERO'),
(43, '200403', '20', '04', '03', 'PUNO', 'CHUCUITO', 'HUACULLANI'),
(44, '200406', '20', '04', '06', 'PUNO', 'CHUCUITO', 'PISACOMA'),
(45, '200407', '20', '04', '07', 'PUNO', 'CHUCUITO', 'POMATA'),
(46, '200410', '20', '04', '10', 'PUNO', 'CHUCUITO', 'ZEPITA'),
(47, '200412', '20', '04', '12', 'PUNO', 'CHUCUITO', 'KELLUYO'),
(48, '200501', '20', '05', '01', 'PUNO', 'HUANCANE', 'HUANCANE'),
(49, '200502', '20', '05', '02', 'PUNO', 'HUANCANE', 'COJATA'),
(50, '200504', '20', '05', '04', 'PUNO', 'HUANCANE', 'INCHUPALLA'),
(51, '200506', '20', '05', '06', 'PUNO', 'HUANCANE', 'PUSI'),
(52, '200507', '20', '05', '07', 'PUNO', 'HUANCANE', 'ROSASPATA'),
(53, '200508', '20', '05', '08', 'PUNO', 'HUANCANE', 'TARACO'),
(54, '200509', '20', '05', '09', 'PUNO', 'HUANCANE', 'VILQUE CHICO'),
(55, '200511', '20', '05', '11', 'PUNO', 'HUANCANE', 'HUATASANI'),
(56, '200601', '20', '06', '01', 'PUNO', 'LAMPA', 'LAMPA'),
(57, '200602', '20', '06', '02', 'PUNO', 'LAMPA', 'CABANILLA'),
(58, '200603', '20', '06', '03', 'PUNO', 'LAMPA', 'CALAPUJA'),
(59, '200604', '20', '06', '04', 'PUNO', 'LAMPA', 'NICASIO'),
(60, '200605', '20', '06', '05', 'PUNO', 'LAMPA', 'OCUVIRI'),
(61, '200606', '20', '06', '06', 'PUNO', 'LAMPA', 'PALCA'),
(62, '200607', '20', '06', '07', 'PUNO', 'LAMPA', 'PARATIA'),
(63, '200608', '20', '06', '08', 'PUNO', 'LAMPA', 'PUCARA'),
(64, '200609', '20', '06', '09', 'PUNO', 'LAMPA', 'SANTA LUCIA'),
(65, '200610', '20', '06', '10', 'PUNO', 'LAMPA', 'VILAVILA'),
(66, '200701', '20', '07', '01', 'PUNO', 'MELGAR', 'AYAVIRI'),
(67, '200702', '20', '07', '02', 'PUNO', 'MELGAR', 'ANTAUTA'),
(68, '200703', '20', '07', '03', 'PUNO', 'MELGAR', 'CUPI'),
(69, '200704', '20', '07', '04', 'PUNO', 'MELGAR', 'LLALLI'),
(70, '200705', '20', '07', '05', 'PUNO', 'MELGAR', 'MACARI'),
(71, '200706', '20', '07', '06', 'PUNO', 'MELGAR', 'NUÑOA'),
(72, '200707', '20', '07', '07', 'PUNO', 'MELGAR', 'ORURILLO'),
(73, '200708', '20', '07', '08', 'PUNO', 'MELGAR', 'SANTA ROSA'),
(74, '200709', '20', '07', '09', 'PUNO', 'MELGAR', 'UMACHIRI'),
(75, '200801', '20', '08', '01', 'PUNO', 'SANDIA', 'SANDIA'),
(76, '200803', '20', '08', '03', 'PUNO', 'SANDIA', 'CUYOCUYO'),
(77, '200804', '20', '08', '04', 'PUNO', 'SANDIA', 'LIMBANI'),
(78, '200805', '20', '08', '05', 'PUNO', 'SANDIA', 'PHARA'),
(79, '200806', '20', '08', '06', 'PUNO', 'SANDIA', 'PATAMBUCO'),
(80, '200807', '20', '08', '07', 'PUNO', 'SANDIA', 'QUIACA'),
(81, '200808', '20', '08', '08', 'PUNO', 'SANDIA', 'SAN JUAN DEL ORO'),
(82, '200810', '20', '08', '10', 'PUNO', 'SANDIA', 'YANAHUAYA'),
(83, '200811', '20', '08', '11', 'PUNO', 'SANDIA', 'ALTO INAMBARI'),
(84, '200812', '20', '08', '12', 'PUNO', 'SANDIA', 'SAN PEDRO DE PUTINA PUNCO'),
(85, '200901', '20', '09', '01', 'PUNO', 'SAN ROMAN', 'JULIACA'),
(86, '200902', '20', '09', '02', 'PUNO', 'SAN ROMAN', 'CABANA'),
(87, '200903', '20', '09', '03', 'PUNO', 'SAN ROMAN', 'CABANILLAS'),
(88, '200904', '20', '09', '04', 'PUNO', 'SAN ROMAN', 'CARACOTO'),
(89, '201001', '20', '10', '01', 'PUNO', 'YUNGUYO', 'YUNGUYO'),
(90, '201002', '20', '10', '02', 'PUNO', 'YUNGUYO', 'UNICACHI'),
(91, '201003', '20', '10', '03', 'PUNO', 'YUNGUYO', 'ANAPIA'),
(92, '201004', '20', '10', '04', 'PUNO', 'YUNGUYO', 'COPANI'),
(93, '201005', '20', '10', '05', 'PUNO', 'YUNGUYO', 'CUTURAPI'),
(94, '201006', '20', '10', '06', 'PUNO', 'YUNGUYO', 'OLLARAYA'),
(95, '201007', '20', '10', '07', 'PUNO', 'YUNGUYO', 'TINICACHI'),
(96, '201101', '20', '11', '01', 'PUNO', 'SAN ANTONIO DE PUTINA', 'PUTINA'),
(97, '201102', '20', '11', '02', 'PUNO', 'SAN ANTONIO DE PUTINA', 'PEDRO VILCA APAZA'),
(98, '201103', '20', '11', '03', 'PUNO', 'SAN ANTONIO DE PUTINA', 'QUILCAPUNCU'),
(99, '201104', '20', '11', '04', 'PUNO', 'SAN ANTONIO DE PUTINA', 'ANANEA'),
(100, '201105', '20', '11', '05', 'PUNO', 'SAN ANTONIO DE PUTINA', 'SINA'),
(101, '201201', '20', '12', '01', 'PUNO', 'EL COLLAO', 'ILAVE'),
(102, '201202', '20', '12', '02', 'PUNO', 'EL COLLAO', 'PILCUYO'),
(103, '201203', '20', '12', '03', 'PUNO', 'EL COLLAO', 'SANTA ROSA'),
(104, '201204', '20', '12', '04', 'PUNO', 'EL COLLAO', 'CAPASO'),
(105, '201205', '20', '12', '05', 'PUNO', 'EL COLLAO', 'CONDURIRI'),
(106, '201301', '20', '13', '01', 'PUNO', 'MOHO', 'MOHO'),
(107, '201302', '20', '13', '02', 'PUNO', 'MOHO', 'CONIMA'),
(108, '201303', '20', '13', '03', 'PUNO', 'MOHO', 'TILALI'),
(109, '201304', '20', '13', '04', 'PUNO', 'MOHO', 'HUAYRAPATA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicUniversidades`
--

CREATE TABLE `dicUniversidades` (
  `Id` int(11) NOT NULL,
  `CRI` varchar(20) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `Gestion` varchar(20) NOT NULL,
  `Situacion` varchar(30) NOT NULL,
  `Región` varchar(30) NOT NULL,
  `Direccion` varchar(70) NOT NULL,
  `Telefono` varchar(25) NOT NULL,
  `Web` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicUniversidades`
--

INSERT INTO `dicUniversidades` (`Id`, `CRI`, `Nombre`, `Gestion`, `Situacion`, `Región`, `Direccion`, `Telefono`, `Web`) VALUES
(1, 'LIMA', 'UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS', 'Pública', 'Institucionalizada', 'Lima', 'Av. Venezuela s/n, cdra. 34. Lima', '01?6197000', 'www.unmsm.edu.pe'),
(2, '', 'UNIVERSIDAD NACIONAL DE INGENIERÍA', 'Pública', 'Institucionalizada', 'Lima', 'Av. Túpac Amaru N° 210, Rímac. Lima', '01?4811035 / 01?3813825', 'www.uni.edu.pe'),
(3, '', 'UNIVERSIDAD NACIONAL AGRARIA LA MOLINA', 'Pública', 'Institucionalizada', 'Lima', 'Av. La Molina s/n, La Molina. Lima', '01?6147111 / 01?3495648', 'www.lamolina.edu.pe'),
(4, '', 'UNIVERSIDAD NACIONAL FEDERICO VILLARREAL', 'Pública', 'Institucionalizada', 'Lima', 'Calle Carlos Gonzales N° 285, San Miguel. Lima', '748?0888', 'www.unfv.edu.pe'),
(5, '', 'UNIVERSIDAD NACIONAL DEL CALLAO', 'Pública', 'Institucionalizada', 'Lima', 'Av. Sáenz Peña N° 1060. Callao', '01?4296607', 'www.unac.edu.pe'),
(6, '', 'UNIVERSIDAD NACIONAL DE EDUCACIÓN ENRIQUE GUZMÁN Y VALLE', 'Pública', 'Institucionalizada', 'Lima', 'Av. Enrique Guzmán y Valle s/n, La Cantuta, Chosica. Lima', '01?3133700', 'www.une.edu.pe'),
(7, '', 'UNIVERSIDAD NACIONAL JOSÉ FAUSTINO SÁNCHEZ CARRIÓN', 'Pública', 'Institucionalizada', 'Lima', 'Av. Mercedes Indacochea s/n. Huacho', '01?232 6097 / 01?2322918', 'www.unjfsc.edu.pe'),
(8, '', 'PONTIFICIA UNIVERSIDAD CATÓLICA DEL PERÚ', 'Privada', 'Institucionalizada', 'Lima', 'Av. Universitaria N° 1801, San Miguel. Lima', '01?6262000', 'www.pucp.edu.pe'),
(9, '', 'UNIVERSIDAD PERUANA CAYETANO HEREDIA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Honorio Delgado N° 430, Urb. Ingeniería, San Martín de Porres. Lim', '01?4824045 / 01?4821130', 'www.upch.edu.pe'),
(10, '', 'UNIVERSIDAD DEL PACÍFICO', 'Privada', 'Institucionalizada', 'Lima', 'Av. Salaverry N° 2020, Jesús María. Lima', '01?2190100', 'www.up.edu.pe'),
(11, '', 'UNIVERSIDAD DE LIMA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Javier Prado Este s/n, cdra. 46, Monterrico, Surco. Lima', '01?4351689 / 01?4376767', 'www.ulima.edu.pe'),
(12, '', 'UNIVERSIDAD DE SAN MARTÍN DE PORRES', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Calandrias N° 151/291, Santa Anita. Lima', '01?4780498 / 01?3620064', 'www.usmp.edu.pe'),
(13, '', 'UNIVERSIDAD FEMENINA DEL SAGRADO CORAZÓN', 'Privada', 'Institucionalizada', 'LIma', 'Av. Los Frutales N° 954, Urb. Santa Magdalena Sofía, La Molina. Lima', '01?4341885 / 01?4364641', 'www.unife.edu.pe'),
(14, '', 'UNIVERSIDAD INCA GARCILASO DE LA VEGA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Arequipa N° 1841, Lince. Lima', '01?4724916 / 01?4711421', 'www.uigv.edu.pe'),
(15, '', 'UNIVERSIDAD RICARDO PALMA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Benavides N° 5440, Urb. Las Gardenias, Surco. Lima', '01?7080000 / 01?7080309', 'www.urp.edu.pe'),
(16, '', 'UNIVERSIDAD PERUANA UNIÓN', 'Privada', 'Institucionalizada', 'Lima', 'Carretera Central km 19, Ñaña. Lima', '01?6186300', 'www.upeu.edu.pe'),
(17, '', 'UNIVERSIDAD MARCELINO CHAMPAGNAT', 'Privada', 'Institucionalizada', 'Lima', 'Av. Mariscal Castilla N° 1270, Surco. Lima', '01?4490449', 'www.umch.edu.pe'),
(18, '', 'UNIVERSIDAD PERUANA DE CIENCIAS APLICADAS', 'Privada', 'Institucionalizada', 'Lima', 'Av. Prolongación Primavera N° 2390, Monterrico, Surco. Lima', '01?3133333', 'www.upc.edu.pe'),
(19, '', 'UNIVERSIDAD SAN IGNACIO DE LOYOLA', 'Privada', 'Institucionalizada', 'Lima', 'Av. La Fontana N° 550, La Molina. Lima', '01?3171000', 'www.usil.edu.pe'),
(20, '', 'UNIVERSIDAD ALAS PERUANAS', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Cayetano Heredia N° 1138, Jesús María. Lima', '01?2652992 / 01?2660195', 'www.uap.edu.pe'),
(21, '', 'UNIVERSIDAD NORBERT WIENER', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Larrabure y Unanue N° 110 Urb, Santa Beatriz, Lince. Lima', '01?7065100', 'www.uwiener.edu.pe'),
(22, '', 'ASOCIACIÓN UNIVERSIDAD PRIVADA SAN JUAN BAUTISTA', 'Privada', 'Institucionalizada', 'Lima', 'Av. José Antonio Lavalle s/n, ex Hacienda Villa, Chorrillos. Lima', '01?2142505 / 01?2142500', 'www.upsjb.edu.pe'),
(23, '', 'UNIVERSIDAD TECNOLÓGICA DEL PERÚ', 'Privada', 'Institucionalizada', 'Lima', 'Av. Petit Thouars cruce con Av. 28 de Julio. Lima', '01?3159614 / 01?3159600', 'www.utp.edu.pe'),
(24, '', 'UNIVERSIDAD CATÓLICA SEDES SAPIENTIAE', 'Privada', 'Institucionalizada', 'Lima', 'Esq. Constelaciones y Sol de Oro s/n, Urbanización Sol de Oro, Los Oli', '01?5330008', 'www.ucss.edu.pe'),
(25, '', 'UNIVERSIDAD CIENTÍFICA DEL SUR', 'Privada', 'Institucionalizada', 'Lima', 'Calle Cantuarias N° 385, Miraflores. Lima', '01?6106400', 'www.ucsur.edu.pe'),
(26, '', 'UNIVERSIDAD PERUANA DE CIENCIA E INFORMÁTICA', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Talara N° 752, Jesús María. Lima', '330?7087', 'www.upci.edu.pe'),
(27, '', 'UNIVERSIDAD ANTONIO RUIZ DE MONTOYA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Paso de los Andes 970, Pueblo Libre. Lima', '01?7195990', 'www.uarm.edu.pe'),
(28, '', 'UNIVERSIDAD ESAN', 'Privada', 'Institucionalizada', 'Lima', 'Alonso de Molina N° 1652, Monterrico Chico, Surco. Lima', '01?3177200', 'www.esan.edu.pe'),
(29, '', 'UNIVERSIDAD LAS AMÉRICAS', 'Privada', 'Institucionalizada', 'Lima', 'Av. Garcilaso de la Vega N° 1880. Lima', '01?4171415 / 01?4171422', 'www.ulasamericas.edu.pe'),
(30, '', 'UNIVERSIDAD PRIVADA TELESUP', 'Privada', 'Institucionalizada', 'Lima', 'Av. 28 de Julio N° 1056. Lima', '01?4331510', 'www.utelesup.com'),
(31, '', 'FACULTAD DE TEOLOGÍA PONTIFICIA Y CIVIL DE LIMA', 'Privada', 'Institucionalizada', 'Lima', 'Jirón Carlos Bondy N° 700, Pueblo Libre. Lima', '01?4610013', 'www.ftpcl.edu.pe'),
(32, '', 'UNIVERSIDAD NACIONAL TECNOLÓGICA DEL CONO SUR DE LIMA', 'Pública', 'A. Func. Provisional', 'Lima', 'Campus Universitario. Av. Bolivar s/n, Sector N° 3, Grupo N° 1 ,Mz. “A', '01?719 5693 / 01?7195694', 'www.untecs.edu.pe'),
(33, '', 'UNIVERSIDAD NACIONAL DE CAÑETE', 'Pública', 'A. Func. Provisional', 'Lima', 'Jr. Mariscal Castilla N° 162, Urb. Las Casuarinas, Distrito de San Vic', '01?3399373', 'www.undc.edu.pe'),
(34, '', 'UNIVERSIDAD NACIONAL DE BARRANCA', 'Pública', 'A. Func. Provisional', 'Lima', 'Av. Toribio de Luzuriaga, cdra. 3 s/n, Urb. La Florida. Barranca', '01?2355815', 'www.unab.edu.pe'),
(35, '', 'UNIVERSIDAD PRIVADA SERGIO BERNALES', 'Privada', 'A. Func. Provisional', 'Lima', 'Urb. Los Libertadores s/n, San Vicente de Cañete. Cañete', '01?5811374 / 01?5811438', 'www.upsb.edu.pe'),
(36, '', 'UNIVERSIDAD PERUANA SIMÓN BOLÍVAR', 'Privada', 'A. Func. Provisional', 'Lima', 'Calle Colombia N° 137, Pueblo Libre. Lima', '01?4230188 / 01?4232068', 'www.usb.edu.pe'),
(37, '', 'UNIVERSIDAD DE CIENCIAS Y HUMANIDADES', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Universitaria N° 5175, Urb. Molitalia, Los Olivos. Lima', '01?5280948', 'www.uch.edu.pe'),
(38, '', 'UNIVERSIDAD PERUANA DE INTEGRACIÓN GLOBAL', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Circunvalación N° 653, Monterrico, Surco. Lima', '01?2750500', 'www.upig.edu.pe'),
(39, '', 'UNIVERSIDAD AUTÓNOMA DEL PERÚ', 'Privada', 'A. Func. Provisional', 'LIma', 'Panamericana Sur km 16.3, Villa El Salvador. Lima', '01?7153335', 'www.autonoma.edu.pe'),
(40, '', 'UNIVERSIDAD PRIVADA ARZOBISPO LOAYZA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Arequipa N°979, Sta. Beatriz, Lince. Lima', '01?4338746', 'www.ual.edu.pe'),
(41, '', 'UNIVERSIDAD LE CORDON BLEU', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Vasco Núñez de Balboa N° 530, Miraflores. Lima', '01?6178300', 'www.cordonbleuperu.edu.pe'),
(42, '', 'UNIVERSIDAD JAIME BAUSATE Y MEZA', 'Privada', 'A. Func. Provisional', 'Lima', 'Jr. Río de Janeiro N° 600, Jesús María. Lima', '01?3193500', 'www.bausate.edu.pe'),
(43, '', 'UNIVERSIDAD DE CIENCIAS Y ARTES DE AMÉRICA LATINA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Primavera N° 970, Urb. Chacarilla, Surco. Lima', '01?6222222', 'www.ucal.edu.pe'),
(44, '', 'UNIVERSIDAD PERUANA DE ARTE ORVAL', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Primavera N° 207, Urb. Chacarilla del Estanque, San Borja. Lima', '01?7192318', 'www.orval.edu.pe'),
(45, '', 'UNIVERSIDAD PERUANA DE INVESTIGACIÓN Y NEGOCIOS', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Salaverry N° 1810, Jesus María. Lima', '01?2655351 / 01?2654826', 'www.upein.edu.pe'),
(46, '', 'UNIVERSIDAD SAN ANDRÉS', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Industrial N° 3701, San Martín de Porres. Lima', '01?5224702 / 01?5216505', 'www.usan.edu.pe'),
(47, '', 'UNIVERSIDAD INTERAMERICANA PARA EL DESARROLLO', 'Privada', 'A. Func. Provisional', 'LIma', 'Av. Bolivia N°624, Breña. Lima', '01?4285274 / 01?7197799', 'www.unid.edu.pe'),
(48, '', 'UNIVERSIDAD JUAN PABLO II', 'Privada', 'A. Func. Provisional', 'Lima', 'Calle Domingo Martínez N° 1255, Surquillo. Lima', '01?4456555 / 01?4456111', 'www.ujpii.edu.pe'),
(49, '', 'UNIVERSIDAD DE INGENIERÍA Y TECNOLOGÍA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Prolongación San Martín N° 207, Barranco. Lima', '01?3731000', 'www.utec.edu.pe'),
(50, '', 'UNIVERSIDAD MARÍA AUXILIADORA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Canto Bello N° 431, San Juan de Lurigancho. Lima', '01?3891212', 'www.umaperu.edu.pe'),
(51, '', 'UNIVERSIDAD SANTO DOMINGO DE GUZMÁN', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Miguel Grau, Mz. CD, Lote 4?7, Jicamarca, San Juan de Lurigancho. ', '01?7374587', 'No registra'),
(52, '', 'UNIVERSIDAD MARÍTIMA DEL PERÚ', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Sáenz Peña N°111. Callao', '01?4296697', 'www.ump.edu.pe'),
(53, '', 'UNIVERSIDAD PRIVADA SISE', 'Privada', 'A. Func. Provisional', 'Lima', 'Calle Cantuarias N° 385, Miraflores. Lima', '01?6347474', 'www.universidadsise.edu.pe'),
(54, '', 'UNIVERSIDAD PRIVADA PERUANO ALEMANA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Uruguay N° 514. Lima', '01?4115888', 'www.ipal.edu.pe'),
(55, 'NORTE', 'UNIVERSIDAD NACIONAL SANTIAGO ANTÚNEZ DE MAYOLO', 'Pública', 'Institucionalizada', 'Áncash', 'Av. Centenario N° 200, Independencia. Huaraz', '043?421393 / 043?421452', 'www.unasam.edu.pe'),
(56, '', 'UNIVERSIDAD NACIONAL DEL SANTA', 'Pública', 'Institucionalizada', 'Áncash', 'Av. Pacífico N° 508, Buenos Aires, Nuevo Chimbote', '043?310445', 'www.uns.edu.pe'),
(57, '', 'UNIVERSIDAD CATÓLICA LOS ÁNGELES DE CHIMBOTE', 'Privada', 'Institucionalizada', 'Áncash', 'Francisco Bolognesi N° 835. Chimbote', '043?343444', 'www.uladech.edu.pe'),
(58, '', 'UNIVERSIDAD SAN PEDRO', 'Privada', 'Institucionalizada', 'Áncash', 'Laderas del Norte Mz. “H” lote 11. Chimbote', '043?341078 / 043?345899', 'www.usanpedro.edu.pe'),
(59, '', 'UNIVERSIDAD NACIONAL DE CAJAMARCA', 'Pública', 'Institucionalizada', 'Cajamarca', 'Av. Atahualpa N° 1005, Carretera Baños del Inca. Cajamarca', '076?362796 / 076?362559', 'www.unc.edu.pe'),
(60, '', 'UNIVERSIDAD PRIVADA ANTONIO GUILLERMO URRELO', 'Privada', 'Institucionalizada', 'Cajamarca', 'Jirón José Sabogal N° 913. Cajamarca', '01?076365819', 'www.upagu.edu.pe'),
(61, '', 'UNIVERSIDAD NACIONAL DE JAÉN', 'Pública', 'A. Func. Provisional', 'Cajamarca', 'Calle Mariscal Castilla N° 115. Jaén', '076?432429', 'www.unj.edu.pe'),
(62, '', 'UNIVERSIDAD NACIONAL AUTÓNOMA DE CHOTA', 'Pública', 'A. Func. Provisional', 'Cajamarca', 'Jr. Gregorio Malca N° 875. Chota', '076?351144', 'www.unach.edu.pe'),
(63, '', 'UNIVERSIDAD NACIONAL DE TRUJILLO', 'Pública', 'Institucionalizada', 'La Libertad', 'Diego de Almagro N° 344. Trujillo', '044?205513 / 044?232528', 'www.unitru.edu.pe'),
(64, '', 'UNIVERSIDAD PRIVADA ANTENOR ORREGO', 'Privada', 'Institucionalizada', 'La Libertad', 'Av. América del Sur N° 3145, Urb. Monserrate. Trujillo', '044?604444', 'www.upao.edu.pe'),
(65, '', 'UNIVERSIDAD CÉSAR VALLEJO', 'Privada', 'Institucionalizada', 'La Libertad', 'Av. Larco cdra. 17. Trujillo', '044?485000', 'www.ucv.edu.pe'),
(66, '', 'UNIVERSIDAD PRIVADA DEL NORTE', 'Privada', 'Institucionalizada', 'La Libertad', 'Av. El Ejército N° 920. Trujillo', '044?606222', 'www.upnorte.edu.pe'),
(67, '', 'UNIVERSIDAD CATÓLICA DE TRUJILLO BENEDICTO XVI', 'Privada', 'Institucionalizada', 'La Libertad', 'Carretera Panamericana Norte km 555, Moche. Trujillo', '044?607430', 'www.uct.edu.pe'),
(68, '', 'UNIVERSIDAD PRIVADA DE TRUJILLO', 'Privada', 'A. Func. Provisional', 'La Libertad', 'Carretera Industrial km 4, Semi Rústica El Bosque. Trujillo', '044?211557', 'www.uptrujillo.edu.pe'),
(69, '', 'UNIVERSIDAD PRIVADA LEONARDO DA VINCI', 'Privada', 'A. Func. Provisional', 'La Libertad', 'Av. España N° 2715, Urb. El Recreo. Trujillo', '044-260026 / 044-230003', 'www.upd.edu.pe'),
(70, '', 'UNIVERSIDAD NACIONAL PEDRO RUIZ GALLO', 'Pública', 'Institucionalizada', 'Lambayeque', 'Ciudad Universitaria Juan XXIII N° 391. Lambayeque', '074?283146', 'www.unprg.edu.pe'),
(71, '', 'UNIVERSIDAD PARTICULAR DE CHICLAYO', 'Privada', 'Institucionalizada', 'Lambayeque', 'Av. Salaverry N° 232?B. Chiclayo', '074?265370 / 074?265889', 'www.udch.edu.pe'),
(72, '', 'UNIVERSIDAD CATÓLICA SANTO TORIBIO DE MOGROVEJO', 'Privada', 'Institucionalizada', 'Lambayeque', 'Av. Panamericana Norte N° 855. Chiclayo', '074?606200', 'www.usat.edu.pe'),
(73, '', 'UNIVERSIDAD SEÑOR DE SIPÁN', 'Privada', 'Institucionalizada', 'Lambayeque', 'Campus Universitario, km 5, Carretera Pimentel. Lambayeque', '074?203861 / 074?481610', 'www.uss.edu.pe'),
(74, '', 'UNIVERSIDAD PRIVADA JUAN MEJÍA BACA', 'Privada', 'A. Func. Provisional', 'Lambayeque', 'Av. Quiñones N° 640, Urb. San Martín. Chiclayo', '074?225763', 'www.umb.edu.pe'),
(75, '', 'UNIVERSIDAD DE LAMBAYEQUE', 'Privada', 'A. Func. Provisional', 'Lambayeque', 'Calle Tacna N° 065. Chiclayo', '074?208836', 'www.udl.edu.pe'),
(76, '', 'UNIVERSIDAD NACIONAL DE PIURA', 'Pública', 'Institucionalizada', 'Piura', 'Campus Universitario, Urb. Miraflores s/n. Piura', '073?343349', 'www.unp.edu.pe'),
(77, '', 'UNIVERSIDAD DE PIURA', 'Privada', 'Institucionalizada', 'Piura', 'Av. Ramón Mugica N° 131, Urb. San Eduardo. Piura', '073?284515 / 073?284500', 'www.udep.edu.pe'),
(78, '', 'UNIVERSIDAD NACIONAL DE FRONTERA', 'Pública', 'A. Func. Provisional', 'Piura', 'Urb. Villa Perúl Canadá s/n Campus, Sullana. Piura', '073?631206', 'www.unfs.edu.pe'),
(79, '', 'UNIVERSIDAD NACIONAL DE TUMBES', 'Pública', 'Institucionalizada', 'Tumbes', 'Av. Universitaria s/n, C. U., Pampa Grande. Tumbes', '072?786189', 'www.untumbes.edu.pe'),
(80, 'SUR', 'UNIVERSIDAD NACIONAL MICAELA BASTIDAS DE APURÍMAC', 'Pública', 'Institucionalizada', 'Apurímac', 'Av. Arenas N° 121. Abancay', '083?322577', 'www.unamba.edu.pe'),
(81, '', 'UNIVERSIDAD TECNOLÓGICA DE LOS ANDES', 'Privada', 'Institucionalizada', 'Apurímac', 'Av. Perú N° 700. Abancay', '083?321559 / 083?321559', 'www.utea.edu.pe'),
(82, '', 'UNIVERSIDAD NACIONAL JOSÉ MARÍA ARGUEDAS', 'Pública', 'A. Func. Provisional', 'Apurímac', 'Jr. Constitución N° 409, 3er piso, Plaza de Armas. Andahuaylas', '083?422176', 'www.unajma.edu.pe'),
(83, '', 'UNIVERSIDAD NACIONAL DE SAN AGUSTÍN', 'Pública', 'Institucionalizada', 'Arequipa', 'Calle Santa Catalina N° 117. Arequipa', '054?237808', 'www.unsa.edu.pe'),
(84, '', 'UNIVERSIDAD CATÓLICA DE SANTA MARÍA', 'Privada', 'Institucionalizada', 'Arequipa', 'Samuel Velarde N° 320, Umacollo. Arequipa', '054?251112 / 054?251210', 'www.ucsm.edu.pe'),
(85, '', 'UNIVERSIDAD CATÓLICA SAN PABLO', 'Privada', 'Institucionalizada', 'Arequipa', 'Campus Campiña Paisajista s/n, Quinta Vivanco, San Lázaro. Arequipa', '054?605630', 'www.ucsp.edu.pe'),
(86, '', 'UNIVERSIDAD CIENCIAS DE LA SALUD', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Calle San Camilo N° 510, Cercado. Arequipa', '054?232086', 'www.ucs.edu.pe'),
(87, '', 'UNIVERSIDAD AUTÓNOMA SAN FRANCISCO', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Calle Consuelo N° 313 Cercado. Arequipa', '054?225918 / 054?226901', 'www.uasf.edu.pe'),
(88, '', 'UNIVERSIDAD LA SALLE', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Av. Alfonso Ugarte s/n, Cercado. Arequipa', '054?607555 / 054?627554', 'www.ulasalle.edu.pe'),
(89, '', 'UNIVERSIDAD PRIVADA AUTÓNOMA DEL SUR', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Sebastián Barranca N° 208, Urb. Sta. Isabel Cercado. Arequipa', '054?226115', 'www.upads.edu.pe'),
(90, '', 'UNIVERSIDAD NACIONAL DE SAN CRISTÓBAL DE HUAMANGA', 'Pública', 'Institucionalizada', 'Ayacucho', 'Portal Independencia N° 57. Ayacuhco', '066?313434 / 066?312230', 'www.unsch.edu.pe'),
(91, '', 'UNIVERSIDAD DE AYACUCHO FEDERICO FROEBEL', 'Privada', 'A. Func. Provisional', 'Ayacucho', 'Av. Miguel Mariscal Llerena y Av. 26 de Enero. Ayacucho', '064?219604', 'www.udaff.edu.pe'),
(92, '', 'UNIVERSIDAD NACIONAL DE SAN ANTONIO ABAD DEL CUSCO', 'Pública', 'Institucionalizada', 'Cusco', 'Calle Tigre N° 127. Cusco', '084?238156 / 084?224181', 'www.unsaac.edu.pe'),
(93, '', 'UNIVERSIDAD ANDINA DEL CUSCO', 'Privada', 'Institucionalizada', 'Cusco', 'Urb. Ingeniería A?5, Larapa Grande, Distrito de San Gerónimo. Cusco', '084?273885 / 084?270874', 'www.uandina.edu.pe'),
(94, '', 'UNIVERSIDAD PERUANA AUSTRAL DEL CUSCO', 'Privada', 'A. Func. Provisional', 'Cusco', 'Av. La Cultura N° 1907, Magisterio I Etapa. Cusco', '074?208836', 'www.uaustral.edu.pe'),
(95, '', 'UNIVERSIDAD PRIVADA LÍDER PERUANA', 'Privada', 'A. Func. Provisional', 'Cusco', 'Jirón Quillabamba N° 110, Santa Ana, La Convención, Quillabamba. Cusco', '084?281326', 'www.universidadliderperuana.com'),
(96, '', 'UNIVERSIDAD GLOBAL DEL CUSCO', 'Privada', 'A. Func. Provisional', 'Cusco', 'Av. Manantiales N° 164. Cusco', '084?240905', 'www.uglobalcusco.edu.pe'),
(97, '', 'UNIVERSIDAD JOSÉ CARLOS MARIÁTEGUI', 'Privada', 'Institucionalizada', 'Moquegua', 'Calle Ayacucho N° 393, Cercado. Moquegua', '053?461535 / 053?461110', 'www.ujcm.edu.pe'),
(98, '', 'UNIVERSIDAD NACIONAL DE MOQUEGUA', 'Pública', 'A. Func. Provisional', 'Moquegua', 'Prolongación Calle Áncash s/n. Moquegua', '053?463559', 'www.unam.edu.pe'),
(99, '', 'UNIVERSIDAD NACIONAL DEL ALTIPLANO', 'Pública', 'Institucionalizada', 'Puno', 'Av. El Ejército N° 329. Puno', '051?352206 / 051?368590', 'www.unap.edu.pe'),
(100, '', 'UNIVERSIDAD ANDINA NÉSTOR CÁCERES VELÁSQUEZ', 'Privada', 'Institucionalizada', 'Puno', 'Ed. El Campín 3er piso, Pasaje de la Cultura, Plaza de Armas. Juliaca', '051?321142 / 051?322213', 'www.uancv.edu.pe'),
(101, '', 'UNIVERSIDAD NACIONAL DE JULIACA', 'Pública', 'A. Func. Provisional', 'Puno', 'Av. Nueva Zelandia s/n, Urb. La Capilla. Juliaca', '051?323200 / 051?328722', 'www.unaj.edu.pe'),
(102, '', 'UNIVERSIDAD PRIVADA SAN CARLOS', 'Privada', 'A. Func. Provisional', 'Puno', 'Jr. Conde de Lemos N° 128. Puno', '051?352884', 'www.upsc.edu.pe'),
(103, '', 'UNIVERSIDAD NACIONAL JORGE BASADRE GROHMANN', 'Pública', 'Institucionalizada', 'Tacna', 'Ciudad Universitaria, Av. Miraflores s/n. Tacna', '052?583000', 'www.unjbg.edu.pe'),
(104, '', 'UNIVERSIDAD PRIVADA DE TACNA', 'Privada', 'Institucionalizada', 'Tacna', 'Av. Bolognesi N° 1177. Tacna', '052?427212', 'www.upt.edu.pe'),
(105, '', 'UNIVERSIDAD LATINOAMERICANA CIMA', 'Privada', 'A. Func. Provisional', 'Tacna', 'Av. Gregorio Albarracín N° 500. Tacna', '052?412257', 'www.ulc.edu.pe'),
(106, 'CENTRO', 'UNIVERSIDAD NACIONAL DE HUANCAVELICA', 'Pública', 'Institucionalizada', 'Huancavelica', 'Ciudad Universitaria de Paturpampa. Huancavelica', '067?451551 / 943072222/', 'www.unh.edu.pe'),
(107, '', 'UNIVERSIDAD PARA EL DESARROLLO ANDINO', 'Privada', 'A. Func. Provisional', 'Huancavelica', 'Av. Ricardo Fernández N° 103, Pueblo Nuevo, Lircay. Huancavelica', '067?458193', 'www.udea.edu.pe'),
(108, '', 'UNIVERSIDAD NACIONAL HERMILIO VALDIZÁN', 'Pública', 'Institucionalizada', 'Huánuco', 'Av. Universitaria N° 601, Cayhuayna. Huánuco', '062?591064 / 062?591060', 'www.unheval.edu.pe'),
(109, '', 'UNIVERSIDAD DE HUÁNUCO', 'Privada', 'Institucionalizada', 'Huánuco', 'Jirón Hermilio Valdizán N° 871. Huánuco', '062?513154 / 062?519173', 'www.udh.edu.pe'),
(110, '', 'UNIVERSIDAD NACIONAL SAN LUIS GONZAGA DE ICA', 'Pública', 'Institucionalizada', 'Ica', 'Prolongación Ayabaca cdra. 9, Urb. San José. Ica', '056?228406', 'www.unica.edu.pe'),
(111, '', 'UNIVERSIDAD PRIVADA DE ICA', 'Privada', 'A. Func. Provisional', 'Ica', 'Av. Túpac Amaru N° 336. Ica', '056?218369', 'www.upica.edu.pe'),
(112, '', 'UNIVERSIDAD PRIVADA ADA A. BYRON', 'Privada', 'A. Func. Provisional', 'Ica', 'Av. Abelardo Alva Maúrtua N° 489, Chincha Alta. Chincha', '056?262439', 'www.upab.edu.pe'),
(113, '', 'UNIVERSIDAD NACIONAL DEL CENTRO DEL PERÚ', 'Pública', 'Institucionalizada', 'Junín', 'Av. Mariscal Ramón Castilla km 5, N° 3809, El Tambo. Huancayo', '064?481078 / 064?481076', 'www.uncp.edu.pe'),
(114, '', 'UNIVERSIDAD PERUANA LOS ANDES', 'Privada', 'Institucionalizada', 'Junín', 'Av. Giraldes N° 230. Huancayo', '064?224479 / 064?217373', 'www.upla.edu.pe'),
(115, '', 'UNIVERSIDAD CONTINENTAL', 'Privada', 'Institucionalizada', 'Junín', 'Av. San Carlos N° 1980. Huancayo', '064?481430', 'www.continental.edu.pe'),
(116, '', 'UNIVERSIDAD PERUANA DEL CENTRO', 'Privada', 'A. Func. Provisional', 'Junín', 'Jirón Moquegua N° 474. Huancayo', '064?202005', 'www.upecen.edu.pe'),
(117, '', 'UNIVERSIDAD PRIVADA DE HUANCAYO FRANKLIN ROOSEVELT', 'Privada', 'A. Func. Provisional', 'Junín', 'Av. Giráldez N° 542. Huancayo', '064?219604', 'www.ufr.edu.pe'),
(118, '', 'UNIVERSIDAD SANTO TOMÁS DE AQUINO DE CIENCIA E INTEGRACIÓN', 'Privada', 'A. Func. Provisional', 'Junín', 'Av. Huancavelica N° 462. Huancayo', '064?227050', 'http://www.ust.edu.pe/'),
(119, '', 'UNIVERSIDAD NACIONAL DANIEL ALCIDES CARRIÓN', 'Pública', 'Institucionalizada', 'Pasco', 'Edificio Estatal N° 4, San Juan Pampa, Apartado 77. Cerro de Pasco', '063?422197 / 063?421350', 'www.undac.edu.pe'),
(120, 'AMAZÓNICO', 'UNIVERSIDAD NACIONAL TORIBIO RODRÍGUEZ DE MENDOZA DE AMAZONAS', 'Pública', 'Institucionalizada', 'Amazonas', 'Ciudad Universitaria, Barrio Higos Urco, El Franco. Chachapoyas', '041?477694', 'www.untrm.edu.pe'),
(121, '', 'UNIVERSIDAD DE LA AMAZONIA MARIO PELÁEZ BAZÁN', 'Privada', 'A. Func. Provisional', 'Amazonas', 'Jr. Santa Rosa N° 47. Bagua Grande', '041?475111', 'www.upb.edu.pe'),
(122, '', 'UNIVERSIDAD NACIONAL DE LA AMAZONIA PERUANA', 'Pública', 'Institucionalizada', 'Loreto', 'Jr. Sargento Lores N° 385, Urb. Cercado. Iquitos', '051?965995495 / 065?23218', 'www.unapiquitos.edu.pe'),
(123, '', 'UNIVERSIDAD CIENTÍFICA DEL PERÚ', 'Privada', 'Institucionalizada', 'Loreto', 'Av. Abelardo Quiñones N° 2500, San Juan. Iquitos', '065?261088 / 065?262086', 'www.ucp.edu.pe'),
(124, '', 'UNIVERSIDAD PERUANA DEL ORIENTE', 'Privada', 'A. Func. Provisional', 'Loreto', 'Av. Abelardo Quiñones N° 2575, San Juan Bautista, Maynas. Loreto', '065?261104', 'www.upo.edu.pe'),
(125, '', 'UNIVERSIDAD PRIVADA DE LA SELVA PERUANA', 'Privada', 'A. Func. Provisional', 'Loreto', 'Calle San Martín N° 230. Iquitos', '065?241590', 'www.upsep.edu.pe'),
(126, '', 'UNIVERSIDAD NACIONAL AMAZÓNICA DE MADRE DE DIOS', 'Pública', 'Institucionalizada', 'Madre de Dios', 'Av. 2 de Mayo N° 960. Puerto Maldonado', '082?573186 / 978 8400698', 'www.unamad.edu.pe'),
(127, '', 'UNIVERSIDAD NACIONAL AGRARIA DE LA SELVA', 'Pública', 'Institucionalizada', 'San Martín', 'Av. Universitaria km 1.5. Tingo María', '062?562702 / 062?561986', 'www.unas.edu.pe'),
(128, '', 'UNIVERSIDAD NACIONAL DE SAN MARTÍN', 'Pública', 'Institucionalizada', 'San Martín', 'Jirón Maynas N° 177. Tarapoto', '042?524253', 'www.unsm.edu.pe'),
(129, '', 'UNIVERSIDAD NACIONAL DE UCAYALI', 'Pública', 'Institucionalizada', 'Ucayali', 'Carretera Federico Basadre s/n, km 6. Pucalpa', '061?592236', 'www.unu.edu.pe'),
(130, '', 'UNIVERSIDAD NACIONAL INTERCULTURAL DE LA AMAZONIA', 'Pública', 'A. Func. Provisional', 'Ucayali', 'Carretera San José km 0.5, ex ILV. Yarinacocha', '061?596301 / 061?596912', 'www.unia.edu.pe'),
(131, '', 'UNIVERSIDAD PRIVADA DE PUCALLPA', 'Privada', 'A. Func. Provisional', 'Ucayali', 'Coronel Portillo Nº 782. Pucallpa', '061?570670', 'www.uppucallpa.org');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dic_LineasVRI`
--

CREATE TABLE `dic_LineasVRI` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(800) NOT NULL,
  `Estado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dic_LineasVRI`
--

INSERT INTO `dic_LineasVRI` (`Id`, `Nombre`, `Estado`) VALUES
(1, 'ADMINISTRACIÓN Y MARKETING', 1),
(2, 'ALIMENTACIÓN Y NUTRICIÓN HUMANA', 1),
(3, 'ARQUITECTURA Y URBANISMO', 1),
(4, 'ARTE Y MÚSICA', 1),
(5, 'AUDITORÍA, COSTOS Y FINANZAS', 1),
(6, 'CIENCIA Y PRODUCCIÓN ANIMAL', 1),
(7, 'CIENCIAS DE LA SALUD ', 1),
(8, 'CIENCIAS DEL DEPORTE Y EDUCACIÓN FÍSICA', 1),
(9, 'DERECHO', 1),
(10, 'ECONOMÍA Y DESARROLLO', 1),
(11, 'EDUCACIÓN Y DINÁMICA EDUCATIVA', 1),
(12, 'ESTADÍSTICA E INVESTIGACIÓN', 1),
(13, 'FÍSICA Y MATEMÁTICA', 1),
(14, 'GEOLOGÍA, MINAS Y METALURGIA', 1),
(15, 'GESTIÓN Y RESPONSABILIDAD SOCIAL', 1),
(16, 'INFRAESTRUCTURA Y CONSTRUCCIONES', 1),
(17, 'INGENIERÍA DE PROCESOS', 1),
(18, 'MANEJO AGRONÓMICO DE CULTIVOS', 1),
(19, 'MECÁNICA - ELÉCTRICA', 1),
(20, 'RECURSOS NATURALES Y MEDIO AMBIENTE', 1),
(21, 'SALUD PÚBLICA', 1),
(22, 'SISTEMAS DE INFORMACIÓN GEOGRÁFICA', 1),
(23, 'SISTEMAS, COMPUTACIÓN E INFORMÁTICA', 1),
(24, 'SOCIEDAD, CULTURA Y COMUNICACIÓN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocdeAreas`
--

CREATE TABLE `ocdeAreas` (
  `Id` int(1) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ocdeAreas`
--

INSERT INTO `ocdeAreas` (`Id`, `Nombre`) VALUES
(1, 'CIENCIAS AGRÍCOLAS'),
(2, 'CIENCIAS MÉDICAS Y DE LA SALUD'),
(3, 'CIENCIAS NATURALES'),
(4, 'CIENCIAS SOCIALES'),
(5, 'HUMANIDADES'),
(6, 'INGENIERÍA Y TECNOLOGÍA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocdeDisciplinas`
--

CREATE TABLE `ocdeDisciplinas` (
  `Id` int(3) NOT NULL,
  `Nombre` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IdArea` int(2) NOT NULL,
  `IdSubArea` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ocdeDisciplinas`
--

INSERT INTO `ocdeDisciplinas` (`Id`, `Nombre`, `IdArea`, `IdSubArea`) VALUES
(1, 'AGRICULTURA', 1, 1),
(2, 'FORESTAL', 1, 1),
(3, 'PESCA', 1, 1),
(4, 'CIENCIAS DEL SUELO', 1, 1),
(5, 'HORTICULTURA Y VITICULTURA', 1, 1),
(6, 'AGRONOMÍA', 1, 1),
(7, 'PROTECCIÓN Y NUTRICIÓN DE LAS PLANTAS', 1, 1),
(8, 'CIENCIAS ANIMALES Y LECHERÍA', 1, 2),
(9, 'CRÍAS Y MASCOTAS', 1, 2),
(10, 'CIENCIAS VETERINARIAS', 1, 3),
(11, 'BIOTECNOLOGÍA AGRÍCOLA Y DE ALIMENTOS ', 1, 4),
(12, 'TECNOLOGÍA MG (SEMBRADÍOS Y GANADO), CLONAMIENTO DE GANADO, SELECCIÓN ASISTIDA, DIGNÓSTICO (CON CHIPS ADN, BIOSENSORES) ', 1, 4),
(13, 'ÉTICA RELACIONADA A BIOTECNOLOGÍA AGRÍCOLA', 1, 4),
(14, 'OTRAS CIENCIAS AGRÍCOLAS', 1, 5),
(15, 'ANATOMÍA Y MORFOLOGÍA', 2, 6),
(16, 'GENÉTICA HUMANA', 2, 6),
(17, 'INMUNOLOGÍA', 2, 6),
(18, 'NEUROCIENCIAS', 2, 6),
(19, 'FARMACOLOGÍA Y FARMACIA', 2, 6),
(20, 'MEDICINA QUÍMICA', 2, 6),
(21, 'TOXICOLOGÍA', 2, 6),
(22, 'FISIOLOGÍA (INCLUYE CITOLOGÍA)', 2, 6),
(23, 'PATOLOGÍA', 2, 6),
(24, 'ANDROLOGÍA', 2, 7),
(25, 'OBSTETRICIA Y GINECOLOGÍA', 2, 7),
(26, 'PEDIATRÍA', 2, 7),
(27, 'CARDIOVASCULAR', 2, 7),
(28, 'VASCULAR PERIFÉRICO', 2, 7),
(29, 'HEMATOLOGÍA', 2, 7),
(30, 'RESPIRATORIA', 2, 7),
(31, 'CUIDADO CRÍTICO Y DE EMERGENCIA', 2, 7),
(32, 'ANESTESIOLOGÍA', 2, 7),
(33, 'ORTOPÉDICA', 2, 7),
(34, 'CIRUGÍA', 2, 7),
(35, 'RADIOLOGÍA, MEDICINA NUCLEAR Y DE IMÁGENES', 2, 7),
(36, 'TRANSPLANTES', 2, 7),
(37, 'ODONTOLOGÍA, CIRUGÍA ORAL Y MEDICINA ORAL', 2, 7),
(38, 'DERMATOLOGÍA Y ENFERMEDADES VENÉREAS', 2, 7),
(39, 'ALERGIAS', 2, 7),
(40, 'REUMATOLOGÍA', 2, 7),
(41, 'ENDOCRINOLOGÍA Y METABOLISMO (INCLUYE DIABETES Y TRANSTORNOS HORMONALES)', 2, 7),
(42, 'GASTROENTEROLOGÍA Y HEPATOLOGÍA', 2, 7),
(43, 'UROLOGÍA Y NEFROLOGÍA', 2, 7),
(44, 'ONCOLOGÍA', 2, 7),
(45, 'OFTALMOLOGÍA', 2, 7),
(46, 'OTORRINONARINGOLOGÍA', 2, 7),
(47, 'PSIQUIATRÍA', 2, 7),
(48, 'NEUROLOGÍA CLÍNICA', 2, 7),
(49, 'GERIATRÍA', 2, 7),
(50, 'MEDICINA GENERAL E INTERNA', 2, 7),
(51, 'OTRO TEMAS DE MEDICINA CLÍNICA', 2, 7),
(52, 'MEDICINA COMPLEMENTARIA (SISTEMAS ALTERNATIVOS)', 2, 7),
(53, 'CIENCIAS DEL CUIDADO DE LA SALUD Y SERVICIOS (ADMINISTRACIÓN DE HOSPITALES, FINANCIAMIENTO)', 2, 8),
(54, 'POLÍTICAS DE SALUD Y SERVICIOS', 2, 8),
(55, 'ENFERMERÍA', 2, 8),
(56, 'NUTRICIÓN Y DIETAS', 2, 8),
(57, 'SALUD PÚBLICA', 2, 8),
(58, 'MEDICINA TROPICAL', 2, 8),
(59, 'PARASITOLOGÍA', 2, 8),
(60, 'ENFERMEDADES INFECCIOSAS', 2, 8),
(61, 'EPIDEMIOLOGÍA', 2, 8),
(62, 'SALUD OCUPACIONAL', 2, 8),
(63, 'CIENCIAS DEL DEPORTE', 2, 8),
(64, 'CIENCIAS SOCIO BIOMÉDICAS (PLANIFICACIÓN FAMILIAR, SALUD SEXUAL, EFECTOS POLÍTICOS Y SOCIALES DE LA INVESTIGACIÓN BIOMÉDICA)', 2, 8),
(65, 'ÉTICA', 2, 8),
(66, 'ABUSO DE SUBSTANCIAS', 2, 8),
(67, 'BIOTECNOLOGÍA RELACIONADA CON LA SALUD', 2, 9),
(68, 'TECNOLOGÍAS PARA LA MANIPULACIÓN DE CÉLULAS, TEJIDOS, ÓRGANOS O EL ORGANISMO (REPRODUCCIÓN ASISTIDA)', 2, 9),
(69, 'TECNOLOGÍA PARA LA IDENTIFICACIÓN Y FUNCIONAMIENTO DEL ADN, PROTEÍNAS Y ENCIMAS Y COMO INFLUENCIAN LA ENFERMEDAD', 2, 9),
(70, 'BIOMATERIALES (RELACIONADOS CON IMPLANTES, DISPOSITIVOS, SENSORES)', 2, 9),
(71, 'ÉTICA RELACIONADA CON LA BIOMEDICINA', 2, 9),
(72, ' FORÉNSICAS', 2, 10),
(73, 'OTRAS CIENCIAS MÉDICAS', 2, 10),
(74, 'FONOAUDIOLOGÍA', 2, 10),
(75, 'MATEMÁTICAS PURAS', 3, 11),
(76, 'MATEMÁTICAS APLICADAS', 3, 11),
(77, 'ESTADÍSTICAS Y PROBABILIDADES (INVESTIGACIÓN EN METODOLOGÍAS)', 3, 11),
(78, 'CIENCIAS DE LA COMPUTACIÓN', 3, 12),
(79, 'CIENCIAS DE LA INFORMACIÓN Y BIOINFORMÁTICA', 3, 12),
(80, 'FÍSICA ATÓMICA, MOLECULAR Y QUÍMICA', 3, 13),
(81, 'FÍSICA DE LA MATERIA', 3, 13),
(82, 'FÍSICA DE PARTÍCULAS Y CAMPOS', 3, 13),
(83, 'FÍSICA NUCLEAR', 3, 13),
(84, 'FÍSICA DE PLASMAS Y FLUÍDOS', 3, 13),
(85, 'ÓPTICA', 3, 13),
(86, 'ACÚSTICA', 3, 13),
(87, 'ASTRONOMÍA', 3, 13),
(88, 'QUÍMICA ORGÁNICA', 3, 14),
(89, 'QUÍMICA INORGÁNICA Y NUCLEAR', 3, 14),
(90, 'QUÍMICA FÍSICA', 3, 14),
(91, 'CIENCIAS DE LOS POLÍMEROS', 3, 14),
(92, 'ELECTROQUÍMICA', 3, 14),
(93, 'QUÍMICA DE LOS COLOIDES', 3, 14),
(94, 'QUÍMICA ANALÍTICA', 3, 14),
(95, 'GEOCIENCIAS (MULTIDISCIPLINARIO)', 3, 15),
(96, 'MINERALOGÍA', 3, 15),
(97, 'PALEONTOLOGÍA', 3, 15),
(98, 'GEOQUÍMICA Y GEOFÍSICA', 3, 15),
(99, 'GEOGRAFÍA FÍSICA', 3, 15),
(100, 'GEOLOGÍA', 3, 15),
(101, 'VULCANOLOGÍA', 3, 15),
(102, 'CIENCIAS DEL MEDIO AMBIENTE', 3, 15),
(103, 'METEOROLOGÍA Y CIENCIAS ATMOSFÉRICAS', 3, 15),
(104, 'INVESTIGACIÓN DEL CLIMA', 3, 15),
(105, 'OCEANOGRAFÍA, HIDROLOGÍA Y RECURSOS DEL AGUA', 3, 15),
(106, 'BIOLOGÍA CELULAR Y MICROBIOLOGÍA', 3, 16),
(107, 'VIROLOGÍA', 3, 16),
(108, 'BIOQUÍMICA Y BIOLOGÍA MOLECULAR', 3, 16),
(109, 'MÉTODOS DE INVESTIGACIÓN EN BIOQUÍMICA', 3, 16),
(110, 'MICOLOGÍA', 3, 16),
(111, 'BIOFÍSICA', 3, 16),
(112, 'GENÉTICA Y HERENCIA', 3, 16),
(113, 'BIOLOGÍA REPRODUCTIVA', 3, 16),
(114, 'BIOLOGÍA DEL DESARROLLO', 3, 16),
(115, 'BOTÁNICA Y CIENCIAS DE LAS PLANTAS', 3, 16),
(116, 'ZOOLOGÍA, ORNITOLOGÍA, ENTOMOLOGÍA, CIENCIAS BIOLÓGICAS DEL COMPORTAMIENTO', 3, 16),
(117, 'BIOLOGÍA MARINA Y DEL AGUA', 3, 16),
(118, 'ECOLOGÍA', 3, 16),
(119, 'CONSERVACIÓN DE LA BIODIVERSIDAD', 3, 16),
(120, 'BIOLOGÍA (TEÓRICA, MATEMÁTICA, CRIOBIOLOGÍA, EVOLUTIVA)', 3, 16),
(121, 'OTRAS BIOLOGÍAS', 3, 16),
(122, ' OTRAS CIENCIAS NATURALES', 3, 17),
(123, 'EDUCACIÓN GENERAL (INCLUYE CAPACITACIÓN, PEDAGOGÍA)', 4, 18),
(124, 'EDUCACIÓN ESPECIAL (PARA ESTUDIANTES DOTADOS Y AQUELLOS CON DIFICULTADES DE APRENDIZAJE)', 4, 18),
(125, 'CIENCIAS POLÍTICAS', 4, 19),
(126, 'ADMINISTRACIÓN PÚBLICA', 4, 19),
(127, 'TEORÍA ORGANIZACIONAL', 4, 19),
(128, 'DERECHO', 4, 20),
(129, 'PENAL', 4, 20),
(130, 'ECONOMÍA', 4, 21),
(131, 'ECONOMETRÍA', 4, 21),
(132, 'RELACIONES INDUSTRIALES', 4, 21),
(133, 'NEGOCIOS Y MANAGEMENT', 4, 21),
(134, 'CIENCIAS AMBIENTALES (ASPECTOS SOCIALES)', 4, 22),
(135, 'GEOGRAFÍA ECONÓMICA Y CULTURAL', 4, 22),
(136, 'ESTUDIOS URBANOS (PLANIFICACIÓN Y DESARROLLO)', 4, 22),
(137, 'PLANIFICACIÓN DEL TRANSPORTE Y ASPECTOS SOCIALES DEL TRANSPORTE', 4, 22),
(138, 'CIENCIAS SOCIALES, INTERDISCIPLINARIA', 4, 23),
(139, 'OTRAS CIENCIAS SOCIALES', 4, 23),
(140, 'PERIODISMO', 4, 24),
(141, 'CIENCIAS DE LA INFORMACIÓN (ASPECTOS SOCIALES)', 4, 24),
(142, 'BIBLIOTECOLOGÍA', 4, 24),
(143, 'MEDIOS Y COMUNICACIÓN SOCIAL', 4, 24),
(144, 'PSICOLOGÍA (INCLUYE RELACIONES HOMBRE-MÁQUINA)', 4, 25),
(145, 'PSICOLOGÍA (INCLUYE TERAPIAS DE APRENDIZAJE, HABLA, VISUAL Y OTRAS DISCAPACIDADES FÍSICAS Y MENTALES)', 4, 25),
(146, 'SOCIOLOGIA', 4, 26),
(147, 'DEMOGRAFÍA', 4, 26),
(148, 'ANTROPOLOGÍA', 4, 26),
(149, 'ETNOLOGÍA', 4, 26),
(150, 'TEMAS ESPECIALES (ESTUDIO DE GÉNERO, TEMAS SOCIALES, ESTUDIOS DE LA FAMILIA, TRABAJO SOCIAL)', 4, 26),
(151, 'ARTE', 5, 27),
(152, 'HISTORIA DEL ARTE', 5, 27),
(153, 'DISEÑO ARQUITECTÓNICO', 5, 27),
(154, 'ARTES DE LA REPRESENTACIÓN (MUSICOLOGÍA, CIENCIAS DEL TEATRO, DRAMATURGIA)', 5, 27),
(155, 'ESTUDIOS DEL FOLCLOR', 5, 27),
(156, 'ESTUDIOS DE CINE, RADIO Y TELEVISIÓN', 5, 27),
(157, 'ARQUITECTURA Y URBANISMO', 5, 27),
(158, 'DISEÑO INDUSTRIAL Y OTROS DISEÑOS', 5, 27),
(159, 'HISTORIA', 5, 28),
(160, 'ARQUEOLOGÍA', 5, 28),
(161, 'ESTUDIOS GENERALES DEL LENGUAJE', 5, 29),
(162, 'IDIOMAS ESPECÍFICOS', 5, 29),
(163, 'ESTUDIOS LITERARIOS', 5, 29),
(164, 'TEORÍA LITERARIA', 5, 29),
(165, 'LITERATURA ESPECÍFICA', 5, 29),
(166, 'LINGÜÍSTICA', 5, 29),
(167, 'HISTORIA DE LA CIENCIA Y TECNOLOGÍA', 5, 30),
(168, 'OTRAS HISTORIAS ESPECIALIZADAS', 5, 30),
(169, 'OTRAS HUMANIDADES', 5, 31),
(170, 'FILOSOFÍA', 5, 31),
(171, 'TEOLOGÍA', 5, 31),
(172, 'INGENIERÍA CIVIL ', 6, 32),
(173, 'INGENIERÍA ARQUITECTÓNICA ', 6, 32),
(174, 'INGENIERÍA DE LA CONSTRUCCIÓN ', 6, 32),
(175, 'INGENIERÍA ESTRUCTURAL Y MUNICIPAL ', 6, 32),
(176, 'INGENIERÍA DEL TRANSPORTE', 6, 32),
(177, 'INGENIERÍA ELÉCTRICA Y ELECTRÓNICA ', 6, 33),
(178, 'ROBÓTICA Y CONTROL AUTOMÁTICO ', 6, 33),
(179, 'AUTOMATIZACIÓN Y SISTEMAS DE CONTROL ', 6, 33),
(180, 'INGENIERÍA DE SISTEMAS Y COMUNICACIONES ', 6, 33),
(181, 'TELECOMUNICACIONES ', 6, 33),
(182, 'HARDWARE Y ARQUITECTURA DE COMPUTADORES', 6, 33),
(183, 'INGENIERÍA MECÁNICA ', 6, 34),
(184, 'MECÁNICA APLICADA ', 6, 34),
(185, 'TERMODINÁMICA ', 6, 34),
(186, 'INGENIERÍA AEROESPACIAL ', 6, 34),
(187, 'INGENIERÍA NUCLEAR ', 6, 34),
(188, 'INGENIERÍA DEL AUDIO', 6, 34),
(189, 'INGENIERÍA QUÍMICA (PLANTAS Y PRODUCTOS) ', 6, 35),
(190, 'INGENIERÍA DE PROCESOS', 6, 35),
(191, 'INGENIERÍA MECÁNICA ', 6, 36),
(192, 'CERÁMICOS ', 6, 36),
(193, 'RECUBRIMIENTOS Y PELÍCULAS ', 6, 36),
(194, 'COMPUESTOS (LAMINADOS, PLÁSTICOS REFORZADOS, FIBRAS SINTÉTICAS Y NATURALES, ETC.) ', 6, 36),
(195, 'PAPEL Y MADERA ', 6, 36),
(196, 'TEXTILES', 6, 36),
(197, 'INGENIERÍA MÉDICA ', 6, 37),
(198, 'TECNOLOGÍA MÉDICA DE LABORATORIO (ANÁLISIS DE MUESTRAS, TECNOLOGÍAS PARA EL DIAGNÓSTICO)', 6, 37),
(199, 'INGENIERÍA AMBIENTAL Y GEOLÓGICA E', 6, 38),
(200, 'GEOTÉCNICAS ', 6, 38),
(201, 'INGENIERÍA DEL PETRÓLEO (COMBUSTIBLES, ACEITES), ENERGÍA Y COMBUSTIBLES ', 6, 38),
(202, 'SENSORES REMOTOS ', 6, 38),
(203, 'MINERÍA Y PROCESAMIENTO DE MINERALES ', 6, 38),
(204, 'INGENIERÍA MARINA, NAVES ', 6, 38),
(205, 'INGENIERÍA OCEANOGRÁFICA', 6, 38),
(206, 'BIOTECNOLOGÍA MEDIOAMBIENTAL ', 6, 39),
(207, 'BIOREMEDIACIÓN, BIOTECNOLOGÍA PARA EL DIAGNÓSTICO (CHIPS ADN Y BIOSENSORES) EN MANEJO AMBIENTAL ', 6, 39),
(208, 'ÉTICA RELACIONADA CON BIOTECNOLOGÍA MEDIOAMBIENTAL', 6, 39),
(209, 'BIOTECNOLOGÍA INDUSTRIAL', 6, 40),
(210, 'TECNOLOGÍAS DE BIOPROCESAMIENTO, BIOCATÁLISIS, FERMENTACIÓN', 6, 40),
(211, 'BIOPRODUCTOS (PRODUCTOS QUE SE MANUFACTURAN USANDO BIOTECNOLOGÍA), BIOMATERIALES, BIOPLÁSTICOS, BIOCOMBUSTIBLES, MATERIALES NUEVOS BIODERIVADOS, QUÍMICOS FINOS BIODERIVADOS', 6, 40),
(212, 'NANOMATERIALES (PRODUCCIÓN Y PROPIEDADES)', 6, 41),
(213, 'NANOPROCESOS (APLICACIONES A NANOESCALA)', 6, 41),
(214, 'ALIMENTOS Y BEBIDAS', 6, 42),
(215, 'OTRAS INGENIERÍAS Y TECNOLOGÍAS', 6, 42),
(216, 'INGENIERÍA DE PRODUCCIÓN', 6, 42),
(217, 'INGENIERÍA INDUSTRIAL', 6, 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocdeSubAreas`
--

CREATE TABLE `ocdeSubAreas` (
  `Id` int(2) NOT NULL,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IdArea` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ocdeSubAreas`
--

INSERT INTO `ocdeSubAreas` (`Id`, `Nombre`, `IdArea`) VALUES
(1, 'AGRICULTURA, SILVICULTURA Y PESCA', 1),
(2, 'CIENCIAS ANIMALES Y LECHERÍA', 1),
(3, 'CIENCIAS VETERINARIAS', 1),
(4, 'BIOTECNOLOGÍA AGRÍCOLA', 1),
(5, 'OTRAS CIENCIAS AGRÍCOLAS', 1),
(6, 'MEDICINA BÁSICA', 2),
(7, 'MEDICINA CLÍNICA', 2),
(8, 'CIENCIAS DE LA SALUD', 2),
(9, 'BIOTECNOLOGÍA EN SALUD', 2),
(10, 'OTRAS CIENCIAS MÉDICAS', 2),
(11, 'MATEMÁTICAS', 3),
(12, 'COMPUTACIÓN Y CIENCIAS DE LA INFORMACIÓN  ', 3),
(13, 'CIENCIAS FÍSICAS', 3),
(14, 'CIENCIAS QUÍMICAS', 3),
(15, 'CIENCIAS DE LA TIERRA Y MEDIOAMBIENTALES', 3),
(16, 'CIENCIAS BIOLÓGICAS', 3),
(17, 'OTRAS CIENCIAS NATURALES', 3),
(18, 'CIENCIAS DE LA EDUCACIÓN', 4),
(19, 'CIENCIAS POLÍTICAS', 4),
(20, 'DERECHO', 4),
(21, 'ECONOMÍA Y NEGOCIOS', 4),
(22, 'GEOGRAFÍA SOCIAL Y ECONÓMICA', 4),
(23, 'OTRAS CIENCIAS SOCIALES', 4),
(24, 'PERIODISMO Y COMUNICACIONES', 4),
(25, 'PSICOLOGÍA ', 4),
(26, 'SOCIOLOGÍA', 4),
(27, 'ARTE ', 5),
(28, 'HISTORIA Y ARQUEOLOGÍA  ', 5),
(29, 'IDIOMAS Y LITERATURA', 5),
(30, 'OTRAS HISTORIAS', 5),
(31, 'OTRAS HUMANIDADES', 5),
(32, 'INGENIERÍA CIVIL', 6),
(33, 'INGENIERÍA ELÉCTRICA, ELECTRÓNICA E INFORMÁTICA  ', 6),
(34, 'INGENIERÍA MECÁNICA', 6),
(35, 'INGENIERÍA QUÍMICA', 6),
(36, 'INGENIERÍA DE LOS MATERIALES', 6),
(37, 'INGENIERÍA MÉDICA', 6),
(38, 'INGENIERÍA AMBIENTAL', 6),
(39, 'BIOTECNOLOGÍA MEDIOAMBIENTAL', 6),
(40, 'BIOTECNOLOGÍA INDUSTRIAL', 6),
(41, 'NANOTECNOLOGÍA', 6),
(42, 'OTRAS INGENIERÍAS Y TECNOLOGÍAS', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblDocentes`
--

CREATE TABLE `tblDocentes` (
  `Id` int(11) NOT NULL,
  `Activo` int(11) NOT NULL,
  `DNI` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Sexo` varchar(2) NOT NULL,
  `Codigo` varchar(12) CHARACTER SET utf8 NOT NULL,
  `IdCategoria` int(11) NOT NULL,
  `IdFacultad` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Apellidos` varchar(75) CHARACTER SET utf8 NOT NULL,
  `Nombres` varchar(75) CHARACTER SET utf8 NOT NULL,
  `FechaCon` date NOT NULL,
  `ResolCon` varchar(30) NOT NULL,
  `FechaIn` date NOT NULL,
  `FechaAsc` date NOT NULL,
  `ResolAsc` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Resolucion` varchar(75) CHARACTER SET utf8 NOT NULL,
  `FechaNac` date NOT NULL,
  `Direccion` varchar(50) NOT NULL DEFAULT '*',
  `NroCelular` varchar(12) CHARACTER SET utf8 NOT NULL,
  `Regina` tinyint(4) NOT NULL DEFAULT '0',
  `Correo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Clave` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblDocentes`
--

INSERT INTO `tblDocentes` (`Id`, `Activo`, `DNI`, `Sexo`, `Codigo`, `IdCategoria`, `IdFacultad`, `IdCarrera`, `Apellidos`, `Nombres`, `FechaCon`, `ResolCon`, `FechaIn`, `FechaAsc`, `ResolAsc`, `Resolucion`, `FechaNac`, `Direccion`, `NroCelular`, `Regina`, `Correo`, `Clave`) VALUES
(1, 6, '29413634', 'M', '29413634', 1, 1, 1, 'Cari Incahuanaco', 'Francisco ', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'fcari@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(2, 6, '11111111', 'M', '123', 1, 1, 1, 'Naida Luque Ochoa', 'Evelyn ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'eluque@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(3, 6, '11121111', 'M', '12', 1, 1, 1, 'Ordoñez Ramos', 'Erech ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'eordonez@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(4, 6, '31121111', 'M', '12', 1, 1, 1, 'Peralta Ascue', 'Marleny ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'mperalta@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(5, 5, '29413634', 'M', '29413634', 1, 1, 1, 'Pareja Cabrera', 'Julio Cesar ', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'jpareja@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(6, 5, '29413630', 'M', '29413634', 1, 1, 3, 'Ortega Cortez', 'Beda', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'bortega@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(7, 6, '11111118', 'M', '12', 1, 1, 3, 'Mattos Ojeda', 'Rodolfo Andres ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'rmattos@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(8, 6, '11111116', 'M', '12', 1, 1, 3, 'Huacani Calsin', 'Walquer ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'walquer@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(9, 6, '11111119', 'M', '12', 1, 1, 3, 'Merma Aroni', 'Jose Luis ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'jmerma@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(10, 4, '4444444', 'M', '456', 1, 1, 3, 'DMinas1', 'DMinas1', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'DMinas1@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(11, 6, '44444449', 'M', '457', 1, 1, 3, 'DMINAS2', 'DMINAS2', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'DMinas2@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(12, 0, '44444448', 'M', '458', 1, 1, 3, 'DMinas3', 'DMinas3', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'DMinas3@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(13, 6, '44444447', 'M', '4569', 1, 1, 3, 'DMinas4', 'DMinas4', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'DMinas4@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblFormatos`
--

CREATE TABLE `tblFormatos` (
  `Id` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Archivo` varchar(50) NOT NULL,
  `Fecha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblLineas`
--

CREATE TABLE `tblLineas` (
  `Id` int(5) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `IdArea` int(1) DEFAULT NULL,
  `IdSubArea` int(2) DEFAULT NULL,
  `IdDiscip` int(3) DEFAULT NULL,
  `id_usuario` int(2) NOT NULL,
  `IdFacultad` int(2) NOT NULL,
  `IdCarrera` int(2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tblLineas`
--

INSERT INTO `tblLineas` (`Id`, `Estado`, `Nombre`, `IdArea`, `IdSubArea`, `IdDiscip`, `id_usuario`, `IdFacultad`, `IdCarrera`, `fecha`) VALUES
(1, 1, 'Ingeniería informática,industria y sociedad', 1, 1, 1, 1, 1, 1, '2023-08-03 19:23:21'),
(2, 2, 'Ingeniería de software e innovación tecnológica.', 1, 1, 1, 1, 1, 1, '2023-08-03 19:23:42'),
(3, 1, 'Minería y procesamiento de minerales', NULL, NULL, NULL, 1, 1, 3, '2023-08-15 14:29:51'),
(4, 1, 'Geología, geotecnia y medio ambiente.', 1, 1, 1, 1, 1, 3, '2023-08-10 15:23:11'),
(5, 1, 'Ingeniería de la construcción.', 1, 1, 1, 1, 1, 2, '2023-08-03 19:29:23'),
(6, 1, 'Ingeniería de materiales.', 1, 1, 1, 1, 1, 2, '2023-08-03 19:29:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblLogDocentes`
--

CREATE TABLE `tblLogDocentes` (
  `Id` int(11) NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `EstadoAnt` int(4) NOT NULL,
  `EstadoNvo` int(4) NOT NULL,
  `Detalle` text NOT NULL,
  `Documento` varchar(50) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblLogDocentes`
--

INSERT INTO `tblLogDocentes` (`Id`, `IdDocente`, `EstadoAnt`, `EstadoNvo`, `Detalle`, `Documento`, `Fecha`) VALUES
(4459, 1, 6, 6, 'ya se ha habilitado', 'R-wee', '2023-08-08 13:40:49'),
(4460, 12, 0, 0, '', '', '2023-08-11 13:49:47');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwDocentes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwDocentes` (
`Id` int(11)
,`Activo` int(11)
,`DNI` varchar(10)
,`Codigo` varchar(12)
,`IdCategoria` int(11)
,`Categoria` varchar(50)
,`CategAbrev` varchar(15)
,`Tipo` varchar(1)
,`IdFacultad` int(11)
,`Facultad` varchar(100)
,`FacuAbrev` varchar(20)
,`IdCarrera` int(11)
,`Carrera` varchar(100)
,`DatosPers` varchar(152)
,`DatosNom` varchar(151)
,`FechaCon` date
,`ResolCon` varchar(30)
,`Antiguedad` int(7)
,`Edad` int(5)
,`FechaAsc` date
,`ResolAsc` varchar(30)
,`FechaIn` date
,`FechaNac` date
,`Direccion` varchar(50)
,`NroCelular` varchar(12)
,`Correo` varchar(50)
,`Apellidos` varchar(75)
,`Nombres` varchar(75)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwEstadosDoc`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwEstadosDoc` (
`EstadoAc` int(11)
,`NombEstado` varchar(40)
,`Cantidad` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwLogDocentes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwLogDocentes` (
`Id` int(11)
,`IdDocente` int(11)
,`EstadoNvo` int(4)
,`IdFacultad` int(11)
,`IdCarrera` int(11)
,`DatosPers` varchar(151)
,`Detalle` text
,`Documento` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwLstCarreras`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwLstCarreras` (
`IdFacultad` int(11)
,`Facultad` varchar(100)
,`IdCarrera` int(11)
,`Carrera` varchar(100)
,`IdEspec` int(11)
,`Especialidad` varchar(75)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwOCDE`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwOCDE` (
`IdArea` int(2)
,`IdSubArea` int(2)
,`IdDiscip` int(3)
,`Area` varchar(50)
,`SubArea` varchar(100)
,`Discliplina` varchar(300)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vwDocentes`
--
DROP TABLE IF EXISTS `vwDocentes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwDocentes`  AS  select `D`.`Id` AS `Id`,`D`.`Activo` AS `Activo`,`D`.`DNI` AS `DNI`,`D`.`Codigo` AS `Codigo`,`D`.`IdCategoria` AS `IdCategoria`,`C`.`Nombre` AS `Categoria`,`C`.`Abrev` AS `CategAbrev`,`C`.`Tipo` AS `Tipo`,`D`.`IdFacultad` AS `IdFacultad`,`F`.`Nombre` AS `Facultad`,`F`.`Abrev` AS `FacuAbrev`,`D`.`IdCarrera` AS `IdCarrera`,`K`.`Nombre` AS `Carrera`,concat(`D`.`Apellidos`,', ',upper(`D`.`Nombres`)) AS `DatosPers`,concat(upper(`D`.`Nombres`),' ',`D`.`Apellidos`) AS `DatosNom`,`D`.`FechaCon` AS `FechaCon`,`D`.`ResolCon` AS `ResolCon`,(to_days(now()) - to_days(`D`.`FechaAsc`)) AS `Antiguedad`,(year(now()) - year(`D`.`FechaNac`)) AS `Edad`,`D`.`FechaAsc` AS `FechaAsc`,`D`.`ResolAsc` AS `ResolAsc`,`D`.`FechaIn` AS `FechaIn`,`D`.`FechaNac` AS `FechaNac`,`D`.`Direccion` AS `Direccion`,`D`.`NroCelular` AS `NroCelular`,`D`.`Correo` AS `Correo`,`D`.`Apellidos` AS `Apellidos`,`D`.`Nombres` AS `Nombres` from (((`tblDocentes` `D` join `dicCategorias` `C`) join `dicFacultades` `F`) join `dicCarreras` `K`) where ((`C`.`Id` = `D`.`IdCategoria`) and (`F`.`Id` = `D`.`IdFacultad`) and (`K`.`Id` = `D`.`IdCarrera`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vwEstadosDoc`
--
DROP TABLE IF EXISTS `vwEstadosDoc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwEstadosDoc`  AS  select `tblDocentes`.`Activo` AS `EstadoAc`,(select `dicEstadosDoc`.`Nombre` from `dicEstadosDoc` where (`dicEstadosDoc`.`Id` = `tblDocentes`.`Activo`)) AS `NombEstado`,count(0) AS `Cantidad` from `tblDocentes` group by `tblDocentes`.`Activo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vwLogDocentes`
--
DROP TABLE IF EXISTS `vwLogDocentes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwLogDocentes`  AS  select `L`.`Id` AS `Id`,`D`.`Id` AS `IdDocente`,`L`.`EstadoNvo` AS `EstadoNvo`,`D`.`IdFacultad` AS `IdFacultad`,`D`.`IdCarrera` AS `IdCarrera`,concat(`D`.`Apellidos`,' ',`D`.`Nombres`) AS `DatosPers`,`L`.`Detalle` AS `Detalle`,`L`.`Documento` AS `Documento` from (`tblLogDocentes` `L` join `tblDocentes` `D`) where (`D`.`Id` = `L`.`IdDocente`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vwLstCarreras`
--
DROP TABLE IF EXISTS `vwLstCarreras`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwLstCarreras`  AS  select `F`.`Id` AS `IdFacultad`,`F`.`Nombre` AS `Facultad`,`C`.`Id` AS `IdCarrera`,`C`.`Nombre` AS `Carrera`,`E`.`Id` AS `IdEspec`,`E`.`Nombre` AS `Especialidad` from ((`dicFacultades` `F` left join `dicCarreras` `C` on((`F`.`Id` = `C`.`IdFacultad`))) left join `dicEspecialis` `E` on((`C`.`Id` = `E`.`IdCarrera`))) order by `F`.`Id`,`C`.`Id`,`E`.`Id` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vwOCDE`
--
DROP TABLE IF EXISTS `vwOCDE`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwOCDE`  AS  select `S`.`IdArea` AS `IdArea`,`D`.`IdSubArea` AS `IdSubArea`,`D`.`Id` AS `IdDiscip`,`A`.`Nombre` AS `Area`,`S`.`Nombre` AS `SubArea`,`D`.`Nombre` AS `Discliplina` from ((`ocdeAreas` `A` join `ocdeSubAreas` `S`) join `ocdeDisciplinas` `D`) where ((`A`.`Id` = `S`.`IdArea`) and (`S`.`Id` = `D`.`IdSubArea`)) order by `A`.`Id`,`S`.`Id`,`D`.`Id` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dicCarreras`
--
ALTER TABLE `dicCarreras`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicCategorias`
--
ALTER TABLE `dicCategorias`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicDocIndex`
--
ALTER TABLE `dicDocIndex`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicEspecialis`
--
ALTER TABLE `dicEspecialis`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicEstadosDoc`
--
ALTER TABLE `dicEstadosDoc`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicFacultades`
--
ALTER TABLE `dicFacultades`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicSunedu`
--
ALTER TABLE `dicSunedu`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicSuneOgt`
--
ALTER TABLE `dicSuneOgt`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicUbigeos`
--
ALTER TABLE `dicUbigeos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicUniversidades`
--
ALTER TABLE `dicUniversidades`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dic_LineasVRI`
--
ALTER TABLE `dic_LineasVRI`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `ocdeAreas`
--
ALTER TABLE `ocdeAreas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `ocdeDisciplinas`
--
ALTER TABLE `ocdeDisciplinas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `ocdeSubAreas`
--
ALTER TABLE `ocdeSubAreas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblDocentes`
--
ALTER TABLE `tblDocentes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblFormatos`
--
ALTER TABLE `tblFormatos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblLineas`
--
ALTER TABLE `tblLineas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`);

--
-- Indices de la tabla `tblLogDocentes`
--
ALTER TABLE `tblLogDocentes`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dicCarreras`
--
ALTER TABLE `dicCarreras`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de la tabla `dicCategorias`
--
ALTER TABLE `dicCategorias`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `dicDocIndex`
--
ALTER TABLE `dicDocIndex`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dicEspecialis`
--
ALTER TABLE `dicEspecialis`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT de la tabla `dicFacultades`
--
ALTER TABLE `dicFacultades`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `dicSunedu`
--
ALTER TABLE `dicSunedu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `dicSuneOgt`
--
ALTER TABLE `dicSuneOgt`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dicUbigeos`
--
ALTER TABLE `dicUbigeos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT de la tabla `dicUniversidades`
--
ALTER TABLE `dicUniversidades`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT de la tabla `ocdeAreas`
--
ALTER TABLE `ocdeAreas`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ocdeDisciplinas`
--
ALTER TABLE `ocdeDisciplinas`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
--
-- AUTO_INCREMENT de la tabla `ocdeSubAreas`
--
ALTER TABLE `ocdeSubAreas`
  MODIFY `Id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `tblDocentes`
--
ALTER TABLE `tblDocentes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1739;
--
-- AUTO_INCREMENT de la tabla `tblFormatos`
--
ALTER TABLE `tblFormatos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblLogDocentes`
--
ALTER TABLE `tblLogDocentes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4461;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

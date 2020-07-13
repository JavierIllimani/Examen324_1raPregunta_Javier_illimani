-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-07-2020 a las 18:49:18
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificador`
--

DROP TABLE IF EXISTS `identificador`;
CREATE TABLE IF NOT EXISTS `identificador` (
  `ci` int(11) NOT NULL,
  `nombreCompleto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `lugarResidencia` int(11) NOT NULL,
  PRIMARY KEY (`ci`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `identificador`
--

INSERT INTO `identificador` (`ci`, `nombreCompleto`, `fechaNacimiento`, `lugarResidencia`) VALUES
(7059618, 'Illimani Yupanqui, Javier Omar ', '1992-01-22', 2),
(1640341, 'Aguilar Cuellar, Fiorela', '1992-01-22', 8),
(8059614, 'Ortiz Chambi, Alexis', '1995-03-01', 6),
(6059614, 'Miranda Ortega, Damaris ', '1997-05-02', 4),
(20170291, 'Aguilar Gamboa, Juan Artemio', '1995-03-10', 3),
(3160733, 'Aldana Fernández, Tomas', '1995-02-01', 4),
(1371056, 'Álvarez centeno, Nicole Dennise', '1995-03-01', 4),
(5162068, 'Arias Galvez, Katerine', '1997-05-02', 5),
(20161989, 'Arenas Portocarrero, Mirella Zuley', '1997-05-02', 7),
(30162772, 'Badillo Romero, Kayra', '1992-03-22', 8),
(10174528, 'Camargo Castro, Misael', '1992-01-22', 9),
(2167481, 'Chávez Quispe, Iris Anahiz', '1994-05-02', 8),
(40167338, 'Chávez Constantino, Lorelei', '1992-02-21', 2),
(20168745, 'Cotrina Vera, Azucena Elizabeth', '1992-01-22', 5),
(70162379, 'Cruz Medina, Nicole Aelin', '1996-05-02', 6),
(2169047, 'Cueva Chávez, Michel', '1997-05-02', 7),
(80160109, 'Falcon Vilela, Paola Alexandra', '1995-03-01', 8),
(10160118, 'Fuentes Buckles Kenny Rony', '1997-05-02', 3),
(30160132, 'Guillen Cabrera, Mary Cielo', '1995-03-01', 1),
(5586543, 'Gomez Ynocencio, Claudia Patricia', '1992-01-02', 3),
(20160100, 'Gutiérrez de la Cruz, Laura Lorena', '1994-05-19', 9),
(9162772, 'Hernandez conde, Karolyna Isabel', '1996-01-15', 2),
(40158653, 'Huachez Lumba, Jherson Heraldo', '1997-01-13', 1),
(2160149, 'Huertas pinedo, Natalie lucia', '1998-01-22', 5),
(30161354, 'Jurado Bonifaz, Nicole Stefany', '1995-01-25', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notasxmateria`
--

DROP TABLE IF EXISTS `notasxmateria`;
CREATE TABLE IF NOT EXISTS `notasxmateria` (
  `ci` int(11) NOT NULL,
  `nota` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`ci`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notasxmateria`
--

INSERT INTO `notasxmateria` (`ci`, `nota`) VALUES
(59618, '65'),
(7059618, '70'),
(6059614, '63'),
(8059614, '65'),
(20170291, '60'),
(3160733, '65'),
(1371056, '70'),
(5162068, '75'),
(20161989, '45'),
(30162772, '80'),
(10174528, '90'),
(2167481, '5'),
(40167338, '40'),
(20168745, '25'),
(70162379, '80'),
(2169047, '60'),
(80160109, '66'),
(10160118, '55'),
(30160132, '41'),
(1640341, '55'),
(20160100, '59'),
(9162772, '60'),
(40158653, '61'),
(2160149, '65'),
(30161354, '64'),
(5586543, '71');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `ci` int(11) NOT NULL,
  `clave` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`ci`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `clave`) VALUES
(7059618, 'abcd'),
(8059614, '123456'),
(6059614, 'contrasenia'),
(1640341, '37*/5'),
(20170291, 'oi60'),
(3160733, 'abcd'),
(1371056, 'ds343'),
(5162068, 'trt75'),
(20161989, 'gfg45'),
(30162772, '8hgh0'),
(10174528, 'trt90'),
(2167481, 'hgh5'),
(40167338, '4ytyt0'),
(20168745, '2ty5'),
(70162379, '87y60'),
(2169047, '606*lj'),
(80160109, 'oipo66'),
(10160118, '87t7/-55'),
(30160132, '123+-41'),
(5586543, '32+55'),
(20160100, '59-*/69'),
(9162772, '13*260'),
(40158653, '65+6'),
(2160149, '22-165'),
(30161354, '46j54');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

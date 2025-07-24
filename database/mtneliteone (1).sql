-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 03 juil. 2025 à 19:27
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mtneliteone`
--

-- --------------------------------------------------------

--
-- Structure de la table `aigle_royal`
--

CREATE TABLE `aigle_royal` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `aigle_royal`
--

INSERT INTO `aigle_royal` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 0, 0, 0, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 1, 0, 1, 2, 11, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(3, 0, 2, -2, 0, 2, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 2, -1, 0, 2, 15, 7, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(5, 1, 2, -1, 0, 2, 15, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(6, 1, 1, 0, 1, 3, 15, 10, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(7, 1, 0, 1, 3, 6, 14, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(8, 0, 1, -1, 0, 6, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 2, 0, 2, 3, 9, 13, 10, 9, NULL, NULL, 11, 7, NULL, NULL),
(10, 1, 1, 0, 1, 10, 13, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(11, 0, 1, -1, 0, 10, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 0, 1, -1, 0, 10, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 2, 0, 2, 3, 13, 12, 10, 9, NULL, NULL, 7, 7, NULL, NULL),
(14, 0, 0, 0, 1, 14, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 0, 0, -1, 0, 14, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, 0, 1, 3, 17, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, 0, 1, 3, 23, 10, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(18, 2, 1, 1, 3, 23, 10, 9, 7, NULL, NULL, 10, 8, NULL, NULL),
(19, 0, 1, -1, 0, 23, 11, 0, 0, NULL, NULL, 0, 0, NULL, NULL),
(20, 2, 3, -1, 0, 23, 11, 9, 7, NULL, NULL, 10, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `astres`
--

CREATE TABLE `astres` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `astres`
--

INSERT INTO `astres` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 3, 4, -1, 0, 0, 12, 10, 10, 7, NULL, 9, 7, 10, NULL),
(2, 4, 1, 3, 3, 3, 7, 10, 10, 7, 9, 13, 8, 18, 5),
(3, 0, 2, -2, 0, 3, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, 0, 2, 3, 6, 7, 8, 11, NULL, NULL, 10, 7, NULL, NULL),
(5, 0, 1, -1, 0, 6, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 1, 0, 1, 7, 9, 10, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(7, 2, 1, 1, 3, 10, 6, 10, 10, NULL, NULL, 8, 13, NULL, NULL),
(8, 0, 1, -1, 0, 10, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 1, 0, 1, 11, 10, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(10, 0, 1, -1, 0, 11, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 0, 1, 3, 14, 8, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(12, 3, 1, 2, 3, 17, 12, 12, 10, 10, NULL, 10, 9, 7, NULL),
(13, 3, 1, 2, 3, 20, 6, 10, 10, 7, NULL, 7, 7, 9, NULL),
(14, 2, 0, 2, 3, 23, 5, 9, 7, NULL, NULL, 7, 11, NULL, NULL),
(15, 0, 0, 0, 1, 24, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, 1, 0, 1, 25, 5, 9, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(17, 0, 3, -3, 0, 25, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 0, 4, -4, 0, 25, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, 2, -1, 0, 25, 9, 9, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(20, 1, 0, 1, 3, 28, 8, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `bamboutos`
--

CREATE TABLE `bamboutos` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bamboutos`
--

INSERT INTO `bamboutos` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 0, 2, -2, 0, 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 0, 0, 1, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 0, 2, 3, 4, 8, 10, 2, NULL, NULL, 13, 8, NULL, NULL),
(4, 0, 0, 0, 1, 5, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, 0, 0, 1, 6, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, 0, 0, 1, 7, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 2, 1, 0, 7, 13, 9, NULL, NULL, NULL, 13, NULL, NULL, NULL),
(8, 0, 2, -2, 0, 7, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 4, -3, 0, 7, 15, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(10, 2, 1, 1, 3, 10, 15, 10, 13, NULL, NULL, 7, 8, NULL, NULL),
(11, 1, 0, 1, 3, 13, 11, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(12, 1, 0, 1, 3, 16, 9, 12, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(13, 0, 2, -2, 0, 16, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 0, 1, -1, 0, 16, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 0, 0, 0, 1, 17, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 0, 2, -2, 0, 17, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 0, 1, -1, 0, 17, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, 2, -1, 0, 17, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 0, 1, -1, 0, 17, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `bamenda`
--

CREATE TABLE `bamenda` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bamenda`
--

INSERT INTO `bamenda` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 1, 0, 1, 3, 3, 4, 10, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(2, 0, 1, -1, 0, 3, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, 4, -4, 0, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 1, 2, 3, 6, 8, 10, 9, 7, NULL, 13, 7, 9, NULL),
(5, 1, 3, -2, 0, 6, 13, 9, NULL, NULL, NULL, 5, NULL, NULL, NULL),
(6, 0, 0, 0, 1, 7, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 0, 0, 0, 1, 8, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 1, 0, 1, 9, 12, 109, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(9, 1, 1, 0, 1, 10, 12, 9, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(10, 1, 1, 0, 1, 11, 11, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(11, 3, 0, 3, 3, 11, 12, 10, 10, 9, NULL, 7, 7, 12, NULL),
(12, 0, 2, -2, 0, 11, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, 2, -1, 0, 11, 14, 9, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(14, 0, 0, 0, 1, 15, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 2, 0, -2, 3, 15, 11, 10, 11, NULL, NULL, 22, 7, NULL, NULL),
(16, 2, 2, 0, 1, 18, 10, 10, 9, NULL, NULL, 7, 7, NULL, NULL),
(17, 2, 1, 1, 3, 21, 10, 7, 10, NULL, NULL, 9, 8, NULL, NULL),
(18, 1, 1, 0, 1, 22, 11, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(19, 0, 0, 0, 1, 23, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 0, 2, -2, 0, 23, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `canon_yaounde`
--

CREATE TABLE `canon_yaounde` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `canon_yaounde`
--

INSERT INTO `canon_yaounde` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 2, 0, 2, 3, 3, 2, 10, 9, NULL, NULL, 12, 8, NULL, NULL),
(2, 1, 1, 0, 1, 4, 2, 10, NULL, NULL, NULL, 13, NULL, NULL, NULL),
(3, 1, 1, 0, 1, 5, 3, 7, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(4, 3, 1, 2, 3, 8, 1, 10, 10, 9, NULL, 12, 12, 8, NULL),
(5, 0, 2, -2, 0, 8, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 0, 1, 3, 9, 4, 9, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(7, 1, 1, 0, 1, 12, 4, 13, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(8, 1, 1, 0, 1, 13, 4, 7, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(9, 1, 0, 1, 3, 16, 3, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(10, 2, 2, 0, 1, 17, 4, 8, 9, NULL, NULL, 12, 13, NULL, NULL),
(11, 2, 0, 2, 3, 17, 4, 10, 10, NULL, NULL, 8, 9, NULL, NULL),
(12, 0, 1, -1, 0, 17, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 0, 2, -2, 0, 17, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 0, 2, -2, 0, 17, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, 0, 1, 3, 23, 7, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(16, 2, 0, 2, 3, 26, 4, 8, 9, NULL, NULL, 10, 12, NULL, NULL),
(17, 0, 2, -2, 0, 26, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, 1, 0, 1, 27, 7, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(19, 1, 0, 1, 3, 30, 5, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(20, 0, 2, -2, 0, 30, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `colombe`
--

CREATE TABLE `colombe` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `colombe`
--

INSERT INTO `colombe` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 0, 0, 0, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 0, 0, 1, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 1, 1, 3, 5, 6, 10, 10, NULL, NULL, 7, 7, NULL, NULL),
(4, 2, 1, 1, 3, 8, 2, 10, 8, NULL, NULL, 7, 12, NULL, NULL),
(5, 1, 0, 1, 3, 11, 1, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(6, 1, 0, 1, 3, 14, 1, 10, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(7, 2, 1, 1, 3, 17, 1, 10, 9, NULL, NULL, 11, 7, NULL, NULL),
(8, 1, 0, 1, 3, 20, 1, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(9, 0, 1, -1, 0, 20, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 1, 0, 1, 21, 1, 10, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(11, 2, 1, 1, 3, 24, 1, 10, 9, NULL, NULL, 7, 12, NULL, NULL),
(12, 2, 0, 2, 3, 27, 1, 9, 10, NULL, NULL, 7, 7, NULL, NULL),
(13, 3, 2, 1, 3, 30, 1, 10, 9, 10, NULL, 5, 7, 9, NULL),
(14, 0, 0, 0, 1, 31, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 3, 0, 3, 3, 34, 1, 10, 10, 9, NULL, 9, 9, 10, NULL),
(16, 2, 0, 2, 3, 37, 1, 10, 9, NULL, NULL, 7, 5, NULL, NULL),
(17, 1, 1, 0, 1, 38, 1, 8, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(18, 2, 0, 2, 3, 41, 1, 8, 7, NULL, NULL, 10, 12, NULL, NULL),
(19, 1, 0, 1, 3, 44, 1, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `coton_sport`
--

CREATE TABLE `coton_sport` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `coton_sport`
--

INSERT INTO `coton_sport` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 0, 0, 0, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 1, 3, 4, 6, 7, 7, NULL, NULL, 9, 11, NULL, NULL),
(3, 0, 0, 0, 1, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, 3, -3, 0, 5, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, 1, 1, 1, 8, 6, 10, 7, NULL, NULL, 7, 8, NULL, NULL),
(6, 1, 1, 0, 1, 9, 7, 8, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(7, 1, 1, 0, 1, 10, 8, 7, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(8, 2, 0, 2, 3, 13, 6, 10, 10, NULL, NULL, 5, 8, NULL, NULL),
(9, 4, 1, 3, 3, 16, 4, 10, 7, 10, 5, 8, 12, 13, 2),
(10, 3, 0, 3, 3, 19, 3, 7, 7, 10, NULL, 10, 8, 11, NULL),
(11, 3, 3, 0, 1, 20, 3, 10, 10, 9, NULL, 7, 9, 7, NULL),
(12, 2, 0, 2, 3, 23, 3, 10, 9, NULL, NULL, 7, 10, NULL, NULL),
(13, 1, 0, 1, 3, 26, 3, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(14, 0, 0, 0, 1, 27, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 0, 2, -2, 0, 27, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 0, 2, -2, 0, 27, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 0, 1, -1, 0, 27, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, 0, 1, 3, 30, 3, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(19, 2, 0, 2, 3, 33, 3, 9, 9, NULL, NULL, 10, 7, NULL, NULL),
(20, 3, 2, 1, 3, 36, 2, 10, 9, 7, NULL, 7, 12, 10, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `dynamo_douala`
--

CREATE TABLE `dynamo_douala` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dynamo_douala`
--

INSERT INTO `dynamo_douala` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 0, 0, 0, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 0, 1, 3, 4, 5, 8, NULL, NULL, NULL, 11, NULL, NULL, NULL),
(3, 1, 2, -1, 0, 4, 7, 7, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(4, 0, 0, 0, 1, 5, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, 0, 2, 3, 8, 5, 7, 8, NULL, NULL, 10, 7, NULL, NULL),
(6, 1, 0, 1, 3, 11, 3, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(7, 0, 1, -1, 0, 11, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 1, 0, 1, 12, 7, 8, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(9, 0, 2, -2, 0, 12, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 0, 1, -1, 0, 12, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 0, 0, 0, 1, 13, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 3, -2, 0, 13, 11, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(13, 0, 1, -1, 0, 13, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 2, 3, -1, 0, 13, 12, 8, 9, NULL, NULL, 10, 7, NULL, NULL),
(15, 0, 0, 0, 1, 14, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 0, 4, -4, 0, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, 2, -1, 0, 14, 15, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(18, 0, 2, -2, 0, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, 0, 1, 3, 17, 13, 9, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(20, 2, 0, 2, 3, 20, 13, 10, 9, NULL, NULL, 8, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fauve_azur_elite`
--

CREATE TABLE `fauve_azur_elite` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fauve_azur_elite`
--

INSERT INTO `fauve_azur_elite` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 0, 0, 0, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 0, 2, 3, 4, 3, 10, 9, NULL, NULL, 7, 8, NULL, NULL),
(3, 0, 0, 0, 1, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 3, -2, 0, 5, 12, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(5, 0, 0, 0, 1, 6, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, 1, 1, 3, 9, 6, 7, 8, NULL, NULL, 11, 9, NULL, NULL),
(7, 1, 1, 0, 1, 10, 7, 10, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(8, 2, 1, 1, 3, 13, 5, 8, 10, NULL, NULL, 7, 11, NULL, NULL),
(9, 0, 2, -2, 0, 13, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 0, 1, 3, 16, 6, 10, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(11, 3, 0, 3, 3, 16, 6, 10, 10, 9, NULL, 7, 7, 8, NULL),
(12, 2, 1, 1, 3, 19, 5, 9, 7, NULL, NULL, 10, 9, NULL, NULL),
(13, 2, 3, -1, 0, 19, 7, 9, 10, NULL, NULL, 11, 5, NULL, NULL),
(14, 1, 0, 1, 3, 22, 7, 10, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(15, 0, 2, -2, 0, 22, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 4, 0, -4, 3, 25, 7, 10, 10, 9, 7, 24, 11, 4, 12),
(17, 0, 1, -1, 0, 25, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 0, 1, -1, 0, 25, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 0, 1, -1, 0, 25, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fortuna_mfou`
--

CREATE TABLE `fortuna_mfou` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fortuna_mfou`
--

INSERT INTO `fortuna_mfou` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 2, 1, 1, 3, 3, 5, 10, 9, NULL, NULL, 7, 11, NULL, NULL),
(2, 1, 2, -1, 0, 3, 8, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(3, 1, 2, -10, 0, 3, 10, 8, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(4, 0, 2, -2, 0, 3, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, 0, 2, 3, 6, 12, 10, 9, NULL, NULL, 7, 7, NULL, NULL),
(6, 0, 1, -1, 0, 6, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 3, -2, 0, 6, 15, 9, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(8, 1, 0, 1, 3, 9, 11, 7, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(9, 0, 2, -2, 0, 9, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 2, 2, 0, 1, 10, 14, 10, 9, NULL, NULL, 9, 7, NULL, NULL),
(11, 1, 2, -1, 0, 10, 15, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(12, 0, 1, -1, 0, 10, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 2, 1, 1, 3, 13, 13, 10, 9, NULL, NULL, 7, 8, NULL, NULL),
(14, 0, 1, -1, 0, 13, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 0, 0, 0, 1, 14, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 2, 3, -1, 0, 14, 14, 9, 10, NULL, NULL, 10, 7, NULL, NULL),
(17, 1, 0, 1, 3, 17, 12, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(18, 0, 2, -2, 0, 17, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 2, 1, 1, 3, 20, 12, 10, 7, NULL, NULL, 9, 8, NULL, NULL),
(20, 0, 0, 0, 1, 21, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `gazelle`
--

CREATE TABLE `gazelle` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gazelle`
--

INSERT INTO `gazelle` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 1, 2, -1, 0, 0, 13, 9, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(2, 0, 0, 0, 1, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 4, 0, 4, 3, 4, 14, 10, 10, 9, 8, 7, 7, 11, 13),
(4, 3, 0, 3, 3, 7, 3, 10, 7, 7, NULL, 8, 10, 10, NULL),
(5, 1, 0, 1, 3, 10, 2, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(6, 1, 1, 0, 1, 11, 2, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(7, 4, 1, 3, 3, 14, 2, 10, 10, 10, 7, 8, 7, 8, 10),
(8, 2, 0, 2, 3, 17, 2, 8, 10, NULL, NULL, 7, 11, NULL, NULL),
(9, 3, 1, 2, 3, 20, 1, 8, 10, 7, NULL, 10, 5, 8, NULL),
(10, 1, 2, -1, 0, 20, 2, 10, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(11, 3, 3, 0, 1, 21, 2, 10, 10, 9, NULL, 7, 12, 7, NULL),
(12, 1, 0, 1, 3, 24, 2, 10, 9, NULL, NULL, 12, 8, NULL, NULL),
(13, 1, 2, -1, 0, 24, 2, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(14, 3, 2, 1, 3, 27, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 2, 0, 2, 3, 30, 2, 10, 9, NULL, NULL, 8, 10, NULL, NULL),
(16, 3, 2, 1, 3, 33, 2, 10, 10, 9, NULL, 8, 12, 10, NULL),
(17, 1, 1, 0, 1, 34, 2, 9, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(18, 1, 1, 0, 1, 35, 2, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(19, 3, 0, 3, 3, 38, 2, 10, 9, 12, NULL, 8, 10, 9, NULL),
(20, 0, 1, -1, 0, 38, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `nom` varchar(255) NOT NULL,
  `dorsard` int(11) DEFAULT NULL,
  `equipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`nom`, `dorsard`, `equipe`) VALUES
('BAHOYA', 27, 'aigle_royal'),
('KOUOH DICKA', 34, 'aigle_royal'),
('BIKATAL', 9, 'aigle_royal'),
('KOLOGNI KOLOGNI', 16, 'aigle_royal'),
('BAMAL KANGA', 15, 'aigle_royal'),
('MAPEUGUE LAPPE', 32, 'aigle_royal'),
('NDOUNG', 26, 'aigle_royal'),
('CHAMBA', 12, 'aigle_royal'),
('KAMDJEU DJENGUE', 6, 'aigle_royal'),
('EKEDI NGANDO', 28, 'aigle_royal'),
('BEBOUM KAMDEM', 10, 'aigle_royal'),
('NDEDI KINGUE', 4, 'aigle_royal'),
('SOULEYMAN', 2, 'aigle_royal'),
('SAMO BEKO\'O DEFE', 13, 'aigle_royal'),
('ENDENE MOUNTONGO', 36, 'aigle_royal'),
('WANSI TIENTCHEU', 7, 'aigle_royal'),
('ELONG', 20, 'aigle_royal'),
('MANI-MBEN', 5, 'aigle_royal'),
('TITICO FANGA', 22, 'aigle_royal'),
('EPOH MBEMBELOU', 35, 'aigle_royal'),
('NKONO', 29, 'aigle_royal'),
('KOM', 14, 'aigle_royal'),
('NYEMECK', 8, 'aigle_royal'),
('MBAPPE', 11, 'aigle_royal'),
('ENOCK DJIDJIWA', 31, 'aigle_royal'),
('ASSADOULLAH FADIL', 24, 'aigle_royal'),
('BAKOUDE MBAGA', 23, 'aigle_royal'),
('MOUT', 3, 'aigle_royal'),
('EPOH', 30, 'aigle_royal'),
('SHEPEH BAODILE FOHFOU', NULL, 'astres'),
('HAMED', NULL, 'astres'),
('MANGANA', NULL, 'astres'),
('SOUDI HOUSSEINI', NULL, 'astres'),
('MOULIOM AOUDOU RAMADAN', NULL, 'astres'),
('DJOB LIDJOB', NULL, 'astres'),
('KAMGANG KEMTSON', NULL, 'astres'),
('NSEGUE EFILA', NULL, 'astres'),
('FONE MBOYOM', NULL, 'astres'),
('BELO ZABO', NULL, 'astres'),
('ACHIMI', NULL, 'astres'),
('TCHOYI', NULL, 'astres'),
('BILLE DIPANDA', NULL, 'astres'),
('KOUM DIPPITA', NULL, 'astres'),
('MIYENGA EBONGUE', NULL, 'astres'),
('NDO', NULL, 'astres'),
('SEIDOU', NULL, 'astres'),
('NDONG', NULL, 'astres'),
('BEBOUM', NULL, 'astres'),
('NKENGAFACK FORLUNG', NULL, 'astres'),
('NEMI', NULL, 'astres'),
('NKONGHO', NULL, 'astres'),
('LOMLOM', NULL, 'astres'),
('OUM', NULL, 'astres'),
('CHO JUDE', NULL, 'astres'),
('TEGANG KAMGA', NULL, 'astres'),
('TCHEMADJEU KAMANI', NULL, 'astres'),
('TCHATCHOUA NGUECHE', NULL, 'astres'),
('NZEDOM YOUTA', NULL, 'astres'),
('BEO BATTO', NULL, 'astres'),
('TIMBA NYIJIME', NULL, 'astres'),
('NDONGO FOE', 4, 'canon_yaounde'),
('MEYONG A ETONG', 23, 'canon_yaounde'),
('HOUZAIFI', 24, 'canon_yaounde'),
('BEYONG MENELI', 5, 'canon_yaounde'),
('BELOBO', 11, 'canon_yaounde'),
('ZOA', 13, 'canon_yaounde'),
('BEKOLO', 35, 'canon_yaounde'),
('EBOGO', 25, 'canon_yaounde'),
('MINKOULOU NGONO', 33, 'canon_yaounde'),
('ESSOMBA FOUDA', 14, 'canon_yaounde'),
('MFENG NANGA', 7, 'canon_yaounde'),
('ABENG ESSOMBA', 27, 'canon_yaounde'),
('ESSONO OMGBA', 15, 'canon_yaounde'),
('GAMA', 10, 'canon_yaounde'),
('IPOUA VIKOTY', 32, 'canon_yaounde'),
('TCHIKEU', 20, 'canon_yaounde'),
('GO-AH', 26, 'canon_yaounde'),
('BALLA', 30, 'canon_yaounde'),
('BILONGO', 6, 'canon_yaounde'),
('BALEPA', 21, 'canon_yaounde'),
('BELLO PEMENZI', 16, 'canon_yaounde'),
('NKA MBOCk', 34, 'canon_yaounde'),
('KOUDEKA', 31, 'canon_yaounde'),
('NDONG', 19, 'canon_yaounde'),
('OMBOLO', 3, 'canon_yaounde'),
('BIKOE MONGO', 17, 'canon_yaounde'),
('FOGHA AJONC,', 8, 'canon_yaounde'),
('FONYUY ACHU', 12, 'canon_yaounde'),
('NGAE A BISSENE', 28, 'canon_yaounde'),
('ASSEMBE MBIA', 22, 'canon_yaounde'),
('AVOUZOA ANGOULA', 18, 'canon_yaounde'),
('OUSAMA', 29, 'canon_yaounde'),
('YEMBE MAYENY', 9, 'canon_yaounde'),
('OTOLO OMBOLO', NULL, 'canon_yaounde'),
('NOGUEM KENGNE', 23, 'bamboutos'),
('MOHAMMED', 16, 'bamboutos'),
('CHICO BOSSOGUENO', 66, 'bamboutos'),
('KOUPIT MANI', 32, 'bamboutos'),
('RANE ABDEL', 31, 'bamboutos'),
('KEMAJOU DIBAMI', 35, 'bamboutos'),
('WANGA WANGA', 29, 'bamboutos'),
('AMIH', 7, 'bamboutos'),
('NTUI', 28, 'bamboutos'),
('MICHIYO', 17, 'bamboutos'),
('EKOI', 22, 'bamboutos'),
('FOKOU NGUINTO TCHINDA', 8, 'bamboutos'),
('ATANGCHE', 3, 'bamboutos'),
('MANGA MESSE', 24, 'bamboutos'),
('KEMSSU KOM', 45, 'bamboutos'),
('MBIAKOP NJUKEU', 2, 'bamboutos'),
('SIGANOU NKENGNE', 36, 'bamboutos'),
('KETCHANTCHAM DIPANDA', 19, 'bamboutos'),
('HELANGA ATEBA', 27, 'bamboutos'),
('OTYA\'A ANGO', 5, 'bamboutos'),
('BENG', 21, 'bamboutos'),
('MBANDJI', 1, 'bamboutos'),
('ACHETE', 10, 'bamboutos'),
('LOBE', 55, 'bamboutos'),
('MELINGUI TSANGA', 40, 'bamboutos'),
('TAMNOU TCHOUMTEU', 25, 'bamboutos'),
('TCHINDA', 6, 'bamboutos'),
('CELE', 21, 'bamboutos'),
('KOUMA', 80, 'bamboutos'),
('AWUAH', 11, 'bamboutos'),
('KAIMBA', 12, 'bamboutos'),
('NDE', 30, 'bamboutos'),
('BITCHOKA', 56, 'bamboutos'),
('TABE', 39, 'bamboutos'),
('NSANGOU', 35, 'bamenda'),
('NDIFORCHU', 9, 'bamenda'),
('WIRSIY', 8, 'bamenda'),
('AKOH', 2, 'bamenda'),
('AHMADOU BOUBA', 13, 'bamenda'),
('ALABA', 33, 'bamenda'),
('DZEDU', 32, 'bamenda'),
('SOMBANG A MENANG', 30, 'bamenda'),
('ABANKE', 5, 'bamenda'),
('NSOH', 6, 'bamenda'),
('GILLES', 10, 'bamenda'),
('ABIANDA', 1, 'bamenda'),
('TENDOH ELTON', 18, 'bamenda'),
('NZO NGONG', 7, 'bamenda'),
('BELEMB', 25, 'bamenda'),
('NGUIMBAT', 11, 'bamenda'),
('GARHAGNE DJACBA', 3, 'bamenda'),
('NING CHE BANG', 22, 'bamenda'),
('ADIMANA', 20, 'bamenda'),
('EZE OMGBA', 17, 'bamenda'),
('BASE', 27, 'bamenda'),
('NDEWIYI ELTON', 31, 'bamenda'),
('NIDJIO GILLES', 14, 'bamenda'),
('MBOE', 28, 'bamenda'),
('GROSSO', 4, 'bamenda'),
('ABDOULLAHI', 21, 'bamenda'),
('NOAH', 12, 'bamenda'),
('ABANDA', 34, 'bamenda'),
('NFOR GODWILL', 24, 'bamenda'),
('NGUFOR', 26, 'bamenda'),
('MBENGUE ETOUNDI', 15, 'bamenda'),
('ALUYU', 19, 'bamenda'),
('KOUAMEJO NANKEP', 33, 'fortuna_mfou'),
('ONANA ETOUNDI', 20, 'fortuna_mfou'),
('FOKOU TEUFACK', 2, 'fortuna_mfou'),
('NGAH ESSOMBA', 24, 'fortuna_mfou'),
('FOZING', 8, 'fortuna_mfou'),
('TSALA NDI', 17, 'fortuna_mfou'),
('ELE EBOLO', 19, 'fortuna_mfou'),
('AMOUGOU ELLA', 10, 'fortuna_mfou'),
('MOUAFO SOB', 9, 'fortuna_mfou'),
('FIFEN', 31, 'fortuna_mfou'),
('EBODE EBODE', 12, 'fortuna_mfou'),
('ATSAM', 6, 'fortuna_mfou'),
('OLINGA NTSAMA', 1, 'fortuna_mfou'),
('ENAMA', 18, 'fortuna_mfou'),
('MISSONI', 22, 'fortuna_mfou'),
('', 14, 'fortuna_mfou'),
('MBARGA NGANKOU', 27, 'fortuna_mfou'),
('ASAAH', 23, 'fortuna_mfou'),
('HAMADOU MOUMINI', 35, 'fortuna_mfou'),
('MFOUMOU', 7, 'fortuna_mfou'),
('MABENGOL DJISSE', 4, 'fortuna_mfou'),
('FOKOU', 3, 'fortuna_mfou'),
('CHATTUAIS ABADA', 29, 'fortuna_mfou'),
('GAZHAC', 15, 'fortuna_mfou'),
('MBOCK', 13, 'fortuna_mfou'),
('NWOAGOU FANSU', 16, 'fortuna_mfou'),
('FOUDA', 35, 'fauve_azur_elite'),
('MBENI MINKOUMBA', 21, 'fauve_azur_elite'),
('NDONG NZE', 3, 'fauve_azur_elite'),
('MARCELLIN RUSSEL BERRY', 22, 'fauve_azur_elite'),
('TCHATOU', 4, 'fauve_azur_elite'),
('MOUAFFO GALO', 28, 'fauve_azur_elite'),
('ATCHOM', 15, 'fauve_azur_elite'),
('MPITO BIENDE', 13, 'fauve_azur_elite'),
('MBELE MVONDO', 9, 'fauve_azur_elite'),
('KOFANA BEPEGUE', 12, 'fauve_azur_elite'),
('GAMALE FEUDJEUN', 1, 'fauve_azur_elite'),
('KENGNE KENGNE', 7, 'fauve_azur_elite'),
('ABBA', 26, 'fauve_azur_elite'),
('KAMENI NGAMALIEU', 17, 'fauve_azur_elite'),
('ATEME EBONG', 5, 'fauve_azur_elite'),
('MEKE ZANGA', 32, 'fauve_azur_elite'),
('MFEDE', 10, 'fauve_azur_elite'),
('BEMBONG', 34, 'fauve_azur_elite'),
('KOULOU', 11, 'fauve_azur_elite'),
('NGOMENI', 6, 'fauve_azur_elite'),
('BAKINEN', 25, 'fauve_azur_elite'),
('ESSOUNGA ELOUNOU', 14, 'fauve_azur_elite'),
('EPANDA KEMKOOH', 8, 'fauve_azur_elite'),
('ATANGANA', 20, 'fauve_azur_elite'),
('ONDOBO ABENA', 24, 'fauve_azur_elite'),
('ESSAMA BENGONO', 29, 'fauve_azur_elite'),
('NYENGUE ATSIGA', 19, 'fauve_azur_elite'),
('IBRAHIM', 18, 'fauve_azur_elite'),
('SOULEMAN', 23, 'fauve_azur_elite'),
('ABDOUL', 2, 'fauve_azur_elite'),
('OWOUNDI EVOUNA', 31, 'fauve_azur_elite'),
('SAKAVA SANGOLA', 30, 'fauve_azur_elite'),
('ADAMOU DANSOHO', 16, 'fauve_azur_elite'),
('OUKINE TCHEOUDE', 8, 'coton_sport'),
('MBE DOUNGLI', 4, 'coton_sport'),
('CHAMDJOU NGUEWAWE', 11, 'coton_sport'),
('MBAHBI BOUYANE', 22, 'coton_sport'),
('ONANINA KOULFE', 25, 'coton_sport'),
('DAMAN BOUBA', 7, 'coton_sport'),
('NCHINDO JOHN BOSCO', 30, 'coton_sport'),
('ALOUKOU ESSEPE', 5, 'coton_sport'),
('ABDOUL AZIZ', 18, 'coton_sport'),
('BESSALA BESSALA', 1, 'coton_sport'),
('DAMNA KIBE', 32, 'coton_sport'),
('MOUSSA', 9, 'coton_sport'),
('FADYL OUSMANOU', 21, 'coton_sport'),
('DOMTOUNE MAAKTE', 24, 'coton_sport'),
('NTSAGUE', 17, 'coton_sport'),
('DOUJOUNA', 27, 'coton_sport'),
('MEKONGO', 2, 'coton_sport'),
('AHMADOU AHIDJO', 13, 'coton_sport'),
('DAWAI GOULVA', 6, 'coton_sport'),
('ELLA Il', 28, 'coton_sport'),
('KINGSLEY', 35, 'coton_sport'),
('ANDELA MENDJE', 26, 'coton_sport'),
('EMGA', 19, 'coton_sport'),
('AMADOU YOUGOUDA', 29, 'coton_sport'),
('DJONKEP NKUILAN', 15, 'coton_sport'),
('ALLAMBATNAN', 31, 'coton_sport'),
('ADAMOU LIFAB', 3, 'coton_sport'),
('BAYAM', 16, 'coton_sport'),
('MANGUELE ELONG', 20, 'coton_sport'),
('KOKOLO', 23, 'coton_sport'),
('YAPENDE', 12, 'coton_sport'),
('DAN ASSABE', 33, 'coton_sport'),
('NJOH EDIMO', 10, 'coton_sport'),
('AGADA', 14, 'coton_sport'),
('AVAMA ADJINI', 34, 'coton_sport'),
('SUIJM', 28, 'colombe'),
('ESSIANE NDJONGOLO', 8, 'colombe'),
('DJOMO KOUPKOUA', 13, 'colombe'),
('MINKO MBA', 24, 'colombe'),
('EKOTTO', 11, 'colombe'),
('FERGANI PATRICK', 30, 'colombe'),
('YENANG 3', 7, 'colombe'),
('DJIALEU TOUKO', 3, 'colombe'),
('ABATA ANGOULA', 4, 'colombe'),
('HAMZA', 23, 'colombe'),
('NGOMO TAKOUGOUM', 5, 'colombe'),
('NFOR FINIA', 34, 'colombe'),
('JOEL LEE-CONRAD', 31, 'colombe'),
('LOEMBA', 32, 'colombe'),
('MVONDO OLAMA', 10, 'colombe'),
('ESILIKOH', 15, 'colombe'),
('EYANGO PRISO', 17, 'colombe'),
('ONANA MVOGO', 35, 'colombe'),
('ABENG MEFOE', 22, 'colombe'),
('AKONGO EVOUNA', 27, 'colombe'),
('MVONDO AYISSI', 29, 'colombe'),
('BIDE NDOHOUNGAR', 9, 'colombe'),
('MOUKEU', 26, 'colombe'),
('HANDZONGO', 2, 'colombe'),
('MATABA', 25, 'colombe'),
('IKONG', 1, 'colombe'),
('ONANA', 12, 'colombe'),
('NTIJME KWALAR', 18, 'colombe'),
('NDZOMO ELOUNDOU', 6, 'colombe'),
('TCHOUTA', 14, 'colombe'),
('ONANA', 33, 'colombe'),
('EDMOND', 21, 'colombe'),
('ACHU', 20, 'colombe'),
('EKO TINDI', 16, 'colombe'),
('YENE', 19, 'colombe'),
('YOUGOUDA KADA', 14, 'gazelle'),
('WANRE DAIKREO', 15, 'gazelle'),
('AOUDOU', 12, 'gazelle'),
('KALGON KADA', 28, 'gazelle'),
('NOUHOU', 22, 'gazelle'),
('MOHAMADOU', 25, 'gazelle'),
('OUSMANOU SAKOUA', 30, 'gazelle'),
('DJAPA TCHAPTCHET', 29, 'gazelle'),
('', 27, 'gazelle'),
('MANYO', 19, 'gazelle'),
('MOUSSOL KOTTO', 6, 'gazelle'),
('NGANSIRI', 3, 'gazelle'),
('BINNI', 11, 'gazelle'),
('ZAKARI YAOU', 7, 'gazelle'),
('MAINA MATAKON', 2, 'gazelle'),
('EFALA', 8, 'gazelle'),
('AHMADOU BARKA', 20, 'gazelle'),
('DAURA', 9, 'gazelle'),
('TCHOANFINE PADE', 5, 'gazelle'),
('DOUMBE YOUMBA', 17, 'gazelle'),
('NGUEMBOU', 40, 'gazelle'),
('IBI', 18, 'gazelle'),
('ASHIJ', 23, 'gazelle'),
('MEKILA', 13, 'gazelle'),
('MONYEBE', 10, 'gazelle'),
('BANZI NGU', 4, 'gazelle'),
('IBRAHIM', 1, 'gazelle'),
('SAID ABOUBAKAR', 21, 'gazelle'),
('MAHMAN', 24, 'gazelle'),
('GUIGNO ROBERT', 32, 'gazelle'),
('YIKENA SARMO', 31, 'gazelle'),
('MBOHOU', 28, 'penthere'),
('NDONGO GUIEGOU', 33, 'penthere'),
('NGUEMALEU', 4, 'penthere'),
('FOPA NGOULA', 8, 'penthere'),
('TCHONLAFI NZOFANG', 21, 'penthere'),
('NGONDO DISHONO', 9, 'penthere'),
('ATEDJOE MVIEZOA', 15, 'penthere'),
('NJINGA', 32, 'penthere'),
('DOKO BELLO', 35, 'penthere'),
('MBARGA ATEDZOE', 27, 'penthere'),
('TALLA', 1, 'penthere'),
('TIBA MOUSSASSA', 14, 'penthere'),
('BAMEN NDJEYA', 23, 'penthere'),
('BLAOWE DJAOUSSOU', 36, 'penthere'),
('LEBOUM MELI', 6, 'penthere'),
('TCHOUNGA', 2, 'penthere'),
('NFANSEU SINYÅM', 17, 'penthere'),
('YOTCHOU YOTDEP', 11, 'penthere'),
('VERALOH', 5, 'penthere'),
('NOMO ONGUENE', 22, 'penthere'),
('EMBO Il', 30, 'penthere'),
('KOUAM KAMGUEM', 3, 'penthere'),
('BOUBAKARY Il', 26, 'penthere'),
('AKONGO', 7, 'penthere'),
('WILLIAMS JR', 31, 'penthere'),
('FEUMBA YANOU', 24, 'penthere'),
('NZONG', 25, 'penthere'),
('BEYINA BEDJIGUI', 19, 'penthere'),
('ABDOU', 14, 'stade_renard'),
('AKO', 10, 'stade_renard'),
('MBELLA', 1, 'stade_renard'),
('NDAM TEBO', 34, 'stade_renard'),
('KUISSI FOSSI', 22, 'stade_renard'),
('ZEMANGA KOTAZO', 9, 'stade_renard'),
('CHRIS TERENCE', 33, 'stade_renard'),
('PERRY', 18, 'stade_renard'),
('KOMBI EPOH', 7, 'stade_renard'),
('NZOKOU MOUAFO', 21, 'stade_renard'),
('NGOUBE ABOU', 20, 'stade_renard'),
('ANGO EBELLE', 12, 'stade_renard'),
('SAMBACK', 26, 'stade_renard'),
('MBANG', 29, 'stade_renard'),
('ETOUNDI', 27, 'stade_renard'),
('MBELLA MBELLA', 8, 'stade_renard'),
('NKOUAM POLLA', 19, 'stade_renard'),
('HASCHOU', 16, 'stade_renard'),
('OBAMA BEDINGA', 35, 'stade_renard'),
('SEUNDO SIME', 23, 'stade_renard'),
('ZEUKANG FOMEN', 24, 'stade_renard'),
('DONHDA', 25, 'stade_renard'),
('DIN NJOH', 13, 'stade_renard'),
('WOHTING YESI', 6, 'stade_renard'),
('BENGONO BENGONO MANGAS', 32, 'stade_renard'),
('BEKONO', 28, 'stade_renard'),
('BEDIME DIKOMBWE', 5, 'stade_renard'),
('NKUISSI TCHOUENKAM', 4, 'stade_renard'),
('NGOBARA NDONGMOUI', 2, 'stade_renard'),
('BALLA FOE', 3, 'stade_renard'),
('LIMA LEBA', 30, 'stade_renard'),
('NAMEDJI', 11, 'stade_renard'),
('TCHAKOUNTE', 17, 'stade_renard'),
('LEUYO KAMALE', 31, 'stade_renard'),
('BECOMBO ASSAN', 15, 'stade_renard'),
('ICHU', 27, 'union_douala'),
('FOKAM SOKENG', 36, 'union_douala'),
('TCHAOUA KAMMEM', 10, 'union_douala'),
('MOUKAP', 2, 'union_douala'),
('BONG', 22, 'union_douala'),
('YINKFU', NULL, 'union_douala'),
('HAMIT', 7, 'union_douala'),
('ELIMBI', 1, 'union_douala'),
('NOUBIBOU TOKO', 37, 'union_douala'),
('BETORO A DANG', 38, 'union_douala'),
('DJEBAYI MAKON', 9, 'union_douala'),
('ABDOULARDO', 26, 'union_douala'),
('NYAMI', 8, 'union_douala'),
('SANGA SEPDJA', 5, 'union_douala'),
('EGBE', 17, 'union_douala'),
('YVES ALAIN', 6, 'union_douala'),
('AKIBONG', 32, 'union_douala'),
('PAGNING YAMENDJEU', 29, 'union_douala'),
('SAMUEL SOMB', 14, 'union_douala'),
('MBELECK BAYIHA', 33, 'union_douala'),
('TAGNI MATAPON', 31, 'union_douala'),
('ABDOULAYE', 19, 'union_douala'),
('PATEN', 4, 'union_douala'),
('LOLTEN', 16, 'union_douala'),
('FOKE NOUBISSIE', 35, 'union_douala'),
('BONWO WAMBA', 30, 'union_douala'),
('TCHIDJO YOUBI', 15, 'union_douala'),
('BORGNE', 23, 'union_douala'),
('MOUNIR', 12, 'union_douala'),
('BOUNDA PHARELL', 13, 'union_douala'),
('PECKO', 21, 'victoria_united'),
('CHAMDJOU GUERADJOU', 35, 'victoria_united'),
('TCHAHA NANA', 30, 'victoria_united'),
('AZEH', 16, 'victoria_united'),
('GILBERT MOHFESSAMA DIDIER', 6, 'victoria_united'),
('DJOMENI FOKAM', 2, 'victoria_united'),
('', 1, 'victoria_united'),
('MIJKETE', 17, 'victoria_united'),
('ENOPA EWANE', 8, 'victoria_united'),
('SONGUE', 28, 'victoria_united'),
('TCHANNA TCHANNA', 24, 'victoria_united'),
('AKAMBA', 33, 'victoria_united'),
('ISRAEL', 9, 'victoria_united'),
('NTAKA', 13, 'victoria_united'),
('NGUEFACK NGUEDIA', 12, 'victoria_united'),
('ACHA', 35, 'victoria_united'),
('BELINGA', 27, 'victoria_united'),
('Dl BOTO', 19, 'victoria_united'),
('GARBA', 5, 'victoria_united'),
('DAHIROU', 3, 'victoria_united'),
('MBAH', 29, 'victoria_united'),
('NGU MAXWEL', 4, 'victoria_united'),
('MANJIE', 11, 'victoria_united'),
('TETEGO EBENE', 7, 'victoria_united'),
('BITJICK NKONDJOCK', 14, 'victoria_united'),
('NJI', 18, 'victoria_united'),
('MBAKEL KEMAJOU', 23, 'victoria_united'),
('JERVIS', 25, 'victoria_united'),
('NGUTSE', 22, 'victoria_united'),
('DOUALLA', 10, 'victoria_united'),
('ITOE', 15, 'victoria_united'),
('ZEH MENGUE', 31, 'victoria_united'),
('ANYE', 16, 'yong_sport_academy'),
('WAYI', 17, 'yong_sport_academy'),
('NZOGUE', 23, 'yong_sport_academy'),
('KAMAKA FILS', 7, 'yong_sport_academy'),
('NDONWIE', 25, 'yong_sport_academy'),
('AMBE NDOWI', 28, 'yong_sport_academy'),
('ABOH NLAM', 4, 'yong_sport_academy'),
('NOUKEU NIKE', 33, 'yong_sport_academy'),
('WAMAKA', 34, 'yong_sport_academy'),
('NGUELE NKOTTO', 30, 'yong_sport_academy'),
('KONGNYUY', 10, 'yong_sport_academy'),
('MBANGUE TOKO', 15, 'yong_sport_academy'),
('CHO', 24, 'yong_sport_academy'),
('SIFOR DIDAN', 2, 'yong_sport_academy'),
('WIRIKOM', 27, 'yong_sport_academy'),
('MOHAMMED', 11, 'yong_sport_academy'),
('JUNIOR', 22, 'yong_sport_academy'),
('EBONGUE EBENGUE', 20, 'yong_sport_academy'),
('BIALA MEDI', 35, 'yong_sport_academy'),
('FONCHAM', 14, 'yong_sport_academy'),
('NGANI KAMENI', 31, 'yong_sport_academy'),
('TIAMBOU', 8, 'yong_sport_academy'),
('DOOH MOUKOKO', 3, 'yong_sport_academy'),
('AGBOR', 9, 'yong_sport_academy'),
('ATANGA FABRICE', 13, 'yong_sport_academy'),
('NTEBEU DJOKO', NULL, 'dynamo_douala'),
('NTIECHE', NULL, 'dynamo_douala'),
('MOMASO', NULL, 'dynamo_douala'),
('NYECK IV', NULL, 'dynamo_douala'),
('BASSONG', NULL, 'dynamo_douala'),
('PANGE LOBE', NULL, 'dynamo_douala'),
('FEGUE OMGBA', NULL, 'dynamo_douala'),
('NGANKAM', NULL, 'dynamo_douala'),
('NGATCHEUT', NULL, 'dynamo_douala'),
('MOLUH MOUNTA', NULL, 'dynamo_douala'),
('HEUMEN YONKEU', NULL, 'dynamo_douala'),
('BAHO HENOCK', NULL, 'dynamo_douala'),
('MINLO', NULL, 'dynamo_douala'),
('TIBAB BLAISE', NULL, 'dynamo_douala'),
('BATOUM', NULL, 'dynamo_douala'),
('MONGO OND', NULL, 'dynamo_douala'),
('SINKOT', NULL, 'dynamo_douala'),
('FEUMI YANOU', NULL, 'dynamo_douala'),
('LIMALEBA', NULL, 'dynamo_douala'),
('BILEBEYE', NULL, 'dynamo_douala'),
('ESSAPA ESSEME', NULL, 'dynamo_douala'),
('NGAMAKOUA', NULL, 'dynamo_douala'),
('MPEK', NULL, 'dynamo_douala'),
('MOUNDI', NULL, 'dynamo_douala'),
('MANGA MBAH', NULL, 'dynamo_douala'),
('OUMAROU', NULL, 'dynamo_douala'),
('HANDY III', NULL, 'dynamo_douala'),
('KEBEL BASSINHA', NULL, 'dynamo_douala'),
('NANGA', NULL, 'dynamo_douala'),
('PAJIP', NULL, 'dynamo_douala'),
('KENDA NEKAK', NULL, 'dynamo_douala'),
('ALBERT', NULL, 'dynamo_douala');

-- --------------------------------------------------------

--
-- Structure de la table `penthere`
--

CREATE TABLE `penthere` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `penthere`
--

INSERT INTO `penthere` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 0, 1, -1, 0, 0, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 2, -2, 0, 0, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 1, 1, 3, 3, 16, 9, 9, NULL, NULL, 7, 5, NULL, NULL),
(4, 4, 0, 4, 3, 6, 6, 9, 10, 9, 11, 7, 7, 13, 4),
(5, 1, 1, 0, 1, 7, 7, 9, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(6, 0, 1, -1, 0, 7, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 2, -1, 0, 7, 12, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(8, 2, 0, 2, 3, 10, 8, 10, 9, NULL, NULL, 8, 7, NULL, NULL),
(9, 2, 1, 1, 3, 13, 6, 9, 9, NULL, NULL, 10, 7, NULL, NULL),
(10, 1, 0, 1, 3, 16, 5, 9, NULL, NULL, NULL, 5, NULL, NULL, NULL),
(11, 0, 0, 0, 1, 17, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 0, 1, 3, 20, 4, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(13, 2, 1, 1, 3, 24, 4, 10, 9, NULL, NULL, 12, 7, NULL, NULL),
(14, 0, 0, 0, 1, 24, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 0, 3, -3, 0, 24, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 2, 2, 0, 1, 24, 8, 10, 9, NULL, NULL, 8, 10, NULL, NULL),
(17, 1, 0, 1, 3, 27, 5, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(18, 2, 0, 2, 3, 30, 4, 9, 9, NULL, NULL, 10, 7, NULL, NULL),
(19, 1, 1, 0, 1, 31, 4, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(20, 1, 0, 1, 3, 35, 4, 10, NULL, NULL, NULL, 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `stade_renard`
--

CREATE TABLE `stade_renard` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stade_renard`
--

INSERT INTO `stade_renard` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 0, 0, 0, 1, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 4, -3, 0, 1, 14, 8, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(3, 1, 1, 0, 1, 2, 13, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(4, 3, 0, 3, 3, 5, 11, 9, 9, 8, NULL, 10, 7, 10, NULL),
(5, 0, 1, -1, 0, 5, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 0, 1, 3, 8, 8, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(7, 1, 1, 0, 1, 9, 9, 8, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(8, 0, 2, -2, 0, 9, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 2, 0, 2, 3, 12, 8, 9, 10, NULL, NULL, 10, 8, NULL, NULL),
(10, 0, 1, -1, 0, 12, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 0, 1, 3, 15, 7, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(12, 2, 0, 2, 3, 18, 6, 10, 7, NULL, NULL, 9, 8, NULL, NULL),
(13, 2, 0, 2, 3, 21, 5, 9, 10, NULL, NULL, 8, 7, NULL, NULL),
(14, 1, 1, 0, 1, 22, 6, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(15, 2, 1, 1, 3, 25, 4, 10, 9, NULL, NULL, 8, 7, NULL, NULL),
(16, 0, 1, -1, 0, 25, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 3, 0, 3, 3, 28, 3, 10, 9, 10, NULL, 7, 10, 8, NULL),
(18, 1, 1, 0, 1, 29, 5, 9, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(19, 0, 2, -2, 0, 29, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `union_douala`
--

CREATE TABLE `union_douala` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `union_douala`
--

INSERT INTO `union_douala` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 4, 3, 1, 3, 3, 3, 10, 10, 8, 7, 5, 8, 10, 11),
(2, 1, 1, 0, 1, 4, 4, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(3, 3, 1, 2, 3, 7, 2, 9, 8, 8, NULL, 10, 11, 13, NULL),
(4, 0, 3, -3, 0, 7, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, 2, -2, 0, 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, 1, -1, 0, 7, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 0, 0, 0, 1, 8, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, 2, -2, 0, 8, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 2, -1, 0, 8, 14, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(10, 1, 0, 1, 3, 11, 12, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(11, 0, 1, -1, 0, 11, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 2, -1, 0, 11, 13, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(13, 1, 2, -1, 0, 11, 15, 9, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(14, 1, 0, 1, 3, 14, 12, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(15, 0, 1, -1, 0, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, 1, 0, 1, 15, 13, 7, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(17, 0, 1, -1, 0, 15, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, 1, 0, 1, 16, 1, 10, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(19, 0, 3, -3, 0, 16, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 0, 0, 0, 1, 17, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `victoria_united`
--

CREATE TABLE `victoria_united` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `victoria_united`
--

INSERT INTO `victoria_united` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 3, 0, 3, 3, 3, 1, 10, 10, 7, NULL, 8, 11, 10, NULL),
(2, 1, 1, 0, 1, 4, 1, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(3, 2, 0, 2, 3, 7, 1, 9, 10, NULL, NULL, 7, 8, NULL, NULL),
(4, 0, 4, -4, 0, 7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, 1, 2, 3, 10, 3, 10, 9, 8, NULL, 7, 10, 11, NULL),
(6, 1, 2, -1, 0, 10, 5, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(7, 3, 1, 2, 3, 13, 3, 10, 10, 9, NULL, 9, 9, 7, NULL),
(8, 1, 1, 0, 1, 14, 3, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(9, 1, 3, -2, 0, 14, 5, 10, NULL, NULL, NULL, 8, NULL, NULL, NULL),
(10, 0, 3, -3, 0, 14, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 0, 1, -1, 0, 14, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 0, 2, -2, 0, 14, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 2, 1, 1, 3, 17, 9, 10, 9, NULL, NULL, 8, 7, NULL, NULL),
(14, 1, 1, 0, 1, 18, 8, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(15, 1, 0, 1, 3, 21, 9, 10, NULL, NULL, NULL, 12, NULL, NULL, NULL),
(16, 1, 2, -1, 0, 21, 9, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(17, 2, 0, 2, 3, 24, 9, 7, 8, NULL, NULL, 10, 9, NULL, NULL),
(18, 4, 0, 4, 3, 27, 6, 10, 10, 9, 7, 11, 6, 10, 9),
(19, 1, 1, 0, 1, 28, 7, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(20, 2, 0, 2, 3, 31, 6, 9, 14, NULL, NULL, 10, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `yong_sport_academy`
--

CREATE TABLE `yong_sport_academy` (
  `Journee` int(11) NOT NULL,
  `buts_marques` int(11) NOT NULL,
  `buts_encaisses` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `points_acquis` int(11) NOT NULL,
  `points_total` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dorsat_Buteur_but1` int(11) DEFAULT NULL,
  `dorsat_Buteur_but2` int(11) DEFAULT NULL,
  `dorsat_Buteur_but3` int(11) DEFAULT NULL,
  `dorsat_Buteur_but4` int(11) DEFAULT NULL,
  `dorsat_passeur_but1` int(11) DEFAULT NULL,
  `dorsat_passeur_but2` int(11) DEFAULT NULL,
  `dorsat_passeur_but3` int(11) DEFAULT NULL,
  `dorsat_passeur_but4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `yong_sport_academy`
--

INSERT INTO `yong_sport_academy` (`Journee`, `buts_marques`, `buts_encaisses`, `db`, `points_acquis`, `points_total`, `position`, `dorsat_Buteur_but1`, `dorsat_Buteur_but2`, `dorsat_Buteur_but3`, `dorsat_Buteur_but4`, `dorsat_passeur_but1`, `dorsat_passeur_but2`, `dorsat_passeur_but3`, `dorsat_passeur_but4`) VALUES
(1, 0, 3, -3, 0, 0, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 0, 0, 1, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 3, -2, 0, 1, 15, 9, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(4, 1, 3, -2, 0, 1, 16, 9, NULL, NULL, NULL, 5, NULL, NULL, NULL),
(5, 1, 1, 0, 1, 2, 16, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(6, 0, 1, -1, 0, 2, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 4, -3, 0, 2, 16, 9, NULL, NULL, NULL, 10, NULL, NULL, NULL),
(8, 0, 2, -2, 0, 2, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 2, 0, 2, 3, 5, 16, 10, 9, NULL, NULL, 7, 8, NULL, NULL),
(10, 1, 1, 0, 1, 6, 16, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(11, 0, 2, -2, 0, 6, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 0, 2, -2, 0, 6, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, 3, -2, 0, 6, 16, 10, NULL, NULL, NULL, 9, NULL, NULL, NULL),
(14, 0, 0, 0, 1, 7, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 2, 1, -1, 0, 7, 16, 9, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(16, 2, 1, 1, 3, 10, 16, 10, 7, NULL, NULL, 9, 9, NULL, NULL),
(17, 1, 0, 1, 3, 13, 16, 9, NULL, NULL, NULL, 12, NULL, NULL, NULL),
(18, 1, 1, 0, 1, 14, 16, 10, NULL, NULL, NULL, 7, NULL, NULL, NULL),
(19, 0, 0, 0, 1, 15, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 0, 1, -1, 0, 15, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aigle_royal`
--
ALTER TABLE `aigle_royal`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `astres`
--
ALTER TABLE `astres`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `bamboutos`
--
ALTER TABLE `bamboutos`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `bamenda`
--
ALTER TABLE `bamenda`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `canon_yaounde`
--
ALTER TABLE `canon_yaounde`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `colombe`
--
ALTER TABLE `colombe`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `coton_sport`
--
ALTER TABLE `coton_sport`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `dynamo_douala`
--
ALTER TABLE `dynamo_douala`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `fauve_azur_elite`
--
ALTER TABLE `fauve_azur_elite`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `fortuna_mfou`
--
ALTER TABLE `fortuna_mfou`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `gazelle`
--
ALTER TABLE `gazelle`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `penthere`
--
ALTER TABLE `penthere`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `stade_renard`
--
ALTER TABLE `stade_renard`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `union_douala`
--
ALTER TABLE `union_douala`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `victoria_united`
--
ALTER TABLE `victoria_united`
  ADD PRIMARY KEY (`Journee`);

--
-- Index pour la table `yong_sport_academy`
--
ALTER TABLE `yong_sport_academy`
  ADD PRIMARY KEY (`Journee`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aigle_royal`
--
ALTER TABLE `aigle_royal`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `astres`
--
ALTER TABLE `astres`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `bamboutos`
--
ALTER TABLE `bamboutos`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `bamenda`
--
ALTER TABLE `bamenda`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `canon_yaounde`
--
ALTER TABLE `canon_yaounde`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `colombe`
--
ALTER TABLE `colombe`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `coton_sport`
--
ALTER TABLE `coton_sport`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `dynamo_douala`
--
ALTER TABLE `dynamo_douala`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `fauve_azur_elite`
--
ALTER TABLE `fauve_azur_elite`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `fortuna_mfou`
--
ALTER TABLE `fortuna_mfou`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `gazelle`
--
ALTER TABLE `gazelle`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `penthere`
--
ALTER TABLE `penthere`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `stade_renard`
--
ALTER TABLE `stade_renard`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `union_douala`
--
ALTER TABLE `union_douala`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `victoria_united`
--
ALTER TABLE `victoria_united`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `yong_sport_academy`
--
ALTER TABLE `yong_sport_academy`
  MODIFY `Journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

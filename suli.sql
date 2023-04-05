-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 05. 10:46
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `suli`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `iskola`
--

CREATE TABLE `iskola` (
  `iskolaAzon` int(11) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `varosazon` int(11) NOT NULL,
  `kep` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='iskola számalk szalézi szf1a1';

--
-- A tábla adatainak kiíratása `iskola`
--

INSERT INTO `iskola` (`iskolaAzon`, `nev`, `varosazon`, `kep`) VALUES
(40, 'kadarlaszlo', 1224, 'imgdata/budapest'),
(50, 'kadarlaszlo', 1225, 'imgdata/budapest.jpg'),
(60, 'evingerbono', 1011, 'imgdata/xiker.jpg'),
(70, 'kereszteshunor', 1670, 'imgdata/xviiker.jpg'),
(80, 'nagysandor', 800, 'imgdata/8ker.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szak`
--

CREATE TABLE `szak` (
  `szakAzon` int(11) NOT NULL,
  `iskolaAzon` int(11) NOT NULL,
  `nev` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='iskola számalk szalézi szf1a1';

--
-- A tábla adatainak kiíratása `szak`
--

INSERT INTO `szak` (`szakAzon`, `iskolaAzon`, `nev`) VALUES
(2, 40, 'kadarlaszlo');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `varos`
--

CREATE TABLE `varos` (
  `varosAzon` int(11) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `kep` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `varos`
--

INSERT INTO `varos` (`varosAzon`, `nev`, `kep`) VALUES
(800, 'nagysandor', 'imgdata/8ker.jpg'),
(1011, 'evingerbono', 'imgdata/xiker.jpg'),
(1224, 'Budapest', 'imgdata/budapest'),
(1225, 'kadarlaszlo', 'imgdata/budapest.jpg'),
(1670, 'kereszteshunor', 'imgdata/xviiker.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `iskola`
--
ALTER TABLE `iskola`
  ADD PRIMARY KEY (`iskolaAzon`),
  ADD KEY `iskolaAzon` (`iskolaAzon`),
  ADD KEY `iskolaAzon_2` (`iskolaAzon`),
  ADD KEY `varosazon` (`varosazon`);

--
-- A tábla indexei `szak`
--
ALTER TABLE `szak`
  ADD PRIMARY KEY (`szakAzon`),
  ADD KEY `szakAzon` (`szakAzon`),
  ADD KEY `iskolaAzon` (`iskolaAzon`);

--
-- A tábla indexei `varos`
--
ALTER TABLE `varos`
  ADD PRIMARY KEY (`varosAzon`),
  ADD KEY `varosAzon` (`varosAzon`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `iskola`
--
ALTER TABLE `iskola`
  ADD CONSTRAINT `iskola_ibfk_1` FOREIGN KEY (`varosazon`) REFERENCES `varos` (`varosAzon`);

--
-- Megkötések a táblához `szak`
--
ALTER TABLE `szak`
  ADD CONSTRAINT `szak_ibfk_1` FOREIGN KEY (`iskolaAzon`) REFERENCES `iskola` (`iskolaAzon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

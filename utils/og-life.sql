-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2024 at 07:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `og-life`
--

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `AdminName` varchar(25) NOT NULL,
  `Reason` varchar(64) NOT NULL,
  `Days` int(4) NOT NULL,
  `Permanent` tinyint(1) NOT NULL,
  `BanTimeDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billboards`
--

CREATE TABLE `billboards` (
  `ID` int(3) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `RX` float NOT NULL,
  `RY` float NOT NULL,
  `RZ` float NOT NULL,
  `Owner` varchar(25) NOT NULL,
  `Text` varchar(32) NOT NULL,
  `Price` int(11) NOT NULL,
  `PX` float NOT NULL,
  `PY` float NOT NULL,
  `PZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billboards`
--

INSERT INTO `billboards` (`ID`, `X`, `Y`, `Z`, `RX`, `RY`, `RZ`, `Owner`, `Text`, `Price`, `PX`, `PY`, `PZ`) VALUES
(1, 1280.62, -916.837, 62.6221, 0, 0, 112.44, 'Server', 'Text', 0, 1630.68, -838.833, 58.9143),
(2, 885.495, -971.044, 54.8929, 0, 0, 147.84, 'Server', 'Text', 0, 1281.14, -916.101, 41.8603),
(3, 213.632, -1494.75, 27.4317, 0, 0, -77.58, 'Server', 'Text', 0, 884.493, -971.44, 36.591),
(4, 356.325, -1717.86, 27.6264, 0, 0, -58.0804, 'Server', 'Text', 0, 215.432, -1490.3, 13.3372),
(5, 1415.18, -1720.82, 35.2359, 0, 0, 168.3, 'Server', 'Text', 0, 355.764, -1707.77, 6.8721),
(6, 1805.78, -1691.92, 31.3436, 0, 0, 174.96, 'Server', 'Text', 0, 1414.63, -1720.38, 13.5469),
(7, 1850.34, -1050.83, 34.9722, 0, 0, 100.38, 'Server', 'Text', 0, 1851.49, -1046.56, 24.0834),
(8, 2838.44, -1704.56, 32.1073, 0, 0, 155.46, 'Server', 'Text', 0, 2837.95, -1703.73, 11.0469),
(9, 1631.15, -839.52, 78.2551, 0, 0, 164.999, 'Server', 'Text', 0, 2246.4, -1965.51, 13.5485),
(10, 2246.82, -1964.73, 33.8261, 0, 0, 123.42, 'Server', 'Text', 0, 1808.6, -1696.03, 13.5494);

-- --------------------------------------------------------

--
-- Table structure for table `bizz`
--

CREATE TABLE `bizz` (
  `ID` int(11) NOT NULL,
  `Owner` varchar(25) NOT NULL DEFAULT 'Server',
  `EntranceX` float NOT NULL,
  `EntranceY` float NOT NULL,
  `EntranceZ` float NOT NULL,
  `EntranceCost` int(7) NOT NULL DEFAULT 50000,
  `Till` int(11) NOT NULL,
  `Type` int(3) NOT NULL,
  `Prices` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bizz`
--

INSERT INTO `bizz` (`ID`, `Owner`, `EntranceX`, `EntranceY`, `EntranceZ`, `EntranceCost`, `Till`, `Type`, `Prices`) VALUES
(1, 'Server', 1457.14, -1010.39, 26.8438, 1, 0, 1, 0),
(2, 'Server', 1368.49, -1279.75, 13.5469, 1, 0, 2, 0),
(3, 'Server', 1199.3, -918.343, 43.1214, 1, 0, 6, 0),
(4, 'Server', 672.124, -646.747, 16.3359, 1, 0, 6, 0),
(5, 'Server', 816.377, -1387.5, 13.612, 1, 0, 6, 0),
(6, 'Server', 982.386, -1417.75, 13.423, 1, 0, 6, 0),
(7, 'Server', 1087.69, -922.921, 43.3906, 1, 0, 3, 0),
(8, 'Server', 1498.63, -1581.04, 13.5498, 1, 0, 4, 0),
(9, 'Server', 2400.5, -1981.83, 13.5469, 1, 0, 2, 0),
(10, 'Server', 1000.15, -919.989, 42.3281, 1, 0, 5, 0),
(11, 'Server', 2117.47, 896.776, 11.1797, 1, 0, 5, 0),
(12, 'Server', 811.578, -1061.89, 24.9513, 1, 0, 5, 0),
(13, 'Server', 1081.16, -1696.78, 13.5469, 1, 0, 5, 0),
(14, 'Server', 2334.3, 55.5683, 26.4843, 1, 0, 5, 0),
(15, 'Server', 1951.5, 1342.88, 15.3746, 1, 0, 6, 0),
(16, 'Server', 2393.33, 2041.95, 10.8203, 1, 0, 6, 0),
(17, 'Server', 2273.67, 82.058, 26.484, 1, 0, 6, 0),
(18, 'Server', 2397.8, -1899.03, 13.5469, 1, 0, 6, 0),
(19, 'Server', 2420.01, -1509, 24, 1, 0, 6, 0),
(20, 'Server', 1157.92, 2072.29, 11.0625, 1, 0, 6, 0),
(21, 'Server', 1684.65, -1343.16, 17.4366, 1, 0, 1, 0),
(22, 'Server', 1648.33, -1493.85, 13.5469, 1, 0, 2, 0),
(23, 'Server', 1748.18, -1460.82, 13.5263, 1, 0, 3, 0),
(24, 'Server', 2194.31, 1991.05, 12.2969, 1, 0, 5, 0),
(25, 'Server', 2472.41, 2034.29, 11.0625, 1, 0, 6, 0),
(26, 'Server', 1872.68, 2071.87, 11.0625, 1, 0, 6, 0),
(27, 'Server', 2196.81, 1677.1, 12.3672, 1, 0, 1, 0),
(28, 'Server', 1833.78, -1842.72, 13.5781, 1, 0, 5, 0),
(29, 'Server', 2139.6, -1192, 23.9922, 1, 0, 8, 0),
(30, 'Server', 1657.04, 1728.17, 10.8281, 1, 0, 8, 0),
(31, 'Server', 1247.95, -1822.3, 13.4083, 1, 0, 7, 0),
(32, 'Server', 507.768, -1609.03, 16.3077, 1, 0, 8, 0),
(33, 'Server', -1605.74, -2714.12, 48.5335, 1, 0, 9, 0),
(34, 'Server', 720.06, -465.463, 16.3437, 1, 0, 10, 0),
(35, 'Server', 2073.61, -1831.33, 13.5469, 1, 0, 10, 0),
(36, 'Server', 488.345, -1732.94, 11.1786, 1, 0, 10, 0),
(37, 'Server', 1024.81, -1031.44, 31.9807, 1, 0, 10, 0),
(38, 'Server', 1041.18, -1028.96, 32.1016, 1, 0, 11, 0),
(39, 'Server', 2645, -2036.83, 13.554, 1, 0, 11, 0),
(40, 'Server', 1965.17, 2162.75, 10.8203, 1, 0, 10, 0),
(41, 'Server', -1904.65, 274.904, 41.0469, 1, 0, 10, 0),
(42, 'Server', -1673.69, 408.122, 7.398, 1, 0, 9, 0),
(43, 'Server', 1004.31, -939.412, 42.1797, 1, 0, 9, 0),
(44, 'Server', -90.9739, -1167.72, 2.43292, 1, 0, 9, 0),
(45, 'Server', 2118.87, 920.216, 10.8203, 1, 0, 9, 0),
(46, 'Server', 2205.47, 2474.98, 10.8203, 1, 0, 9, 0),
(47, 'Server', 2647.86, 1107.45, 10.8203, 1, 0, 9, 0),
(48, 'Server', 1946.93, -1771.35, 13.5469, 1, 0, 9, 0),
(49, 'Server', 654.227, -564.461, 16.3359, 1, 0, 9, 0),
(50, 'Server', 619.626, 1686.01, 6.71927, 1, 0, 9, 0),
(51, 'Server', 2386.57, 1040.16, 10.8203, 1, 0, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `ID` int(11) NOT NULL,
  `Model` int(4) NOT NULL,
  `Locationx` float NOT NULL,
  `Locationy` float NOT NULL,
  `Locationz` float NOT NULL,
  `Angle` float NOT NULL,
  `ColorOne` int(4) NOT NULL,
  `ColorTwo` int(4) NOT NULL,
  `Owner` varchar(25) NOT NULL,
  `KM` float NOT NULL,
  `Gas` int(3) NOT NULL DEFAULT 100,
  `mod1` int(5) NOT NULL,
  `mod2` int(5) NOT NULL,
  `mod3` int(5) NOT NULL,
  `mod4` int(5) NOT NULL,
  `mod5` int(5) NOT NULL,
  `mod6` int(5) NOT NULL,
  `mod7` int(5) NOT NULL,
  `mod8` int(5) NOT NULL,
  `mod9` int(5) NOT NULL,
  `mod10` int(5) NOT NULL,
  `mod11` int(5) NOT NULL,
  `mod12` int(5) NOT NULL,
  `mod13` int(5) NOT NULL,
  `mod14` int(5) NOT NULL,
  `mod15` int(5) NOT NULL,
  `mod16` int(5) NOT NULL,
  `mod17` int(5) NOT NULL,
  `PaintJ` int(2) NOT NULL DEFAULT 6,
  `BuyTime` int(11) NOT NULL,
  `Stage` tinyint(1) NOT NULL DEFAULT 0,
  `Neon` int(7) NOT NULL DEFAULT 0,
  `NeonCustom` tinyint(1) NOT NULL DEFAULT 0,
  `Working` tinyint(1) NOT NULL DEFAULT 0,
  `VipVehicle` tinyint(1) NOT NULL DEFAULT 0,
  `VipText` varchar(64) NOT NULL DEFAULT 'VipText',
  `VipTextPos` varchar(66) NOT NULL DEFAULT '0|0|0|0|0|0',
  `VipTextColor` varchar(7) NOT NULL DEFAULT 'ffffff',
  `Rainbow` tinyint(1) NOT NULL DEFAULT 0,
  `RainbowOn` tinyint(1) NOT NULL,
  `BoughtMethod` int(2) NOT NULL DEFAULT 0,
  `InGarage` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clanhqs`
--

CREATE TABLE `clanhqs` (
  `ID` int(11) NOT NULL,
  `Type` int(2) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `OwnerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `clans`
--

CREATE TABLE `clans` (
  `clanID` int(12) NOT NULL,
  `clanSlots` int(12) NOT NULL DEFAULT 50,
  `clanSafe` int(12) NOT NULL DEFAULT 0,
  `clanPoints` int(8) NOT NULL DEFAULT 0,
  `clanName` varchar(255) NOT NULL,
  `clanRankName7` varchar(32) NOT NULL DEFAULT 'Owner',
  `clanRankName1` varchar(32) NOT NULL DEFAULT 'Newbie',
  `clanRankName2` varchar(32) NOT NULL DEFAULT 'Member',
  `clanRankName3` varchar(32) NOT NULL DEFAULT 'Advanced',
  `clanRankName4` varchar(32) NOT NULL DEFAULT 'Expert',
  `clanRankName5` varchar(32) NOT NULL DEFAULT 'Legend',
  `clanRankName6` varchar(32) NOT NULL DEFAULT 'Manager',
  `clanColor` varchar(10) NOT NULL DEFAULT 'FFCC99',
  `clanGarageX` float NOT NULL DEFAULT 0,
  `clanGarageY` float NOT NULL DEFAULT 0,
  `clanGarageZ` float NOT NULL DEFAULT 0,
  `cVehs` varchar(18) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0',
  `cMotd` varchar(128) NOT NULL,
  `clanTag` varchar(5) NOT NULL DEFAULT 'None'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clanzones`
--

CREATE TABLE `clanzones` (
  `zoneID` int(11) NOT NULL,
  `zoneClan` int(11) NOT NULL DEFAULT 0,
  `zoneObjX` float NOT NULL DEFAULT 0,
  `zoneObjY` float NOT NULL DEFAULT 0,
  `zoneObjZ` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clanzones`
--

INSERT INTO `clanzones` (`zoneID`, `zoneClan`, `zoneObjX`, `zoneObjY`, `zoneObjZ`) VALUES
(1, 0, 861.768, -1245.79, 14.7845),
(2, 0, 442.067, -1737.94, 9.4036),
(3, 0, 1173.05, -1635.62, 13.9696),
(4, 0, 1289.1, -1871.03, 13.5469),
(5, 0, 1581.75, -1503.6, 13.5594),
(6, 0, 1527.97, -1006.66, 24.0781),
(7, 0, 2343.52, -1320.29, 24.0861),
(8, 0, 2695.98, -1396.32, 32.9509),
(9, 0, 2303.52, -1991.69, 13.5709),
(10, 0, 1876.21, -1576.17, 13.6122);

-- --------------------------------------------------------

--
-- Table structure for table `creatorcodes`
--

CREATE TABLE `creatorcodes` (
  `ID` int(11) NOT NULL,
  `CodeName` varchar(32) NOT NULL,
  `PlayerSQLID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `ID` int(11) NOT NULL,
  `playerid` int(11) NOT NULL,
  `giverid` int(11) NOT NULL,
  `Message` varchar(255) NOT NULL,
  `Time` varchar(255) NOT NULL,
  `EmailRead` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `eX` float NOT NULL,
  `eY` float NOT NULL,
  `eZ` float NOT NULL,
  `Mats` int(11) NOT NULL,
  `Interior` int(4) NOT NULL,
  `Drugs` int(11) NOT NULL,
  `MinLevel` int(3) NOT NULL DEFAULT 1,
  `Application` tinyint(1) NOT NULL DEFAULT 1,
  `LeaderApp` tinyint(1) NOT NULL DEFAULT 0,
  `gMotd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`ID`, `Name`, `X`, `Y`, `Z`, `eX`, `eY`, `eZ`, `Mats`, `Interior`, `Drugs`, `MinLevel`, `Application`, `LeaderApp`, `gMotd`) VALUES
(1, 'Police', 246.869, 62.8318, 1003.64, 1552.7, -1675.64, 16.1953, 0, 6, 0, 1, 0, 0, ''),
(2, 'Grove Street', 2544.55, -1304.85, 1054.64, 2495.58, -1685.33, 13.5134, 0, 2, 0, 1, 0, 0, ''),
(3, 'Ballas', 2544.55, -1304.85, 1054.64, 2255.31, -1333.21, 23.9815, 0, 2, 0, 1, 0, 0, ''),
(4, 'Reporters', 1700.81, -1667.88, 20.2188, 1654.03, -1655.32, 22.5156, 0, 18, 0, 1, 0, 0, ''),
(5, 'Hitman', 774.136, -50.3245, 1000.59, 1080.96, -345.412, 73.9844, 0, 6, 0, 1, 0, 0, ''),
(6, 'Uber', 1700.81, -1667.88, 20.2188, 1753.39, -1911.99, 13.5676, 0, 18, 0, 1, 0, 0, ''),
(7, 'Paramedic', 1700.81, -1667.88, 20.2188, 1172.86, -1323.34, 15.3997, 0, 18, 0, 1, 0, 0, ''),
(8, 'Glovo', 1700.81, -1667.88, 20.2188, 1567.98, -1896.92, 13.5606, 0, 18, 0, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `faction_logs`
--

CREATE TABLE `faction_logs` (
  `id` int(11) NOT NULL,
  `player` int(11) NOT NULL,
  `leader` int(11) NOT NULL,
  `Text` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frequencies`
--

CREATE TABLE `frequencies` (
  `id` int(11) NOT NULL,
  `freqid` int(5) NOT NULL DEFAULT 100,
  `ownerid` int(11) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT 'q'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `ID` int(11) NOT NULL,
  `Entrancex` float NOT NULL,
  `Entrancey` float NOT NULL,
  `Entrancez` float NOT NULL,
  `Exitx` float NOT NULL,
  `Exity` float NOT NULL,
  `Exitz` float NOT NULL,
  `Owner` varchar(25) NOT NULL DEFAULT 'Server',
  `Interior` int(4) NOT NULL,
  `Rent` int(7) NOT NULL DEFAULT 100000,
  `Takings` int(11) NOT NULL,
  `Prices` int(11) NOT NULL,
  `GarageX` float NOT NULL,
  `GarageY` float NOT NULL,
  `GarageZ` float NOT NULL,
  `GarageLocked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`ID`, `Entrancex`, `Entrancey`, `Entrancez`, `Exitx`, `Exity`, `Exitz`, `Owner`, `Interior`, `Rent`, `Takings`, `Prices`, `GarageX`, `GarageY`, `GarageZ`, `GarageLocked`) VALUES
(1, 315.771, -1770.21, 4.6468, 234.203, 1064.15, 1084.21, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(2, 168.157, -1768.57, 4.4841, 235.34, 1186.68, 1080.26, 'Server', 3, 1, 0, 0, 0, 0, 0, 0),
(3, 653.453, -1714.07, 14.7648, 223.2, 1287.08, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(4, 657.024, -1652.74, 15.4063, 2283.3, -1140.29, 1050.9, 'Server', 11, 1, 0, 0, 0, 0, 0, 0),
(5, 1123.06, -2037.01, 69.8937, 1260.64, -785.374, 1091.91, 'Server', 5, 1, 0, 0, 0, 0, 0, 0),
(6, 893.703, -1636.13, 14.9297, 24.068, 1340.55, 1084.38, 'Server', 10, 1, 0, 0, 0, 0, 0, 0),
(7, 1981.96, -1682.92, 17.0538, 83.03, 1322.28, 1083.87, 'Server', 9, 1, 0, 0, 0, 0, 0, 0),
(8, 2065.28, -1703.5, 14.1484, 447.043, 1397.9, 1084.3, 'Server', 2, 1, 0, 0, 0, 0, 0, 0),
(9, 1253.45, -908.065, 46.6016, 83.03, 1322.28, 1083.87, 'Server', 9, 1, 0, 0, 0, 0, 0, 0),
(10, 1093.82, -806.699, 107.42, 140.17, 1366.07, 1083.86, 'Server', 5, 1, 0, 0, 0, 0, 0, 0),
(11, 2016.37, -1641.69, 13.7824, 2308.77, -1212.94, 1049.02, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(12, 2013.46, -1656.5, 14.1363, 223.005, 1287.6, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(13, 167.716, -1308.29, 70.3513, 226.47, 1114.35, 1080.99, 'Server', 5, 1, 0, 0, 0, 0, 0, 0),
(14, 1051.12, -1058.94, 34.7966, 2365.34, -1134.84, 1050.88, 'Server', 8, 1, 0, 0, 0, 0, 0, 0),
(15, 993.701, -1058.48, 33.6995, 2495.74, -1692.82, 1014.74, 'Server', 3, 1, 0, 0, 0, 0, 0, 0),
(16, 2015.79, -1717.01, 13.9556, 243.72, 304.91, 999.148, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(17, 1540.17, -851.187, 64.3361, 24.04, 1340.17, 1084.38, 'Server', 10, 1, 0, 0, 0, 0, 0, 0),
(18, 645.867, -1117.17, 44.207, 83.03, 1322.28, 1083.87, 'Server', 9, 1, 0, 0, 0, 0, 0, 0),
(19, 725.714, -1450.67, 17.6953, 2317.89, -1026.76, 1050.22, 'Server', 9, 1, 0, 0, 0, 0, 0, 0),
(20, 1886.35, -1113.67, 26.2758, -42.59, 1405.47, 1084.43, 'Server', 8, 1, 0, 0, 0, 0, 0, 0),
(21, 1906.11, -1112.99, 26.6641, 223.08, 1287.74, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(22, 280.838, -1767.3, 4.5501, 2308.77, -1212.94, 1049.02, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(23, 692.966, -1602.76, 15.0469, 235.228, 1187.86, 1080.26, 'Server', 3, 1, 0, 0, 0, 0, 0, 0),
(24, 1863.8, -1597.84, 14.3062, 223.324, 1287.08, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(25, 300.019, -1154.68, 81.2482, 225.725, 1021.45, 1084.02, 'Server', 7, 1, 0, 0, 0, 0, 0, 0),
(26, 352.257, -1197.8, 76.5156, 2237.52, -1081.16, 1049.02, 'Server', 2, 1, 0, 0, 0, 0, 0, 0),
(27, 987.098, -1624.47, 14.9297, 2217.82, -1076.14, 1050.48, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(28, 952.63, -909.6, 45.7656, 2196, -1204.32, 1049.02, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(29, 949.853, -987.559, 38.7274, 223.072, 1288.01, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(30, 652.276, -1693.95, 14.5662, 223.021, 1287.73, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(31, 251.494, -1220.4, 76.1024, 234.25, 1063.91, 1084.21, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(32, 901.599, -1514.84, 14.3697, 225.662, 1022.08, 1084.02, 'Server', 7, 1, 0, 0, 0, 0, 0, 0),
(33, 1286.59, -1329.3, 13.554, -42.5781, 1405.96, 1084.43, 'Server', 8, 1, 0, 0, 0, 0, 0, 0),
(34, 958.273, -1808.93, 13.9109, 295.14, 1472.26, 1080.26, 'Server', 15, 1, 0, 0, 0, 0, 0, 0),
(35, 898.394, -677.517, 116.89, 2324.53, -1149.54, 1050.71, 'Server', 12, 1, 0, 0, 0, 0, 0, 0),
(36, 1298.45, -798.446, 84.1406, 234.199, 1064.3, 1084.21, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(37, 933.663, -1804.7, 13.8448, 83.03, 1322.28, 1083.87, 'Server', 9, 1, 0, 0, 0, 0, 0, 0),
(38, 1496.91, -688.058, 95.5633, 140.182, 1366.47, 1083.86, 'Server', 5, 1, 0, 0, 0, 0, 0, 0),
(39, 921.991, -1803.57, 13.8221, 223.2, 1287.08, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(40, 253.089, -1269.89, 74.3585, 234.19, 1063.73, 1084.21, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(41, 253.089, -1269.89, 74.3585, 328.05, 1477.73, 1084.44, 'Server', 15, 1, 0, 0, 0, 0, 0, 0),
(42, 143.151, -1470.61, 25.2036, 328.006, 1478.84, 1084.44, 'Server', 15, 1, 0, 0, 0, 0, 0, 0),
(43, 1141.85, -1069.96, 31.7656, 2196.03, -1204.38, 1049.02, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(44, 1442.63, -629.913, 95.7186, 234.19, 1063.73, 1084.21, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(45, 898.498, -1473.37, 14.2954, 2365.34, -1134.84, 1050.88, 'Server', 8, 1, 0, 0, 0, 0, 0, 0),
(46, 1308.57, -1468.26, 10.0469, 140.17, 1366.07, 1083.86, 'Server', 5, 1, 0, 0, 0, 0, 0, 0),
(47, 840.771, -1627.9, 13.5469, 491.07, 1398.5, 1080.26, 'Server', 2, 1, 0, 0, 0, 0, 0, 0),
(48, 2066.24, -1717.22, 14.1363, 260.85, 1237.24, 1084.26, 'Server', 9, 1, 0, 0, 0, 0, 0, 0),
(49, 2067.11, -1731.73, 14.2066, 260.85, 1237.24, 1084.26, 'Server', 9, 1, 0, 0, 0, 0, 0, 0),
(50, 697.328, -1626.97, 3.7492, 328.05, 1477.73, 1084.44, 'Server', 15, 1, 0, 0, 0, 0, 0, 0),
(51, 767.803, -1655.83, 5.6094, 2259.38, -1135.87, 1050.64, 'Server', 10, 1, 0, 0, 0, 0, 0, 0),
(52, 964.033, -1465.62, 13.4573, -68.7771, 1351.97, 1080.21, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(53, 418.806, -1505.79, 31.2891, 300.862, 309.887, 1003.3, 'Server', 4, 1, 0, 0, 0, 0, 0, 0),
(54, 836.02, -894.719, 68.7689, 234.203, 1064.15, 1084.21, 'Server', 6, 1, 0, 0, 0, 0, 0, 0),
(55, 1095.17, -647.614, 113.648, 140.182, 1366.47, 1083.86, 'Server', 5, 1, 0, 0, 0, 0, 0, 0),
(56, 1045.18, -642.898, 120.117, 225.662, 1022.08, 1084.02, 'Server', 7, 1, 0, 0, 0, 0, 0, 0),
(57, 811.076, -1098.22, 25.9063, 223.08, 1287.74, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(58, 980.245, -677.252, 121.976, 140.182, 1366.47, 1083.86, 'Server', 5, 1, 0, 0, 0, 0, 0, 0),
(59, 1567.07, 18.8152, 24.1641, 223.08, 1287.74, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(60, 1024.13, -983.802, 42.6814, 140.182, 1366.47, 1083.86, 'Server', 5, 1, 0, 0, 0, 0, 0, 0),
(61, 1183.39, -1076.12, 31.6789, 235.407, 1187.37, 1080.26, 'Server', 3, 1, 0, 0, 0, 0, 0, 0),
(62, 367.556, -2051.73, 8.0156, 140.182, 1366.47, 1083.86, 'Server', 5, 1, 0, 0, 0, 0, 0, 0),
(63, 1015.63, -1558.92, 14.8657, 223.08, 1287.74, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(64, 824.585, -1424.15, 14.4985, 235.407, 1187.37, 1080.26, 'Server', 3, 1, 0, 0, 0, 0, 0, 0),
(65, 154.106, -1946.57, 5.3577, 223.08, 1287.74, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0),
(66, 1332.19, -633.478, 109.135, 223.08, 1287.74, 1082.14, 'Server', 1, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `ID` int(11) NOT NULL,
  `JobName` varchar(64) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Owner` varchar(25) NOT NULL DEFAULT 'Server',
  `Balance` int(11) NOT NULL DEFAULT 0,
  `Price` int(11) NOT NULL DEFAULT 0,
  `LastProp` int(11) NOT NULL DEFAULT 0,
  `LastDay` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`ID`, `JobName`, `X`, `Y`, `Z`, `Owner`, `Balance`, `Price`, `LastProp`, `LastDay`) VALUES
(1, 'Detectiv', 607.475, -1459.74, 14.3988, 'Server', 0, 0, 0, 0),
(2, 'Sofer de Stivuitor', 2748.69, -2449.47, 13.6484, 'Server', 0, 0, 0, 0),
(3, 'Dealer de Droguri', 2139.18, -1698.1, 15.0859, 'Server', 0, 0, 0, 0),
(4, 'Fermier', 1925.56, 170.032, 37.2812, 'Server', 0, 0, 0, 0),
(5, 'Dealer de Arme', 2442.55, -1980.75, 13.5469, 'Server', 0, 0, 0, 0),
(6, 'Pescar', 723.261, -1494.57, 1.9343, 'Server', 0, 0, 0, 0),
(7, 'Padurar', 2354.65, -655.82, 128.055, 'Server', 0, 0, 0, 0),
(8, 'Transportator de Gaz', 710.418, 1194.8, 13.3964, 'Server', 0, 0, 0, 0),
(9, 'Livrator de Pizza', 2104.33, -1806.45, 13.5547, 'Server', 0, 0, 0, 0),
(10, 'Sofer de Autobuz', 1973.42, -1282.34, 23.9738, 'Server', 0, 0, 0, 0),
(11, 'Pompier', 1742.94, -1459.61, 13.5074, 'Server', 0, 0, 0, 0),
(12, 'Miner', 590.158, 873.735, -42.4973, 'Server', 0, 0, 0, 0),
(13, 'Sofer de Tir', 2461.02, -2119.79, 13.553, 'Server', 0, 0, 0, 0),
(14, 'Constructor', 2622.86, 793.007, 10.9545, 'Server', 0, 0, 0, 0),
(15, 'Spargator de ATM-uri', 776.56, -1036.76, 24.273, 'Server', 0, 0, 0, 0),
(16, 'Ospatar', 2585.69, 2366.45, 17.8203, 'Server', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kenny_actions`
--

CREATE TABLE `kenny_actions` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `AdminName` varchar(25) NOT NULL,
  `Time` int(11) NOT NULL,
  `Reason` varchar(250) NOT NULL,
  `Type` int(11) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `ComplaintID` int(11) NOT NULL,
  `Gived` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_applications`
--

CREATE TABLE `kenny_applications` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `CreatedDate` varchar(25) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 0,
  `AnswerID` int(11) NOT NULL,
  `AnswerName` varchar(15) NOT NULL,
  `AnswerIP` varchar(20) NOT NULL,
  `AnswerDate` varchar(25) NOT NULL,
  `Reason` varchar(50) NOT NULL,
  `Questions` int(11) NOT NULL,
  `Answers` text NOT NULL,
  `FactionID` int(11) NOT NULL,
  `Type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_badges`
--

CREATE TABLE `kenny_badges` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Text` varchar(20) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Icon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_comments`
--

CREATE TABLE `kenny_comments` (
  `ID` int(11) NOT NULL,
  `cID` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Date` varchar(25) NOT NULL,
  `Text` text NOT NULL,
  `Type` varchar(15) NOT NULL,
  `Image1` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_complaints`
--

CREATE TABLE `kenny_complaints` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `AgainstName` varchar(50) NOT NULL,
  `AgainstID` int(11) NOT NULL,
  `Details` text NOT NULL,
  `Category` varchar(50) NOT NULL,
  `CreatedDate` varchar(50) NOT NULL,
  `AnswerDate` varchar(50) NOT NULL DEFAULT '0',
  `Proofs` varchar(150) NOT NULL,
  `Faction` int(11) NOT NULL DEFAULT 0,
  `CreatorIP` varchar(50) NOT NULL DEFAULT '0',
  `AnswerIP` varchar(50) NOT NULL DEFAULT '0',
  `AnswerName` varchar(50) NOT NULL DEFAULT '-',
  `AnswerID` int(11) NOT NULL DEFAULT 0,
  `Status` int(11) NOT NULL DEFAULT 0,
  `Image1` varchar(50) DEFAULT NULL,
  `Image2` varchar(50) DEFAULT NULL,
  `Image3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_editables`
--

CREATE TABLE `kenny_editables` (
  `ID` int(11) NOT NULL,
  `EditedBy` varchar(25) NOT NULL,
  `EditedDate` varchar(17) NOT NULL,
  `Text` text NOT NULL,
  `Type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kenny_editables`
--

INSERT INTO `kenny_editables` (`ID`, `EditedBy`, `EditedDate`, `Text`, `Type`) VALUES
(1, 'qAlexGT3', '07.01.2024 00:00', 'Folositi comanda [/updates] pe Server.', 'News'),
(2, 'qAlexGT3', '07.01.2024 00:00', '0', 'StatusHelperApp'),
(3, 'qAlexGT3', '07.01.2024 00:00', '25', 'HoursHelperApp'),
(5, 'qAlexGT3', '07.01.2024 00:00', '15', 'HoursLeaderApp');

-- --------------------------------------------------------

--
-- Table structure for table `kenny_logs`
--

CREATE TABLE `kenny_logs` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `Text` varchar(250) NOT NULL,
  `Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_market`
--

CREATE TABLE `kenny_market` (
  `ID` int(11) NOT NULL,
  `PostedID` int(11) NOT NULL,
  `PostedIP` varchar(16) NOT NULL,
  `PostedDate` varchar(50) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `BuyerID` int(11) NOT NULL,
  `BuyerIP` varchar(16) NOT NULL,
  `BuyDate` varchar(50) NOT NULL,
  `PostType` int(11) NOT NULL,
  `PostTitle` varchar(255) NOT NULL,
  `VehicleID` int(11) NOT NULL,
  `HouseID` int(4) NOT NULL,
  `BusinessID` int(4) NOT NULL,
  `PostDetails` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_questions`
--

CREATE TABLE `kenny_questions` (
  `ID` int(11) NOT NULL,
  `CreatedBy` varchar(25) NOT NULL,
  `CreatedDate` varchar(17) NOT NULL,
  `Question` text NOT NULL,
  `FactionID` int(11) NOT NULL,
  `Type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_recovery`
--

CREATE TABLE `kenny_recovery` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `SecretCode` varchar(60) NOT NULL,
  `RecoveryTime` int(11) NOT NULL,
  `Type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_suspend`
--

CREATE TABLE `kenny_suspend` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AdminName` varchar(25) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `Days` int(4) NOT NULL,
  `Reason` varchar(90) NOT NULL,
  `SuspendDate` varchar(11) NOT NULL,
  `ExpireDate` varchar(11) NOT NULL,
  `Permanent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_tickets`
--

CREATE TABLE `kenny_tickets` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Details` text NOT NULL,
  `CreatedDate` varchar(17) NOT NULL,
  `AnswerDate` varchar(17) NOT NULL DEFAULT '0',
  `CreatorIP` varchar(16) NOT NULL DEFAULT '0',
  `AnswerIP` varchar(16) NOT NULL DEFAULT '0',
  `AnswerID` int(11) NOT NULL DEFAULT 0,
  `AnswerName` varchar(50) NOT NULL DEFAULT '-',
  `Status` tinyint(1) NOT NULL DEFAULT 0,
  `ForOwner` tinyint(1) NOT NULL DEFAULT 0,
  `Image1` varchar(50) DEFAULT NULL,
  `Image2` varchar(50) DEFAULT NULL,
  `Image3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_unbans`
--

CREATE TABLE `kenny_unbans` (
  `ID` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 0,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `Proofs` text NOT NULL,
  `Details` text NOT NULL,
  `CreatedDate` varchar(17) NOT NULL,
  `AnswerDate` varchar(17) NOT NULL DEFAULT '0',
  `CreatorIP` varchar(16) NOT NULL,
  `AnswerID` int(11) NOT NULL DEFAULT 0,
  `AnswerName` varchar(25) NOT NULL DEFAULT '''-''',
  `AnswerIP` varchar(16) NOT NULL DEFAULT '0',
  `Image1` varchar(50) DEFAULT NULL,
  `Image2` varchar(50) DEFAULT NULL,
  `Image3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `punishlogs`
--

CREATE TABLE `punishlogs` (
  `id` int(11) NOT NULL,
  `playerid` int(11) NOT NULL,
  `giverid` int(11) NOT NULL,
  `playername` varchar(25) NOT NULL,
  `givername` varchar(25) NOT NULL,
  `actionid` int(11) NOT NULL,
  `actiontime` int(2) NOT NULL DEFAULT 0,
  `reason` varchar(128) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `unixtime` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server_vars`
--

CREATE TABLE `server_vars` (
  `ID` int(11) NOT NULL,
  `GlobalGoal` int(11) NOT NULL DEFAULT 0,
  `DailyQuests` varchar(14) NOT NULL DEFAULT '0|0|0|0|0|0|0',
  `GiftHunt` varchar(200) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `server_vars`
--

INSERT INTO `server_vars` (`ID`, `GlobalGoal`, `DailyQuests`, `GiftHunt`) VALUES
(1, 0, '0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `ID` int(11) NOT NULL,
  `Model` int(4) NOT NULL,
  `Price` bigint(20) NOT NULL DEFAULT 0,
  `Price97` bigint(20) NOT NULL DEFAULT 0,
  `Price95` bigint(20) NOT NULL DEFAULT 0,
  `SellPrice` bigint(20) NOT NULL DEFAULT 0,
  `SellPrice75` bigint(20) NOT NULL DEFAULT 0,
  `Stock` int(3) NOT NULL,
  `MaxSpeed` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`ID`, `Model`, `Price`, `Price97`, `Price95`, `SellPrice`, `SellPrice75`, `Stock`, `MaxSpeed`) VALUES
(1, 462, 5000000, 4850000, 4750000, 2500000, 3750000, 10, 99),
(2, 404, 5500000, 5335000, 5225000, 2750000, 4125000, 10, 118),
(3, 510, 8500000, 8245000, 8075000, 4250000, 6375000, 10, 102),
(4, 543, 10000000, 9700000, 9500000, 5000000, 7500000, 10, 134),
(5, 479, 13000000, 12610000, 12350000, 6500000, 9750000, 10, 124),
(6, 401, 15500000, 15035000, 14725000, 7750000, 11625000, 10, 130),
(7, 474, 18000000, 17460000, 17100000, 9000000, 13500000, 10, 132),
(8, 410, 21000000, 20370000, 19950000, 10500000, 15750000, 10, 115),
(9, 471, 25000000, 24250000, 23750000, 12500000, 18750000, 10, 98),
(10, 491, 28500000, 27645000, 27075000, 14250000, 21375000, 10, 132),
(11, 517, 30000000, 29100000, 28500000, 15000000, 22500000, 10, 140),
(12, 527, 32000000, 31040000, 30400000, 16000000, 24000000, 10, 132),
(13, 550, 36000000, 34920000, 34200000, 18000000, 27000000, 10, 128),
(14, 482, 40000000, 38800000, 38000000, 20000000, 30000000, 10, 139),
(15, 458, 45000000, 43650000, 42750000, 22500000, 33750000, 10, 140),
(16, 500, 47000000, 45590000, 44650000, 23500000, 35250000, 10, 125),
(17, 516, 50000000, 48500000, 47500000, 25000000, 37500000, 10, 140),
(18, 439, 53500000, 51895000, 50825000, 26750000, 40125000, 10, 150),
(19, 542, 50000000, 48500000, 47500000, 25000000, 37500000, 10, 146),
(20, 549, 53000000, 51410000, 50350000, 26500000, 39750000, 10, 136),
(21, 496, 57000000, 55290000, 54150000, 28500000, 42750000, 10, 144),
(22, 545, 61000000, 59170000, 57950000, 30500000, 45750000, 10, 130),
(23, 540, 66000000, 64020000, 62700000, 33000000, 49500000, 10, 132),
(24, 561, 70000000, 67900000, 66500000, 35000000, 52500000, 10, 137),
(25, 507, 75500000, 73235000, 71725000, 37750000, 56625000, 10, 147),
(26, 575, 80000000, 77600000, 76000000, 40000000, 60000000, 10, 140),
(27, 566, 84000000, 81480000, 79800000, 42000000, 63000000, 10, 142),
(28, 567, 90000000, 87300000, 85500000, 45000000, 67500000, 10, 153),
(29, 576, 93500000, 90695000, 88825000, 46750000, 70125000, 10, 140),
(30, 535, 100000000, 97000000, 95000000, 50000000, 75000000, 10, 140),
(31, 554, 105000000, 101850000, 99750000, 52500000, 78750000, 10, 128),
(32, 586, 108000000, 104760000, 102600000, 54000000, 81000000, 10, 127),
(33, 426, 113000000, 109610000, 107350000, 56500000, 84750000, 10, 154),
(34, 589, 116000000, 112520000, 110200000, 58000000, 87000000, 10, 144),
(35, 603, 125000000, 121250000, 118750000, 62500000, 93750000, 10, 152),
(36, 489, 128000000, 124160000, 121600000, 64000000, 96000000, 10, 124),
(37, 463, 131000000, 127070000, 124450000, 65500000, 98250000, 10, 130),
(38, 475, 135000000, 130950000, 128250000, 67500000, 101250000, 10, 153),
(39, 536, 137000000, 132890000, 130150000, 68500000, 102750000, 10, 153),
(40, 405, 140000000, 135800000, 133000000, 70000000, 105000000, 10, 145),
(41, 587, 143000000, 138710000, 135850000, 71500000, 107250000, 10, 146),
(42, 412, 155555555, 150888888, 147777777, 77777778, 116666666, 10, 150),
(43, 468, 160000000, 155200000, 152000000, 80000000, 120000000, 10, 128),
(44, 565, 165000000, 160050000, 156750000, 82500000, 123750000, 10, 146),
(45, 558, 200000000, 194000000, 190000000, 100000000, 150000000, 10, 138),
(46, 579, 225000000, 218250000, 213750000, 112500000, 168750000, 10, 140),
(47, 480, 240000000, 232800000, 228000000, 120000000, 180000000, 10, 163),
(48, 506, 260000000, 252200000, 247000000, 130000000, 195000000, 10, 159),
(49, 461, 275000000, 266750000, 261250000, 137500000, 206250000, 10, 143),
(50, 521, 290000000, 281300000, 275500000, 145000000, 217500000, 10, 141),
(51, 559, 330000000, 320100000, 313500000, 165000000, 247500000, 10, 158),
(52, 402, 350000000, 339500000, 332500000, 175000000, 262500000, 10, 165),
(53, 495, 380000000, 368600000, 361000000, 190000000, 285000000, 10, 156),
(54, 562, 425000000, 412250000, 403750000, 212500000, 318750000, 10, 158),
(55, 415, 460123456, 446319752, 437117283, 230061728, 345092592, 10, 171),
(56, 429, 550000000, 533500000, 522500000, 275000000, 412500000, 10, 179),
(57, 451, 650000000, 630500000, 617500000, 325000000, 487500000, 10, 172),
(58, 560, 750000000, 727500000, 712500000, 375000000, 562500000, 10, 150),
(59, 541, 825000000, 800250000, 783750000, 412500000, 618750000, 10, 180),
(60, 522, 850000000, 824500000, 807500000, 425000000, 637500000, 10, 156),
(61, 411, 1300000000, 1261000000, 1235000000, 650000000, 975000000, 10, 197),
(62, 494, 1500000000, 1455000000, 1425000000, 750000000, 1125000000, 10, 191),
(63, 502, 1600000000, 1552000000, 1520000000, 800000000, 1200000000, 10, 191),
(64, 503, 1700000000, 1649000000, 1615000000, 850000000, 1275000000, 10, 191),
(65, 487, 2000000000, 1940000000, 1900000000, 1000000000, 1500000000, 10, 160),
(66, 515, 2300000000, 2231000000, 2185000000, 1150000000, 1725000000, 10, 120),
(67, 431, 2666666666, 2586666666, 2533333333, 1333333333, 2000000000, 10, 116),
(68, 572, 2850000000, 2764500000, 2707500000, 1425000000, 2137500000, 10, 72),
(69, 473, 3000000000, 2910000000, 2850000000, 1500000000, 2250000000, 10, 83),
(70, 446, 3500000000, 3395000000, 3325000000, 1750000000, 2625000000, 10, 54),
(71, 571, 5000000000, 4850000000, 4750000000, 2500000000, 3750000000, 10, 98),
(72, 574, 10000000000, 9700000000, 9500000000, 5000000000, 7500000000, 10, 95),
(73, 444, 25000000000, 24250000000, 23750000000, 12500000000, 18750000000, 10, 200);

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `ID` int(11) NOT NULL,
  `Owned` int(3) NOT NULL,
  `MinX` double NOT NULL,
  `MinY` double NOT NULL,
  `MaxX` double NOT NULL,
  `MaxY` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `turfs`
--

INSERT INTO `turfs` (`ID`, `Owned`, `MinX`, `MinY`, `MaxX`, `MaxY`) VALUES
(1, 2, 2091.93359375, -2110.9453125, 2546.93359375, -1805.9453125),
(2, 2, 1779.95703125, -2110.953125, 2091.95703125, -1744.953125),
(3, 2, 1050.9667282104492, -2110.9690980911255, 1779.9667282104492, -1676.9690980911255),
(4, 2, 634.9609375, -1910.96875, 1050.9609375, -1676.96875),
(5, 2, 2091.94140625, -1805.953125, 2546.94140625, -1583.953125),
(6, 2, 1779.95703125, -1744.953125, 2091.95703125, -1436.953125),
(7, 2, 1340.95703125, -1676.9609375, 1779.95703125, -1436.9609375),
(8, 2, 1050.9750671386719, -1676.9749507904053, 1340.9750671386719, -1436.9749507904053),
(9, 2, 634.9750671386719, -1676.975196838379, 1050.9750671386719, -1487.975196838379),
(10, 3, 2382.953125, -1583.9609375, 2546.953125, -1074.9609375),
(11, 3, 2091.95703125, -1583.9609375, 2382.95703125, -1074.9609375),
(12, 3, 1670.95703125, -1436.97265625, 2091.95703125, -1074.97265625),
(13, 3, 1340.95703125, -1436.9609375, 1670.95703125, -1074.9609375),
(14, 3, 1050.9750671386719, -1436.9749450683594, 1340.9750671386719, -1074.9749450683594),
(15, 3, 634.984375, -1487.9765625, 1050.984375, -1248.9765625),
(16, 3, 634.9750671386719, -1248.9749450683594, 1050.9750671386719, -1074.9749450683594),
(17, 3, 1340.9688415527344, -1074.9688415527344, 1854.9688415527344, -906.9688415527344),
(18, 3, 834.9688415527344, -1074.9689331054688, 1340.9688415527344, -906.9689331054688);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` varchar(129) NOT NULL,
  `name` varchar(25) NOT NULL,
  `Level` int(3) NOT NULL DEFAULT 1,
  `Admin` int(2) NOT NULL DEFAULT 0,
  `Helper` int(2) NOT NULL DEFAULT 0,
  `Premium` tinyint(1) NOT NULL,
  `ConnectedTime` float NOT NULL DEFAULT 0,
  `Money` bigint(20) NOT NULL DEFAULT 0,
  `Bank` bigint(20) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Drugs` varchar(20) NOT NULL DEFAULT '0|0|0|0',
  `Email` varchar(128) NOT NULL,
  `WantedLevel` int(2) NOT NULL DEFAULT 0,
  `Job` int(3) NOT NULL DEFAULT 0,
  `HeadValue` int(11) NOT NULL DEFAULT 0,
  `Member` int(3) NOT NULL DEFAULT 0,
  `Rank` int(2) NOT NULL DEFAULT 0,
  `FWarn` int(2) NOT NULL DEFAULT 0,
  `Model` int(4) NOT NULL DEFAULT 23,
  `House` int(4) NOT NULL DEFAULT 0,
  `Bizz` int(4) NOT NULL DEFAULT 0,
  `Rob` int(11) NOT NULL DEFAULT 0,
  `CarLic` int(4) NOT NULL DEFAULT 0,
  `CarLicSuspend` int(2) NOT NULL DEFAULT 0,
  `FlyLic` int(2) NOT NULL DEFAULT 0,
  `GunLic` int(4) NOT NULL DEFAULT 0,
  `PayDay` int(11) NOT NULL DEFAULT 0,
  `Warnings` int(2) NOT NULL DEFAULT 0,
  `Rented` int(3) NOT NULL DEFAULT -1,
  `Fuel` int(3) NOT NULL DEFAULT 0,
  `WTalkie` tinyint(1) NOT NULL DEFAULT 0,
  `lastOn` varchar(19) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Victim` varchar(25) NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 0,
  `Accused` varchar(25) NOT NULL DEFAULT '********',
  `Crime1` varchar(64) NOT NULL DEFAULT 'Fara',
  `Crime2` varchar(64) NOT NULL DEFAULT 'Fara',
  `Crime3` varchar(64) NOT NULL DEFAULT 'Fara',
  `PremiumPoints` int(11) NOT NULL DEFAULT 0,
  `VirtualPD` int(2) NOT NULL DEFAULT 0,
  `SpawnChange` int(2) NOT NULL DEFAULT 0,
  `FactionTime` int(5) NOT NULL DEFAULT 0,
  `HelpedPlayers` int(5) NOT NULL DEFAULT 0,
  `FactionJoin` int(11) NOT NULL DEFAULT 0,
  `LastIP` varchar(16) NOT NULL DEFAULT '0',
  `GasCan` tinyint(1) NOT NULL DEFAULT 0,
  `CarSlots` int(3) NOT NULL DEFAULT 2,
  `WTChannel` int(11) NOT NULL DEFAULT 0,
  `MuteTime` int(11) NOT NULL DEFAULT 0,
  `Jailed` int(3) NOT NULL DEFAULT 0,
  `JailTime` int(3) NOT NULL DEFAULT 0,
  `Clan` int(4) NOT NULL,
  `CRank` int(11) NOT NULL,
  `ClanTime` int(11) NOT NULL,
  `ClanWarns` int(11) NOT NULL,
  `VIP` tinyint(1) NOT NULL,
  `EscapePoints` int(11) NOT NULL DEFAULT 0,
  `Nmute` int(3) NOT NULL DEFAULT 0,
  `Rmute` int(3) NOT NULL DEFAULT 0,
  `JobBoost` int(4) NOT NULL DEFAULT 0,
  `Color` varchar(7) NOT NULL DEFAULT 'CECECE',
  `PetName` varchar(64) NOT NULL,
  `PetStatus` tinyint(1) NOT NULL DEFAULT 0,
  `PetPoints` int(11) NOT NULL DEFAULT 0,
  `Petlevel` int(3) NOT NULL DEFAULT 0,
  `Pet` tinyint(1) NOT NULL DEFAULT 0,
  `GiftPoints` int(11) NOT NULL DEFAULT 0,
  `BoatLic` int(3) NOT NULL DEFAULT 0,
  `FPunish` int(5) NOT NULL DEFAULT 0,
  `PC` int(2) NOT NULL DEFAULT 0,
  `Raport` int(11) NOT NULL,
  `Mancare` int(5) NOT NULL DEFAULT 100,
  `Apa` int(5) NOT NULL DEFAULT 100,
  `Burger` int(5) NOT NULL,
  `Soda` int(5) NOT NULL,
  `OGPoints` int(11) NOT NULL,
  `BasicCrate` int(3) NOT NULL,
  `NormalCrate` int(3) NOT NULL,
  `MediumCrate` int(3) NOT NULL,
  `VehicleCrate` int(3) NOT NULL,
  `DiamondCrate` int(3) NOT NULL,
  `FragmentCrate` int(3) NOT NULL,
  `SkinCrate` int(3) NOT NULL DEFAULT 0,
  `OGCrate` int(3) NOT NULL,
  `Skills` varchar(64) NOT NULL DEFAULT '1|1|1|1|1|1|1|1|1|1|1|1|1|1|1',
  `Ture` varchar(64) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `Parkour` tinyint(1) NOT NULL,
  `Respect` int(11) NOT NULL,
  `playerAchivStatus` varchar(32) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0',
  `Taskuri` int(3) NOT NULL DEFAULT 0,
  `TaskActual` int(3) NOT NULL DEFAULT 0,
  `TaskProgress` int(11) NOT NULL DEFAULT 0,
  `Spin` int(11) NOT NULL,
  `Fragments` varchar(32) NOT NULL DEFAULT '0|0|0|0|0|0|0|0',
  `Activity` int(10) NOT NULL DEFAULT 0,
  `StaffWarns` int(3) NOT NULL DEFAULT 0,
  `Ziua` int(2) NOT NULL DEFAULT 1,
  `ZiuaColectat` tinyint(1) NOT NULL DEFAULT 0,
  `Trivia` tinyint(1) NOT NULL DEFAULT 0,
  `Skins` varchar(64) NOT NULL DEFAULT '23|23|23|23|23|23|23|23|23|23',
  `SkinSlots` int(3) NOT NULL DEFAULT 3,
  `Bonus` tinyint(1) NOT NULL DEFAULT 0,
  `Milestone` int(6) NOT NULL DEFAULT 10,
  `Pin` int(5) NOT NULL DEFAULT 0,
  `YouTuber` tinyint(1) NOT NULL DEFAULT 0,
  `OwnedJob` int(3) NOT NULL DEFAULT 0,
  `UserID` int(6) NOT NULL DEFAULT 65535,
  `Manager` int(2) NOT NULL DEFAULT 0,
  `Last7` float NOT NULL DEFAULT 0,
  `Tutorial` tinyint(1) NOT NULL DEFAULT 1,
  `SetGuns` varchar(16) NOT NULL DEFAULT '0|0|0|0|0',
  `Settings` varchar(32) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0',
  `GiftBoxSeconds` int(5) NOT NULL DEFAULT 3600,
  `GiftToCollect` int(2) NOT NULL DEFAULT 0,
  `Billboard` int(3) NOT NULL DEFAULT 0,
  `DailyStunt` tinyint(1) NOT NULL,
  `Weapons` varchar(32) NOT NULL DEFAULT '0|0|0|0|0|0',
  `RealMoney` int(5) NOT NULL DEFAULT 0,
  `CreatorCode` varchar(32) NOT NULL DEFAULT 'NoCreatorCode',
  `Kills` int(4) NOT NULL DEFAULT 0,
  `Deaths` int(4) NOT NULL DEFAULT 0,
  `WarKills` int(4) NOT NULL DEFAULT 0,
  `WarDeaths` int(4) NOT NULL DEFAULT 0,
  `Discord` varchar(64) NOT NULL DEFAULT 'NoDiscord',
  `ClanTag` int(2) NOT NULL DEFAULT 0,
  `MedKit` tinyint(1) NOT NULL DEFAULT 0,
  `BattlepassProgress` varchar(64) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `BattlepassTier` int(3) NOT NULL DEFAULT 0,
  `BattlepassXP` int(4) NOT NULL DEFAULT 0,
  `BattlepassType` int(2) NOT NULL DEFAULT 0,
  `BattlepassPremiums` int(2) NOT NULL DEFAULT 0,
  `Potions` varchar(64) NOT NULL DEFAULT '0|0|0',
  `ActivePotions` varchar(64) NOT NULL DEFAULT '0|0|0',
  `PerkProgress` varchar(64) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0',
  `PerkPoints` int(4) NOT NULL DEFAULT 0,
  `SkyWarsWinToday` tinyint(1) NOT NULL,
  `GiftBoxOpenedToday` tinyint(1) NOT NULL,
  `TureJobToday` int(11) NOT NULL DEFAULT 0,
  `TureArmsToday` int(11) NOT NULL DEFAULT 0,
  `TureDrugToday` int(11) NOT NULL DEFAULT 0,
  `KPaintToday` int(11) NOT NULL DEFAULT 0,
  `GiftsToday` int(2) NOT NULL DEFAULT 0,
  `PerkActive` varchar(78) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `DailyQuestToday` tinyint(1) NOT NULL,
  `Heists` varchar(6) NOT NULL DEFAULT '0|0|0',
  `TodayTasks` varchar(6) NOT NULL DEFAULT '0|0|0',
  `LastMonth` float NOT NULL DEFAULT 0,
  `Vouchers` varchar(20) NOT NULL DEFAULT '0|0|0|0|0',
  `LoggedToday` tinyint(1) NOT NULL,
  `PayDaysToday` int(3) NOT NULL DEFAULT 0,
  `HuntCollected` int(4) NOT NULL DEFAULT 0,
  `PrizeToCollect` int(2) NOT NULL DEFAULT 0,
  `Supreme` int(12) NOT NULL,
  `SupremeCrate` int(11) NOT NULL,
  `LastFeedme` int(12) NOT NULL,
  `Hiddens` int(3) NOT NULL DEFAULT 0,
  `ActiveStatus` varchar(5) NOT NULL DEFAULT '0|0',
  `MysteryBox` varchar(15) NOT NULL DEFAULT '0|0|0|0',
  `registerOn` datetime NOT NULL DEFAULT current_timestamp(),
  `PanelNotice` varchar(255) NOT NULL,
  `PanelNoticeEdited` varchar(255) NOT NULL,
  `PanelActivityL7` varchar(20) NOT NULL DEFAULT '0|0|0',
  `PanelLoginCookie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `billboards`
--
ALTER TABLE `billboards`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bizz`
--
ALTER TABLE `bizz`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `clanhqs`
--
ALTER TABLE `clanhqs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`clanID`);

--
-- Indexes for table `clanzones`
--
ALTER TABLE `clanzones`
  ADD PRIMARY KEY (`zoneID`);

--
-- Indexes for table `creatorcodes`
--
ALTER TABLE `creatorcodes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faction_logs`
--
ALTER TABLE `faction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frequencies`
--
ALTER TABLE `frequencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_actions`
--
ALTER TABLE `kenny_actions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_applications`
--
ALTER TABLE `kenny_applications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_badges`
--
ALTER TABLE `kenny_badges`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_comments`
--
ALTER TABLE `kenny_comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_complaints`
--
ALTER TABLE `kenny_complaints`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_editables`
--
ALTER TABLE `kenny_editables`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_logs`
--
ALTER TABLE `kenny_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_market`
--
ALTER TABLE `kenny_market`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_questions`
--
ALTER TABLE `kenny_questions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_recovery`
--
ALTER TABLE `kenny_recovery`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_suspend`
--
ALTER TABLE `kenny_suspend`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_tickets`
--
ALTER TABLE `kenny_tickets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_unbans`
--
ALTER TABLE `kenny_unbans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `punishlogs`
--
ALTER TABLE `punishlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_vars`
--
ALTER TABLE `server_vars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billboards`
--
ALTER TABLE `billboards`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bizz`
--
ALTER TABLE `bizz`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clanhqs`
--
ALTER TABLE `clanhqs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clans`
--
ALTER TABLE `clans`
  MODIFY `clanID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clanzones`
--
ALTER TABLE `clanzones`
  MODIFY `zoneID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `creatorcodes`
--
ALTER TABLE `creatorcodes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faction_logs`
--
ALTER TABLE `faction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frequencies`
--
ALTER TABLE `frequencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kenny_actions`
--
ALTER TABLE `kenny_actions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_applications`
--
ALTER TABLE `kenny_applications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_badges`
--
ALTER TABLE `kenny_badges`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_comments`
--
ALTER TABLE `kenny_comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_complaints`
--
ALTER TABLE `kenny_complaints`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_editables`
--
ALTER TABLE `kenny_editables`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kenny_logs`
--
ALTER TABLE `kenny_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_market`
--
ALTER TABLE `kenny_market`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_questions`
--
ALTER TABLE `kenny_questions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_recovery`
--
ALTER TABLE `kenny_recovery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_suspend`
--
ALTER TABLE `kenny_suspend`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_tickets`
--
ALTER TABLE `kenny_tickets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kenny_unbans`
--
ALTER TABLE `kenny_unbans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `punishlogs`
--
ALTER TABLE `punishlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server_vars`
--
ALTER TABLE `server_vars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `turfs`
--
ALTER TABLE `turfs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

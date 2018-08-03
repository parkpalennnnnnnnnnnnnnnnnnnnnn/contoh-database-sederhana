-- MySQL dump 10.13  Distrib 5.6.20, for Win32 (x86)
--
-- Host: localhost    Database: penjualan
-- ------------------------------------------------------
-- Server version	5.6.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

create table penjualan;
use penjualan;
--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang` (
  `kdbrg` char(5) DEFAULT NULL,
  `nama` varchar(10) DEFAULT NULL,
  `satuan` varchar(10) DEFAULT NULL,
  `hargasatuan` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES ('B001','Buku Tulis','pak',45000,30),('B002','Pensil','lusin',45600,24),('B003','Map','biji',7800,12),('B004','Penghapus','biji',6000,6),('B005','Pena','biji',17200,18);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailtransaksi`
--

DROP TABLE IF EXISTS `detailtransaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detailtransaksi` (
  `notransaksi` char(3) DEFAULT NULL,
  `kdbrg` char(5) DEFAULT NULL,
  `hargajual` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailtransaksi`
--

LOCK TABLES `detailtransaksi` WRITE;
/*!40000 ALTER TABLE `detailtransaksi` DISABLE KEYS */;
INSERT INTO `detailtransaksi` VALUES ('N01','B002',45600,2),('N02','B004',6000,1),('N02','B002',45600,4),('N03','B005',17200,1);
/*!40000 ALTER TABLE `detailtransaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksibeli`
--

DROP TABLE IF EXISTS `transaksibeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksibeli` (
  `notransaksi` char(3) DEFAULT NULL,
  `tgltransaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksibeli`
--

LOCK TABLES `transaksibeli` WRITE;
/*!40000 ALTER TABLE `transaksibeli` DISABLE KEYS */;
INSERT INTO `transaksibeli` VALUES ('M01','2010-01-06'),('M02','2014-10-15'),('M03','2014-11-12'),('M04','2014-11-12');
/*!40000 ALTER TABLE `transaksibeli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksijual`
--

DROP TABLE IF EXISTS `transaksijual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksijual` (
  `notransaksi` char(3) DEFAULT NULL,
  `tgltransaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksijual`
--

LOCK TABLES `transaksijual` WRITE;
/*!40000 ALTER TABLE `transaksijual` DISABLE KEYS */;
INSERT INTO `transaksijual` VALUES ('N01','2010-01-03'),('N02','2014-10-12'),('N03','2014-11-09'),('N04','2014-11-09'),('M01','2010-01-06'),('M02','2014-10-15'),('M03','2014-11-12'),('M04','2014-11-12');
/*!40000 ALTER TABLE `transaksijual` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-25 19:41:02

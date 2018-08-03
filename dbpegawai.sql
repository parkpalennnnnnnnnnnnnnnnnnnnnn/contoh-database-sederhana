-- MySQL dump 10.13  Distrib 5.5.39, for Win32 (x86)
--
-- Host: localhost    Database: dbpegawai
-- ------------------------------------------------------
-- Server version	5.5.39

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
create table divisi;
use divisi;

--
-- Table structure for table `divisi`
--

DROP TABLE IF EXISTS `divisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisi` (
  `kode_div` char(8) NOT NULL,
  `nama_div` varchar(25) NOT NULL,
  `Lokasi` varchar(40) NOT NULL,
  `Kodemanajer` char(8) DEFAULT NULL,
  PRIMARY KEY (`kode_div`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisi`
--

LOCK TABLES `divisi` WRITE;
/*!40000 ALTER TABLE `divisi` DISABLE KEYS */;
/*!40000 ALTER TABLE `divisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kerja`
--

DROP TABLE IF EXISTS `kerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kerja` (
  `nip` char(8) NOT NULL,
  `kode_pro` char(8) NOT NULL,
  `jam` int(11) DEFAULT NULL,
  PRIMARY KEY (`nip`,`kode_pro`),
  KEY `kode_pro` (`kode_pro`),
  CONSTRAINT `kerja_ibfk_2` FOREIGN KEY (`kode_pro`) REFERENCES `proyek` (`kode_pro`) ON UPDATE CASCADE,
  CONSTRAINT `kerja_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kerja`
--

LOCK TABLES `kerja` WRITE;
/*!40000 ALTER TABLE `kerja` DISABLE KEYS */;
/*!40000 ALTER TABLE `kerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokasiproyek`
--

DROP TABLE IF EXISTS `lokasiproyek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lokasiproyek` (
  `kode_pro` char(8) NOT NULL,
  `lokpro` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_pro`,`lokpro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokasiproyek`
--

LOCK TABLES `lokasiproyek` WRITE;
/*!40000 ALTER TABLE `lokasiproyek` DISABLE KEYS */;
/*!40000 ALTER TABLE `lokasiproyek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai` (
  `nip` char(8) NOT NULL,
  `kode_div` char(8) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `tgl_lh` date NOT NULL,
  `almt` varchar(25) NOT NULL,
  `kodepos` char(6) NOT NULL,
  `kode_atasan` char(8) NOT NULL,
  `status` enum('T','H') DEFAULT NULL,
  PRIMARY KEY (`nip`),
  KEY `kode_div` (`kode_div`),
  CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`kode_div`) REFERENCES `divisi` (`kode_div`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai`
--

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyek`
--

DROP TABLE IF EXISTS `proyek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyek` (
  `kode_pro` char(8) NOT NULL,
  `kode_div` char(8) NOT NULL,
  `nama_pro` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_pro`),
  KEY `kode_div` (`kode_div`),
  CONSTRAINT `proyek_ibfk_1` FOREIGN KEY (`kode_div`) REFERENCES `divisi` (`kode_div`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyek`
--

LOCK TABLES `proyek` WRITE;
/*!40000 ALTER TABLE `proyek` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tanggungan`
--

DROP TABLE IF EXISTS `tanggungan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tanggungan` (
  `nip` char(8) NOT NULL,
  `nama_tgg` varchar(25) NOT NULL,
  `jns_kelamin` enum('L','P') NOT NULL,
  `hubungan` varchar(15) NOT NULL,
  PRIMARY KEY (`nip`,`nama_tgg`),
  CONSTRAINT `tanggungan_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tanggungan`
--

LOCK TABLES `tanggungan` WRITE;
/*!40000 ALTER TABLE `tanggungan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tanggungan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-06 14:12:19

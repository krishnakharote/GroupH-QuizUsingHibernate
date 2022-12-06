-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: projecttabledb
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `outcome`
--

DROP TABLE IF EXISTS `outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outcome` (
  `Id` int NOT NULL,
  `Grade` varchar(255) DEFAULT NULL,
  `Marks` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outcome`
--

LOCK TABLES `outcome` WRITE;
/*!40000 ALTER TABLE `outcome` DISABLE KEYS */;
INSERT INTO `outcome` VALUES (100,'A',9,'krishna'),(101,'D',3,'sanket'),(102,'D',3,'ram'),(103,'D',3,'rohit');
/*!40000 ALTER TABLE `outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES ('Q)In java, jar stands for_____.\na)Java Archive Runner\nb)Java Application Resource\nc)Java Application Runner\nd)None of the above','d'),('Q)In which memory a String is stored, when we create a string using new operator?\r\na)Stack\nb)String memory\nc)Heap memory\nd)Random storage space','c'),('Q)int i=20+ +9- -12+ +4- -13+ +19;\na)83\nb)77\nc)24\nd)26','b'),('Q)public static void main(String args[])\r\n{\r\nString str = \"Java\";\r\nString str1 = \"Programming\";\r\nSystem.out.println(str.concat(str1));}\na)Java Programming\nb)Java\nc)javaProgramming\nd)JavaProgramming','d'),('Q)public static void main(String[] args)\r\n{\r\nint $_ = 5;\r\n}\na)Compile time Error\nb)No Output\nc)0\nd)Runtime Error','b'),('Q)What is the extension of compiled java classes?\r\na).txt\nb).js\nc).class\nd).java','c'),('Q)Which keyword is used for accessing the features of a package?\r\na)import\nb)package\nc)extends\nd)export','a'),('Q)Which of the following for loop declaration is not valid?\r\na)for(int i=99; i>= 0; i/9 )\nb)for(int i=7; i<=77; i+=7 )\nc)for(int i=20; i>=2; --i)\nd)for(int i=2; i<=20; i=2*i)','a'),('Q)Which of these is a type of variable in Java?\r\na)Instance Variable\nb)Local Variable\nc)Static Variable\nd)All of these','d'),('Q)Which of this interface must contain a unique element?\r\na)List\nb)Array\nc)Set\nd)Collection','c');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `Id` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Marks` int NOT NULL,
  `Grade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (21,'krishna',0,'D'),(23,'sanket',8,'A'),(101,'Sam',10,'A'),(221,'krishna',3,'D'),(301,'Prathamesh',5,'C'),(555,'Sanket',10,'A'),(601,'krishna',9,'A');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_id`
--

DROP TABLE IF EXISTS `student_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_id`
--

LOCK TABLES `student_id` WRITE;
/*!40000 ALTER TABLE `student_id` DISABLE KEYS */;
INSERT INTO `student_id` VALUES (104);
/*!40000 ALTER TABLE `student_id` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 21:40:26

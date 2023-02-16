CREATE DATABASE `ProjectG` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;


-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: grocerydatabase.c18yikjkwckw.us-east-2.rds.amazonaws.com    Database: ProjectG
-- ------------------------------------------------------
-- Server version	8.0.28
use projectg;
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE` (
  `ID` int NOT NULL,
  `First_Name` varchar(45) COLLATE utf8_bin NOT NULL DEFAULT 'John',
  `Last_Name` varchar(45) COLLATE utf8_bin NOT NULL,
  `Hours_Worked` int NOT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Dep_Num` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Dnum_idx` (`Dep_Num`) /*!80000 INVISIBLE */,
  CONSTRAINT `Dnum` FOREIGN KEY (`Dep_Num`) REFERENCES `DEPARTMENT` (`Number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (123457,'Minecraft Steve','Village',23412,'2022-12-06','Somewhere in Sweden',2),(154196,'Clinton','Gross',34,'1973-03-04','129 Wade Road',5),(174464,'Makhi','Morris',41,'1981-07-07','553 Liu St',5),(214331,'Kael','Rowe',34,'1979-11-23','425 Pope St',4),(257654,'Karli','Copeland',50,'1994-06-14','629 Hogan St',1),(381527,'Kira','Pope',27,'1986-09-12','734 Travis Blvd',4),(382248,'Oswaldo','Hogan',26,'2010-07-28','440 Solomon Road',3),(391038,'Alexia','Watts',36,'1995-01-26','185 Watts Blvd',2),(412104,'Brennen','Garrison',18,'1984-08-03','249 Peterson St',5),(461948,'James','Key',32,'1976-09-03','596 Schmit St',2),(514067,'Izaiah','Franklin',9,'2003-11-11','658 Gross Blvd',5),(566786,'Mya','Douglas',57,'2008-07-23','551 Morris Road',2),(568178,'Christine','Richards',14,'2004-12-07','604 Glenn Ave',2),(597422,'Paula','Peterson',43,'1988-07-23','415 Petersen Road',2),(607706,'Preston','Vega',10,'1992-01-12','638 Gamble St',2),(630623,'Carmelo','Watts',42,'1971-05-02','175 Galloway Ave',3),(631743,'Rosemary','Liu',33,'1977-04-07','602 Watts Road',1),(652537,'John','Smith',44,'1990-03-24','525 Pace Ave',1),(674150,'Andrew','Petersen',25,'1991-12-17','641 Morris Ave',3),(679645,'Slade','Parker',15,'1998-08-14','352 Hogan Ave',5),(681815,'Lilyana','Pope',27,'1984-10-09','588 Solomon St',4),(715074,'Selina','Gamble',50,'1984-03-20','10 Pope Road',2),(722533,'Reese','Solomon',48,'2004-04-13','599 Solomon Road',3),(751707,'Cayden','Wade',35,'2000-11-19','591 Pope Blvd',2),(800356,'Irene','Lowery',30,'1994-11-19','507 Peterson Ave',5),(829704,'Guadalupe','Galloway',57,'2009-05-13','222 Parker St',1),(861855,'Chana','Robles',51,'1982-05-07','315 Robles St',3),(896715,'Raiden','Travis',39,'1986-03-21','217 Watts Road',3),(905334,'Akira','Adams',35,'2004-08-25','769 Solomon Road',2),(963013,'Chanel','Pace',9,'2001-07-28','333 Rowe St',1),(987652,'Jared','Fogle',6,'1977-08-23','9595 W Quincy Ave, Littleton, CO 80123',3),(987653,'Bill','Cosby',4203,'1937-07-12','Cosby Cocktail',4),(987654,'Kanye','West',700000,'1977-06-08','24895 Long Valley Rd, Hidden Hills, CA 91302',5);
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 13:53:14


-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: grocerydatabase.c18yikjkwckw.us-east-2.rds.amazonaws.com    Database: ProjectG
-- ------------------------------------------------------
-- Server version	8.0.28
use projectg;
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `DEPARTMENT`
--

DROP TABLE IF EXISTS `DEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEPARTMENT` (
  `Number` int NOT NULL,
  `Name` varchar(45) COLLATE utf8_bin NOT NULL,
  `Num_Employees` int NOT NULL,
  `Sales` float DEFAULT NULL,
  `ManagerID` int DEFAULT NULL,
  PRIMARY KEY (`Number`),
  UNIQUE KEY `Name_UNIQUE` (`Name`),
  KEY `Manager_ID_idx` (`ManagerID`),
  CONSTRAINT `Manager_ID` FOREIGN KEY (`ManagerID`) REFERENCES `EMPLOYEE` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENT`
--

LOCK TABLES `DEPARTMENT` WRITE;
/*!40000 ALTER TABLE `DEPARTMENT` DISABLE KEYS */;
INSERT INTO `DEPARTMENT` VALUES (1,'Meat',8,137.74,154196),(2,'Bakery',10,1204.29,123457),(3,'Seafood',7,224.94,987652),(4,'Deli',5,200.53,987653),(5,'Grocery',7,5351.18,987654);
/*!40000 ALTER TABLE `DEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 13:53:09


-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: grocerydatabase.c18yikjkwckw.us-east-2.rds.amazonaws.com    Database: ProjectG
-- ------------------------------------------------------
-- Server version	8.0.28
use projectg;
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `EMERGENCY_CONTACT`
--

DROP TABLE IF EXISTS `EMERGENCY_CONTACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMERGENCY_CONTACT` (
  `Employee_ID` int NOT NULL,
  `Emergency_Name` varchar(45) COLLATE utf8_bin NOT NULL,
  `Phone_num` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `Address` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`,`Emergency_Name`),
  CONSTRAINT `EmpID` FOREIGN KEY (`Employee_ID`) REFERENCES `EMPLOYEE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMERGENCY_CONTACT`
--

LOCK TABLES `EMERGENCY_CONTACT` WRITE;
/*!40000 ALTER TABLE `EMERGENCY_CONTACT` DISABLE KEYS */;
INSERT INTO `EMERGENCY_CONTACT` VALUES (154196,'James','310-645-808','8 Gamble Road'),(174464,'Andrew','343-685-705','112 Watts St'),(214331,'Oswaldo','385-672-654','413 Solomon Ave'),(257654,'Alexia','306-628-746','495 Gross St'),(381527,'Paula','398-634-836','178 Robles Road'),(382248,'Alexia','387-642-871','571 Garrison Road'),(391038,'Oswaldo','372-645-550','164 Liu Road'),(412104,'Andrew','319-666-899','277 Pope Ave'),(461948,'Christine','322-677-556','569 Adams Blvd'),(514067,'Irene','339-669-884','355 Watts Blvd'),(566786,'Selina','339-690-588','231 Robles Ave'),(568178,'Cayden','357-682-614','641 Pace Road'),(597422,'Cayden','366-624-843','563 Copeland Road'),(607706,'Carmelo','334-676-532','800 Garrison Blvd'),(630623,'Kira','366-642-849','681 Wade Road'),(631743,'Chana','319-623-519','405 Glenn Road'),(652537,'Reese','320-677-650','376 Parker Road'),(674150,'Chana','325-610-741','690 Watts Ave'),(679645,'Selina','363-669-864','771 Watts Road'),(681815,'Cayden','395-614-590','200 Vega Blvd'),(715074,'Carmelo','374-688-778','176 Copeland St'),(722533,'James','325-620-743','25 Watts Blvd'),(751707,'Akira','347-674-841','208 Copeland Ave'),(800356,'Guadalupe','353-605-869','106 Robles Ave'),(829704,'Preston','388-631-751','599 Solomon Road'),(861855,'Kira','342-627-581','459 Hogan Road'),(896715,'Makhi','310-696-645','263 Peterson St'),(905334,'Akira','367-697-670','629 Key Blvd'),(963013,'Chana','382-621-582','392 Parker Road');
/*!40000 ALTER TABLE `EMERGENCY_CONTACT` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 13:53:08


-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: grocerydatabase.c18yikjkwckw.us-east-2.rds.amazonaws.com    Database: ProjectG
-- ------------------------------------------------------
-- Server version	8.0.28
use projectg;
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `VENDOR`
--

DROP TABLE IF EXISTS `VENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENDOR` (
  `Company` varchar(60) COLLATE utf8_bin NOT NULL,
  `OperationHrs` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Aisles` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Sales` float NOT NULL,
  PRIMARY KEY (`Company`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR`
--

LOCK TABLES `VENDOR` WRITE;
/*!40000 ALTER TABLE `VENDOR` DISABLE KEYS */;
INSERT INTO `VENDOR` VALUES ('Busch','6am - 9pm','1',5050.51),('Coke','6am - 10am','2',4015.32),('Lays','7am - 12pm','3',1500.89),('Pepsi','8am to 3pm','2',2010.22),('TryToRmvME','6am-6:30am','2',1);
/*!40000 ALTER TABLE `VENDOR` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 13:53:10


-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: grocerydatabase.c18yikjkwckw.us-east-2.rds.amazonaws.com    Database: ProjectG
-- ------------------------------------------------------
-- Server version	8.0.28
use projectg;
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `ITEM`
--

DROP TABLE IF EXISTS `ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITEM` (
  `Item_ID` int NOT NULL,
  `Item_Name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'Item_Name should not be PK. Chips for example',
  `Brand` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Location` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Price` float NOT NULL,
  `Date_Aqrid` date DEFAULT NULL,
  `Tax_Percent` float NOT NULL,
  `Stock_Amount` int NOT NULL,
  `Prof_Per` float DEFAULT NULL,
  `Dep_Num` int DEFAULT NULL,
  `Vend_Company` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Item_ID`),
  KEY `Vend_Comp_idx` (`Vend_Company`),
  KEY `DepNum_idx` (`Dep_Num`),
  CONSTRAINT `DepNum` FOREIGN KEY (`Dep_Num`) REFERENCES `DEPARTMENT` (`Number`),
  CONSTRAINT `Vend_Comp` FOREIGN KEY (`Vend_Company`) REFERENCES `VENDOR` (`Company`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ITEM`
--

LOCK TABLES `ITEM` WRITE;
/*!40000 ALTER TABLE `ITEM` DISABLE KEYS */;
INSERT INTO `ITEM` VALUES (100,'Chips','Fritos','Aisle 3',1,'2022-12-05',1,464,0.5,5,'Lays'),(101,'Soda','Cherry Coke','Aisle 2',5.45,'2022-11-30',1,445,1.56,5,'Coke'),(102,'Soda','Sprite','Aisle 2',5.45,'2022-11-30',1,446,1.56,5,'Coke'),(103,'Soda','Barq\'s Root Beer','Aisle 2',5.45,'2022-11-30',1,453,1.56,5,'Coke'),(104,'Soda','Sprite Cranberry','Aisle 2',5.45,'2022-11-30',1,451,1.56,5,'Coke'),(105,'Soda','Pepsi','Aisle 2',5.45,'2022-11-30',1,451,1.56,5,'Pepsi'),(106,'Soda','Sierra Mist','Aisle 2',5.45,'2022-11-30',1,452,1.56,5,'Pepsi'),(107,'Soda','Diet Pepsi','Aisle 2',5.45,'2022-11-30',1,442,1.56,5,'Pepsi'),(108,'Beer','Busch','Aisle 1',15,'2022-11-19',3,44,7.5,5,'Busch'),(109,'Bread','Wonder','Aisle 3',3,'2022-12-06',2.5,443,8,2,NULL),(110,'Apples','Ethans','Aisle 2',4.5,'2022-12-08',2,792,0.5,5,NULL),(111,'Bananas','OJK','Aisle 3',4.13,'2022-12-07',1,514,0.13,5,NULL),(112,'Strawberries','Daddys Supper','Aisle 7',5.63,'2022-12-10',2,669,1.63,5,NULL),(113,'Avocados','Purpose Food','Aisle 7',6.3,'2022-11-03',3,792,2.3,5,NULL),(114,'Bell Peppers','DE Grocery','Aisle 10',11.7,'2022-11-03',4,422,3.7,5,NULL),(115,'Carrots','FOOD company','Aisle 5',9.35,'2022-11-09',2,379,1.35,5,NULL),(116,'Broccoli','Papa Jason','Aisle 7',7.2,'2022-12-05',3,348,3.2,5,NULL),(117,'Garlic','Purpose Food','Aisle 2',13.36,'2022-11-10',3,564,1.36,5,NULL),(118,'Lemons/Limes','Purpose Food','Aisle 8',5.26,'2022-11-10',4,537,1.26,5,NULL),(119,'Onion','FOOD company','Aisle 9',7.51,'2022-12-05',4,336,3.51,5,NULL),(120,'Parsley','ProduceQ','Aisle 6',13.1,'2022-11-10',4,875,1.1,5,NULL),(121,'Cilantro','EatRite','Aisle 8',6.5,'2022-11-11',2,509,2.5,5,NULL),(122,'Basil','Kelp','Aisle 4',7.41,'2022-11-02',1,509,3.41,5,NULL),(123,'Potatoes','DE Grocery','Aisle 9',15.26,'2022-11-10',3,667,3.26,5,NULL),(124,'Spinach','EatRite','Aisle 10',12.12,'2022-11-02',2,406,0.12,5,NULL),(125,'Tomatoes','Purpose Food','Aisle 4',4.8,'2022-12-06',4,950,0.8,5,NULL),(126,'Breadcrumbs','Ethans','Aisle 8',8.2,'2022-11-06',3,888,0.2,5,NULL),(127,'Pasta','FOOD company','Aisle 4',5.59,'2022-12-06',1,303,1.59,5,NULL),(128,'Quinoa','ProduceQ','Aisle 4',10.7,'2022-12-03',4,882,2.7,5,NULL),(129,'Rice','FOOD company','Aisle 2',14.99,'2022-11-10',3,685,2.99,5,NULL),(130,'Sandwich Bread','DE Grocery','Aisle 4',13.17,'2022-12-01',3,821,1.17,2,NULL),(131,'Tortillas','DE Grocery','Aisle 9',10.73,'2022-11-05',2,329,2.73,2,NULL),(132,'Chicken','FOOD company','Aisle 5',12.55,'2022-12-03',2,778,0.55,1,NULL),(133,'Eggs','OJK','Aisle 9',4.24,'2022-12-05',1,894,0.24,2,NULL),(134,'Ground Beef','Daddys Supper','Aisle 9',8.99,'2022-12-04',4,322,0.99,1,NULL),(135,'Sliced Turkey','DE Grocery','Aisle 7',9.6,'2022-12-11',1,368,1.6,4,NULL),(136,'Lunch Meat','FOOD company','Aisle 1',8.35,'2022-12-10',3,340,0.35,4,NULL),(137,'Butter','EatRite','Aisle 1',4.4,'2022-11-06',4,523,0.4,2,NULL),(138,'Sliced Cheese','OJK','Aisle 10',14.53,'2022-12-05',2,572,2.53,2,NULL),(139,'Shredded Cheese','Daniels','Aisle 4',11.19,'2022-12-02',4,765,3.19,4,NULL),(140,'Milk','Daniels','Aisle 4',4.57,'2022-12-10',2,830,0.57,2,NULL),(141,'Sour Cream','DE Grocery','Aisle 6',4.6,'2022-12-10',2,388,0.6,2,NULL),(142,'Greek Yogurt','ProduceQ','Aisle 6',4.5,'2022-11-04',1,599,0.5,2,NULL),(143,'Baking powder','Daddys Supper','Aisle 6',14.93,'2022-11-05',3,842,2.93,5,NULL),(144,'Baking Soda','Ethans','Aisle 1',12.96,'2022-11-02',3,543,0.96,5,NULL),(145,'Granulated Sugar','Ethans','Aisle 1',8.13,'2022-12-09',4,335,0.13,2,NULL),(146,'Brown Sugar','Ethans','Aisle 9',11.1,'2022-11-04',4,714,3.1,2,NULL),(147,'Flour','ProduceQ','Aisle 1',6.17,'2022-11-01',2,814,2.17,2,NULL),(149,'Vanilla Extract','OJK','Aisle 4',6.22,'2022-12-02',3,848,2.22,2,NULL),(150,'Dry Yeast','Daniels','Aisle 7',14.7,'2022-11-02',2,736,2.7,2,NULL),(151,'Chocolate Chips','DE Grocery','Aisle 2',6.43,'2022-11-06',4,875,2.43,2,NULL),(152,'Cocoa Powder','OJK','Aisle 5',6.36,'2022-12-02',2,404,2.36,2,NULL),(153,'Powdered Sugar','Purpose Food','Aisle 7',10.68,'2022-12-03',2,734,2.68,2,NULL),(154,'Fruit and Berries','Daddys Supper','Aisle 5',9.41,'2022-11-06',1,922,1.41,5,NULL),(155,'Frozen Corn ','OJK','Aisle 9',3.65,'2022-11-11',2,576,3.65,5,NULL),(156,'Frozen Peas','Daddys Supper','Aisle 4',8.69,'2022-12-04',1,846,0.69,5,NULL),(157,'Frozen Broccoli','Papa Jason','Aisle 10',3.23,'2022-12-10',3,438,3.23,5,NULL),(158,'Frozen Carrots','ProduceQ','Aisle 3',4.18,'2022-11-03',3,812,0.18,5,NULL),(159,'Juice Concentrate','Daddys Supper','Aisle 5',6.51,'2022-12-03',4,464,2.51,5,NULL),(160,'Pizza or Other Convenience Meals','Purpose Food','Aisle 9',4.62,'2022-11-07',3,901,0.62,5,NULL),(161,'Pie Crust','EatRite','Aisle 3',3.21,'2022-11-02',2,943,3.21,5,NULL),(162,'Cookie Dough','FOOD company','Aisle 1',12.24,'2022-11-04',1,676,0.24,5,NULL),(163,'Chicken stock/broth','FOOD company','Aisle 6',12.54,'2022-12-11',1,871,0.54,1,NULL),(164,'Salsa','Daniels','Aisle 5',11.83,'2022-12-09',1,516,3.83,5,NULL),(165,'Diced Tomatoes','OJK','Aisle 8',3.32,'2022-12-02',1,538,3.32,5,NULL),(166,'Jam/Jelly','Ethans','Aisle 7',4.53,'2022-12-06',1,687,0.53,5,NULL),(167,'Peanut Butter','EatRite','Aisle 10',10.81,'2022-12-06',1,464,2.81,5,NULL),(168,'Pasta Sauce','Purpose Food','Aisle 4',15.48,'2022-12-05',2,355,3.48,5,NULL),(169,'Black Beans','Papa Jason','Aisle 5',8.32,'2022-12-10',3,347,0.32,5,NULL),(170,'Chickpeas','Papa Jason','Aisle 2',10.73,'2022-12-04',2,784,2.73,5,NULL),(171,'Baked Beans','Purpose Food','Aisle 9',13.94,'2022-12-02',1,799,1.94,5,NULL),(172,'Soups','Papa Jason','Aisle 7',12.2,'2022-12-10',3,884,0.2,5,NULL),(173,'Tuna','Kelp','Aisle 2',6.97,'2022-11-04',1,654,2.97,3,NULL),(174,'Green Chiles','OJK','Aisle 8',12.45,'2022-11-05',2,897,0.45,5,NULL),(175,'Canned Veggies','Papa Jason','Aisle 1',5.61,'2022-11-04',4,419,1.61,5,NULL),(176,'Coffee or Tea','DE Grocery','Aisle 6',14.13,'2022-11-03',3,931,2.13,5,NULL),(177,'Black Pepper','Purpose Food','Aisle 5',7.7,'2022-11-09',3,456,3.7,5,NULL),(178,'Chili Powder','Purpose Food','Aisle 2',15.84,'2022-11-09',2,734,3.84,5,NULL),(179,'Cinnamon','Ethans','Aisle 7',6.51,'2022-12-05',4,690,2.51,5,NULL),(180,'Crushed Red Pepper','ProduceQ','Aisle 7',4.6,'2022-12-06',3,358,0.6,5,NULL),(181,'Cumin','FOOD company','Aisle 10',9.29,'2022-11-02',4,431,1.29,5,NULL),(182,'Garlic Powder','Papa Jason','Aisle 8',13.38,'2022-12-11',4,435,1.38,5,NULL),(183,'Ketchup','Daddys Supper','Aisle 1',12.9,'2022-11-01',2,715,0.9,5,NULL),(184,'Mustard','Papa Jason','Aisle 2',7.24,'2022-11-01',3,662,3.24,5,NULL),(185,'Mayo','Ethans','Aisle 6',7.11,'2022-12-08',4,703,3.11,5,NULL),(186,'Nutmeg','FOOD company','Aisle 2',3.59,'2022-12-02',2,714,3.59,5,NULL),(187,'Paprika','Kelp','Aisle 4',12.3,'2022-12-05',2,508,0.3,5,NULL),(188,'Course Sea Salt','FOOD company','Aisle 1',7.9,'2022-12-07',3,354,3.9,5,NULL),(189,'Kosher Salts','FOOD company','Aisle 1',6.27,'2022-11-05',3,548,2.27,5,NULL),(190,'Soy Sauce','ProduceQ','Aisle 8',4.84,'2022-12-04',4,562,0.84,5,NULL),(191,'Steak Sauce','EatRite','Aisle 3',6.6,'2022-12-09',2,696,2.6,1,NULL),(193,'Salad Dressings','FOOD company','Aisle 10',7.8,'2022-11-07',1,619,3.8,3,NULL),(194,'Apple cider vinegar','Ethans','Aisle 8',13.12,'2022-11-05',4,405,1.12,5,NULL),(195,'Balsamic vinegar','Kelp','Aisle 8',10.58,'2022-11-04',2,422,2.58,5,NULL),(196,'Coconut Oil','DE Grocery','Aisle 2',5.58,'2022-12-06',4,732,1.58,5,NULL),(197,'Olive Oil','Ethans','Aisle 5',5.46,'2022-11-03',2,933,1.46,5,NULL),(198,'Vegetable/Canola Oil','DE Grocery','Aisle 7',15.45,'2022-11-11',3,596,3.45,5,NULL),(199,'Red Wine Vinegar','Kelp','Aisle 5',15.5,'2022-11-01',2,597,3.5,5,NULL),(200,'White Vinegar','Papa Jason','Aisle 7',10.71,'2022-12-01',2,401,2.71,5,NULL),(201,'Cooking Wine','Kelp','Aisle 10',14.77,'2022-11-11',2,527,2.77,5,NULL),(202,'White Wine Vinegar','DE Grocery','Aisle 6',10.47,'2022-11-03',3,780,2.47,5,NULL),(203,'Crackers','Kelp','Aisle 8',11.8,'2022-11-06',2,785,3.8,5,NULL),(204,'Nuts','Daddys Supper','Aisle 9',4.19,'2022-12-09',1,833,0.19,5,NULL),(205,'Quick Oats','ProduceQ','Aisle 1',8.95,'2022-12-04',2,429,0.95,5,NULL),(206,'Popcorn','Kelp','Aisle 10',5.88,'2022-12-06',2,358,1.88,5,NULL),(207,'Crackers','CheezIt','Aisle 5',2.2,'2022-12-09',4,483,2.2,5,NULL),(208,'Honey','ProduceQ','Aisle 3',2.2,'2022-12-09',3,491,2.18,4,NULL),(209,'Candles','Witch','Aisle 666',5.9,'2022-12-09',4,250,1.88,5,NULL),(210,'Dog','Democratic Peoples Republic of Korea','Aisle 38',20.91,'2022-12-09',3,700,0.9,1,NULL);
/*!40000 ALTER TABLE `ITEM` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 13:53:11
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: grocerydatabase.c18yikjkwckw.us-east-2.rds.amazonaws.com    Database: ProjectG
-- ------------------------------------------------------
-- Server version	8.0.28
use projectg;
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `PRODUCTS`
--

DROP TABLE IF EXISTS `PRODUCTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCTS` (
  `Product` varchar(45) COLLATE utf8_bin NOT NULL,
  `Product_Company` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Product`),
  KEY `ProdComp_idx` (`Product_Company`),
  CONSTRAINT `ProdComp` FOREIGN KEY (`Product_Company`) REFERENCES `VENDOR` (`Company`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTS`
--

LOCK TABLES `PRODUCTS` WRITE;
/*!40000 ALTER TABLE `PRODUCTS` DISABLE KEYS */;
INSERT INTO `PRODUCTS` VALUES ('Busch','Busch'),('Coke','Coke'),('Fritos','Lays'),('Sierra Mist','Pepsi'),('RmvMe','TryToRmvME');
/*!40000 ALTER TABLE `PRODUCTS` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 13:53:06
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: grocerydatabase.c18yikjkwckw.us-east-2.rds.amazonaws.com    Database: ProjectG
-- ------------------------------------------------------
-- Server version	8.0.28
use projectg;
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `TRANSACTION`
--

DROP TABLE IF EXISTS `TRANSACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANSACTION` (
  `Trans_Number` int NOT NULL,
  `Date` date NOT NULL,
  `Payment_Type` enum('Cash','Card','Check') COLLATE utf8_bin DEFAULT NULL,
  `Customer_Name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `Sub_Total` float DEFAULT NULL,
  `Tax` float DEFAULT NULL,
  `Store_Profit` float DEFAULT NULL,
  PRIMARY KEY (`Trans_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANSACTION`
--

LOCK TABLES `TRANSACTION` WRITE;
/*!40000 ALTER TABLE `TRANSACTION` DISABLE KEYS */;
INSERT INTO `TRANSACTION` VALUES (110,'2022-12-02','Card','Lilyana',118.685,116.36,2.3245,24.36),(111,'2022-12-02','Card','Brennen',151.475,147.93,3.5454,44.93),(112,'2022-12-02','Card','Alexia',265.738,259.4,6.3383,72.23),(113,'2022-12-03','Card','John',215.426,210.81,4.6165,43.14),(114,'2022-12-03','Check','Raiden',102.25,99.98,2.2696,19.92),(115,'2022-12-03','Cash','Carmelo',244.382,239.2,5.1819,55.81),(116,'2022-12-03','Check','Slade',30.6624,29.89,0.7724,6),(117,'2022-12-04','Card','Makhi',39.8454,39.31,0.5354,7.31),(118,'2022-12-04','Card','Lilyana',196.972,191.73,5.2417,40.06),(119,'2022-12-04','Check','Mya',140.098,136.8,3.2985,32.78),(120,'2022-12-05','Check','Izaiah',110.509,108.51,1.9991,28.23),(121,'2022-12-05','Check','Cayden',197.378,192.03,5.3478,58.14),(122,'2022-12-05','Check','Minecraft Steve',245.844,239.79,6.0538,44.9),(123,'2022-12-05','Check','Clinton',127.24,124.49,2.75,28.6),(124,'2022-12-05','Check','Izaiah',24.9192,24.25,0.6692,8.25),(125,'2022-12-05','Check','Kira',261.735,255.76,5.9751,67.98),(126,'2022-12-06','Check','Karli',306.06,297.61,8.4495,57.72),(127,'2022-12-06','Card','Kanye',261.694,255.9,5.7943,53.01),(128,'2022-12-06','Cash','Carmelo',176.244,172.43,3.8143,53.37),(129,'2022-12-06','Cash','Alexia',150.626,146.83,3.7962,36.33),(130,'2022-12-06','Card','Kassidy',17.3619,17.19,0.1719,5.19),(131,'2022-12-06','Check','Rosemary',87.2423,85.12,2.1223,13.12),(132,'2022-12-07','Card','Raiden',222.208,216.62,5.5876,52.84),(133,'2022-12-07','Cash','Selina',116.387,113.4,2.9875,25.4),(134,'2022-12-07','Check','Reese',263.129,257.6,5.5292,58.04),(135,'2022-12-07','Card','James',48.4974,46.93,1.5674,10.43),(136,'2022-12-07','Check','Jared',222.42,216.59,5.8303,71.2),(137,'2022-12-07','Cash','Chana',219.072,213.65,5.4223,45.76),(138,'2022-12-07','Card','Izaiah',212.186,207.31,4.8758,39.53),(139,'2022-12-07','Card','Karli',88.6794,86.04,2.6394,18.04),(140,'2022-12-08','Cash','Kira',97.2943,95.67,1.6243,28.11),(141,'2022-12-09','Cash','Rosemary',183.477,178.96,4.5172,51.68),(142,'2022-12-10','Card','Clinton',100.9,98.55,2.3496,18.55),(143,'2022-12-10','Card','Brennen',30.3877,29.71,0.6777,5.71),(144,'2022-12-11','Cash','Cayden',16.6531,16.38,0.2731,4.49),(145,'2022-12-11','Check','Irene',195.518,190.37,5.1479,42.35),(146,'2022-12-11','Check','Rosemary',56.0002,54.27,1.7302,14.77),(147,'2022-12-11','Cash','Christine',109.131,106.4,2.731,22.9),(148,'2022-12-11','Check','Chanel',155.245,152.17,3.0746,53.17),(149,'2022-12-12','Cash','Kanye',193.592,189.46,4.1319,42.07),(150,'2022-12-12','Card','Andrew',65.9804,63.99,1.9904,12.1),(151,'2022-12-12','Check','Clinton',130.864,128.19,2.6736,31.52),(152,'2022-12-12','Card','Andrew',137.475,133.76,3.7146,37.85),(153,'2022-12-12','Card','Cayden',167.742,164.19,3.5519,36.74),(154,'2022-12-13','Check','Clinton',117.786,115.24,2.5458,27.57),(155,'2022-12-13','Card','Mya',213.466,209.01,4.4556,58.23),(156,'2022-12-14','Card','Lilyana',160.208,155.54,4.6678,39.65),(157,'2022-12-15','Card','Paula',76.7165,75.27,1.4465,19.27),(158,'2022-12-15','Cash','Lilyana',200.042,195.35,4.6923,47.46),(159,'2022-12-15','Check','Rosemary',197.226,192.62,4.6063,49.23),(160,'2022-12-15','Card','James',58.4716,57.24,1.2316,13.35),(161,'2022-12-15','Card','John',39.8857,38.99,0.8957,10.49),(162,'2022-12-16','Cash','Rosemary',88.8198,86.47,2.3498,18.58),(163,'2022-12-17','Check','Rosemary',154.885,151.25,3.6349,31.36),(164,'2022-12-17','Card','Preston',261.83,255.42,6.4104,58.92),(165,'2022-12-17','Card','Mya',164.029,159.98,4.0492,44.09),(166,'2022-12-17','Cash','Oswaldo',171.835,167.18,4.6548,43.27),(167,'2022-12-17','Card','Alexia',263.784,257.47,6.3145,75.3),(168,'2022-12-17','Check','Andrew',174.521,171.16,3.3609,35.36),(169,'2022-12-17','Card','Oswaldo',194.456,190.22,4.2357,46.72),(170,'2022-12-18','Check','Oswaldo',194.657,189.73,4.9266,41.73),(171,'2022-12-18','Check','Christine',136.416,133.07,3.3456,37.4),(172,'2022-12-18','Cash','Reese',245.812,239.65,6.1617,56.65),(173,'2022-12-18','Card','Kassidy',101.64,99.26,2.3796,23.26),(174,'2022-12-19','Card','Rosemary',168.741,164.28,4.461,36.39),(175,'2022-12-19','Check','Carmelo',54.2824,53.34,0.9424,18.34),(176,'2022-12-19','Card','Mya',179.569,174.85,4.7186,43.85),(177,'2022-12-19','Card','Jared',226.639,221.47,5.1693,63.19),(178,'2022-12-19','Cash','Chana',34.1344,33.35,0.7844,5.35),(179,'2022-12-19','Cash','Paula',224.476,219.27,5.2056,47.49),(180,'2022-12-19','Card','Christine',196.982,192.35,4.632,32.05),(181,'2022-12-19','Cash','Christine',197.085,192.43,4.6548,53.43),(182,'2022-12-20','Cash','Brennen',51.2386,49.75,1.4886,13.75),(183,'2022-12-20','Card','Kanye',107.983,105.26,2.7231,28.74),(184,'2022-12-20','Cash','Clinton',85.2581,83.28,1.9781,24.28),(185,'2022-12-20','Card','Kael',95.8663,93.13,2.7363,33.74),(186,'2022-12-20','Cash','Chanel',193.981,189.35,4.6313,37.33),(187,'2022-12-21','Check','Kael',206.514,201.63,4.8839,49.85),(188,'2022-12-22','Check','Rosemary',189.32,184.41,4.9099,40.63),(189,'2022-12-22','Card','Kira',201.554,196.61,4.944,44.61),(190,'2022-12-22','Check','Paula',229.555,224.06,5.4954,69.5),(191,'2022-12-23','Card','Irene',162.144,158.6,3.5438,43.8),(192,'2022-12-23','Card','Alexia',104.107,102.01,2.0969,22.12),(193,'2022-12-23','Card','Rosemary',182.435,178.29,4.1454,51.51),(194,'2022-12-23','Check','Clinton',167.094,163.35,3.7441,39.96),(195,'2022-12-23','Cash','Lilyana',67.5242,65.95,1.5742,18.17),(196,'2022-12-24','Cash','Rosemary',135.557,132.35,3.2067,36.85),(197,'2022-12-24','Card','Slade',203.085,197.41,5.6754,38.13),(198,'2022-12-24','Card','Reese',189.747,185.05,4.697,37.16),(199,'2022-12-24','Card','Izaiah',256.669,250.7,5.969,56.03);
/*!40000 ALTER TABLE `TRANSACTION` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 13:53:12
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: grocerydatabase.c18yikjkwckw.us-east-2.rds.amazonaws.com    Database: ProjectG
-- ------------------------------------------------------
-- Server version	8.0.28
use projectg;
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `SOLD`
--

DROP TABLE IF EXISTS `SOLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOLD` (
  `Trans_Number` int NOT NULL,
  `Item_Name` varchar(45) COLLATE utf8_bin NOT NULL,
  `Item_ID` int DEFAULT NULL,
  KEY `TransID_idx` (`Trans_Number`),
  KEY `ItemID_idx` (`Item_ID`),
  CONSTRAINT `ItemID` FOREIGN KEY (`Item_ID`) REFERENCES `ITEM` (`Item_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TransID` FOREIGN KEY (`Trans_Number`) REFERENCES `TRANSACTION` (`Trans_Number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SOLD`
--

LOCK TABLES `SOLD` WRITE;
/*!40000 ALTER TABLE `SOLD` DISABLE KEYS */;
INSERT INTO `SOLD` VALUES (110,'Juice Concentrate',159),(110,'Green Chiles',174),(110,'Baked Beans',171),(110,'Baked Beans',171),(110,'Sliced Cheese',138),(110,'Baking Soda',144),(110,'Strawberries',112),(110,'Red Wine Vinegar',199),(110,'Pasta',127),(110,'Onion',119),(110,'Salad Dressings',193),(111,'Cocoa Powder',152),(111,'Lemons/Limes',118),(111,'Quinoa',128),(111,'Broccoli',116),(111,'Shredded Cheese',139),(111,'Chicken',132),(111,'Bread',109),(111,'Vanilla Extract',149),(111,'Ketchup',183),(111,'Butter',137),(111,'Greek Yogurt',142),(111,'Crackers',203),(111,'Crackers',203),(111,'Mustard',184),(111,'Frozen Peas',156),(111,'Chickpeas',170),(111,'Salad Dressings',193),(111,'Pasta',127),(112,'Lemons/Limes',118),(112,'Canned Veggies',175),(112,'Vanilla Extract',149),(112,'Soda',107),(112,'Course Sea Salt',188),(112,'Soda',105),(112,'Mustard',184),(112,'Broccoli',116),(112,'Soda',106),(112,'Crackers',207),(112,'Powdered Sugar',153),(112,'Lunch Meat',136),(112,'Pie Crust',161),(112,'Cooking Wine',201),(112,'Nutmeg',186),(112,'Frozen Peas',156),(112,'Chili Powder',178),(112,'Chicken',132),(112,'Sour Cream',141),(112,'Frozen Broccoli',157),(112,'Chili Powder',178),(112,'Frozen Peas',156),(112,'Coffee or Tea',176),(112,'Coffee or Tea',176),(112,'Beer',108),(112,'Chili Powder',178),(112,'Parsley',120),(112,'Flour',147),(112,'Cilantro',121),(112,'Juice Concentrate',159),(113,'Chicken',132),(113,'Quinoa',128),(113,'Pizza or Other Convenience Meals',160),(113,'Powdered Sugar',153),(113,'Black Pepper',177),(113,'Strawberries',112),(113,'Cinnamon',179),(113,'White Vinegar',200),(113,'Fruit and Berries',154),(113,'Crackers',207),(113,'Soda',105),(113,'Dry Yeast',150),(113,'Soda',106),(113,'Nuts',204),(113,'Cinnamon',179),(113,'Spinach',124),(113,'Coffee or Tea',176),(113,'Cooking Wine',201),(113,'Chicken stock/broth',163),(113,'Lemons/Limes',118),(113,'Sliced Turkey',135),(113,'Fruit and Berries',154),(113,'Soda',103),(113,'Black Beans',169),(113,'Crackers',207),(114,'Greek Yogurt',142),(114,'Dry Yeast',150),(114,'Sandwich Bread',130),(114,'Soda',104),(114,'Parsley',120),(114,'Cilantro',121),(114,'Soda',105),(114,'Chips',100),(114,'Soda',106),(114,'Soda',105),(114,'Salsa',164),(114,'Garlic Powder',182),(115,'Beer',108),(115,'Salad Dressings',193),(115,'Spinach',124),(115,'Basil',122),(115,'Potatoes',123),(115,'Cumin',181),(115,'Parsley',120),(115,'Pasta Sauce',168),(115,'Flour',147),(115,'Fruit and Berries',154),(115,'Popcorn',206),(115,'Ketchup',183),(115,'Steak Sauce',191),(115,'Chicken stock/broth',163),(115,'Baked Beans',171),(115,'Soda',104),(115,'Balsamic vinegar',195),(115,'Steak Sauce',191),(115,'Baked Beans',171),(115,'Flour',147),(115,'Shredded Cheese',139),(115,'Olive Oil',197),(115,'Popcorn',206),(115,'Chocolate Chips',151),(115,'Sour Cream',141),(116,'Soda',102),(116,'Lemons/Limes',118),(116,'Sour Cream',141),(116,'Ground Beef',134),(116,'Pasta',127),(117,'Chicken stock/broth',163),(117,'Balsamic vinegar',195),(117,'Frozen Corn ',155),(117,'Chicken stock/broth',163),(118,'Onion',119),(118,'Baking powder',143),(118,'Apple cider vinegar',194),(118,'Breadcrumbs',126),(118,'Butter',137),(118,'Juice Concentrate',159),(118,'Fruit and Berries',154),(118,'Paprika',187),(118,'Strawberries',112),(118,'Parsley',120),(118,'Sliced Turkey',135),(118,'Soda',107),(118,'Soda',106),(118,'Soy Sauce',190),(118,'Carrots',115),(118,'Tuna',173),(118,'Flour',147),(118,'Soda',101),(118,'Brown Sugar',146),(118,'Potatoes',123),(118,'White Wine Vinegar',202),(118,'Cinnamon',179),(119,'Sliced Cheese',138),(119,'Course Sea Salt',188),(119,'Dry Yeast',150),(119,'Vanilla Extract',149),(119,'Butter',137),(119,'Dry Yeast',150),(119,'Flour',147),(119,'Nutmeg',186),(119,'Lemons/Limes',118),(119,'Honey',208),(119,'Salsa',164),(119,'Sour Cream',141),(119,'Potatoes',123),(119,'Lunch Meat',136),(119,'Baking Soda',144),(119,'Bananas',111),(120,'Cumin',181),(120,'Frozen Peas',156),(120,'Salad Dressings',193),(120,'Pasta',127),(120,'Diced Tomatoes',165),(120,'Milk',140),(120,'Pasta',127),(120,'Olive Oil',197),(120,'Chips',100),(120,'Soda',106),(120,'Chicken',132),(120,'White Vinegar',200),(120,'Chili Powder',178),(120,'Soda',102),(120,'Broccoli',116),(121,'Mustard',184),(121,'Greek Yogurt',142),(121,'Black Beans',169),(121,'Broccoli',116),(121,'Juice Concentrate',159),(121,'Potatoes',123),(121,'Shredded Cheese',139),(121,'Strawberries',112),(121,'Apple cider vinegar',194),(121,'Soda',106),(121,'Paprika',187),(121,'Garlic Powder',182),(121,'Bread',109),(121,'Bread',109),(121,'Tomatoes',125),(121,'Tomatoes',125),(121,'Jam/Jelly',166),(121,'Milk',140),(121,'Sliced Turkey',135),(121,'Crackers',207),(121,'Cinnamon',179),(121,'Fruit and Berries',154),(121,'Olive Oil',197),(121,'Popcorn',206),(121,'Black Pepper',177),(121,'White Wine Vinegar',202),(122,'Quick Oats',205),(122,'Frozen Carrots',158),(122,'Chicken',132),(122,'Soups',172),(122,'Black Beans',169),(122,'Soups',172),(122,'Coffee or Tea',176),(122,'Baking powder',143),(122,'Avocados',113),(122,'Sliced Cheese',138),(122,'Broccoli',116),(122,'Pasta',127),(122,'Beer',108),(122,'Chicken stock/broth',163),(122,'Black Beans',169),(122,'Bread',109),(122,'Bell Peppers',114),(122,'Paprika',187),(122,'Avocados',113),(122,'Sliced Turkey',135),(122,'Tomatoes',125),(122,'Breadcrumbs',126),(122,'Soda',101),(122,'Breadcrumbs',126),(122,'Paprika',187),(122,'Chips',100),(123,'Eggs',133),(123,'Cookie Dough',162),(123,'Balsamic vinegar',195),(123,'Soy Sauce',190),(123,'Onion',119),(123,'Bell Peppers',114),(123,'Tortillas',131),(123,'Soda',101),(123,'Carrots',115),(123,'Red Wine Vinegar',199),(123,'Canned Veggies',175),(123,'Greek Yogurt',142),(123,'Greek Yogurt',142),(123,'Tuna',173),(123,'Crushed Red Pepper',180),(123,'Flour',147),(124,'Pizza or Other Convenience Meals',160),(124,'Ground Beef',134),(124,'Basil',122),(124,'Frozen Broccoli',157),(125,'Mustard',184),(125,'Granulated Sugar',145),(125,'Dry Yeast',150),(125,'Onion',119),(125,'Frozen Broccoli',157),(125,'Potatoes',123),(125,'Soda',105),(125,'Cilantro',121),(125,'Frozen Corn ',155),(125,'Soda',107),(125,'Frozen Broccoli',157),(125,'Salsa',164),(125,'Salad Dressings',193),(125,'Baked Beans',171),(125,'Steak Sauce',191),(125,'Cumin',181),(125,'Bananas',111),(125,'Lunch Meat',136),(125,'Carrots',115),(125,'Olive Oil',197),(125,'Baked Beans',171),(125,'Mayo',185),(125,'Cookie Dough',162),(125,'Baking powder',143),(125,'Chili Powder',178),(125,'Shredded Cheese',139),(125,'Black Beans',169),(125,'Lemons/Limes',118),(125,'Frozen Broccoli',157),(125,'Steak Sauce',191),(126,'Cumin',181),(126,'Nuts',204),(126,'Avocados',113),(126,'Powdered Sugar',153),(126,'Sandwich Bread',130),(126,'Cumin',181),(126,'Granulated Sugar',145),(126,'Brown Sugar',146),(126,'Coconut Oil',196),(126,'Frozen Broccoli',157),(126,'Onion',119),(126,'Course Sea Salt',188),(126,'Soda',107),(126,'Butter',137),(126,'Cumin',181),(126,'Apple cider vinegar',194),(126,'Quick Oats',205),(126,'Chocolate Chips',151),(126,'Baked Beans',171),(126,'Sliced Cheese',138),(126,'Chili Powder',178),(126,'Cumin',181),(126,'Breadcrumbs',126),(126,'Rice',129),(126,'Chickpeas',170),(126,'Potatoes',123),(126,'Sliced Cheese',138),(126,'Garlic',117),(126,'Ground Beef',134),(126,'Baked Beans',171),(127,'Sandwich Bread',130),(127,'Onion',119),(127,'Spinach',124),(127,'Crushed Red Pepper',180),(127,'Spinach',124),(127,'Ketchup',183),(127,'Beer',108),(127,'Bananas',111),(127,'Frozen Peas',156),(127,'Salsa',164),(127,'Frozen Peas',156),(127,'Sour Cream',141),(127,'Apple cider vinegar',194),(127,'White Vinegar',200),(127,'Cocoa Powder',152),(127,'Coconut Oil',196),(127,'Dry Yeast',150),(127,'Bell Peppers',114),(127,'Beer',108),(127,'Salsa',164),(127,'Fruit and Berries',154),(127,'Paprika',187),(127,'Soda',102),(127,'Flour',147),(127,'Bananas',111),(127,'Popcorn',206),(127,'Breadcrumbs',126),(128,'Cilantro',121),(128,'Spinach',124),(128,'Bread',109),(128,'Nuts',204),(128,'Pasta',127),(128,'Avocados',113),(128,'Soda',106),(128,'Soda',105),(128,'Vanilla Extract',149),(128,'Mustard',184),(128,'Salad Dressings',193),(128,'Carrots',115),(128,'Coffee or Tea',176),(128,'Chips',100),(128,'Avocados',113),(128,'Salad Dressings',193),(128,'Baking Soda',144),(128,'Cocoa Powder',152),(128,'Course Sea Salt',188),(128,'Brown Sugar',146),(128,'Soda',105),(128,'Soda',104),(128,'Cooking Wine',201),(129,'Bread',109),(129,'Ground Beef',134),(129,'Butter',137),(129,'White Vinegar',200),(129,'Soy Sauce',190),(129,'Milk',140),(129,'Garlic',117),(129,'Cilantro',121),(129,'Sliced Cheese',138),(129,'Green Chiles',174),(129,'Quick Oats',205),(129,'Strawberries',112),(129,'Garlic',117),(129,'Beer',108),(129,'White Wine Vinegar',202),(129,'Popcorn',206),(129,'Nuts',204),(130,'Pasta',127),(130,'Nuts',204),(130,'Basil',122),(131,'Canned Veggies',175),(131,'Cookie Dough',162),(131,'Apple cider vinegar',194),(131,'White Wine Vinegar',202),(131,'Spinach',124),(131,'Tortillas',131),(131,'Avocados',113),(131,'Sliced Cheese',138),(132,'Powdered Sugar',153),(132,'Crackers',203),(132,'Carrots',115),(132,'Soy Sauce',190),(132,'Soda',107),(132,'Shredded Cheese',139),(132,'Soups',172),(132,'Soda',107),(132,'Canned Veggies',175),(132,'Frozen Broccoli',157),(132,'Apples',110),(132,'Kosher Salts',189),(132,'Avocados',113),(132,'Frozen Carrots',158),(132,'Spinach',124),(132,'Black Pepper',177),(132,'Pasta Sauce',168),(132,'Salad Dressings',193),(132,'Bell Peppers',114),(132,'Paprika',187),(132,'Carrots',115),(132,'Cilantro',121),(132,'Quinoa',128),(132,'Balsamic vinegar',195),(132,'Pie Crust',161),(132,'Granulated Sugar',145),(133,'Pasta',127),(133,'Quinoa',128),(133,'Salad Dressings',193),(133,'Granulated Sugar',145),(133,'Crushed Red Pepper',180),(133,'Milk',140),(133,'Baking Soda',144),(133,'Onion',119),(133,'Crackers',203),(133,'Butter',137),(133,'Avocados',113),(133,'Ketchup',183),(133,'Chicken',132),(133,'Nutmeg',186),(134,'White Vinegar',200),(134,'Canned Veggies',175),(134,'Salsa',164),(134,'Quinoa',128),(134,'Flour',147),(134,'Red Wine Vinegar',199),(134,'Soda',106),(134,'Ketchup',183),(134,'Salsa',164),(134,'Soda',101),(134,'Soda',103),(134,'Eggs',133),(134,'Jam/Jelly',166),(134,'Pie Crust',161),(134,'Vanilla Extract',149),(134,'Chicken',132),(134,'Breadcrumbs',126),(134,'Salad Dressings',193),(134,'Chili Powder',178),(134,'Breadcrumbs',126),(134,'Sliced Turkey',135),(134,'Vegetable/Canola Oil',198),(134,'Quick Oats',205),(134,'Potatoes',123),(134,'Cilantro',121),(134,'Paprika',187),(134,'Bell Peppers',114),(134,'Soda',106),(135,'Potatoes',123),(135,'Cocoa Powder',152),(135,'Shredded Cheese',139),(135,'Chips',100),(135,'Apple cider vinegar',194),(136,'Chicken stock/broth',163),(136,'Cooking Wine',201),(136,'Chips',100),(136,'Dry Yeast',150),(136,'Mustard',184),(136,'Chili Powder',178),(136,'Mayo',185),(136,'Paprika',187),(136,'Soda',107),(136,'Bread',109),(136,'Ground Beef',134),(136,'Brown Sugar',146),(136,'Popcorn',206),(136,'Coconut Oil',196),(136,'Vegetable/Canola Oil',198),(136,'Chocolate Chips',151),(136,'Bread',109),(136,'Rice',129),(136,'Powdered Sugar',153),(136,'Bread',109),(136,'Potatoes',123),(136,'Frozen Broccoli',157),(136,'Quinoa',128),(136,'Lunch Meat',136),(137,'Salsa',164),(137,'Ground Beef',134),(137,'Pasta',127),(137,'Vegetable/Canola Oil',198),(137,'Soda',105),(137,'Nutmeg',186),(137,'Flour',147),(137,'Bell Peppers',114),(137,'Balsamic vinegar',195),(137,'Cookie Dough',162),(137,'Frozen Carrots',158),(137,'Kosher Salts',189),(137,'Sour Cream',141),(137,'Mustard',184),(137,'Tomatoes',125),(137,'Powdered Sugar',153),(137,'Chicken stock/broth',163),(137,'Ground Beef',134),(137,'Parsley',120),(137,'Lunch Meat',136),(137,'Canned Veggies',175),(137,'Frozen Peas',156),(137,'Bell Peppers',114),(137,'Sour Cream',141),(137,'White Vinegar',200),(138,'Sandwich Bread',130),(138,'Garlic Powder',182),(138,'Granulated Sugar',145),(138,'Baking powder',143),(138,'Pasta',127),(138,'Frozen Corn ',155),(138,'Soda',102),(138,'Garlic',117),(138,'Frozen Peas',156),(138,'Cilantro',121),(138,'Carrots',115),(138,'Frozen Carrots',158),(138,'Soda',102),(138,'Garlic',117),(138,'Chicken',132),(138,'Quick Oats',205),(138,'Cinnamon',179),(138,'Chickpeas',170),(138,'Pasta',127),(138,'Course Sea Salt',188),(138,'Tuna',173),(138,'Cookie Dough',162),(138,'Powdered Sugar',153),(139,'Parsley',120),(139,'Kosher Salts',189),(139,'Garlic',117),(139,'Salsa',164),(139,'Mayo',185),(139,'Quick Oats',205),(139,'Garlic Powder',182),(139,'Soy Sauce',190),(139,'Broccoli',116),(140,'Vanilla Extract',149),(140,'Apples',110),(140,'Soda',101),(140,'Cumin',181),(140,'Soda',102),(140,'Strawberries',112),(140,'Sliced Turkey',135),(140,'Soda',106),(140,'Tuna',173),(140,'Jam/Jelly',166),(140,'Flour',147),(140,'Soda',102),(140,'Frozen Corn ',155),(140,'Peanut Butter',167),(140,'Cilantro',121),(141,'Ground Beef',134),(141,'Garlic Powder',182),(141,'Chickpeas',170),(141,'Ketchup',183),(141,'Shredded Cheese',139),(141,'Eggs',133),(141,'Frozen Corn ',155),(141,'Soda',106),(141,'Soda',107),(141,'Olive Oil',197),(141,'Crackers',203),(141,'Mustard',184),(141,'Course Sea Salt',188),(141,'Beer',108),(141,'Crackers',203),(141,'Fruit and Berries',154),(141,'Crackers',207),(141,'Pasta Sauce',168),(141,'White Wine Vinegar',202),(141,'Vanilla Extract',149),(142,'Greek Yogurt',142),(142,'Vegetable/Canola Oil',198),(142,'Cookie Dough',162),(142,'Shredded Cheese',139),(142,'White Wine Vinegar',202),(142,'Tortillas',131),(142,'Ketchup',183),(142,'Cooking Wine',201),(142,'Avocados',113),(143,'Pasta Sauce',168),(143,'Popcorn',206),(143,'Lunch Meat',136),(144,'Milk',140),(144,'Cocoa Powder',152),(144,'Soda',101),(145,'Juice Concentrate',159),(145,'Cooking Wine',201),(145,'Strawberries',112),(145,'Pasta',127),(145,'Spinach',124),(145,'Baking powder',143),(145,'Cilantro',121),(145,'Crushed Red Pepper',180),(145,'Black Beans',169),(145,'Cumin',181),(145,'Breadcrumbs',126),(145,'Breadcrumbs',126),(145,'Steak Sauce',191),(145,'Nuts',204),(145,'Vanilla Extract',149),(145,'Parsley',120),(145,'Tuna',173),(145,'Avocados',113),(145,'Honey',208),(145,'Crackers',203),(145,'Cumin',181),(145,'Nutmeg',186),(145,'Vegetable/Canola Oil',198),(146,'Beer',108),(146,'Butter',137),(146,'Soy Sauce',190),(146,'Butter',137),(146,'Sliced Cheese',138),(146,'Brown Sugar',146),(147,'Popcorn',206),(147,'Cilantro',121),(147,'Cumin',181),(147,'Tortillas',131),(147,'Popcorn',206),(147,'Beer',108),(147,'Cookie Dough',162),(147,'Milk',140),(147,'Chickpeas',170),(147,'Soups',172),(147,'Garlic Powder',182),(148,'Frozen Corn ',155),(148,'White Vinegar',200),(148,'Green Chiles',174),(148,'Nutmeg',186),(148,'Frozen Broccoli',157),(148,'Tuna',173),(148,'Flour',147),(148,'Lemons/Limes',118),(148,'Bread',109),(148,'Salsa',164),(148,'Chicken stock/broth',163),(148,'Black Beans',169),(148,'Salsa',164),(148,'Cinnamon',179),(148,'Chili Powder',178),(148,'Sour Cream',141),(148,'Juice Concentrate',159),(148,'Diced Tomatoes',165),(148,'Chili Powder',178),(149,'Canned Veggies',175),(149,'Ketchup',183),(149,'Chili Powder',178),(149,'Vegetable/Canola Oil',198),(149,'Beer',108),(149,'Carrots',115),(149,'Fruit and Berries',154),(149,'Garlic',117),(149,'Green Chiles',174),(149,'Bell Peppers',114),(149,'Peanut Butter',167),(149,'Pasta',127),(149,'Salad Dressings',193),(149,'Soda',103),(149,'Salsa',164),(149,'Pasta',127),(149,'Soups',172),(149,'Greek Yogurt',142),(149,'Pizza or Other Convenience Meals',160),(150,'Apple cider vinegar',194),(150,'Soy Sauce',190),(150,'Cilantro',121),(150,'Crushed Red Pepper',180),(150,'Black Beans',169),(150,'Soda',104),(150,'Lunch Meat',136),(150,'Avocados',113),(150,'Juice Concentrate',159),(151,'Potatoes',123),(151,'Chicken',132),(151,'Chips',100),(151,'Coffee or Tea',176),(151,'Black Pepper',177),(151,'Soda',107),(151,'Soda',107),(151,'Chips',100),(151,'Crackers',203),(151,'Kosher Salts',189),(151,'Jam/Jelly',166),(151,'Salad Dressings',193),(151,'Paprika',187),(151,'Sliced Turkey',135),(151,'Soda',104),(151,'Course Sea Salt',188),(152,'Course Sea Salt',188),(152,'Salad Dressings',193),(152,'Vegetable/Canola Oil',198),(152,'Quinoa',128),(152,'Honey',208),(152,'Tomatoes',125),(152,'Crackers',203),(152,'Onion',119),(152,'Sandwich Bread',130),(152,'Rice',129),(152,'Olive Oil',197),(152,'Crushed Red Pepper',180),(152,'Chocolate Chips',151),(152,'Soda',104),(152,'Red Wine Vinegar',199),(153,'Flour',147),(153,'Chicken',132),(153,'Soda',101),(153,'Black Beans',169),(153,'Vegetable/Canola Oil',198),(153,'Chickpeas',170),(153,'Lunch Meat',136),(153,'Soy Sauce',190),(153,'Tomatoes',125),(153,'Soda',107),(153,'Bananas',111),(153,'Nuts',204),(153,'Rice',129),(153,'Soda',102),(153,'Soda',103),(153,'Soy Sauce',190),(153,'Salad Dressings',193),(153,'Nuts',204),(153,'Course Sea Salt',188),(153,'Soda',105),(153,'Nutmeg',186),(153,'Apples',110),(153,'Sliced Turkey',135),(154,'Soda',106),(154,'Soda',107),(154,'Cinnamon',179),(154,'Baking Soda',144),(154,'Chili Powder',178),(154,'Soda',101),(154,'Course Sea Salt',188),(154,'Course Sea Salt',188),(154,'Eggs',133),(154,'Frozen Peas',156),(154,'Crackers',207),(154,'Chicken',132),(154,'Ketchup',183),(154,'Broccoli',116),(155,'Soy Sauce',190),(155,'White Vinegar',200),(155,'Soda',101),(155,'Mayo',185),(155,'Brown Sugar',146),(155,'Spinach',124),(155,'Baked Beans',171),(155,'Cinnamon',179),(155,'Sliced Turkey',135),(155,'Tomatoes',125),(155,'Cooking Wine',201),(155,'Balsamic vinegar',195),(155,'Cocoa Powder',152),(155,'Chili Powder',178),(155,'Soda',102),(155,'Sliced Cheese',138),(155,'Salad Dressings',193),(155,'Coconut Oil',196),(155,'Sour Cream',141),(155,'Flour',147),(155,'Frozen Corn ',155),(155,'Basil',122),(155,'Ketchup',183),(155,'Bread',109),(155,'Nuts',204),(156,'Parsley',120),(156,'Bell Peppers',114),(156,'Garlic Powder',182),(156,'Course Sea Salt',188),(156,'Crackers',207),(156,'Shredded Cheese',139),(156,'Vegetable/Canola Oil',198),(156,'Greek Yogurt',142),(156,'White Wine Vinegar',202),(156,'Vanilla Extract',149),(156,'Soda',103),(156,'Crackers',207),(156,'Dry Yeast',150),(156,'Nuts',204),(156,'Crackers',203),(156,'Garlic Powder',182),(156,'Pie Crust',161),(156,'Greek Yogurt',142),(157,'Sliced Turkey',135),(157,'Tortillas',131),(157,'Basil',122),(157,'Baking Soda',144),(157,'Butter',137),(157,'Chicken stock/broth',163),(157,'Juice Concentrate',159),(157,'Diced Tomatoes',165),(157,'Salad Dressings',193),(158,'Canned Veggies',175),(158,'Vegetable/Canola Oil',198),(158,'Nutmeg',186),(158,'Broccoli',116),(158,'Mayo',185),(158,'Garlic',117),(158,'Avocados',113),(158,'Peanut Butter',167),(158,'Paprika',187),(158,'Garlic',117),(158,'Green Chiles',174),(158,'Eggs',133),(158,'Soda',103),(158,'Diced Tomatoes',165),(158,'Sliced Turkey',135),(158,'Tuna',173),(158,'Crushed Red Pepper',180),(158,'Baking powder',143),(158,'Coconut Oil',196),(158,'Black Beans',169),(158,'Broccoli',116),(158,'Basil',122),(158,'Crushed Red Pepper',180),(158,'Pasta',127),(159,'Chicken stock/broth',163),(159,'Onion',119),(159,'Shredded Cheese',139),(159,'Apples',110),(159,'Nuts',204),(159,'Juice Concentrate',159),(159,'Powdered Sugar',153),(159,'Pie Crust',161),(159,'Vanilla Extract',149),(159,'Frozen Peas',156),(159,'Tuna',173),(159,'Pasta',127),(159,'Black Beans',169),(159,'Spinach',124),(159,'Fruit and Berries',154),(159,'Soy Sauce',190),(159,'Soda',105),(159,'Cinnamon',179),(159,'Red Wine Vinegar',199),(159,'Garlic Powder',182),(159,'Crackers',207),(159,'Cilantro',121),(159,'Beer',108),(159,'Pasta',127),(160,'Steak Sauce',191),(160,'Flour',147),(160,'Steak Sauce',191),(160,'Coffee or Tea',176),(160,'Spinach',124),(160,'Soda',105),(160,'Flour',147),(161,'Chips',100),(161,'Bell Peppers',114),(161,'Peanut Butter',167),(161,'Pasta Sauce',168),(162,'Bell Peppers',114),(162,'Apple cider vinegar',194),(162,'Ketchup',183),(162,'Peanut Butter',167),(162,'Eggs',133),(162,'Lemons/Limes',118),(162,'Shredded Cheese',139),(162,'Soda',104),(162,'Crackers',203),(163,'White Wine Vinegar',202),(163,'Brown Sugar',146),(163,'Crushed Red Pepper',180),(163,'Mustard',184),(163,'Chicken stock/broth',163),(163,'Frozen Peas',156),(163,'Crackers',207),(163,'Apples',110),(163,'Frozen Corn ',155),(163,'Quinoa',128),(163,'Strawberries',112),(163,'Cookie Dough',162),(163,'Ketchup',183),(163,'Sour Cream',141),(163,'Soda',104),(163,'Quinoa',128),(163,'Chili Powder',178),(163,'Breadcrumbs',126),(164,'Onion',119),(164,'Sour Cream',141),(164,'Quinoa',128),(164,'Cooking Wine',201),(164,'Carrots',115),(164,'Chocolate Chips',151),(164,'Ketchup',183),(164,'Black Beans',169),(164,'White Wine Vinegar',202),(164,'Salad Dressings',193),(164,'Juice Concentrate',159),(164,'Chili Powder',178),(164,'Chili Powder',178),(164,'Black Beans',169),(164,'Chips',100),(164,'Butter',137),(164,'Cilantro',121),(164,'Brown Sugar',146),(164,'Cocoa Powder',152),(164,'Cilantro',121),(164,'Fruit and Berries',154),(164,'Tortillas',131),(164,'Lemons/Limes',118),(164,'Vegetable/Canola Oil',198),(164,'Balsamic vinegar',195),(164,'Ketchup',183),(164,'Nuts',204),(164,'Vanilla Extract',149),(164,'Olive Oil',197),(165,'Onion',119),(165,'Cookie Dough',162),(165,'Soda',101),(165,'Coconut Oil',196),(165,'Onion',119),(165,'Frozen Broccoli',157),(165,'Pasta Sauce',168),(165,'Jam/Jelly',166),(165,'Salsa',164),(165,'Cocoa Powder',152),(165,'Strawberries',112),(165,'Pasta Sauce',168),(165,'Chocolate Chips',151),(165,'Brown Sugar',146),(165,'Pasta',127),(165,'Jam/Jelly',166),(165,'Garlic',117),(165,'Soy Sauce',190),(165,'Crackers',207),(165,'Brown Sugar',146),(166,'Ground Beef',134),(166,'Frozen Corn ',155),(166,'Quinoa',128),(166,'Red Wine Vinegar',199),(166,'Pie Crust',161),(166,'Pasta Sauce',168),(166,'Lemons/Limes',118),(166,'Lemons/Limes',118),(166,'Honey',208),(166,'Pasta Sauce',168),(166,'Garlic Powder',182),(166,'Nuts',204),(166,'Nuts',204),(166,'Soda',103),(166,'Vegetable/Canola Oil',198),(166,'Chocolate Chips',151),(166,'Coconut Oil',196),(166,'Powdered Sugar',153),(166,'Breadcrumbs',126),(166,'Course Sea Salt',188),(167,'Brown Sugar',146),(167,'Sliced Cheese',138),(167,'Paprika',187),(167,'Bread',109),(167,'Bananas',111),(167,'Butter',137),(167,'Cooking Wine',201),(167,'Soda',103),(167,'Cumin',181),(167,'Vegetable/Canola Oil',198),(167,'Baked Beans',171),(167,'Pie Crust',161),(167,'Quinoa',128),(167,'Milk',140),(167,'Dry Yeast',150),(167,'Avocados',113),(167,'Beer',108),(167,'Sour Cream',141),(167,'Soda',106),(167,'Mustard',184),(167,'Breadcrumbs',126),(167,'Milk',140),(167,'Chili Powder',178),(167,'Soda',106),(167,'Broccoli',116),(167,'Diced Tomatoes',165),(167,'Shredded Cheese',139),(167,'Cooking Wine',201),(167,'Nutmeg',186),(167,'Pie Crust',161),(168,'Cilantro',121),(168,'Quick Oats',205),(168,'Ground Beef',134),(168,'Cookie Dough',162),(168,'Baked Beans',171),(168,'Cocoa Powder',152),(168,'Honey',208),(168,'Brown Sugar',146),(168,'Juice Concentrate',159),(168,'Crackers',203),(168,'Chicken',132),(168,'Butter',137),(168,'Soda',102),(168,'Soda',102),(168,'Fruit and Berries',154),(168,'Cookie Dough',162),(168,'Cooking Wine',201),(168,'Basil',122),(168,'Crackers',207),(168,'Frozen Peas',156),(169,'Baked Beans',171),(169,'Bell Peppers',114),(169,'Chili Powder',178),(169,'Sour Cream',141),(169,'Jam/Jelly',166),(169,'Beer',108),(169,'Chickpeas',170),(169,'Kosher Salts',189),(169,'Pasta',127),(169,'Quick Oats',205),(169,'Crackers',203),(169,'Cilantro',121),(169,'Eggs',133),(169,'Pasta Sauce',168),(169,'White Vinegar',200),(169,'Pasta Sauce',168),(169,'Garlic Powder',182),(169,'Pasta Sauce',168),(170,'Baking Soda',144),(170,'Mayo',185),(170,'Cooking Wine',201),(170,'Olive Oil',197),(170,'Broccoli',116),(170,'Ketchup',183),(170,'Chicken',132),(170,'Frozen Peas',156),(170,'Sour Cream',141),(170,'Cilantro',121),(170,'Tomatoes',125),(170,'Red Wine Vinegar',199),(170,'Coconut Oil',196),(170,'Sliced Turkey',135),(170,'Canned Veggies',175),(170,'Coffee or Tea',176),(170,'Shredded Cheese',139),(170,'Milk',140),(170,'Salad Dressings',193),(170,'Bell Peppers',114),(170,'Juice Concentrate',159),(171,'Nutmeg',186),(171,'Mayo',185),(171,'Shredded Cheese',139),(171,'Garlic',117),(171,'Soda',104),(171,'Broccoli',116),(171,'Quinoa',128),(171,'Chickpeas',170),(171,'Salad Dressings',193),(171,'Shredded Cheese',139),(171,'Soda',106),(171,'Bananas',111),(171,'Eggs',133),(171,'White Vinegar',200),(171,'Soda',104),(171,'Cooking Wine',201),(172,'Lunch Meat',136),(172,'White Wine Vinegar',202),(172,'Tomatoes',125),(172,'Bananas',111),(172,'Flour',147),(172,'Soups',172),(172,'Beer',108),(172,'Breadcrumbs',126),(172,'Crackers',207),(172,'Chocolate Chips',151),(172,'Dry Yeast',150),(172,'White Vinegar',200),(172,'Granulated Sugar',145),(172,'Black Pepper',177),(172,'Granulated Sugar',145),(172,'Bell Peppers',114),(172,'Flour',147),(172,'Pasta',127),(172,'Lunch Meat',136),(172,'Olive Oil',197),(172,'Pasta',127),(172,'Pasta',127),(172,'Carrots',115),(172,'Diced Tomatoes',165),(172,'Chicken',132),(172,'Peanut Butter',167),(172,'Lunch Meat',136),(172,'Greek Yogurt',142),(172,'Beer',108),(173,'Pie Crust',161),(173,'Vegetable/Canola Oil',198),(173,'Spinach',124),(173,'Cooking Wine',201),(173,'Basil',122),(173,'Chickpeas',170),(173,'Course Sea Salt',188),(173,'Paprika',187),(173,'Mustard',184),(173,'Granulated Sugar',145),(174,'Breadcrumbs',126),(174,'Mayo',185),(174,'Cumin',181),(174,'Potatoes',123),(174,'Crackers',203),(174,'Sandwich Bread',130),(174,'Diced Tomatoes',165),(174,'Breadcrumbs',126),(174,'Pasta',127),(174,'Mayo',185),(174,'Balsamic vinegar',195),(174,'Vanilla Extract',149),(174,'Soda',107),(174,'Cookie Dough',162),(174,'Granulated Sugar',145),(174,'Juice Concentrate',159),(174,'Fruit and Berries',154),(174,'Nutmeg',186),(174,'Parsley',120),(175,'Frozen Corn ',155),(175,'Sliced Turkey',135),(175,'Cookie Dough',162),(175,'Bread',109),(175,'Green Chiles',174),(175,'Course Sea Salt',188),(175,'Apples',110),(176,'Crackers',203),(176,'Bananas',111),(176,'Mustard',184),(176,'Avocados',113),(176,'Cinnamon',179),(176,'Carrots',115),(176,'Cookie Dough',162),(176,'Bread',109),(176,'Butter',137),(176,'Brown Sugar',146),(176,'Fruit and Berries',154),(176,'Flour',147),(176,'Broccoli',116),(176,'Green Chiles',174),(176,'Green Chiles',174),(176,'Lemons/Limes',118),(176,'Juice Concentrate',159),(176,'Bell Peppers',114),(176,'Soups',172),(176,'Black Beans',169),(176,'Mayo',185),(177,'Mustard',184),(177,'Pie Crust',161),(177,'Baking powder',143),(177,'Bread',109),(177,'Frozen Peas',156),(177,'Beer',108),(177,'Cocoa Powder',152),(177,'Cinnamon',179),(177,'Quick Oats',205),(177,'Soda',105),(177,'Cooking Wine',201),(177,'Apples',110),(177,'Soda',102),(177,'Sliced Turkey',135),(177,'Pasta Sauce',168),(177,'Lemons/Limes',118),(177,'Lemons/Limes',118),(177,'Pasta Sauce',168),(177,'Tuna',173),(177,'Cocoa Powder',152),(177,'Butter',137),(177,'Sandwich Bread',130),(177,'Vegetable/Canola Oil',198),(177,'Apples',110),(177,'Pasta Sauce',168),(178,'Soy Sauce',190),(178,'Eggs',133),(178,'Mayo',185),(178,'Chicken stock/broth',163),(178,'Pizza or Other Convenience Meals',160),(179,'Butter',137),(179,'Kosher Salts',189),(179,'Shredded Cheese',139),(179,'Chickpeas',170),(179,'Lemons/Limes',118),(179,'Mayo',185),(179,'Bell Peppers',114),(179,'Chicken stock/broth',163),(179,'Frozen Broccoli',157),(179,'Sandwich Bread',130),(179,'Popcorn',206),(179,'Spinach',124),(179,'Baked Beans',171),(179,'Soda',102),(179,'Quick Oats',205),(179,'White Vinegar',200),(179,'Paprika',187),(179,'Mayo',185),(179,'Mustard',184),(179,'Soda',107),(179,'Peanut Butter',167),(179,'White Wine Vinegar',202),(179,'Nuts',204),(179,'Juice Concentrate',159),(179,'Chicken stock/broth',163),(180,'Baked Beans',171),(180,'Frozen Peas',156),(180,'Mayo',185),(180,'Honey',208),(180,'Garlic',117),(180,'Breadcrumbs',126),(180,'Cookie Dough',162),(180,'Juice Concentrate',159),(180,'Popcorn',206),(180,'Juice Concentrate',159),(180,'Sandwich Bread',130),(180,'Cookie Dough',162),(180,'Frozen Carrots',158),(180,'Chili Powder',178),(180,'Soda',107),(180,'Chips',100),(180,'Apple cider vinegar',194),(180,'Ground Beef',134),(180,'Soda',104),(180,'Granulated Sugar',145),(180,'Cookie Dough',162),(180,'Course Sea Salt',188),(181,'Quick Oats',205),(181,'Frozen Broccoli',157),(181,'Lemons/Limes',118),(181,'Frozen Broccoli',157),(181,'Ground Beef',134),(181,'Olive Oil',197),(181,'Greek Yogurt',142),(181,'Chickpeas',170),(181,'Lunch Meat',136),(181,'Chicken stock/broth',163),(181,'Quick Oats',205),(181,'Ketchup',183),(181,'Dry Yeast',150),(181,'Balsamic vinegar',195),(181,'Black Pepper',177),(181,'Diced Tomatoes',165),(181,'Bread',109),(181,'Brown Sugar',146),(181,'Peanut Butter',167),(181,'Apple cider vinegar',194),(181,'Pizza or Other Convenience Meals',160),(181,'Nutmeg',186),(181,'Vanilla Extract',149),(181,'Balsamic vinegar',195),(182,'Soy Sauce',190),(182,'Cinnamon',179),(182,'Crackers',207),(182,'Onion',119),(182,'Chocolate Chips',151),(182,'Black Beans',169),(182,'Baked Beans',171),(183,'Baking Soda',144),(183,'Paprika',187),(183,'Lemons/Limes',118),(183,'Ground Beef',134),(183,'Pasta',127),(183,'Olive Oil',197),(183,'Chips',100),(183,'Salad Dressings',193),(183,'Juice Concentrate',159),(183,'Honey',208),(183,'Apples',110),(183,'Frozen Corn ',155),(183,'Tuna',173),(183,'Butter',137),(183,'White Wine Vinegar',202),(183,'Broccoli',116),(184,'Balsamic vinegar',195),(184,'White Vinegar',200),(184,'White Vinegar',200),(184,'Quinoa',128),(184,'Sliced Cheese',138),(184,'Dry Yeast',150),(184,'Lunch Meat',136),(184,'Bread',109),(185,'Pizza or Other Convenience Meals',160),(185,'Bell Peppers',114),(185,'Flour',147),(185,'Bread',109),(185,'Shredded Cheese',139),(185,'Juice Concentrate',159),(185,'Soda',107),(185,'Parsley',120),(185,'Cookie Dough',162),(185,'Chips',100),(185,'Mustard',184),(185,'Pie Crust',161),(185,'Black Pepper',177),(186,'Bananas',111),(186,'Chocolate Chips',151),(186,'Cooking Wine',201),(186,'Cooking Wine',201),(186,'Shredded Cheese',139),(186,'Chicken stock/broth',163),(186,'Vanilla Extract',149),(186,'Chocolate Chips',151),(186,'Soups',172),(186,'Bananas',111),(186,'Honey',208),(186,'Potatoes',123),(186,'Carrots',115),(186,'Tuna',173),(186,'Cookie Dough',162),(186,'Pie Crust',161),(186,'Apple cider vinegar',194),(186,'Mayo',185),(186,'Chicken',132),(186,'Sliced Cheese',138),(187,'Garlic',117),(187,'Cilantro',121),(187,'Salsa',164),(187,'Lemons/Limes',118),(187,'Brown Sugar',146),(187,'Green Chiles',174),(187,'Lunch Meat',136),(187,'Cocoa Powder',152),(187,'Salad Dressings',193),(187,'Frozen Broccoli',157),(187,'Ketchup',183),(187,'Soda',107),(187,'Tortillas',131),(187,'Quick Oats',205),(187,'Bell Peppers',114),(187,'Kosher Salts',189),(187,'Bell Peppers',114),(187,'Baked Beans',171),(187,'Olive Oil',197),(187,'Soda',102),(187,'Crackers',207),(187,'Flour',147),(187,'Breadcrumbs',126),(187,'Kosher Salts',189),(188,'Crushed Red Pepper',180),(188,'Cinnamon',179),(188,'Course Sea Salt',188),(188,'Peanut Butter',167),(188,'Nutmeg',186),(188,'Soda',102),(188,'Powdered Sugar',153),(188,'Potatoes',123),(188,'Greek Yogurt',142),(188,'Soda',107),(188,'Frozen Carrots',158),(188,'Broccoli',116),(188,'Shredded Cheese',139),(188,'Ketchup',183),(188,'Granulated Sugar',145),(188,'Pizza or Other Convenience Meals',160),(188,'Carrots',115),(188,'Apples',110),(188,'Garlic Powder',182),(188,'Parsley',120),(188,'Strawberries',112),(188,'Pasta Sauce',168),(189,'Black Beans',169),(189,'Pizza or Other Convenience Meals',160),(189,'Cocoa Powder',152),(189,'Pasta Sauce',168),(189,'Soy Sauce',190),(189,'Pasta',127),(189,'Chickpeas',170),(189,'Soy Sauce',190),(189,'Bell Peppers',114),(189,'Chicken',132),(189,'Rice',129),(189,'Apples',110),(189,'Nuts',204),(189,'Frozen Carrots',158),(189,'Nutmeg',186),(189,'Soy Sauce',190),(189,'Salsa',164),(189,'Quick Oats',205),(189,'Strawberries',112),(189,'Diced Tomatoes',165),(189,'Dry Yeast',150),(189,'Quinoa',128),(189,'Broccoli',116),(189,'Baking Soda',144),(190,'Quinoa',128),(190,'Milk',140),(190,'Chicken',132),(190,'Lunch Meat',136),(190,'Chocolate Chips',151),(190,'Coffee or Tea',176),(190,'Frozen Corn ',155),(190,'Chips',100),(190,'Coffee or Tea',176),(190,'Bell Peppers',114),(190,'Soda',104),(190,'Coffee or Tea',176),(190,'Diced Tomatoes',165),(190,'Soda',104),(190,'Breadcrumbs',126),(190,'Soda',103),(190,'Pie Crust',161),(190,'Red Wine Vinegar',199),(190,'Red Wine Vinegar',199),(190,'Bread',109),(190,'Kosher Salts',189),(190,'Red Wine Vinegar',199),(190,'Beer',108),(190,'Nutmeg',186),(190,'Salsa',164),(190,'Soda',102),(191,'Shredded Cheese',139),(191,'Chicken',132),(191,'Flour',147),(191,'Sandwich Bread',130),(191,'Breadcrumbs',126),(191,'Pizza or Other Convenience Meals',160),(191,'Soda',101),(191,'Frozen Carrots',158),(191,'Salsa',164),(191,'Salad Dressings',193),(191,'Peanut Butter',167),(191,'Balsamic vinegar',195),(191,'Honey',208),(191,'Sliced Cheese',138),(191,'Crushed Red Pepper',180),(191,'White Wine Vinegar',202),(191,'Sour Cream',141),(191,'Broccoli',116),(191,'Soda',105),(191,'Bread',109),(192,'Pie Crust',161),(192,'Jam/Jelly',166),(192,'Vanilla Extract',149),(192,'Cookie Dough',162),(192,'Nuts',204),(192,'Soda',102),(192,'Chicken stock/broth',163),(192,'Frozen Broccoli',157),(192,'Soups',172),(192,'Frozen Broccoli',157),(192,'Bananas',111),(192,'Sour Cream',141),(192,'Crackers',207),(192,'Avocados',113),(192,'Milk',140),(192,'Sandwich Bread',130),(193,'Cinnamon',179),(193,'Milk',140),(193,'Olive Oil',197),(193,'Cooking Wine',201),(193,'Soda',106),(193,'Potatoes',123),(193,'Peanut Butter',167),(193,'Bananas',111),(193,'Fruit and Berries',154),(193,'Peanut Butter',167),(193,'Chickpeas',170),(193,'Bread',109),(193,'Kosher Salts',189),(193,'Soy Sauce',190),(193,'Red Wine Vinegar',199),(193,'Mustard',184),(193,'Soda',105),(193,'Butter',137),(193,'Bananas',111),(193,'Cocoa Powder',152),(193,'Juice Concentrate',159),(193,'Brown Sugar',146),(193,'Coconut Oil',196),(194,'Cilantro',121),(194,'Mustard',184),(194,'Soda',105),(194,'Coffee or Tea',176),(194,'Milk',140),(194,'Kosher Salts',189),(194,'Sour Cream',141),(194,'Chicken stock/broth',163),(194,'Fruit and Berries',154),(194,'Tortillas',131),(194,'Tomatoes',125),(194,'Garlic Powder',182),(194,'Apples',110),(194,'White Vinegar',200),(194,'Cookie Dough',162),(194,'Strawberries',112),(194,'Beer',108),(194,'Frozen Corn ',155),(194,'Frozen Corn ',155),(194,'Lunch Meat',136),(195,'Onion',119),(195,'Quick Oats',205),(195,'Quinoa',128),(195,'Chili Powder',178),(195,'Popcorn',206),(195,'Soda',106),(195,'Soda',107),(195,'Flour',147),(196,'Cinnamon',179),(196,'Chicken stock/broth',163),(196,'Red Wine Vinegar',199),(196,'Garlic Powder',182),(196,'Frozen Corn ',155),(196,'Jam/Jelly',166),(196,'Powdered Sugar',153),(196,'Crushed Red Pepper',180),(196,'Beer',108),(196,'Brown Sugar',146),(196,'Crackers',203),(196,'Basil',122),(196,'Peanut Butter',167),(196,'Soy Sauce',190),(197,'Rice',129),(197,'Frozen Carrots',158),(197,'Soda',107),(197,'Lemons/Limes',118),(197,'Soda',101),(197,'Nuts',204),(197,'Quick Oats',205),(197,'Olive Oil',197),(197,'Chicken',132),(197,'Red Wine Vinegar',199),(197,'Quinoa',128),(197,'Canned Veggies',175),(197,'Mayo',185),(197,'Sliced Cheese',138),(197,'Pizza or Other Convenience Meals',160),(197,'Crushed Red Pepper',180),(197,'Tomatoes',125),(197,'Granulated Sugar',145),(197,'Garlic Powder',182),(197,'Apple cider vinegar',194),(197,'Beer',108),(197,'Breadcrumbs',126),(197,'Strawberries',112),(198,'Chili Powder',178),(198,'Paprika',187),(198,'Dry Yeast',150),(198,'Chocolate Chips',151),(198,'Pie Crust',161),(198,'Crushed Red Pepper',180),(198,'Soda',101),(198,'Vegetable/Canola Oil',198),(198,'Potatoes',123),(198,'Ground Beef',134),(198,'Pasta',127),(198,'Cooking Wine',201),(198,'Juice Concentrate',159),(198,'Vegetable/Canola Oil',198),(198,'Coffee or Tea',176),(198,'Cookie Dough',162),(198,'Coffee or Tea',176),(199,'Quick Oats',205),(199,'White Vinegar',200),(199,'Bread',109),(199,'Chicken stock/broth',163),(199,'Soda',107),(199,'Soda',105),(199,'Pasta',127),(199,'Sandwich Bread',130),(199,'Parsley',120),(199,'Pizza or Other Convenience Meals',160),(199,'Tortillas',131),(199,'Mustard',184),(199,'Greek Yogurt',142),(199,'Cooking Wine',201),(199,'Cinnamon',179),(199,'Chocolate Chips',151),(199,'Powdered Sugar',153),(199,'Sour Cream',141),(199,'Flour',147),(199,'Quinoa',128),(199,'Sandwich Bread',130),(199,'Ketchup',183),(199,'Baked Beans',171),(199,'Crackers',207),(199,'Sliced Cheese',138),(199,'Crushed Red Pepper',180),(199,'Apple cider vinegar',194),(199,'Popcorn',206),(199,'Soda',101);
/*!40000 ALTER TABLE `SOLD` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 13:53:13

-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coc
-- ------------------------------------------------------
-- Server version	5.7.10-log

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

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `idcategories` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategories`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,'Communications'),(5,'Energy'),(2,'Hardware'),(4,'Mathematics'),(1,'Software');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `idcourses` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `ects` int(6) DEFAULT NULL,
  `prerequisites` int(11) DEFAULT NULL,
  `category` int(5) NOT NULL,
  `semester` int(10) DEFAULT NULL,
  `required` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idcourses`),
  UNIQUE KEY `idcourses_UNIQUE` (`idcourses`),
  KEY `idcategories_idx` (`category`),
  CONSTRAINT `idcategories` FOREIGN KEY (`category`) REFERENCES `categories` (`idcategories`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,110,'Μαθηματικός Λογισμός Ι',6,NULL,4,1,1),(2,112,'Γραμμική Άλγεβρα',6,NULL,4,1,1),(3,120,'Προγραμματισμός Ι',6,NULL,1,1,1),(4,130,'Ψηφιακή Σχεδίαση Ι',5,NULL,2,1,1),(5,150,'Φυσική Ι',6,NULL,5,1,1),(6,151,'Σχέδιο',6,NULL,5,2,1),(7,111,'Μαθηματικός Λογισμός ΙΙ',6,NULL,4,2,1),(8,113,'Διακριτά Μαθηματικά',6,NULL,4,2,1),(9,121,'Προγραμματισμός ΙΙ',6,120,1,2,1),(10,151,'Φυσική ΙΙ',6,NULL,5,2,1),(11,250,'Ηλεκτρικές μετρήσεις',6,NULL,5,3,1),(12,210,'Δομές Δεδομένων',6,113,4,3,1),(13,210,'Δομές Δεδομένων',6,120,4,3,1),(14,230,'Ανάλυση Κυκλωμάτων',6,151,2,3,1),(15,230,'Ανάλυση Κυκλωμάτων',6,112,2,3,1),(16,232,'Οργάνωση και Σχεδίαση Η/Υ',6,130,2,3,1),(17,232,'Οργάνωση και Σχεδίαση Η/Υ',6,120,2,3,1),(18,240,'Πιθανότητες',6,113,4,3,1),(19,211,'Διαφορικές Εξισώσεις',6,112,4,4,1),(20,211,'Διαφορικές Εξισώσεις',6,110,4,4,1),(21,213,'Αριθμητική Ανάλυση',6,110,4,4,1),(22,213,'Αριθμητική Ανάλυση',6,112,4,4,1),(23,214,'Αριθμητική Ανάλυση',6,120,4,4,1),(24,215,'Αλγόριθμοι',6,113,4,4,1),(25,215,'Αλγόριθμοι',6,210,4,4,1),(26,231,'Εισαγωγή στην Ηλεκτρονική',6,151,2,4,1),(27,231,'Εισαγωγή στην Ηλεκτρονική',6,230,2,4,1),(28,241,'Σήματα και Συστήματα',6,110,3,4,1),(29,241,'Σήματα και Συστήματα',6,111,3,4,1),(30,340,'Συστήματα Αυτόματου Ελέγχου',6,112,3,5,1),(31,340,'Συστήματα Αυτόματου Ελέγχου',6,241,3,5,1),(32,310,'Τεχνολογίες Εκπαίδευσης',6,NULL,4,5,0),(33,320,'Μεταγλωτιστές',6,120,1,5,0),(34,322,'Τεχνητή Νοημοσύνη',6,120,4,5,0),(35,324,'Βάσεις Δεδομένων',5,NULL,1,5,1),(36,326,'Ταυτόχρονος Προγραμματισμός',6,120,1,5,0),(37,326,'Ταυτόχρονος Προγραμματισμός',6,121,1,5,0),(38,330,'Ψηφιακά Ηλεκτρονικά',6,130,2,5,0),(39,340,'Δίκτυα Υπολογιστών Ι',6,240,3,5,1),(40,340,'Δίκτυα Υπολογιστών Ι',6,215,3,5,1),(41,342,'Ψηφιακή Επεξεργασία Σημάτων',6,241,3,5,0),(42,450,'Συστήματα Ηλεκτρικής Ενέργειας ΙΙ',6,351,5,7,0),(43,351,'Συστήματα Ηλεκτρικής Ενέργειας Ι',6,230,5,6,1),(44,351,'Συστήματα Ηλεκτρικής Ενέργειας Ι',6,211,5,6,1),(45,353,'Ηλεκτρικές Μηχανές',6,NULL,5,6,0),(46,355,'Εφαρμοσμένη Θερμοδυναμική',6,NULL,5,6,0),(47,311,'Εισαγωγή Στη Θεωρία Υπολογισμού',6,113,3,6,0),(48,321,'Λειτουργικά Συστήματα',6,121,1,6,0),(49,323,'Κατανεμημένα Συστήματα',6,121,1,6,0),(50,325,'Αντικειμενοστραφής Προγραμματισμός',6,120,1,6,0),(51,327,'Ανάκληση Πληροφορίας',6,324,3,6,0),(52,331,'Ηλεκτρομαγνητικά Πεδία Ι',6,111,5,6,1),(53,331,'Ηλεκτρομαγνητικά Πεδία Ι',6,151,5,6,1),(54,333,'Εργαστήριο Σχεδίασης SoC με εργαλεία CAD',6,130,2,6,0),(55,335,'Προχωρημένη Ηλεκτρονική',6,231,2,6,0),(56,341,'Τηλεπικοινωνιακά Συστήματα',6,240,3,6,1),(57,341,'Τηλεπικοινωνιακα Συστήματα',6,241,3,6,1),(58,343,'Επεξεργασία Εικόνας',6,241,3,6,0),(59,345,'Αναγνώριση Προτύπων',6,240,3,6,0),(60,345,'Αναγνώριση Προτύπων',6,241,3,6,0),(61,347,'Μοντελοποίηση και Απόδοση Συστημάτων',6,240,3,6,0),(62,349,'Ασφάλεια Δικτύων και Πληροφορικών Συστημάτων',6,NULL,3,6,0),(63,452,'Ηλεκτρικές Εγκαταστάσεις',6,351,5,7,0),(64,400,'Ειδικό Θέμα Χειμερινού Εξαμήνου',6,NULL,4,7,0),(65,402,'Εισαγωγή στην Επιχειρηματικότητα',6,NULL,4,7,0),(66,410,'Παράλληλοι και Δικτυακοί Υπολογισμοί',6,213,3,7,0),(67,410,'Παράλληλοι και Δικτυακοί Υπολογισμοί',6,120,3,7,0),(68,412,'Γραμμικός Προγραμματισμός',6,112,1,7,0),(69,414,'Υπολογιστική Άλγεβρα Ι',6,NULL,3,7,0),(70,416,'Γραφικά Υπολογιστή',6,112,1,7,0),(71,416,'Γραφικά Υπολογιστή',6,120,1,7,0),(72,420,'Σχεδίαση και Ανάπτυξη Λογισμικού',6,120,1,7,0),(73,422,'Εξόρυξη Δεδομένων',6,112,1,7,0),(74,422,'Εξόρυξη Δεδομένων',6,240,1,7,0),(75,424,'Λογικός και Συναρτησιακός Υπολογισμός',6,120,1,7,0),(76,426,'Τεχνολογίες Παγκόσμιου Ιστού',6,323,1,7,0),(77,430,'Εργαστήριο Ψηφιακών Συστημάτων',6,232,2,7,0),(78,432,'Αρχιτεκτονική Υπολογιστών',6,232,2,7,0),(79,434,'Ηλεκτρομαγνητικά Πεδία ΙΙ',6,211,5,7,0),(80,434,'Ηλεκτρομαγνητικά Πεδία ΙΙ',6,331,5,7,0),(81,436,'Έλεγχος και Επαλήθευση Κυκλωμάτων',6,130,2,7,0),(82,438,'Σχεδίαση Ασύγχρονων Κυκλωμάτων',6,215,2,7,0),(83,438,'Σχεδίαση Ασύγχρονων Κυκλωμάτων',6,333,2,7,0),(84,440,'Επεξεργασία Φωνής και Ήχου',6,240,3,7,0),(85,440,'Επεξεργασία Φωνής και Ήχου',6,342,3,7,0),(86,442,'Εφαρμοσμένες Στοχαστικές Διαδικασίες',6,112,3,7,0),(87,442,'Εφαρμοσμένες Στοχαστικές Διαδικασίες',6,240,3,7,0),(88,444,'Θεωρία Πληροφοριών και Κωδίκων',6,240,3,7,0),(89,446,'Σχεδιασμός Διαδικτυακών Πρωτοκόλλων',6,340,3,7,0),(90,448,'Προχωρημένα Θέματα Δικτύων',6,340,3,7,0),(91,448,'Προχωρημένα Θέματα Δικτύων',6,341,3,7,0),(92,451,'Ευφυή Δίκτυα Μεταφοράς Ενέργειας',6,351,3,8,0),(93,453,'Ευστάθεια Συστημάτων Ηλεκτρικής Ενέργειας',6,351,5,8,0),(94,455,'Προηγμένα Συστήματα Μετατροπής Ενέργειας',6,351,5,8,0),(95,401,'Ειδικό Θέμα Θερινού Εξαμήνου',6,NULL,1,8,0),(96,403,'Ανάπτυξη Επιχειρηματικών Σχεδίων',6,402,4,8,0),(97,411,'Ειδικά Θέματα Εφαρμοσμένων Μαθηματικών',6,112,4,8,0),(98,413,'Ακέραιος Προγραμματισμός και Συνδυαστική Βελτίωση',6,NULL,1,8,0),(99,415,'Υπολογιστική Άλγεβρα ΙΙ',6,414,1,8,0),(100,421,'Συστήματα Υπολογισμού Υψηλών Επιδόσεων',6,321,1,8,0),(101,423,'Πολυπρακτορικά Συστήματα',6,322,3,8,0),(102,425,'Πληροφοριακά Συστήματα στον Παγκόσμιο Ιστό',6,426,1,8,0),(103,427,'Σύνθετα Δίκτυα',6,NULL,3,8,0),(104,429,'Προχωρημένα Θέματα Μεταγλωτιστων',6,320,2,8,0),(105,431,'Αρχιτεκτονική Παράλληλων Συστημάτων',6,232,2,8,0),(106,433,'Σχεδίαση Αναλογικών/Μικτών και Υψίσυχνων Κυκλωμάτων',6,335,3,8,0),(107,435,'Ενσωματωμένα Συστήματα',6,232,2,8,0),(108,437,'Αλγόριθμοι CAD',6,215,2,8,0),(109,437,'Αλγόριθμοι CAD',6,333,2,8,0),(110,439,'Αλγόριθμοι CAD φυσικής Σχεδίασης',6,215,2,8,0),(111,439,'Αλγόριθμοι CAD φυσικής Σχεδίασης',6,333,2,8,0),(112,441,'Κωδικοποίηση Ήχου και Βίντεο',6,342,3,8,0),(113,441,'Κωδικοποίηση Ήχου και Βίντεο',6,120,3,8,0),(114,443,'Όραση Υπολογιστών',6,342,3,8,0),(115,445,'Ασύρματες Επικοινωνίες',6,340,3,8,0),(116,447,'Δίκτυα Υπολογιστών ΙΙ',6,340,3,8,0),(117,449,'Βελτιστοποίηση Δικτύων',6,340,3,8,0),(118,540,'Προσαρμοστικά Συστήματα Αυτόματα Ελέγχου',6,340,5,9,0),(119,542,'Κεραίες',6,331,5,9,0),(120,544,'Μικροκύματα',6,331,5,9,0),(121,550,'Εναλλακτικές Μορφές Ενέργειας',6,351,5,9,0),(122,552,'Ενέργεια και Περιβάλλον',6,NULL,5,9,0),(123,500,'Τεχνική και Ακαδημαϊκή Γραφή',6,NULL,4,9,0),(124,510,'Βιοπληροφορική',6,215,1,9,0),(125,512,'Υπολογιστική Γεωμετρία',6,NULL,4,9,0),(126,514,'Περιβάλλον Επίλυσης Προβλημάτων',6,213,4,9,0),(127,516,'Αρχιτεκτονική και Ανάπτυξη Παιγνίων',6,416,1,9,0),(128,520,'Προγραμματισμός Ασύρματων Δικτύων Αισθητήρων',6,323,1,9,0),(129,522,'Κινητός και Διάχυτος Υπολογισμός',6,NULL,3,9,0),(130,524,'Επικοινωνία Ανθρώπου Μηχανης',6,NULL,5,9,0),(131,530,'Αλγόριθμοι Προσωμοίωσης Κυκλωμάτων',6,230,1,9,0),(132,530,'Αλγόριθμοι Προσωμοίωσης Κυκλμάτων',6,120,1,9,0),(133,532,'Σχεδίαση Αισθητήρων',6,231,2,9,0),(134,534,'Οπτικοηλεκτρονική',6,331,4,9,0),(135,536,'Εργαστήριο Αναλογικών Κυκλωμάτων',6,NULL,4,9,0),(136,540,'Προχωρημένα Θέματα Επεξεργασίας Σημάτων',6,240,3,9,0),(137,540,'Προχωρημένα Θέματα Επεξεργασίας Σημάτων',6,342,3,9,0),(138,542,'Προχωρημένα Θέματα Τηλεπικοινωνιακών Συστημάτων',6,NULL,3,9,0);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `idstudents` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  PRIMARY KEY (`idstudents`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (29,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(30,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(31,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(32,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(33,'CHATZIMPALI VASILIKI','vchatzimpali@uth.gr'),(34,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(35,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(36,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(37,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(38,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(39,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(40,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(41,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(42,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(43,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(44,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(45,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(46,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(47,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(48,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(49,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(50,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(51,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(52,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(53,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(54,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(55,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(56,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(57,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(58,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(59,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(60,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(61,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(62,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(63,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(64,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(65,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(66,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(67,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(68,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(69,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(70,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(71,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(72,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(73,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(74,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(75,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(76,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(77,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(78,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(79,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(80,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(81,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(82,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(83,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(84,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(85,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(86,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(87,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(88,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(89,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(90,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr'),(91,'PANAGIOTOU DIMITRIOS','dimipana@uth.gr');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-15  0:35:43

CREATE DATABASE  IF NOT EXISTS `dbapimanga` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbapimanga`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: dbapimanga
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Eiichiro Oda'),(2,'Masashi Kishimoto'),(3,'Tite Kubo'),(4,'Akira Toriyama'),(5,'Yoshihiro Togashi'),(6,'Hajime Isayama'),(7,'Kohei Horikoshi'),(8,'Kentaro Miura'),(9,'Naoko Takeuchi'),(10,'Tsugumi Ohba'),(11,'Maeldson Cavalcante');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mangas`
--

DROP TABLE IF EXISTS `mangas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mangas` (
  `manga_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author_id` int DEFAULT NULL,
  `description` text,
  `release_year` int DEFAULT NULL,
  PRIMARY KEY (`manga_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `mangas_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mangas`
--

LOCK TABLES `mangas` WRITE;
/*!40000 ALTER TABLE `mangas` DISABLE KEYS */;
INSERT INTO `mangas` VALUES (1,'One Piece',1,'A obra conta as aventuras de Monkey D. Luffy, um jovem que sonha em se tornar o Rei dos Piratas. Para isso, ele reúne uma tripulação de piratas chamada \"Os Chapéus de Palha\" e embarca em uma jornada épica em busca do tesouro lendário conhecido como \"One Piece.',1997),(2,'Naruto',2,'O mangá conta a história de Naruto, um jovem ninja da Vila Oculta da Folha, que possui um sonho: se tornar Hokage, título dado ao maior shinobi da vila. Mas para isso, precisará encarar dificuldades tremendas, já que é órfão e guarda uma herança terrível cujos habitantes da vila o escondem.',1999),(3,'Bleach',3,'Em Bleach, Ichigo Kurosaki é um estudante de ensino médio incomum: desde pequeno, ele consegue ver fantasmas. Sua vida muda completamente quando ele e suas duas irmãs são atacados por um espírito maligno e recebem ajuda de uma shinigami, chamada Rukia Kuchiki.',2001),(4,'Dragon Ball',4,'A série segue as aventuras do protagonista, Son Goku, desde sua infância até a idade adulta enquanto ele treina artes marciais e explora o mundo em busca de sete esferas conhecidas como as Esferas do Dragão, que convocam um dragão que concede um desejo quando reunidas.',1984),(5,'Hunter x Hunter',5,'Em Hunter x Hunter, o jovem Gon se apega ao legado de seu desconhecido pai e sonha em se tornar um Hunter, um caçador de tesouros e artefatos místicos. Ao descobrir que o pai está vivo, ele sai em uma missão para encontrá-lo enquanto tenta se tornar um Hunter profissional.',1998),(6,'Attack on Titan',6,'A história gira em torno de Eren Jaeger, sua irmã adotiva Mikasa Ackerman e seu amigo de infância Armin Arlert, cujas vidas mudam para sempre após o aparecimento de um Titã Colossal, que provoca a destruição de sua cidade natal e a morte da mãe de Eren',2009),(7,'My Hero Academia',7,'Em um mundo onde quase toda a população possui algum poder sobre-humano, Izuku Midoriya é um dos poucos casos de pessoas comuns. Mas esse não é o maior de seus problemas. Exatamente por ser desprovido de qualquer poder, Izuku sofre constantemente nas mãos de seus colegas de classe.',2014),(8,'Berserk',8,'A história acompanha Guts e seus amigos encarando as consequências da transformação de Griffith no quinto membro da Mão de Deus, Femto. Ao longo do caminho Guts conhece uma bruxa chamada Schierke e descobre a armadura Berserker, tão poderosa que é capaz de ameaçar a sanidade de Guts.',1989),(9,'Sailor Moon',9,'Sailor Moon conta a história de Usagi Tsukino, uma garota normal e inocente de 14 anos, pelo menos, é isso que ela pensa, que um dia encontra Luna, uma gata falante que revela a identidade de Usagi como \"Sailor Moon\", uma guerreira mágica destinada a salvar a Terra das forças do mal.',1991),(10,'Death Note',10,'O jovem estudante Light Yagami achar um caderno com poderes sobrenaturais, chamado Death Note, no qual era possível matar uma pessoa apenas escrevendo seu nome no caderno. Quando o descobre, Light tenta eliminar todos os criminosos do mundo e dar à sociedade um mundo livre do mal.',2003);
/*!40000 ALTER TABLE `mangas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-23 15:15:59

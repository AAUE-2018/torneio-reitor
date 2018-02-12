-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: reitor
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `FAQ`
--

DROP TABLE IF EXISTS `FAQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FAQ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questao` text,
  `resposta` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FAQ`
--

LOCK TABLES `FAQ` WRITE;
/*!40000 ALTER TABLE `FAQ` DISABLE KEYS */;
INSERT INTO `FAQ` VALUES (1,'Onde posso encontrar os boletins para preencher?','Os boletins estarão disponíveis na AAUE bem como no pavilhão da UE durante o decorrer dos jogos.'),(2,'Como é que sei o número dos jogos para poder preencher o boletim?','Será disponibilizado um calendário no evento do Torneio do Reitor bem como no Site do torneio onde estão identificados os números dos jogos.'),(3,'O pagamento do boletim é feito no ato do levantamento do mesmo ou na entrega?','Na entrega.'),(4,'Quais os locais onde se podem entregar os boletins?','Apenas no pavilhão e em dias de jogos: poderá ser entregue a partir de 20 minutos antes do primeiro jogo do dia.'),(5,'Eu fico com algum comprovativo do boletim?','Sim. É tirada uma foto no ato da entrega e enviada para o teu e-mail.'),(6,'Eu fico com algum comprovativo do boletim?','Sim. É tirada uma foto no ato da entrega e enviada para o teu e-mail.'), (7,'Os resultados contam até ao prolongamento e penalties, caso haja?','Não. Para o Reitor Tips só conta o resultado em tempo regulamentar.'), (8,'Quando e onde é que posso levantar os meus prémios?','No fim do Torneio do Reitor será enviado e-mail para os vencedores. Poderão, depois disso, deslocar-se à AAUE para levantarem o seu prémio.');
/*!40000 ALTER TABLE `FAQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendario` (
  `jornada` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `hora` text,
  `equipas` text,
  `resultado` text,
  `grupo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--

LOCK TABLES `calendario` WRITE;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
INSERT INTO `calendario` VALUES (1,2,'dfsd','fdsdfsfd0','cona',NULL),(4,2,'dfsd','fdsdfsfd0','cona',NULL),(3,4,'dfsd','fdsdfsfd0','cona',NULL),(1,3,'dfsd','fdsdfsfd0','cona',NULL),(5,6,'dfsd','fdsdfsfd0','cona',NULL),(1,2,'fssfd','fdsdfsfd0','cona',1),(1,2,'fssfd','fdsdfsfd0','cona',1),(1,2,'fssfd','fdsdfsfd0','cona',3),(1,2,'fssfd','fdsdfsfd0','cona',2),(1,2,'fssfd','Grupo A','cona',1),(1,2,'fssfd','Grupo B','cona',2),(1,2,'fssfd','Grupo C','cona',3),(1,2,'fssfd','Grupo D','cona',4);
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipas`
--

DROP TABLE IF EXISTS `equipas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  `pontos` int(11) DEFAULT NULL,
  `jr` int(11) DEFAULT NULL,
  `gm` int(11) DEFAULT NULL,
  `gs` int(11) DEFAULT NULL,
  `grupo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipas`
--

LOCK TABLES `equipas` WRITE;
/*!40000 ALTER TABLE `equipas` DISABLE KEYS */;
INSERT INTO `equipas` VALUES (1,'NETUE',0,1,0,0,"Grupo A"),(2,'Cuidado Qu\'é Desporto',0,1,0,0,"Grupo A"),(3,'Mecatrons',0,1,0,0,"Grupo A"),(4,'Psicologia',0,1,0,0,"Grupo A"),(5,'RI Paco Nassa',0,1,0,0,"Grupo A"),(6,'NEBIOQUE',0,1,0,0,"Grupo A"),(7,'Economia',0,1,0,0,"Grupo B"),(8,'Informática',0,1,0,0,"Grupo B"),(9,'F.C Baile de Munique',0,1,0,0,"Grupo B"),(10,'3ºDesporto',0,1,0,0,"Grupo B"),(11,'Dream Team',0,1,0,0,"Grupo B"),(12,'Geografia 2017',0,1,0,0,"Grupo B"),(13,'Geologia',0,1,0,0,"Grupo C"),(14,'Mão no Canhão',0,1,0,0,"Grupo C"),(15,'C.F Canelas 2017',0,1,0,0,"Grupo C"),(16,'Los Macarenas',0,1,0,0,"Grupo C"),(17,'RP',0,1,0,0,"Grupo C"),(18,'NEBUE',0,1,0,0,"Grupo C");
/*!40000 ALTER TABLE `equipas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (1,'Grupo A'),(2,'Grupo B'),(3,'Grupo C');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogadores`
--

DROP TABLE IF EXISTS `jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogadores` (
  `nomeJogador` text,
  `id` int(11) DEFAULT NULL,
  `equipaId` int(11) DEFAULT NULL,
  `golos` int(11) DEFAULT NULL,
  `sexo` text,
  `amarelos` int(11) DEFAULT NULL,
  `vermelhos` int(11) DEFAULT NULL,
  `castigos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogadores`
--

LOCK TABLES `jogadores` WRITE;
/*!40000 ALTER TABLE `jogadores` DISABLE KEYS */;
INSERT INTO `jogadores` VALUES ('pito',0,1,3,'M',3,3,3), ('rata',1,2,1,'M',3,3,3),('cona da mana',2,2,2,'M',3,3,3),('cona da tia',3,3,2,'M',3,3,3),('dedo',4,3,2,'M',3,3,3),('lingua',4,3,2,'M',3,3,3),('cu',5,3,2,'M',3,3,3),('e',6,3,2,'M',3,3,3),('buceta',4,3,2,'M',3,3,3),('dedo',4,3,2,'M',3,3,3),('lingua',4,3,2,'M',3,3,3),('cu',5,3,2,'M',3,3,3),('e',6,3,2,'M',3,3,3),('buceta',4,3,2,'M',3,3,3),('dedo',4,3,2,'M',3,3,3),('lingua',4,3,2,'M',3,3,3),('cu',5,3,2,'M',3,3,3),('e',6,3,2,'M',3,3,3),('buceta tambem',9,3,2,'M',3,3,3);
/*!40000 ALTER TABLE `jogadores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-19  2:14:54

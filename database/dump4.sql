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
-- Table structure for table `tr2017_FAQ`
--

DROP TABLE IF EXISTS `tr2017_FAQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr2017_FAQ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questao` text,
  `resposta` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr2017_FAQ`
--

LOCK TABLES `tr2017_FAQ` WRITE;
/*!40000 ALTER TABLE `tr2017_FAQ` DISABLE KEYS */;
INSERT INTO `tr2017_FAQ` VALUES (1,'Onde posso encontrar os boletins para preencher?','Os boletins estarão disponíveis na AAUE bem como no pavilhão da UE durante o decorrer dos jogos.'),(2,'Como é que sei o número dos jogos para poder preencher o boletim?','Será disponibilizado um calendário no evento do Torneio do Reitor bem como no Site do torneio onde estão identificados os números dos jogos.'),(3,'O pagamento do boletim é feito no ato do levantamento do mesmo ou na entrega?','Na entrega.'),(4,'Quais os locais onde se podem entregar os boletins?','Apenas no pavilhão e em dias de jogos: poderá ser entregue a partir de 20 minutos antes do primeiro jogo do dia.'),(5,'Eu fico com algum comprovativo do boletim?','Sim. É tirada uma foto no ato da entrega e enviada para o teu e-mail.'),(6,'Eu fico com algum comprovativo do boletim?','Sim. É tirada uma foto no ato da entrega e enviada para o teu e-mail.'),(7,'Os resultados contam até ao prolongamento e penalties, caso haja?','Não. Para o Reitor Tips só conta o resultado em tempo regulamentar.'),(8,'Quando e onde é que posso levantar os meus prémios?','No fim do Torneio do Reitor será enviado e-mail para os vencedores. Poderão, depois disso, deslocar-se à AAUE para levantarem o seu prémio.');
/*!40000 ALTER TABLE `tr2017_FAQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr2017_calendario`
--

DROP TABLE IF EXISTS `tr2017_calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr2017_calendario` (
  `jornada` int(11) DEFAULT NULL,
  `dia` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `equipas` text,
  `resultado` text,
  `grupo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr2017_calendario`
--

LOCK TABLES `tr2017_calendario` WRITE;
/*!40000 ALTER TABLE `tr2017_calendario` DISABLE KEYS */;
INSERT INTO `tr2017_calendario` VALUES (1,'2017-03-20','19:00:00','Psicologia VS NETUE','5-2',1),(1,'2017-03-20','20:00:00','Informática VS Geografia 2017','1-4',2),(1,'2017-03-20','21:00:00','Mão no Canhão VS NEBUE','0-5',3),(1,'2017-03-20','22:00:00','Cuidado Qu\'é Desporto VS NEBIOQUE','5-1',1),(1,'2017-03-20','23:00:00','RP VS C.F Canelas 2017','3-8',3),(1,'2017-03-22','19:00:00','3ºDesporto VS Economia','ADIADO',2),(1,'2017-03-22','20:00:00','Ri Paco Nassa VS Mecatrons',' - ',1),(1,'2017-03-22','21:00:00','Los Macarenas VS Geologia',' - ',3),(1,'2017-03-22','22:00:00','Dream Team VS F.C Baile de Munique',' - ',2),(2,'2017-03-22','23:00:00','NETUE VS NEBIOQUE',' - ',1),(2,'2017-03-27','19:00:00','Economia VS Geografia 2017',' - ',2),(2,'2017-03-27','20:00:00','Geologia Vs NEBUE',' - ',3),(2,'2017-03-27','21:00:00','Mecatrons VS Cuidado Qu\'é Desporto ',' - ',1),(2,'2017-03-27','22:00:00','F.C Baile de Munique Vs Informática',' - ',2),(2,'2017-03-27','23:00:00','C.F Canelas 2017 VS Mão no Canhão',' - ',3),(2,'2017-03-29','19:00:00','Psicologia VS RI Paco Nassa',' - ',1),(2,'2017-03-29','20:00:00','3ºDesporto VS Dream Team',' - ',2),(2,'2017-03-29','21:00:00','Los Macarenas VS RP ',' - ',3),(3,'2017-03-29','22:00:00','NEBIOQUE VS Mecatrons',' - ',1),(3,'2017-03-29','23:00:00','Geografia 2017 VS F.C Baile de Munique ',' - ',2);
/*!40000 ALTER TABLE `tr2017_calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr2017_equipas`
--

DROP TABLE IF EXISTS `tr2017_equipas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr2017_equipas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  `pontos` int(11) DEFAULT NULL,
  `jogos` int(11) DEFAULT NULL,
  `gm` int(11) DEFAULT NULL,
  `gs` int(11) DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `cart_verm` int(11) DEFAULT '0',
  `cart_amrl` int(11) DEFAULT '0',
  `castigos` int(11) DEFAULT '0',
  `pts_fairplay` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr2017_equipas`
--

LOCK TABLES `tr2017_equipas` WRITE;
/*!40000 ALTER TABLE `tr2017_equipas` DISABLE KEYS */;
INSERT INTO `tr2017_equipas` VALUES (1,'NETUE',0,1,2,6,1,0,3,0,13),(2,'Cuidado Qu\'é Desporto',3,1,5,1,1,0,0,0,2),(3,'Mecatrons',0,0,0,0,1,0,0,0,0),(4,'Psicologia',3,1,6,2,1,0,1,0,9),(5,'RI Paco Nassa',0,0,0,0,1,0,0,0,0),(6,'NEBIOQUE',0,1,1,5,1,0,2,0,10),(7,'Economia',0,0,0,0,2,0,0,0,0),(8,'Informática',0,1,1,4,2,0,1,0,11),(9,'F.C Baile de Munique',0,0,0,0,2,0,0,0,0),(10,'3ºDesporto',0,0,0,0,2,0,0,0,0),(11,'Dream Team',0,0,0,0,2,0,0,0,0),(12,'Geografia 2017',3,1,4,1,2,0,0,0,2),(13,'Geologia',0,0,0,0,3,0,0,0,0),(14,'Mão no Canhão',0,1,0,5,3,0,0,0,5),(15,'C.F Canelas 2017',3,1,8,3,3,0,0,0,2),(16,'Los Macarenas',0,0,0,0,3,0,0,0,0),(17,'RP',0,1,3,8,3,0,0,0,1),(18,'NEBUE',3,1,5,0,3,0,0,0,5);
/*!40000 ALTER TABLE `tr2017_equipas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr2017_grupos`
--

DROP TABLE IF EXISTS `tr2017_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr2017_grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr2017_grupos`
--

LOCK TABLES `tr2017_grupos` WRITE;
/*!40000 ALTER TABLE `tr2017_grupos` DISABLE KEYS */;
INSERT INTO `tr2017_grupos` VALUES (1,'Grupo A'),(2,'Grupo B'),(3,'Grupo C');
/*!40000 ALTER TABLE `tr2017_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr2017_jogadores`
--

DROP TABLE IF EXISTS `tr2017_jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr2017_jogadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomeJogador` text,
  `equipaId` int(11) DEFAULT NULL,
  `golos` int(11) DEFAULT NULL,
  `sexo` text,
  `amarelos` int(11) DEFAULT NULL,
  `vermelhos` int(11) DEFAULT NULL,
  `castigos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr2017_jogadores`
--

LOCK TABLES `tr2017_jogadores` WRITE;
/*!40000 ALTER TABLE `tr2017_jogadores` DISABLE KEYS */;
INSERT INTO `tr2017_jogadores` VALUES (1,'Francisco Meneses',1,0,'M',0,0,0),(2,'Gonçalo Passinhas',1,0,'M',0,0,0),(3,'André Alves',1,0,'M',0,0,0),(4,'Miguel Canelas',1,0,'M',0,0,0),(5,'Tomás Ruivo',1,0,'M',1,0,0),(6,'Daniel Almeida',1,0,'M',0,0,0),(7,'Henrique Mira',1,1,'M',0,0,0),(8,'Eduardo Rodrigues',1,0,'M',0,0,0),(9,'Tiago Perdigão',1,1,'M',1,0,0),(10,'Jorge Figueira',1,0,'M',1,0,0),(11,'João Mota',4,0,'M',0,0,0),(12,'João Varela',4,0,'M',0,0,0),(13,'Bruno Tasanis',4,0,'M',0,0,0),(14,'José Afonso',4,3,'M',0,0,0),(15,'Bruno Curvo',4,2,'M',0,0,0),(16,'Bruno Rijo',4,0,'M',0,0,0),(17,'Leonardo Marques',4,0,'M',0,0,0),(18,'Luis Nepomuceno',4,1,'M',1,0,0),(19,'Gabriel Tomás',4,0,'M',0,0,0),(20,'Emanuel Botas',4,0,'M',0,0,0),(21,'Gabriel Zuna',4,0,'M',0,0,0),(22,'Diogo Mendes',4,0,'M',0,0,0),(23,'Bernardo Nobre',2,0,'M',0,0,0),(24,'João Lopes',2,0,'M',0,0,0),(25,'Afonso Serpins',2,0,'M',0,0,0),(26,'João Monte',2,0,'M',0,0,0),(27,'Pedro Ferreira',2,1,'M',0,0,0),(28,'Raul Silva',2,0,'M',0,0,0),(29,'Pedro Dionísio',2,1,'M',0,0,0),(30,'André Farinha',2,2,'M',0,0,0),(31,'João Pereira',2,0,'M',0,0,0),(32,'Rodrigo Caetano',2,0,'M',0,0,0),(33,'Pedro Marchão',2,1,'M',0,0,0),(34,'Albert Pinho',2,0,'M',0,0,0),(35,'Gonçalo Teixeira',6,0,'M',0,0,0),(36,'Pedro Fernandes',6,0,'M',0,0,0),(37,'Emanuel Lopes',6,1,'M',0,0,0),(38,'Ruben Duarte',6,0,'M',1,0,0),(39,'Pedro Alves',6,0,'M',0,0,0),(40,'Miguel Silvério',6,0,'M',0,0,0),(41,'Miguel Ferreyra',6,0,'M',0,0,0),(42,'Nuno Torres',6,0,'M',1,0,0),(43,'Luís Galvão',6,0,'M',0,0,0),(44,'Miguel Marcelino',6,0,'M',0,0,0),(45,'João Paixão',6,0,'M',0,0,0),(46,'João Oliveira',6,0,'M',0,0,0),(47,'Adriano Relvas',3,0,'M',0,0,0),(48,'Cláudio Barbeiro',3,0,'M',0,0,0),(49,'Pedro Canhão',3,0,'M',0,0,0),(50,'João Gomes',3,0,'M',0,0,0),(51,'Jorge Palhais',3,0,'M',0,0,0),(52,'Jorge Gonçalves',3,0,'M',0,0,0),(53,'Francisco Serrano',3,0,'M',0,0,0),(54,'Vitor Vieira',3,0,'M',0,0,0),(55,'Rui Rodrigues',3,0,'M',0,0,0),(56,'Alexandre Nogueira',3,0,'M',0,0,0),(57,'Duarte Guerreiro',3,0,'M',0,0,0),(58,'Pedro Patrão',3,0,'M',0,0,0),(59,'Diogo Pombo',5,0,'M',0,0,0),(60,'Fábio Jaló',5,0,'M',0,0,0),(61,'Diogo Peças',5,0,'M',0,0,0),(62,'Yaroslav Moroz',5,0,'M',0,0,0),(63,'David Nascimento',5,0,'M',0,0,0),(64,'Guilherme Percheiro',5,0,'M',0,0,0),(65,'Henrique Barradas',5,0,'M',0,0,0),(66,'Ricardo Pereira',5,0,'M',0,0,0),(67,'André Carvalho',7,0,'M',0,0,0),(68,'Nelson Muacho',7,0,'M',0,0,0),(69,'Carlos Nobre',7,0,'M',0,0,0),(70,'Rogério Galandim',7,0,'M',0,0,0),(71,'João Reis',7,0,'M',0,0,0),(72,'Rafael Costa',7,0,'M',0,0,0),(73,'Diogo Ilhéu',7,0,'M',0,0,0),(74,'Simão Serra',7,0,'M',0,0,0),(75,'Manuel Rosa',7,0,'M',0,0,0),(76,'Tiago Pardal',7,0,'M',0,0,0),(77,'Luís Nora',7,0,'M',0,0,0),(78,'João Carapinha',10,0,'M',0,0,0),(79,'André Oliveira',10,0,'M',0,0,0),(80,'Diogo Salgado',10,0,'M',0,0,0),(81,'João Nobre',10,0,'M',0,0,0),(82,'João Rosa',10,0,'M',0,0,0),(83,'José Quito',10,0,'M',0,0,0),(84,'João Gil',10,0,'M',0,0,0),(85,'Simão Serra',10,0,'M',0,0,0),(86,'Miguel Almeida',10,0,'M',0,0,0),(87,'João Salgado',10,0,'M',0,0,0),(88,'Rodolfo França',10,0,'M',0,0,0),(89,'Alexandre Falcato',10,0,'M',0,0,0),(90,'Cláudio Lopes',10,0,'M',0,0,0),(91,'Roman Holovin',8,0,'M',0,0,0),(92,'Daniel Serrano',8,0,'M',0,0,0),(93,'Miguel Serrano',8,0,'M',0,0,0),(94,'Gonçalo Silva',8,0,'M',0,0,0),(95,'Carlos Valente',8,0,'M',0,0,0),(96,'João Marques',8,0,'M',0,0,0),(97,'Adão Lopes',8,1,'M',1,0,0),(98,'João Chiola',8,0,'M',0,0,0),(99,'Filipe Figueira',8,0,'M',0,0,0),(100,'Rui Rodrigues',8,0,'M',0,0,0),(101,'Gonçalo Sá',8,0,'M',0,0,0),(102,'João Pica',8,0,'M',0,0,0),(103,'João Afilhado',8,0,'M',0,0,0),(104,'Ruben Lopes',12,1,'M',0,0,0),(105,'Francisco Matos',12,0,'M',0,0,0),(106,'Tiago Guerra',12,0,'M',0,0,0),(107,'Pedro Murteira',12,0,'M',0,0,0),(108,'Marco Bicho',12,0,'M',0,0,0),(109,'João Bicho',12,0,'M',0,0,0),(110,'Bruno Fiéis',12,2,'M',0,0,0),(111,'Stephane Tomáz',12,1,'M',0,0,0),(112,'David Lóios',12,0,'M',0,0,0),(113,'António Castro',9,0,'M',0,0,0),(114,'David Metrogos',9,0,'M',0,0,0),(115,'Diogo Brito',9,0,'M',0,0,0),(116,'Gonçalo Seco',9,0,'M',0,0,0),(117,'Gonçalo Ascenso',9,0,'M',0,0,0),(118,'Luís Rebocho',9,0,'M',0,0,0),(119,'Ricardo Nascimento',9,0,'M',0,0,0),(120,'Miguel Vilas Boas',9,0,'M',0,0,0),(121,'João Almeida',9,0,'M',0,0,0),(122,'Henrique Jesus',11,0,'M',0,0,0),(123,'José Diogo',11,0,'M',0,0,0),(124,'Martim Cruz',11,0,'M',0,0,0),(125,'Sérgio Pagaime',11,0,'M',0,0,0),(126,'Pedro Bilou',11,0,'M',0,0,0),(127,'David Castanheira',11,0,'M',0,0,0),(128,'Rui Bento',11,0,'M',0,0,0),(129,'Gonçalo Vidigal',11,0,'M',0,0,0),(130,'Fábio Potes',11,0,'M',0,0,0),(131,'António Maia',11,0,'M',0,0,0),(132,'Manuel Silva',13,0,'M',0,0,0),(133,'João Félix',13,0,'M',0,0,0),(134,'Gregório Serrão',13,0,'M',0,0,0),(135,'João Almeida',13,0,'M',0,0,0),(136,'Rafael Valongo',13,0,'M',0,0,0),(137,'Diogo São Pedro',13,0,'M',0,0,0),(138,'Mário Almeida',13,0,'M',0,0,0),(139,'Daniel Gomes',13,0,'M',0,0,0),(140,'Luís Mendes',14,0,'M',0,0,0),(141,'António Soares',14,0,'M',0,0,0),(142,'Francisco Guerreiro',14,0,'M',0,0,0),(143,'Tiago Martins',14,0,'M',0,0,0),(144,'Luís Fernandes',14,0,'M',0,0,0),(145,'Miguel Santos',14,0,'M',0,0,0),(146,'Abel Matroca',14,0,'M',0,0,0),(147,'Vasco Gato',14,0,'M',0,0,0),(148,'Henrique Pinto',14,0,'M',0,0,0),(149,'Fábio Ferreira',14,0,'M',0,0,0),(150,'Diogo Sanches',14,0,'M',0,0,0),(151,'Renato Oliveira',14,0,'M',0,0,0),(152,'Diogo Fernandes',15,0,'M',0,0,0),(153,'Luís Santos',15,0,'M',0,0,0),(154,'José Espanhol',15,0,'M',0,0,0),(155,'Hélder Correia',15,1,'M',0,0,0),(156,'Gonçalo Almeida',15,1,'M',0,0,0),(157,'Pedro Seabra',15,2,'M',0,0,0),(158,'João Barreiros',15,3,'M',0,0,0),(159,'Duarte Rochinha',15,0,'M',0,0,0),(160,'Ricardo Gomes',15,0,'M',0,0,0),(161,'Luís Ralo',16,0,'M',0,0,0),(162,'João Freixial',16,0,'M',0,0,0),(163,'Pedro Pirraça',16,0,'M',0,0,0),(164,'Marco Mira',16,0,'M',0,0,0),(165,'Marco Barradas',16,0,'M',0,0,0),(166,'Francisco Manteigas',16,0,'M',0,0,0),(167,'André Fonseca',16,0,'M',0,0,0),(168,'Tiago Rolim',16,0,'M',0,0,0),(169,'Gonçalo Oliveira',16,0,'M',0,0,0),(170,'Miguel Sequeira',16,0,'M',0,0,0),(171,'David Azinhaga',16,0,'M',0,0,0),(172,'Duarte Baião',16,0,'M',0,0,0),(173,'Miguel Luís',17,0,'M',0,0,0),(174,'Afonso Franco',17,0,'M',0,0,0),(175,'João Barreto',17,0,'M',0,0,0),(176,'Francisco Isidoro',17,1,'M',0,0,0),(177,'Vasco Almeida',17,2,'M',0,0,0),(178,'João Balona',17,0,'M',0,0,0),(179,'Gabriel Navarro',17,0,'M',0,0,0),(180,'Luís Bento',18,0,'M',0,0,0),(181,'Rafael Diogo',18,0,'M',0,0,0),(182,'Marvin Freira',18,3,'M',0,0,0),(183,'João Nunes',18,0,'M',0,0,0),(184,'Pedro Caldeira',18,0,'M',0,0,0),(185,'Tiago Mateus',18,0,'M',0,0,0),(186,'Marco Morais',18,1,'M',0,0,0),(187,'Hugo Rodrigues',18,0,'M',0,0,0),(188,'Manuel Plácido',18,1,'M',0,0,0),(189,'Rafael Gonçalves',18,0,'M',0,0,0);
/*!40000 ALTER TABLE `tr2017_jogadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr2017_noticias`
--

DROP TABLE IF EXISTS `tr2017_noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr2017_noticias` (
  `data` date DEFAULT NULL,
  `titulo` text,
  `corpo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr2017_noticias`
--

LOCK TABLES `tr2017_noticias` WRITE;
/*!40000 ALTER TABLE `tr2017_noticias` DISABLE KEYS */;
INSERT INTO `tr2017_noticias` VALUES ('2017-03-17','Sorteio das equipas para o XV Torneio do Reitor Masculino','O sorteio das equipas para o Torneio do Reitor Masculino irá ter lugar amanhã, dia 18 de Março por volta das 15h, na sede da AAUÉ.<br><br> A AAUÉ convida os responsáveis de cada equipa a estarem presentes no sorteio, sendo que na indisponibilidade de comparecerem, poderão acompanhar a transmissão do sorteio em direto através da nossa página de Facebook.'), ('2017-03-18','Equipas sorteadas','As equipas foram sorteadas hoje e foram agendados os jogos para as próximas 2 semanas. Poderão ver o calendário para os jogos no site.'), ('2017-03-19','XV Torneio do Reitor terá início amanhã.','O XV Torneio do Reitor terá início amanhã com os primeiros 5 jogos que terão lugar entre as 19h e as 23h.');
/*!40000 ALTER TABLE `tr2017_noticias` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-21 18:27:13

CREATE DATABASE  IF NOT EXISTS `db_total` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_total`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_total
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `cod_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `pessoa` bit(1) NOT NULL,
  `cnpj_cpf` varchar(14) NOT NULL,
  `nome_cliente` varchar(60) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `cidade` varchar(30) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `cep` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `ativo` bit(1) NOT NULL,
  PRIMARY KEY (`cod_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'','15205079762','RAFAEL DE SA BARROSO','RUA JUNDIA',65,'AP 201','RIO DE JANEIRO','BENTO RIBEIRO','RJ',21550450,'rafael.sa@totalcontrol.com.br','975354144',''),(6,'','15456987456','RONALD DANTAS','RUA DOS ANDRADAS ',66,'FUNDOS','RIO DE JANEIRO','CENTRO','RJ',29940553,'j.oliveira@hotmail.com','976563744',''),(7,'','14587869525','JOSE SANTOS DE ARAUJO','RUA LARANJA',80,'FRENTE','RIO DE JANEIRO','CENTRO','RJ',21356854,'jose.santos@gmail.com','30515487',''),(8,'\0','14546987584216','SOLUTIONS COMERCIO LTDA','AV PRESIDENTE VARGAS ',300,'','RIO DE JANEIRO','CENTRO','RJ',20090881,'solutions@solutions.com.br','349876786','');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fidelidade`
--

DROP TABLE IF EXISTS `fidelidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fidelidade` (
  `cod_cartao` int(11) NOT NULL AUTO_INCREMENT,
  `cod_cliente` int(11) NOT NULL,
  `pontos` int(11) NOT NULL,
  `validade` date NOT NULL,
  PRIMARY KEY (`cod_cartao`),
  KEY `fk_cod_cliente_idx` (`cod_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fidelidade`
--

LOCK TABLES `fidelidade` WRITE;
/*!40000 ALTER TABLE `fidelidade` DISABLE KEYS */;
INSERT INTO `fidelidade` VALUES (1,1,300,'2017-12-20'),(2,6,800,'2018-08-20'),(3,7,1000,'2017-11-22'),(4,8,100,'2018-05-02');
/*!40000 ALTER TABLE `fidelidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `cod_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `cidade` varchar(30) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `cep` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `loja` varchar(1) NOT NULL,
  `ativo` bit(1) NOT NULL,
  PRIMARY KEY (`cod_funcionario`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'15205079762','RAFAEL DE SA','RUA JUNDIA',65,'AP 201','RIO DE JANEIRO','BENTO RIBEIRO','RJ',21550450,'rafael.sa@totalcontrol.com.br','21975354144','B',''),(2,'15442396702','JESSICA VIANA','RUA JUBAI',70,NULL,'RIO DE JANEIRO','BENTO RIBEIRO','RJ',21331030,'jessica_gbd@hotmail.com','21968973252','A',''),(3,'15542396582','JOAO ARAUJO','RUA ANDRADAS',30,NULL,'RIO DE JANEIRO','MARECHAL HERMES','RJ',21312130,'jaraujo@gmail.com','21254973252','A',''),(4,'15569396582','JOAQUIM JOSE','RUA VIEIRA',45,'FUNDOS','RIO DE JANEIRO','QUINTINO','RJ',21784130,'j.jose@hotmail.com','21254443252','B',''),(5,'12544446582','ELIAS ROBERTO','RUA COPACABANA',30,'AP 253','RIO DE JANEIRO','COPACABANA','RJ',21312220,'elias@hotmail.com','21254973457','A',''),(6,'13462356782','ROBERTO SOUZA','RUA VASSOURAS',18,NULL,'RIO DE JANEIRO','MADUREIRA','RJ',21355537,'r.souza@gmail.com','21254125252','B',''),(7,'15253396698','RAYANE DIAS','RUA DAS ROSAS',57,'AP 18','RIO DE JANEIRO','VILA VALQUEIRE','RJ',21312120,'ray@outlook.com','21254474212','B',''),(8,'15222396544','ROBERTO SANTOS','RUA JURACÍ',90,NULL,'RIO DE JANEIRO','CURICICA','RJ',21442150,'r.santos@hotmail.com','21564944252','A',''),(9,'15555396544','ROGERIO GOMES','RUA PICUI',22,'FRENTE','RIO DE JANEIRO','BENTO RIBEIRO','RJ',21333167,'rogerio.gomes@gmail.com','21777973542','B',''),(10,'15456523554','RAFAEL SOUZA','RUA MARECHAL',74,'CASA','RIO DE JANEIRO','CENTRO','RJ',20080004,'r.souza@gmail.com','30184455','A','');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `cod_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(45) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco_venda` decimal(10,0) NOT NULL,
  `loja` varchar(1) NOT NULL,
  PRIMARY KEY (`cod_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'FONTE 12V',20,30,'A'),(2,'COMPUTADOR GAMER',5,3000,'B'),(3,'NOTEBOOK SAMSUNG I5',6,2500,'A'),(4,'TECLADO RAZER CHROMA',3,600,'B'),(5,'IPHONE X',15,4500,'A'),(6,'IPHONE X',15,4500,'B'),(7,'GALAXY S8',8,3500,'A'),(8,'PLAYSTATION 4',12,1400,'B'),(9,'PLAYSTATION 4',12,1400,'A'),(10,'XBOX ONE',7,1200,'B'),(11,'XBOX ONE',7,1200,'A'),(12,'PLACA DE VIDEO GEFORCE GTX 1080 TI',4,2500,'B'),(13,'PLACA DE VIDEO GEFORCE GTX 1080 TI',4,2500,'A'),(14,'PROCESSADOR INTEL CORE I7 7700K',3,2230,'B'),(15,'PROCESSADOR INTEL CORE I7 7700K',3,2230,'A');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vale_presente`
--

DROP TABLE IF EXISTS `vale_presente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vale_presente` (
  `cod_vale` int(11) NOT NULL AUTO_INCREMENT,
  `valor` int(11) NOT NULL,
  `validade` date NOT NULL,
  `cod_cliente` int(11) NOT NULL,
  PRIMARY KEY (`cod_vale`),
  KEY `fk_cod_cliente_idx` (`cod_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vale_presente`
--

LOCK TABLES `vale_presente` WRITE;
/*!40000 ALTER TABLE `vale_presente` DISABLE KEYS */;
INSERT INTO `vale_presente` VALUES (1,1050,'2018-11-05',1),(2,1200,'2017-12-20',6),(3,5000,'2018-06-13',7),(4,630,'2018-01-31',8);
/*!40000 ALTER TABLE `vale_presente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-13 11:50:55

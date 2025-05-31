-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dw_cafe_brasil
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `dim_cliente`
--

DROP TABLE IF EXISTS `dim_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_cliente` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `idade` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_cliente`
--

LOCK TABLES `dim_cliente` WRITE;
/*!40000 ALTER TABLE `dim_cliente` DISABLE KEYS */;
INSERT INTO `dim_cliente` VALUES (1,'Ana Carolina Silva','111.222.333-44',28),(2,'Bruno Oliveira Santos','222.333.444-55',35),(3,'Carla Pereira Souza','333.444.555-66',42),(4,'Daniel Almeida Costa','444.555.666-77',31),(5,'Elaine Ribeiro Martins','555.666.777-88',26),(6,'Fábio Gonçalves Lima','666.777.888-99',39),(7,'Gabriela Fernandes Rocha','777.888.999-00',45),(8,'Henrique Castro Alves','888.999.000-11',22),(9,'Isabela Nunes Cardoso','999.000.111-22',33),(10,'João Pedro Mendes Dias','000.111.222-33',29),(11,'Karina Teixeira Freitas','111.222.333-55',37),(12,'Leandro Campos Monteiro','222.333.444-66',41),(13,'Marcela Barbosa Andrade','333.444.555-77',24),(14,'Nathan Lopes Carvalho','444.555.666-88',30),(15,'Olívia Moreira Pires','555.666.777-99',27),(16,'Paulo César Araújo Melo','666.777.888-00',48),(17,'Quésia Duarte Ferreira','777.888.999-11',36),(18,'Rafaela Cunha Neves','888.999.000-22',43),(19,'Sérgio Vasconcelos Rios','999.000.111-33',25),(20,'Tatiana Miranda Farias','000.111.222-44',32),(21,'Ulisses Martins Ramos','111.222.333-66',38),(22,'Vanessa Costa Lira','222.333.444-77',29),(23,'William Neto Duarte','333.444.555-88',44),(24,'Ximena Santos Pereira','444.555.666-99',23),(25,'Yago Oliveira Souza','555.666.777-00',31),(26,'Zélia Almeida Gonçalves','666.777.888-11',40),(27,'Alice Ribeiro Fernandes','777.888.999-22',28),(28,'Bernardo Castro Nunes','888.999.000-33',35),(29,'Cecília Cardoso Teixeira','999.000.111-44',42),(30,'Davi Mendes Campos','000.111.222-55',26),(31,'Elisa Monteiro Barbosa','111.222.333-77',39),(32,'Felipe Andrade Lopes','222.333.444-88',45),(33,'Giovana Carvalho Moreira','333.444.555-99',22),(34,'Heitor Pires Araújo','444.555.666-00',33),(35,'Iara Melo Duarte','555.666.777-11',29),(36,'Júlio Ferreira Cunha','666.777.888-22',37),(37,'Larissa Neves Vasconcelos','777.888.999-33',41),(38,'Mateus Rios Miranda','888.999.000-44',24),(39,'Nina Farias Martins','999.000.111-55',30),(40,'Oscar Ramos Costa','000.111.222-66',27),(41,'Pietra Lira Neto','111.222.333-88',48),(42,'Quirino Duarte Santos','222.333.444-99',36),(43,'Rosa Pereira Oliveira','333.444.555-00',43),(44,'Sávio Souza Almeida','444.555.666-11',25),(45,'Teresa Gonçalves Ribeiro','555.666.777-22',32),(46,'Uriel Fernandes Castro','666.777.888-33',38),(47,'Valentina Nunes Cardoso','777.888.999-44',29),(48,'Wagner Teixeira Mendes','888.999.000-55',44),(49,'Xavier Campos Monteiro','999.000.111-66',23),(50,'Yasmin Barbosa Andrade','000.111.222-77',31),(51,'Zacarias Lopes Carvalho','111.222.333-99',40),(52,'Amélia Moreira Pires','222.333.444-00',28),(53,'Bento Araújo Melo','333.444.555-11',35),(54,'Clara Duarte Ferreira','444.555.666-22',42),(55,'Dante Cunha Neves','555.666.777-33',26);
/*!40000 ALTER TABLE `dim_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_data_venda`
--

DROP TABLE IF EXISTS `dim_data_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_data_venda` (
  `id` int NOT NULL,
  `data` date NOT NULL,
  `dia` int NOT NULL,
  `mes` varchar(30) NOT NULL,
  `trimestre` int NOT NULL,
  `ano` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_data_venda`
--

LOCK TABLES `dim_data_venda` WRITE;
/*!40000 ALTER TABLE `dim_data_venda` DISABLE KEYS */;
INSERT INTO `dim_data_venda` VALUES (1,'2023-01-05',5,'JANEIRO',1,2023),(2,'2023-01-12',12,'JANEIRO',1,2023),(3,'2023-01-18',18,'JANEIRO',1,2023),(4,'2023-01-25',25,'JANEIRO',1,2023),(5,'2023-02-03',3,'FEVEREIRO',1,2023),(6,'2023-02-10',10,'FEVEREIRO',1,2023),(7,'2023-02-17',17,'FEVEREIRO',1,2023),(8,'2023-02-24',24,'FEVEREIRO',1,2023),(9,'2023-03-05',5,'MARÇO',1,2023),(10,'2023-03-12',12,'MARÇO',1,2023),(11,'2023-03-19',19,'MARÇO',1,2023),(12,'2023-03-26',26,'MARÇO',1,2023),(13,'2023-04-02',2,'ABRIL',2,2023),(14,'2023-04-09',9,'ABRIL',2,2023),(15,'2023-04-16',16,'ABRIL',2,2023),(16,'2023-04-23',23,'ABRIL',2,2023),(17,'2023-04-30',30,'ABRIL',2,2023),(18,'2023-05-07',7,'MAIO',2,2023),(19,'2023-05-14',14,'MAIO',2,2023),(20,'2023-05-21',21,'MAIO',2,2023),(21,'2023-05-28',28,'MAIO',2,2023),(22,'2023-06-04',4,'JUNHO',2,2023),(23,'2023-06-11',11,'JUNHO',2,2023),(24,'2023-06-18',18,'JUNHO',2,2023),(25,'2023-06-25',25,'JUNHO',2,2023),(26,'2023-07-02',2,'JULHO',3,2023),(27,'2023-07-09',9,'JULHO',3,2023),(28,'2023-07-16',16,'JULHO',3,2023),(29,'2023-07-23',23,'JULHO',3,2023),(30,'2023-07-30',30,'JULHO',3,2023),(31,'2023-08-06',6,'AGOSTO',3,2023),(32,'2023-08-13',13,'AGOSTO',3,2023),(33,'2023-08-20',20,'AGOSTO',3,2023),(34,'2023-08-27',27,'AGOSTO',3,2023),(35,'2023-09-03',3,'SETEMBRO',3,2023),(36,'2023-09-10',10,'SETEMBRO',3,2023),(37,'2023-09-17',17,'SETEMBRO',3,2023),(38,'2023-09-24',24,'SETEMBRO',3,2023),(39,'2023-10-01',1,'OUTUBRO',4,2023),(40,'2023-10-08',8,'OUTUBRO',4,2023),(41,'2023-10-15',15,'OUTUBRO',4,2023),(42,'2023-10-22',22,'OUTUBRO',4,2023),(43,'2023-10-29',29,'OUTUBRO',4,2023),(44,'2023-11-05',5,'NOVEMBRO',4,2023),(45,'2023-11-12',12,'NOVEMBRO',4,2023),(46,'2023-11-19',19,'NOVEMBRO',4,2023),(47,'2023-11-26',26,'NOVEMBRO',4,2023),(48,'2023-12-03',3,'DEZEMBRO',4,2023),(49,'2023-12-10',10,'DEZEMBRO',4,2023),(50,'2023-12-17',17,'DEZEMBRO',4,2023),(51,'2023-12-24',24,'DEZEMBRO',4,2023),(52,'2023-12-31',31,'DEZEMBRO',4,2023),(53,'2024-01-07',7,'JANEIRO',1,2024),(54,'2024-01-14',14,'JANEIRO',1,2024),(55,'2024-01-21',21,'JANEIRO',1,2024),(56,'2024-01-28',28,'JANEIRO',1,2024),(57,'2024-02-04',4,'FEVEREIRO',1,2024),(58,'2024-02-11',11,'FEVEREIRO',1,2024),(59,'2024-02-18',18,'FEVEREIRO',1,2024),(60,'2024-02-25',25,'FEVEREIRO',1,2024),(61,'2024-03-03',3,'MARÇO',1,2024),(62,'2024-03-10',10,'MARÇO',1,2024),(63,'2024-03-17',17,'MARÇO',1,2024),(64,'2024-03-24',24,'MARÇO',1,2024),(65,'2024-03-31',31,'MARÇO',1,2024),(66,'2024-04-07',7,'ABRIL',2,2024),(67,'2024-04-14',14,'ABRIL',2,2024),(68,'2024-04-21',21,'ABRIL',2,2024),(69,'2024-04-28',28,'ABRIL',2,2024),(70,'2024-05-05',5,'MAIO',2,2024),(71,'2024-05-12',12,'MAIO',2,2024),(72,'2024-05-19',19,'MAIO',2,2024),(73,'2024-05-26',26,'MAIO',2,2024),(74,'2024-06-02',2,'JUNHO',2,2024),(75,'2024-06-09',9,'JUNHO',2,2024),(76,'2024-06-16',16,'JUNHO',2,2024),(77,'2024-06-23',23,'JUNHO',2,2024),(78,'2024-06-30',30,'JUNHO',2,2024),(79,'2024-07-07',7,'JULHO',3,2024),(80,'2024-07-14',14,'JULHO',3,2024),(81,'2024-07-21',21,'JULHO',3,2024),(82,'2024-07-28',28,'JULHO',3,2024),(83,'2024-08-04',4,'AGOSTO',3,2024),(84,'2024-08-11',11,'AGOSTO',3,2024),(85,'2024-08-18',18,'AGOSTO',3,2024),(86,'2024-08-25',25,'AGOSTO',3,2024),(87,'2024-09-01',1,'SETEMBRO',3,2024),(88,'2024-09-08',8,'SETEMBRO',3,2024),(89,'2024-09-15',15,'SETEMBRO',3,2024),(90,'2024-09-22',22,'SETEMBRO',3,2024),(91,'2024-09-29',29,'SETEMBRO',3,2024),(92,'2024-10-06',6,'OUTUBRO',4,2024),(93,'2024-10-13',13,'OUTUBRO',4,2024),(94,'2024-10-20',20,'OUTUBRO',4,2024),(95,'2024-10-27',27,'OUTUBRO',4,2024),(96,'2024-11-03',3,'NOVEMBRO',4,2024),(97,'2024-11-10',10,'NOVEMBRO',4,2024),(98,'2024-11-17',17,'NOVEMBRO',4,2024),(99,'2024-11-24',24,'NOVEMBRO',4,2024),(100,'2024-12-01',1,'DEZEMBRO',4,2024),(101,'2024-12-08',8,'DEZEMBRO',4,2024),(102,'2024-12-15',15,'DEZEMBRO',4,2024),(103,'2024-12-22',22,'DEZEMBRO',4,2024),(104,'2024-12-29',29,'DEZEMBRO',4,2024),(105,'2025-01-05',5,'JANEIRO',1,2025),(106,'2025-01-12',12,'JANEIRO',1,2025),(107,'2025-01-19',19,'JANEIRO',1,2025),(108,'2025-01-26',26,'JANEIRO',1,2025),(109,'2025-02-02',2,'FEVEREIRO',1,2025),(110,'2025-02-09',9,'FEVEREIRO',1,2025),(111,'2025-02-16',16,'FEVEREIRO',1,2025),(112,'2025-02-23',23,'FEVEREIRO',1,2025),(113,'2025-03-02',2,'MARÇO',1,2025),(114,'2025-03-09',9,'MARÇO',1,2025),(115,'2025-03-16',16,'MARÇO',1,2025),(116,'2025-03-23',23,'MARÇO',1,2025),(117,'2025-03-30',30,'MARÇO',1,2025),(118,'2025-04-06',6,'ABRIL',2,2025),(119,'2025-04-13',13,'ABRIL',2,2025),(120,'2025-04-20',20,'ABRIL',2,2025),(121,'2025-04-27',27,'ABRIL',2,2025);
/*!40000 ALTER TABLE `dim_data_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_item_venda`
--

DROP TABLE IF EXISTS `dim_item_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_item_venda` (
  `id` int NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_item_venda`
--

LOCK TABLES `dim_item_venda` WRITE;
/*!40000 ALTER TABLE `dim_item_venda` DISABLE KEYS */;
INSERT INTO `dim_item_venda` VALUES (1,'Cafe Expresso 50ml','Bebidas',5.00),(2,'Cafe Expresso Duplo 100ml','Bebidas',8.50),(3,'Cafe com Leite 200ml','Bebidas',7.00),(4,'Cappuccino 200ml','Bebidas',10.00),(5,'Latte 250ml','Bebidas',12.00),(6,'Mocha 250ml','Bebidas',13.50),(7,'Macchiato 150ml','Bebidas',9.00),(8,'Agua Mineral 500ml','Bebidas',3.50),(9,'Suco Natural 300ml','Bebidas',8.00),(10,'Refrigerante Lata 350ml','Bebidas',6.00),(11,'Pao de Queijo','Paes e Salgados',4.50),(12,'Croissant','Paes e Salgados',6.00),(13,'Bolo de Fuba','Doces',7.50),(14,'Bolo de Cenoura','Doces',8.00),(15,'Brigadeiro unidade','Doces',2.50),(16,'Beijinho unidade','Doces',2.50),(17,'Torta de Limao','Doces',12.00),(18,'Torta de Chocolate','Doces',12.00),(19,'Cookie unidade','Doces',4.00),(20,'Donut','Doces',6.50),(21,'Cafe em Graos 250g','Cafe para levar',25.00),(22,'Cafe Moido 250g','Cafe para levar',22.00),(23,'Cafe em Capsulas 10 unidades','Cafe para levar',30.00),(24,'Caneca Personalizada','Merchandising',35.00),(25,'Xicara de Porcelana','Merchandising',28.00),(26,'French Press 350ml','Merchandising',120.00),(27,'Cafeteira Italiana','Merchandising',85.00),(28,'Kit Presente Cafe Especial','Kits',75.00),(29,'Sanduiche Natural','Lanches',15.00),(30,'Salada de Frutas','Lanches',10.00),(31,'Tapioca Recheada','Lanches',12.00),(32,'Wrap de Frango','Lanches',16.00),(33,'Quiche Lorraine','Lanches',14.00),(34,'Empada de Palmito','Lanches',5.00),(35,'Coxinha','Lanches',5.00),(36,'Risole','Lanches',4.50),(37,'Enroladinho de Salsicha','Lanches',4.00),(38,'Pastel Assado','Lanches',6.00),(39,'Pao de Mel','Doces',7.00),(40,'Brownie','Doces',8.50),(41,'Cheesecake','Doces',14.00),(42,'Mousse de Chocolate','Doces',10.00),(43,'Pudim de Leite','Doces',9.00),(44,'Trufa de Chocolate','Doces',3.50),(45,'Cha Verde 300ml','Bebidas',7.50),(46,'Cha de Camomila 300ml','Bebidas',7.50),(47,'Cha de Hortela 300ml','Bebidas',7.50),(48,'Chocolate Quente 250ml','Bebidas',10.00),(49,'Leite com Chocolate 250ml','Bebidas',8.00),(50,'Achocolatado 250ml','Bebidas',8.00),(51,'Cafe Gelado 300ml','Bebidas',12.00),(52,'Cha Gelado 300ml','Bebidas',9.00),(53,'Agua com Gas 500ml','Bebidas',4.50),(54,'Agua de Coco 300ml','Bebidas',7.00),(55,'Energetico 250ml','Bebidas',10.00),(56,'Vitamina de Frutas 400ml','Bebidas',14.00),(57,'Smoothie 400ml','Bebidas',15.00),(58,'Panqueca Doce','Doces',12.00),(59,'Waffle','Doces',13.00),(60,'Crepe','Doces',14.00);
/*!40000 ALTER TABLE `dim_item_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_local_venda`
--

DROP TABLE IF EXISTS `dim_local_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_local_venda` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_local_venda`
--

LOCK TABLES `dim_local_venda` WRITE;
/*!40000 ALTER TABLE `dim_local_venda` DISABLE KEYS */;
INSERT INTO `dim_local_venda` VALUES (1,'CB Centro Histórico','Belo Horizonte','MG'),(2,'CB Avenida Paulista','Sao Paulo','SP'),(3,'CB Copacabana','Rio de Janeiro','RJ'),(4,'CB Moinhos de Vento','Porto Alegre','RS'),(5,'CB Pelourinho','Salvador','BA'),(6,'CB Boa Viagem','Recife','PE'),(7,'CB Beira-Mar','Florianopolis','SC'),(8,'CB Batel','Curitiba','PR'),(9,'CB Setor Bueno','Goiania','GO'),(10,'CB Beira-Mar','Fortaleza','CE'),(11,'CB Savassi','Belo Horizonte','MG'),(12,'CB Jardins','Sao Paulo','SP'),(13,'CB Ipanema','Rio de Janeiro','RJ'),(14,'CB Menino Deus','Porto Alegre','RS'),(15,'CB Rio Vermelho','Salvador','BA'),(16,'CB Casa Forte','Recife','PE'),(17,'CB Lagoa da Conceição','Florianopolis','SC'),(18,'CB Cabral','Curitiba','PR'),(19,'CB Marista','Goiania','GO'),(20,'CB Aldeota','Fortaleza','CE'),(21,'CB Express Pampulha','Belo Horizonte','MG'),(22,'CB Express Pinheiros','Sao Paulo','SP'),(23,'CB Express Barra','Rio de Janeiro','RJ'),(24,'CB Express Centro Histórico','Porto Alegre','RS'),(25,'CB Express Pituba','Salvador','BA'),(26,'CB Express Derby','Recife','PE'),(27,'CB Express Centro','Florianopolis','SC'),(28,'CB Express Centro Cívico','Curitiba','PR'),(29,'CB Express Sul','Goiania','GO'),(30,'CB Express Papicu','Fortaleza','CE'),(31,'CB Premium Lourdes','Belo Horizonte','MG'),(32,'CB Premium Itaim','Sao Paulo','SP'),(33,'CB Premium Leblon','Rio de Janeiro','RJ'),(34,'CB Premium Três Figueiras','Porto Alegre','RS'),(35,'CB Premium Vitória','Salvador','BA'),(36,'CB Premium Boa Viagem','Recife','PE'),(37,'CB Premium Jurerê','Florianopolis','SC'),(38,'CB Premium Água Verde','Curitiba','PR'),(39,'CB Premium Oeste','Goiania','GO'),(40,'CB Premium Meireles','Fortaleza','CE'),(41,'CB Tradicional Santa Tereza','Belo Horizonte','MG'),(42,'CB Tradicional Bela Vista','Sao Paulo','SP'),(43,'CB Tradicional Santa Teresa','Rio de Janeiro','RJ'),(44,'CB Tradicional Cidade Baixa','Porto Alegre','RS'),(45,'CB Tradicional Santo Antônio','Salvador','BA'),(46,'CB Tradicional Graças','Recife','PE'),(47,'CB Tradicional Trindade','Florianopolis','SC'),(48,'CB Tradicional Bigorrilho','Curitiba','PR'),(49,'CB Tradicional Campinas','Goiania','GO'),(50,'CB Tradicional Benfica','Fortaleza','CE'),(51,'CB Especial Sion','Belo Horizonte','MG'),(52,'CB Especial Higienópolis','Sao Paulo','SP'),(53,'CB Especial Gávea','Rio de Janeiro','RJ'),(54,'CB Especial Bom Fim','Porto Alegre','RS'),(55,'CB Especial Barra','Salvador','BA'),(56,'CB Especial Parnamirim','Recife','PE'),(57,'CB Especial Canasvieiras','Florianopolis','SC'),(58,'CB Especial Ecoville','Curitiba','PR'),(59,'CB Especial Jardim Goiás','Goiania','GO'),(60,'CB Especial Praia de Iracema','Fortaleza','CE');
/*!40000 ALTER TABLE `dim_local_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_responsavel_venda`
--

DROP TABLE IF EXISTS `dim_responsavel_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_responsavel_venda` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_responsavel_venda`
--

LOCK TABLES `dim_responsavel_venda` WRITE;
/*!40000 ALTER TABLE `dim_responsavel_venda` DISABLE KEYS */;
INSERT INTO `dim_responsavel_venda` VALUES (1,'JOAO SILVA','123.456.789-01','Barista'),(2,'MARIA OLIVEIRA','234.567.890-12','Barista'),(3,'CARLOS SOUZA','345.678.901-23','Barista'),(4,'ANA PEREIRA','456.789.012-34','Barista'),(5,'PEDRO SANTOS','567.890.123-45','Barista'),(6,'JULIANA COSTA','678.901.234-56','Barista'),(7,'LUCAS FERNANDES','789.012.345-67','Barista'),(8,'PATRICIA ALVES','890.123.456-78','Barista'),(9,'RAFAEL LIMA','901.234.567-89','Barista'),(10,'FERNANDA ROCHA','012.345.678-90','Barista'),(11,'RODRIGO MARTINS','123.456.789-02','Gerente'),(12,'AMANDA NUNES','234.567.890-13','Gerente'),(13,'GUSTAVO HENRIQUE','345.678.901-24','Gerente'),(14,'TATIANE RIBEIRO','456.789.012-35','Gerente'),(15,'DIEGO ALMEIDA','567.890.123-46','Gerente'),(16,'CAROLINA CASTRO','678.901.234-57','Gerente'),(17,'VINICIUS MOURA','789.012.345-68','Gerente'),(18,'LARISSA GONCALVES','890.123.456-79','Gerente'),(19,'ROBERTO FIGUEIREDO','901.234.567-80','Gerente'),(20,'BEATRIZ CARDOSO','012.345.678-91','Gerente'),(21,'ANDRE LUIZ','123.456.789-03','Atendente'),(22,'CLAUDIA MENDES','234.567.890-14','Atendente'),(23,'FABIO JUNIOR','345.678.901-25','Atendente'),(24,'DANIELA FREITAS','456.789.012-36','Atendente'),(25,'EDUARDO CAMPOS','567.890.123-47','Atendente'),(26,'VANESSA SOUZA','678.901.234-58','Atendente'),(27,'LEONARDO DIAS','789.012.345-69','Atendente'),(28,'SANDRA MONTEIRO','890.123.456-80','Atendente'),(29,'ALEXANDRE BARBOSA','901.234.567-81','Atendente'),(30,'MONICA ANDRADE','012.345.678-92','Atendente'),(31,'RICARDO LOPES','123.456.789-04','Atendente'),(32,'SIMONE TEIXEIRA','234.567.890-15','Atendente'),(33,'HUGO MACHADO','345.678.901-26','Atendente'),(34,'ELAINE CORREIA','456.789.012-37','Atendente'),(35,'PAULO CESAR','567.890.123-48','Atendente'),(36,'ADRIANA MOREIRA','678.901.234-59','Atendente'),(37,'THIAGO PIRES','789.012.345-70','Atendente'),(38,'LUANA CARVALHO','890.123.456-81','Atendente'),(39,'MARCELO ARAUJO','901.234.567-82','Atendente'),(40,'RENATA MELO','012.345.678-93','Atendente'),(41,'JOSE CARLOS','123.456.789-05','Atendente'),(42,'ROSANGELA SANTOS','234.567.890-16','Atendente'),(43,'FELIPE OLIVEIRA','345.678.901-27','Atendente'),(44,'CRISTINA RAMOS','456.789.012-38','Atendente'),(45,'WILSON FERREIRA','567.890.123-49','Atendente'),(46,'MARCIA LIRA','678.901.234-60','Atendente'),(47,'ANTONIO NETO','789.012.345-71','Atendente'),(48,'REGINA DUARTE','890.123.456-82','Atendente'),(49,'FRANCISCO COSTA','901.234.567-83','Atendente'),(50,'SUELI PEREIRA','012.345.678-94','Atendente'),(51,'OTAVIO MIRANDA','123.456.789-06','Atendente'),(52,'LUCIANA FARIAS','234.567.890-17','Atendente'),(53,'ROGERIO MARTINS','345.678.901-28','Atendente'),(54,'ISABELA CUNHA','456.789.012-39','Atendente'),(55,'ARTUR NEVES','567.890.123-50','Atendente'),(56,'HELENA VASCONCELOS','678.901.234-61','Atendente'),(57,'CESAR AUGUSTO','789.012.345-72','Atendente'),(58,'YASMIN FERREIRA','890.123.456-83','Atendente'),(59,'BRUNO RIOS','901.234.567-84','Atendente'),(60,'DEBORA MELO','012.345.678-95','Atendente');
/*!40000 ALTER TABLE `dim_responsavel_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fato_vendas`
--

DROP TABLE IF EXISTS `fato_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fato_vendas` (
  `id` int NOT NULL,
  `id_data` int NOT NULL,
  `id_item` int NOT NULL,
  `id_local` int NOT NULL,
  `id_responsavel` int NOT NULL,
  `id_cliente` int NOT NULL,
  `quantidade` int NOT NULL,
  `valor_total` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_data` (`id_data`),
  KEY `id_item` (`id_item`),
  KEY `id_local` (`id_local`),
  KEY `id_responsavel` (`id_responsavel`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `fato_vendas_ibfk_1` FOREIGN KEY (`id_data`) REFERENCES `dim_data_venda` (`id`),
  CONSTRAINT `fato_vendas_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `dim_item_venda` (`id`),
  CONSTRAINT `fato_vendas_ibfk_3` FOREIGN KEY (`id_local`) REFERENCES `dim_local_venda` (`id`),
  CONSTRAINT `fato_vendas_ibfk_4` FOREIGN KEY (`id_responsavel`) REFERENCES `dim_responsavel_venda` (`id`),
  CONSTRAINT `fato_vendas_ibfk_5` FOREIGN KEY (`id_cliente`) REFERENCES `dim_cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fato_vendas`
--

LOCK TABLES `fato_vendas` WRITE;
/*!40000 ALTER TABLE `fato_vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fato_vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-30 21:20:57

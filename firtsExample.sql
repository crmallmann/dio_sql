CREATE DATABASE firstExample;

USE firstExample;

CREATE TABLE `editora` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_editora` varchar(120) DEFAULT NULL,
  `pais` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_editora` (`nome_editora`)
);

CREATE TABLE `periodicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_periodico` varchar(20) DEFAULT NULL,
  `issn` int DEFAULT NULL,
  `id_editora` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_editora_periodicos` (`id_editora`),
  CONSTRAINT `fk_editora_periodicos` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id`)
);


ALTER TABLE periodicos ADD CONSTRAINT fk_editora_periodicos FOREIGN KEY (id_editora) REFERENCES editora (id);

INSERT INTO editora (nome_editora, pais) VALUES ('IEE', 'EUA'), ('DataScienceMagazine', 'EUA');

INSERT INTO periodicos (nome_periodico, issn, id_editora) VALUES ('Special Issue', '001',1);




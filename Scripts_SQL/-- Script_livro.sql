-- Script para criação da tabela "livro"
-- Esta tabela armazena informações dos livros, como nome, autor e número de páginas

CREATE TABLE IF NOT EXISTS `Library-Book-Loan-System`.`livro` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NOT NULL,
  `autor` VARCHAR(45) NOT NULL,
  `paginas` INT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

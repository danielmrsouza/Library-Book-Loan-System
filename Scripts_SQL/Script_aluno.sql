-- Script para criação da tabela "aluno"
-- Esta tabela armazena informações dos alunos, como nome, email e telefone

CREATE TABLE IF NOT EXISTS `Library-Book-Loan-System`.`aluno` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `telefone` VARCHAR(15) NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

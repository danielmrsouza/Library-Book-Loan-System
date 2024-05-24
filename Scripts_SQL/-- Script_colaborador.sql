-- Script para criação da tabela "colaborador"
-- Esta tabela armazena informações dos colaboradores, como nome, cpf, cargo e email

CREATE TABLE IF NOT EXISTS `Library-Book-Loan-System`.`colaborador` (
  `cpf` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cargo` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`cpf`)
) ENGINE = InnoDB;

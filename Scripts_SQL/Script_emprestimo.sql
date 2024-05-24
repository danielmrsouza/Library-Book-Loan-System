-- Script para criação da tabela "emprestimo"
-- Esta tabela registra os empréstimos de livros realizados pelos alunos

CREATE TABLE IF NOT EXISTS `Library-Book-Loan-System`.`emprestimo` (
  `id` INT NOT NULL,
  `dataEmprestimo` DATE NOT NULL,
  `dataDevolocao` DATE NOT NULL,
  `livrolsbn` VARCHAR(45) NOT NULL,
  `colaboradorCpf` VARCHAR(45) NOT NULL,
  `colaborador_id` INT NOT NULL,
  `livro_id` INT NOT NULL,
  `aluno_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_emprestimo_colaborador_idx` (`colaborador_id`),
  INDEX `fk_emprestimo_livro1_idx` (`livro_id`),
  INDEX `fk_emprestimo_aluno1_idx` (`aluno_id`),
  CONSTRAINT `fk_emprestimo_colaborador`
    FOREIGN KEY (`colaborador_id`)
    REFERENCES `Library-Book-Loan-System`.`colaborador` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimo_livro1`
    FOREIGN KEY (`livro_id`)
    REFERENCES `Library-Book-Loan-System`.`livro` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimo_aluno1`
    FOREIGN KEY (`aluno_id`)
    REFERENCES `Library-Book-Loan-System`.`aluno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

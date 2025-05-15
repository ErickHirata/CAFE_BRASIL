USE cafe_brasil;

DELIMITER $$

CREATE PROCEDURE resetar_tabelas()
BEGIN
    -- Desabilita restrições de chave estrangeira
    SET FOREIGN_KEY_CHECKS = 0;

    -- Trunca as tabelas por ordem de dependências
    TRUNCATE TABLE item_venda;
    TRUNCATE TABLE venda;
    TRUNCATE TABLE cliente;
    TRUNCATE TABLE produto;
    TRUNCATE TABLE categoria_produto;
    TRUNCATE TABLE funcionario;
    TRUNCATE TABLE cargo;
    TRUNCATE TABLE loja;

    -- Reabilita restrições de chave estrangeira
    SET FOREIGN_KEY_CHECKS = 1;
END$$

DELIMITER ;

CALL resetar_tabelas();

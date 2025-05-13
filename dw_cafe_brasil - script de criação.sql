-- Criação do schema
CREATE SCHEMA IF NOT EXISTS dw_cafe_brasil;
USE dw_cafe_brasil;

-- Tabela Dimensão de Data
CREATE TABLE dim_data_venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    dia INT NOT NULL,
    mes VARCHAR(30) NOT NULL,
    trimestre INT NOT NULL,
    ano INT NOT NULL
);

-- Tabela Dimensão de Item
CREATE TABLE dim_item_venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),  -- Adicionado
    preco_unitario DECIMAL(10, 2) NOT NULL
);

-- Tabela Dimensão de Local
CREATE TABLE dim_local_venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL
);

-- Tabela Dimensão de Responsável
CREATE TABLE dim_responsavel_venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    cargo VARCHAR(50)  -- Adicionado
);

-- Tabela Dimensão de Cliente
CREATE TABLE dim_cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    idade INT NOT NULL  -- Adicionado
);

-- Tabela Fato de Vendas
CREATE TABLE fato_vendas (
    id_data INT NOT NULL,
    id_item INT NOT NULL,
    id_local INT NOT NULL,
    id_responsavel INT NOT NULL,
    id_cliente INT NOT NULL,
    quantidade INT NOT NULL,
    valor_total DECIMAL(12, 2) NOT NULL,
    PRIMARY KEY (id_data, id_item, id_local, id_responsavel, id_cliente),
    FOREIGN KEY (id_data) REFERENCES dim_data_venda(id),
    FOREIGN KEY (id_item) REFERENCES dim_item_venda(id),
    FOREIGN KEY (id_local) REFERENCES dim_local_venda(id),
    FOREIGN KEY (id_responsavel) REFERENCES dim_responsavel_venda(id),
    FOREIGN KEY (id_cliente) REFERENCES dim_cliente(id)
);

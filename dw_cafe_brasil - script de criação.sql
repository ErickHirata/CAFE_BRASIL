-- Criação do schema
CREATE SCHEMA IF NOT EXISTS dw_cafe_brasil;
USE dw_cafe_brasil;

-- Tabela Dimensão de Data
CREATE TABLE dim_data_venda (
    id INT PRIMARY KEY NOT NULL,
    data DATE NOT NULL,
    dia INT NOT NULL,
    mes VARCHAR(30) NOT NULL,
    trimestre INT NOT NULL,
    ano INT NOT NULL
);

-- Tabela Dimensão de Item
CREATE TABLE dim_item_venda (
    id INT PRIMARY KEY NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco_unitario DECIMAL(10, 2) NOT NULL
);

-- Tabela Dimensão de Local
CREATE TABLE dim_local_venda (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL
);

-- Tabela Dimensão de Responsável
CREATE TABLE dim_responsavel_venda (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(15) NOT NULL,
    cargo VARCHAR(50)
);

-- Tabela Dimensão de Cliente
CREATE TABLE dim_cliente (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(15) NOT NULL,
    idade INT NOT NULL
);

-- Tabela Fato de Vendas
CREATE TABLE fato_vendas (
	id INT PRIMARY KEY NOT NULL,
    id_data INT NOT NULL,
    id_item INT NOT NULL,
    id_local INT NOT NULL,
    id_responsavel INT NOT NULL,
    id_cliente INT NOT NULL,
    quantidade INT NOT NULL,
    valor_total DECIMAL(12, 2) NOT NULL,
    FOREIGN KEY (id_data) REFERENCES dim_data_venda(id),
    FOREIGN KEY (id_item) REFERENCES dim_item_venda(id),
    FOREIGN KEY (id_local) REFERENCES dim_local_venda(id),
    FOREIGN KEY (id_responsavel) REFERENCES dim_responsavel_venda(id),
    FOREIGN KEY (id_cliente) REFERENCES dim_cliente(id)
);

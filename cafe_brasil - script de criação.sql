-- Criação do schema
CREATE SCHEMA IF NOT EXISTS cafe_brasil;
USE cafe_brasil;

-- Loja
CREATE TABLE loja (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL
);

-- Cargo
CREATE TABLE cargo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL,
    salario_base DECIMAL(10, 2)
);

-- Funcionário
CREATE TABLE funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    id_cargo INT,
    id_loja INT NOT NULL,
    data_admissao DATE,
    telefone VARCHAR(15),
    email VARCHAR(100),
    FOREIGN KEY (id_cargo) REFERENCES cargo(id),
    FOREIGN KEY (id_loja) REFERENCES loja(id)
);

-- Categoria de Produto
CREATE TABLE categoria_produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

-- Produto
CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_categoria INT,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria_produto(id)
);

-- Cliente
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- Venda
CREATE TABLE venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_venda DATETIME NOT NULL,
    id_cliente INT,
    id_funcionario INT NOT NULL,
    id_loja INT NOT NULL,
    valor_total DECIMAL(12, 2) NOT NULL,
    forma_pagamento VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id),
    FOREIGN KEY (id_loja) REFERENCES loja(id)
);

-- Itens da Venda (produto, quantidade, preço na venda)
CREATE TABLE item_venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    desconto DECIMAL(10, 2) DEFAULT 0.00,
    FOREIGN KEY (id_venda) REFERENCES venda(id),
    FOREIGN KEY (id_produto) REFERENCES produto(id)
);

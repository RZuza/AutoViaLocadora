/*01. Criando Banco de Dados - Arquivo*/
create database AutoViaLocadora;
/*Criando Tabela*/
CREATE TABLE Marcas (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE Modelos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
id_marca INT,
FOREIGN KEY (id_marca) REFERENCES Marcas(id)
);
CREATE TABLE Veículos (
id INT AUTO_INCREMENT PRIMARY KEY,
placa VARCHAR(10) NOT NULL UNIQUE,
ano INT NOT NULL,
cor VARCHAR(20),
id_modelo INT,
status ENUM ('Disponível','Locado','Em Manutenção') DEFAULT 'Disponivel',
FOREIGN KEY (id_modelo) REFERENCES Modelos(id)
);
CREATE TABLE Clientes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR(14) NOT NULL UNIQUE,
telefone VARCHAR(15),
endereço VARCHAR (255)
);
CREATE TABLE Contratos (
id INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
id_veículo INT,
data_inicio DATE NOT NULL,
data_fim DATE,
valor_total DECIMAL(10, 2),
FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
FOREIGN KEY (id_veículos) REFERENCES Veículos(id)
);
CREATE TABLE Pagamentos (
id INT AUTO_INCREMENT PRIMARY KEY,
id_contrato INT,
data_pagamento DATE NOT NULL,
valor DECIMAL(10, 2) NOT NULL,
metodo ENUM('Dinheiro','Cartão de Crédito','Tranferência') NOT NULL,
FOREIGN KEY (id_contrato) REFERENCES Contratos(id)
);

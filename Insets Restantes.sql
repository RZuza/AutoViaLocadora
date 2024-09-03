INSERT INTO Marcas (nome) values ('Toyota'),('Honda'), ('Ford');
 INSERT INTO modelos (nome, id_marca) values
('Corolla', 1),
('Civic', 2),
('Focus', 3);

insert into Veiculos (placa, ano, cor, id_modelo) values
('ABC1234', 2020, 'Preto', 1),
('XYZ5678', 2021, 'Branco', 2),
('LMN9101', 2019, 'Azul', 3);

insert into clientes (nome, cpf, telefone, endereco) values
('Carlos Silva', '123.456.789-00','(11) 98769-4321' ,'Rua D, 123'),
('Maria Oliveira', '234.567.890-11', '(21) 98765-4721', 'Rua E, 456'),
('Joao Santos', '345.567.890-11', '(31) 98765-4371', 'Rua F, 789');

insert into contratos (id_cliente, id_veiculo, data_inicio, data_fim, valor_total) values
(1, 1, '2024-08-07', '2024-08-07', 350.00),
(2, 2, '2024-08-05', null, null),
(3, 3, '2024-08-10', '2024-08-15', 400.00);

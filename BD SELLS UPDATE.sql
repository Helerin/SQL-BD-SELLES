CREATE DATABASE bd_vendas;

USE bd_vendas;

create table tbclientes(
  código int primary key,
  nome varchar(100),
  telefone varchar(100),
  cpf bigint
);

create table tbproduto(
  código int primary key,
  nome varchar(100),
  unidades bigint
);

select*from tbproduto;

insert into tbproduto (código, nome, unidades)
  values (1, 'CHOCOLATE0 A.','100');

insert into tbproduto (código, nome, unidades)
  values (3, 'CHOCOLATE L.','200');

insert into tbproduto (código, nome, unidades)
  values (4, 'CHOCOLATE MA.','300');

update tbproduto
set código = 2
where nome = 'CHOCOLATE MA.';

DELETE from tbproduto where código = 2;



select*from tbclientes;

insert into tbclientes (código, nome, cpf, telefone)
  values (1, 'JACKSON', 71893728737, '85 96363-7373');

insert into tbclientes (código, nome, cpf, telefone)
  values (2, 'VINICIUS', 71893728737, '85 96363-7373');

insert into tbclientes (código, nome, cpf, telefone)
  values (3, 'GARANHÃO', 71893728737, '85 96363-7373');

insert into tbclientes (código, nome, cpf, telefone)
  values (22, 'BOLSONARO', 71893728737, '85 96363-7373');

DROP TABLE	tbclientes;

DROP TABLE tbproduto;

DROP DATABASE bd_vendas;

create table Tbvendas (
 codigo INT PRIMARY KEY,
 id_cliente INT,
 id_produto INT,
 quantidade INT,
 data_pedido INT,
	FOREIGN KEY (id_cliente) REFERENCES tbclientes(código),
	FOREIGN KEY (id_produto) REFERENCES tbproduto(código)
);

insert into Tbvendas (codigo , id_cliente, id_produto, quantidade, data_pedido)
  values (1, 1, 1, 20, '2024-09-16');

insert into Tbvendas (codigo , id_cliente, id_produto, quantidade, data_pedido)
  values (2, 2, 3, 2, '2024-09-16');

insert into Tbvendas (codigo , id_cliente, id_produto, quantidade, data_pedido)
  values (3, 22, 3, 10, '2024-09-16');

Select*from Tbvendas;
# SQL-BD-SELLES

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
 id_pedido INT PRIMARY KEY;
 id_cliente INT;
 id_produto INT;
 quantidade INT;
 data_pedido DATE;
	FOREIGN KEY (id_cliente) REFERENCES tbclientes(id_cliente);
	FOREIGN KEY (id_produto) REFERENCES tbproduto(id_produto);
);



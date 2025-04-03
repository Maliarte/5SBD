--1. Exiba todos os dados cadastrados na tabela de clientes.
SELECT cliente_cod, cliente_nome, rua, cidade
FROM cliente;

--2. Exiba apenas os nomes e as cidades dos clientes.
SELECT  cliente_nome, cidade
FROM cliente;

--3. Liste todas as contas registradas, exibindo o número da conta e o saldo.
SELECT  conta_numero,saldo
FROM conta;

--Tema: Junções, funções de agregação, agrupamentos e operadores de conjunto. Ferramenta: Oracle APEX – SQL Workshop 
--Parte1:

-- 1. Usando a sintaxe proprietária da Oracle, exiba o nome de cada cliente junto com o número  de sua conta. 


-- selecionando o nome do cliente e o número da conta correspondente.
SELECT cliente.cliente_nome, conta.conta_numero

--usando as duas tabelas juntas
FROM cliente, conta

--ligando um cliente à sua conta. O código do cliente na tabela cliente deve bater com o código do cliente que está na tabela conta.

WHERE cliente.cliente_cod = conta.cliente_cliente_cod;

-- -------------------------------
-- de outra forma com uso de JOIN(moderno)
--SELECT cliente.cliente_nome, conta.conta_numero
--FROM cliente
--JOIN conta ON cliente.cliente_cod = conta.cliente_cliente_cod;

--2. Mostre todas as combinações possíveis de clientes e agências (produto cartesiano). 

--Produto Cartesiano: cada cliente é combinado com todas as agências, mesmo que eles não tenham nenhuma relação entre si.


SELECT cliente.cliente_nome, agencia.agencia_nome
FROM cliente, agencia;

3. Usando aliases de tabela, exiba o nome dos clientes e a cidade da agência onde mantêm  conta. 

SELECT c.cliente_nome, a.agencia_cidade
FROM cliente c, conta ct, agencia a
WHERE c.cliente_cod = ct.cliente_cliente_cod
  AND ct.agencia_agencia_cod = a.agencia_cod;

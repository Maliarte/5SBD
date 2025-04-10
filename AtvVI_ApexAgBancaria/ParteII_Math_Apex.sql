--ParteII:

--4. Exiba o saldo total de todas as contas cadastradas

SELECT SUM(saldo) AS saldo_total
FROM conta;

--SUM():soma todos os valores da coluna saldo.

-- 5. Mostre o maior saldo e a média de saldo entre todas as contas

SELECT 
    MAX(saldo) AS maior_saldo,
    AVG(saldo) AS media_saldo
FROM conta;

--MAX() : retorna o maior valor.
--AVG() : calcula a média.

--6. Apresente a quantidade total de contas cadastradas

SELECT COUNT(*) AS total_contas
FROM conta;

-- COUNT(*) : conta todas as linhas (todas as contas).

--7. Liste o número de cidades distintas onde os clientes residem

SELECT COUNT(DISTINCT cliente_cidade) AS total_cidades
FROM cliente;
- DISTINCT : ignora repetições. Conta quantas cidades diferentes aparecem.

-- 8. Exiba o número da conta e o saldo, substituindo valores nulos por zero

SELECT 
    conta_numero,
    NVL(saldo, 0) AS saldo_tratado
FROM conta;

-- NVL(saldo, 0) → se o saldo for NULL, mostra 0 no lugar. Ideal para tratar dados incompletos
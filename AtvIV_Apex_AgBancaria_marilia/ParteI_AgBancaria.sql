-- 1. Exiba os nomes dos clientes com todas as letras em maiúsculas

SELECT 
    cliente_nome,
    UPPER(cliente_nome) AS nome_maiusculo
FROM cliente;

-- 2. Exiba os nomes dos clientes formatados com apenas a primeira letra maiúscula

SELECT 
    cliente_nome,
    INITCAP(cliente_nome) AS nome_maiusculo
FROM cliente;

-- 3. Mostre as três primeiras letras do nome de cada cliente
SELECT 
    cliente_nome,
    SUBSTR(cliente_nome, 1, 3) AS primeiras_3_letras
FROM cliente;

-- 4. Exiba o número de caracteres do nome de cada cliente
SELECT 
    cliente_nome,
    LENGTH(cliente_nome) AS quantidade_caracteres
FROM cliente;

-- 5. Apresente o saldo de todas as contas, arredondado para o inteiro mais próximo
SELECT 
    conta_numero,
    saldo,
    ROUND(saldo) AS saldo_arredondado
FROM conta;

-- 6. Exiba o saldo truncado, sem casas decimais
SELECT 
    conta_numero,
    saldo,
    TRUNC(saldo) AS saldo_truncado
FROM conta;

-- 7. Mostre o resto da divisão do saldo da conta por 1000
SELECT 
    conta_numero,
    saldo,
    MOD(saldo, 1000) AS resto_divisao_1000
FROM conta;

-- 8. Exiba a data atual do servidor do banco
SELECT 
    SYSDATE AS data_atual
FROM dual;

-- 9. Adicione 30 dias à data atual e exiba como "Data de vencimento simulada"
SELECT 
    SYSDATE + 30 AS data_vencimento_simulada
FROM dual;

-- 10. Exiba o número de dias entre a data de abertura da conta e a data atual

-- No Script fornecido, a tabela "conta" nao possui a coluna "data_abertura", portanto adiciono a coluna data_abertura

ALTER TABLE conta ADD (data_abertura DATE);

--  Adiciono a chave primária
ALTER TABLE conta ADD CONSTRAINT conta_pk PRIMARY KEY (conta_numero);

-- Inserindo registros 

INSERT INTO conta (conta_numero, saldo, cliente_cliente_cod, agencia_agencia_cod, data_abertura)
VALUES (1001, 2540.75, 1, 101, TO_DATE('2022-05-15', 'YYYY-MM-DD'));

INSERT INTO conta (conta_numero, saldo, cliente_cliente_cod, agencia_agencia_cod, data_abertura)
VALUES (1002, 1830.00, 2, 102, TO_DATE('2023-02-10', 'YYYY-MM-DD'));

INSERT INTO conta (conta_numero, saldo, cliente_cliente_cod, agencia_agencia_cod, data_abertura)
VALUES (1003, 975.50, 3, 101, TO_DATE('2021-11-20', 'YYYY-MM-DD'));

INSERT INTO conta (conta_numero, saldo, cliente_cliente_cod, agencia_agencia_cod, data_abertura)
VALUES (1004, 12000.00, 4, 103, TO_DATE('2020-08-01', 'YYYY-MM-DD'));

-- Consultando Número de dias desde a abertura da conta
SELECT 
    conta_numero,
    data_abertura,
    SYSDATE AS data_hoje,
    SYSDATE - data_abertura AS dias_desde_abertura
FROM conta;

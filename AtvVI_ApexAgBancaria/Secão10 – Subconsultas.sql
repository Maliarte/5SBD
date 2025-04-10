--Seção 10 –  Subconsultas de linha única, multilinha, correlacionadas, com EXISTS, NOT EXISTS e a cláusula  WITH. 

--Parte 1 – Subconsultas de Linha Única 

--1. Clientes com saldo acima da média geral

SELECT c.cliente_nome
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
WHERE ct.saldo > (
    SELECT AVG(saldo)
    FROM conta
);

--2. Clientes com saldo igual ao maior saldo
SELECT c.cliente_nome
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
WHERE ct.saldo = (
    SELECT MAX(saldo)
    FROM conta
);

--3. Cidades com mais clientes do que a média
SELECT cidade
FROM cliente
GROUP BY cidade
HAVING COUNT(*) > (
    SELECT AVG(contagem)
    FROM (
        SELECT COUNT(*) AS contagem
        FROM cliente
        GROUP BY cidade
    )
);


-- Parte 2 – Subconsultas Multilinha 

--4.Clientes com saldo igual a qualquer um dos 10 maiores saldos
SELECT c.cliente_nome
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
WHERE ct.saldo IN (
    SELECT saldo
    FROM conta
    ORDER BY saldo DESC
    FETCH FIRST 10 ROWS ONLY
);

--5.Clientes com saldo menor que todos os saldos de clientes de Niterói
SELECT c.cliente_nome
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
WHERE ct.saldo < ALL (
    SELECT ct2.saldo
    FROM cliente c2
    JOIN conta ct2 ON c2.cliente_cod = ct2.cliente_cliente_cod
    WHERE c2.cidade = 'Niterói'
);

--6.Clientes com saldo entre os saldos dos clientes de Volta Redonda
SELECT c.cliente_nome
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
WHERE ct.saldo BETWEEN (
    SELECT MIN(ct2.saldo)
    FROM cliente c2
    JOIN conta ct2 ON c2.cliente_cod = ct2.cliente_cliente_cod
    WHERE c2.cidade = 'Volta Redonda'
) AND (
    SELECT MAX(ct2.saldo)
    FROM cliente c2
    JOIN conta ct2 ON c2.cliente_cod = ct2.cliente_cliente_cod
    WHERE c2.cidade = 'Volta Redonda'
);

-- Parte 3 – Subconsultas Correlacionadas 

--7. Clientes com saldo maior que a média da agência

SELECT c.cliente_nome
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
WHERE ct.saldo > (
    SELECT AVG(saldo)
    FROM conta cta
    WHERE cta.agencia_agencia_cod = ct.agencia_agencia_cod
);

--8. Clientes com saldo abaixo da média da sua cidade

SELECT c.cliente_nome, c.cidade
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
WHERE ct.saldo < (
    SELECT AVG(ct2.saldo)
    FROM cliente c2
    JOIN conta ct2 ON c2.cliente_cod = ct2.cliente_cliente_cod
    WHERE c2.cidade = c.cidade
);

-- Parte 4 – Subconsultas com EXISTS e NOT EXISTS 

--9. Clientes que possuem pelo menos uma conta
SELECT c.cliente_nome
FROM cliente c
WHERE EXISTS (
    SELECT 1
    FROM conta ct
    WHERE ct.cliente_cliente_cod = c.cliente_cod
);

--10. Clientes que não possuem conta

SELECT c.cliente_nome
FROM cliente c
WHERE NOT EXISTS (
    SELECT 1
    FROM conta ct
    WHERE ct.cliente_cliente_cod = c.cliente_cod
);

-- Parte 5 – Subconsulta Nomeada com WITH 

--11.Clientes com saldo acima da média da sua cidade

WITH media_cidade AS (
    SELECT c.cidade, AVG(ct.saldo) AS media_saldo
    FROM cliente c
    JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
    GROUP BY c.cidade
)
SELECT c.cliente_nome, c.cidade, ct.saldo
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
JOIN media_cidade mc ON c.cidade = mc.cidade
WHERE ct.saldo > mc.media_saldo;


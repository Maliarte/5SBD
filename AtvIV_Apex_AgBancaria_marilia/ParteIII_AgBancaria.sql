-- 16. Exiba o nome de cada cliente, o número da conta e o saldo correspondente
SELECT 
    c.cliente_nome,
    ct.conta_numero,
    ct.saldo
FROM cliente c
JOIN conta ct ON c.cliente_id = ct.cliente_id;

-- 17. Liste os nomes dos clientes e os nomes das agências onde mantêm conta
SELECT 
    c.cliente_nome,
    a.nome_agencia
FROM cliente c
JOIN conta ct ON c.cliente_id = ct.cliente_id
JOIN agencia a ON ct.agencia_id = a.agencia_id;

-- 18. Mostre todas as agências, mesmo aquelas que não possuem clientes vinculados (junção externa esquerda)
SELECT 
    a.nome_agencia,
    c.cliente_nome
FROM agencia a
LEFT JOIN conta ct ON a.agencia_id = ct.agencia_id
LEFT JOIN cliente c ON ct.cliente_id = c.cliente_id;
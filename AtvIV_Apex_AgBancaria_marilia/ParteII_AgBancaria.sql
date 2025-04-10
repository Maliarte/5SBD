

-- 11. Apresente o saldo de cada conta formatado como moeda local

SELECT 
    conta_numero,
    saldo,
    'R$ ' || TO_CHAR(saldo, '999G999D00') AS saldo_formatado
FROM conta;

-- 12. Converta a data de abertura da conta para o formato 'dd/mm/yyyy'
SELECT 
    conta_numero,
    data_abertura,
    TO_CHAR(data_abertura, 'dd/mm/yyyy') AS data_abertura_formatada
FROM conta;


-- 13. Exiba o saldo da conta e substitua valores nulos por 0
--VL(valor, substituto) é uma função de tratamento de nulos no Oracle. 
--Verifica se o valor é NULL e, se for, retorna o substituto

SELECT 
    conta_numero,
    NVL(saldo, 0) AS saldo_tratado
FROM conta;


-- 14. Exiba os nomes dos clientes e substitua valores nulos na cidade por 'Sem cidade'

SELECT 
    cliente_nome,
    NVL(cidade, 'Sem cidade') AS cidade_tratada
FROM cliente;


-- 15. Classifique os clientes em grupos com base em sua cidade

SELECT 
    cliente_nome,
    cidade,
    CASE 
        WHEN cidade = 'Niterói' THEN 'Região Metropolitana'
        WHEN cidade = 'Resende' THEN 'Interior'
        ELSE 'Outra Região'
    END AS classificacao_regiao
FROM cliente;
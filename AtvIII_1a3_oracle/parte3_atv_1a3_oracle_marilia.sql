--9. Exiba os dados de todas as contas com saldo superior a R$ 9.000, ordenados do maior para o
--menor saldo.
SELECT  conta_numero, saldo,cliente_cliente_cod,agencia_agencia_cod
FROM conta
WHERE saldo>= 9000
ORDER BY saldo;

--10. Liste os clientes que moram em Nova Iguaçu ou que tenham "Silva" no nome.
SELECT  cliente_nome
FROM cliente
WHERE cidade LIKE 'Nova Iguaçu' OR cliente_nome LIKE'_%Silva';

--11. Exiba o saldo das contas com arredondamento para o inteiro mais próximo.
SELECT ROUND(saldo,0)AS saldo_arredondado
FROM conta;

--12. Exiba o nome de todos os clientes em letras maiúsculas.
SELECT UPPER(cliente_nome)AS nome_maiusculo
FROM cliente;

--13. Exiba os nomes dos clientes que não são das cidades de Teresópolis nem Campos dos
--Goytacazes.
SELECT cliente_nome
FROM cliente

WHERE cidade NOT IN ('Teresópolis','Campos dos Goytacazes');
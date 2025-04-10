--Parte 3 – GROUP BY, HAVING, ROLLUP e Operadores de Conjunto

9. Exiba a média de saldo por cidade dos clientes. 

SELECT 
    cliente.cliente_cidade,
    AVG(conta.saldo) AS media saldo -- calcula a média por grupo.
FROM cliente, conta
WHERE cliente.cliente_cod = conta.cliente_cliente_cod
GROUP BY cliente.cliente_cidade; --agrupa por cidade.


10. Liste apenas as cidades com mais de 3 contas associadas a seus moradores. 

SELECT 
    cliente.cliente_cidade,
    COUNT(*) AS total_contas
FROM cliente, conta
WHERE cliente.cliente_cod = conta.cliente_cliente_cod
GROUP BY cliente.cliente_cidade
HAVING COUNT(*) > 3;  -- filtra apenas grupos com mais de 3 contas.

11.Utilize a cláusula ROLLUP para exibir o total de saldos por cidade da agência e o total geral. 

SELECT 
    agencia.agencia_cidade,
    SUM(conta.saldo) AS total_saldo
FROM agencia, conta
WHERE agencia.agencia_cod = conta.agencia_agencia_cod
GROUP BY ROLLUP(agencia.agencia_cidade); --agrupa por cidade e mostra uma linha extra com o total geral.





12. Faça uma consulta com UNION que combine os nomes de cidades dos clientes e das  agências, sem repetições.

SELECT DISTINCT cliente_cidade AS cidade
FROM cliente

--junta os dados sem repetir cidades.
UNION

--distint garante a limpeza nos dois blocos.

SELECT DISTINCT agencia_cidade AS cidade
FROM agencia;


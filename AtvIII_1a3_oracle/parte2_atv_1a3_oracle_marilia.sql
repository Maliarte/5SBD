--4. Liste os nomes dos clientes da cidade de Macaé.
SELECT  cliente_nome
FROM cliente
WHERE cidade like'Macaé';

--5. Exiba o código e o nome de todos os clientes com código entre 5 e 15.
SELECT  cliente_nome,cliente_cod
FROM cliente
WHERE cliente_cod BETWEEN 5 AND 15;

--6. Exiba os clientes que moram em Niterói, Volta Redonda ou Itaboraí.
SELECT  cliente_nome,cliente_cod,cidade
FROM cliente
WHERE cidade LIKE 'Niterói'OR cidade LIKE'Volta Redonda' OR cidade LIKE 'Itaboraí';

--7. Exiba os nomes dos clientes que começam com a letra "F".
SELECT  cliente_nome
FROM cliente
WHERE cliente_nome LIKE 'F%';

--8. Exiba uma frase com a seguinte estrutura para todos os clientes:
--Exemplo: João Santos mora em Nova Iguaçu.
--Utilize concatenação e alias para nomear a coluna como "Frase".
SELECT  cliente_nome || ' mora em ' || cidade AS Frase
FROM cliente;
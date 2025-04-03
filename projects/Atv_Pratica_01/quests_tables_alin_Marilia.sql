1️⃣ Liste todos os alunos matriculados no curso de "Banco de Dados".
--c apelido:

SELECT a.aluno_id, a.nome, a.email  -- Seleciona os dados do aluno
FROM aluno a  
JOIN matricula m ON a.aluno_id = m.aluno_id  -- Relaciona alunos com matrículas
JOIN curso c ON m.curso_id = c.curso_id  -- Relaciona matrículas com cursos
WHERE c.titulo = 'Banco de Dados';  -- Filtra pelo curso "Banco de Dados"

--s apelido:
SELECT aluno.aluno_id, aluno.nome, aluno.email  
FROM aluno  
JOIN matricula ON aluno.aluno_id = matricula.aluno_id  
JOIN curso ON matricula.curso_id = curso.curso_id  
WHERE curso.titulo = 'Banco de Dados';  


2️⃣ Liste todos os cursos com carga horária maior que 40 horas.

SELECT * FROM curso WHERE carga_horaria > 40;  -- Filtra cursos com carga maior que 40h


3️⃣ Liste os alunos que ainda não receberam nota.

SELECT a.aluno_id, a.nome, a.email  
FROM aluno a  
JOIN matricula m ON a.aluno_id = m.aluno_id  
WHERE m.nota IS NULL;  -- Filtra alunos que ainda não receberam nota


4️⃣ Liste as matrículas realizadas depois do dia 01/01/2024.
 
--A data deve estar no formato correto para comparação no SQL.

SELECT *  
FROM matricula  
WHERE data_matricula > TO_DATE('2024-01-01', 'YYYY-MM-DD');  -- Compara datas corretamente



5️⃣ Mostre os cursos com carga horária entre 30 e 60 horas.
SELECT *  
FROM curso  
WHERE carga_horaria BETWEEN 30 AND 60;  -- Filtra cursos com carga entre 30 e 60h
6️⃣ Liste os alunos com e-mails do domínio @gmail.com.

SELECT *  
FROM aluno  
WHERE email LIKE '%@gmail.com';  -- Filtra alunos com emails do Gmail


7️⃣ Liste o nome do aluno, título do curso e data da matrícula.

SELECT a.nome, c.titulo, m.data_matricula  
FROM aluno a  
JOIN matricula m ON a.aluno_id = m.aluno_id  
JOIN curso c ON m.curso_id = c.curso_id;  


8️⃣ Liste os alunos e as notas que receberam em cada curso.

SELECT a.nome, c.titulo, m.nota  
FROM aluno a  
JOIN matricula m ON a.aluno_id = m.aluno_id  
JOIN curso c ON m.curso_id = c.curso_id;  


9️⃣ Mostre os cursos que o aluno chamado "João Silva" está matriculado.

SELECT c.titulo  
FROM curso c  
JOIN matricula m ON c.curso_id = m.curso_id  
JOIN aluno a ON m.aluno_id = a.aluno_id  
WHERE a.nome = 'João Silva';  


🔟 Liste os títulos dos cursos que possuem mais de um aluno matriculado.

SELECT c.titulo  
FROM curso c  
JOIN matricula m ON c.curso_id = m.curso_id  
GROUP BY c.titulo  
HAVING COUNT(m.aluno_id) > 1;  -- Conta alunos matriculados e filtra os cursos com mais de um aluno  



1️⃣1️⃣ Mostre todos os alunos sem matrícula em nenhum curso.

SELECT a.nome  
FROM aluno a  
LEFT JOIN matricula m ON a.aluno_id = m.aluno_id  
WHERE m.aluno_id IS NULL;  -- Filtra alunos que não têm matrícula 

 
1️⃣2️⃣ Mostre os cursos sem nenhum aluno matriculado.

SELECT c.titulo  
FROM curso c  
LEFT JOIN matricula m ON c.curso_id = m.curso_id  
WHERE m.curso_id IS NULL;  -- Filtra cursos sem matrículas  


1️⃣3️⃣ Liste os nomes dos alunos e a quantidade de cursos em que estão matriculados.

SELECT a.nome, COUNT(m.curso_id) AS qtd_cursos  
FROM aluno a  
JOIN matricula m ON a.aluno_id = m.aluno_id  
GROUP BY a.nome;  


1️⃣4️⃣ Calcule a nota média de todos os alunos.

SELECT AVG(nota) AS media_geral  
FROM matricula  
WHERE nota IS NOT NULL;  -- Calcula a média das notas  



1️⃣5️⃣ Calcule a média da nota por curso.

SELECT c.titulo, AVG(m.nota) AS media_curso  
FROM curso c  
JOIN matricula m ON c.curso_id = m.curso_id  
WHERE m.nota IS NOT NULL  
GROUP BY c.titulo;  

1️⃣6️⃣ Encontre a maior nota registrada.

SELECT MAX(nota) AS maior_nota  
FROM matricula;  


1️⃣7️⃣ Mostre o aluno com a menor nota.

SELECT a.nome, m.nota  
FROM aluno a  
JOIN matricula m ON a.aluno_id = m.aluno_id  
WHERE m.nota = (SELECT MIN(nota) FROM matricula WHERE nota IS NOT NULL);  

1️⃣8️⃣ Mostre a quantidade total de matrículas por curso.

SELECT c.titulo, COUNT(m.aluno_id) AS total_matriculas  
FROM curso c  
JOIN matricula m ON c.curso_id = m.curso_id  
GROUP BY c.titulo;  

1️⃣9️⃣ Liste os alunos com média de nota maior ou igual a 8.0.

SELECT a.nome, AVG(m.nota) AS media_nota  
FROM aluno a  
JOIN matricula m ON a.aluno_id = m.aluno_id  
WHERE m.nota IS NOT NULL  
GROUP BY a.nome  
HAVING AVG(m.nota) >= 8.0;  

2️⃣0️⃣ Mostre a média, menor e maior nota por curso.

SELECT c.titulo,  
AVG(m.nota) AS media_nota,  
MIN(m.nota) AS menor_nota,  
MAX(m.nota) AS maior_nota  
FROM curso c  
JOIN matricula m ON c.curso_id = m.curso_id  
WHERE m.nota IS NOT NULL  
GROUP BY c.titulo;  

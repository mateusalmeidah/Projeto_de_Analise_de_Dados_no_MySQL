#Mini projeto de análise de dados utilizando comando simples medianos no MySQL

-- https://github.com/mateusalmeidah
-- https://www.linkedin.com/in/mateusalmeidah/


-- Case 1. Você deverá começar fazendo uma análise para descobrir o preço médio de aluguel dos filmes.

SELECT AVG(preco_aluguel) FROM filmes; 

# O comando (AVG) serve para trazer a média de valores.

-- Case 2. Agora que você sabe o preço médio para se alugar filmes na hashtagmovie, você deverá ir além na sua análise e desobrir qual é o preço médio para cada gênero de filme.

SELECT
	genero,
    ROUND(AVG(preco_aluguel), 2) AS preco_alugel,
    COUNT(*) AS qtd_filmes
FROM filmes
GROUP BY genero;

/* O (ROUND) serve para arredondar os valores. Você pode especificar a quantidade de casas decimais que melhor lhe convém.
use o parêntese para separa da função AVG, adicione uma virgula e especifique a quantidade de casas decimais você deseja que apareça na consulta.'ROUND(AVG(preco_aluguel), 2)'*/
/* O (AS) serve para renomear a coluna. No banco o nome permanece o mesmo a única alteração é na consulta em si. 
/* O (COUNT) serve para retornar o número total de registros da query selecionada. */

-- Case 3. Fazer a mesma análise, mas considerando apenas os filmes com ANO_LANCAMENTO igual a 2011

SELECT
	genero,
    ROUND(AVG(preco_aluguel), 2) AS preco_alugel,
    COUNT(*) AS qtd_filmes
FROM filmes
WHERE ano_lancamento = 2011
GROUP BY genero;

/* O (WHERE) é usado para filtrar os registros que são especificados por uma condição.

-- Case 4. Você precisará fazer uma análise de desempenho doso aluguéis. Para isso,
uma análise comum é identificar quais aluguéis tiveram nota acima da média. Você
seria capaz de fazer isso?*/

SELECT ROUND(AVG(nota), 2) FROM alugueis; -- Média: 7.94

SELECT
	*
FROM alugueis
WHERE nota >= (SELECT ROUND(AVG(nota), 2) FROM alugueis); 

/* Aqui nos usamos uma subquery para automatizar a consulta e manter ela sempre atualizada */

-- Case 5. Crie uma view para guardar o resultado do SELECT abaixo.alter

CREATE VIEW resultado AS
SELECT
	genero,
    ROUND(AVG(preco_aluguel), 2) AS preco_alugel,
    COUNT(*) AS qtd_filmes
FROM filmes
WHERE ano_lancamento = 2011
GROUP BY genero;

/* CREATE VIEW resultado AS -> Serve para guardar uma consulta dentro do banco e deixar a mesma com fácil acesso. */ 

SELECT * FROM resultado;

/* Para pagar o VIEW você usa o comando: DROP VIEW resultado;

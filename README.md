#Projeto_de_Analise_de_Dados_no_MySQL

#Miniprojeto de análise de dados utilizando comando simples e medianos no MySQL

IMPORTANTE: As tabelas para uso se encontram na pasta (Tabelas_para_uso)
IMPORTANTE: Nome do executável (Projeto_de_Analise_de_Dados_no_MySQL)

-- Case 1. Você deverá começar fazendo uma análise para descobrir o preço médio de aluguel dos filmes.
O comando (AVG) serve para trazer a média de valores.

-- Case 2. Agora que você sabe o preço médio para se alugar filmes na hashtagmovie, você deverá ir além na sua análise e descobrir qual é o preço médio para cada gênero de filme.
O (ROUND) serve para arredondar os valores. Você pode especificar a quantidade de casas decimais que melhor lhe convém. Use o parêntese para separa da função AVG, adicione uma virgula e especifique a quantidade de casas decimais você deseja que apareça na consulta.'ROUND(AVG(preco_aluguel), 2)'
O (AS) serve para renomear a coluna. No banco o nome permanece o mesmo a única alteração é na consulta em si. 
O (COUNT) serve para retornar o número total de registros da query selecionada.

-- Case 3. Fazer a mesma análise, mas considerando apenas os filmes com ANO_LANCAMENTO igual a 2011
 O (WHERE) é usado para filtrar os registros que são especificados por uma condição.

-- Case 4. Você precisará fazer uma análise de desempenho doso aluguéis. Para isso,
uma análise comum é identificar quais aluguéis tiveram nota acima da média. Você
seria capaz de fazer isso?
Aqui nós usamos uma subquery para automatizar a consulta e manter ela sempre atualizada 

-- Case 5. Crie uma view para guardar o resultado do SELECT abaixo.
CREATE VIEW resultado AS -> Serve para guardar uma consulta dentro do banco e deixar a mesma com fácil acesso.
Para pagar o VIEW você usa o comando: DROP VIEW resultado;

-- Análises OPA:

CREATE OR REPLACE VIEW item_mais_vendido_por_loja AS
WITH vendas_por_item_loja AS (
  SELECT 
    l.nome AS nome_loja,
    i.descricao AS nome_item,
    SUM(f.quantidade) AS total_vendido,
    ROW_NUMBER() OVER (PARTITION BY l.nome ORDER BY SUM(f.quantidade) DESC) AS posicao
  FROM fato_vendas f
  JOIN dim_item_venda i ON f.id_item = i.id
  JOIN dim_local_venda l ON f.id_local = l.id
  GROUP BY l.nome, i.descricao
)
SELECT 
  nome_loja,
  nome_item,
  total_vendido
FROM vendas_por_item_loja
WHERE posicao = 1
ORDER BY total_vendido DESC;


CREATE OR REPLACE VIEW vendas_por_tempo AS
SELECT
    d.ano,
    d.mes,
    SUM(f.valor_total) AS total_vendas
FROM fato_vendas f
JOIN dim_data_venda d ON f.id_data = d.id
GROUP BY d.ano, d.mes
ORDER BY total_vendas DESC;


CREATE OR REPLACE VIEW media_por_cliente AS
SELECT
    c.nome AS cliente,
    c.cpf,
    COUNT(f.id) AS total_pedidos,
    SUM(f.valor_total) AS total_gasto,
    ROUND(SUM(f.valor_total) / COUNT(f.id), 2) AS ticket_medio
FROM fato_vendas f
JOIN dim_cliente c ON f.id_cliente = c.id
GROUP BY c.id, c.nome, c.cpf
ORDER BY ticket_medio DESC;


CREATE OR REPLACE VIEW venda_por_dia_da_semana AS
SELECT
    CASE DAYNAME(dv.data)
        WHEN 'Monday' THEN 'Segunda-feira'
        WHEN 'Tuesday' THEN 'Terça-feira'
        WHEN 'Wednesday' THEN 'Quarta-feira'
        WHEN 'Thursday' THEN 'Quinta-feira'
        WHEN 'Friday' THEN 'Sexta-feira'
        WHEN 'Saturday' THEN 'Sábado'
        WHEN 'Sunday' THEN 'Domingo'
        ELSE DAYNAME(dv.data) -- caso algum valor inesperado apareça
    END AS dia_semana,
    SUM(fv.valor_total) AS total_vendas
FROM fato_vendas fv
JOIN dim_data_venda dv ON fv.id_data = dv.id
GROUP BY dia_semana
ORDER BY total_vendas DESC;



CREATE OR REPLACE VIEW vendas_por_faixa_etaria AS
SELECT 
    CASE 
        WHEN c.idade BETWEEN 20 AND 29 THEN '20-29'
        WHEN c.idade BETWEEN 30 AND 39 THEN '30-39'
        WHEN c.idade BETWEEN 40 AND 49 THEN '40-49'
        WHEN c.idade BETWEEN 50 AND 59 THEN '50-59'
        WHEN c.idade >= 60 THEN '60+'
        ELSE 'Menor de 20'
    END AS faixa_etaria,
    SUM(f.valor_total) AS valor_total_gasto,
    SUM(f.quantidade) AS numero_de_items,
    COUNT(DISTINCT(f.id)) AS quantidade_de_compras
FROM dim_cliente c
JOIN fato_vendas f ON c.id = f.id_cliente
GROUP BY faixa_etaria
ORDER BY faixa_etaria;

SELECT * FROM item_mais_vendido_por_loja; -- Produto mais vendido por unidade da franquia
SELECT * FROM vendas_por_tempo; -- Progressão de venda por mês e ano
SELECT * FROM media_por_cliente; -- Média de valor gasto por cliente
SELECT * FROM venda_por_dia_da_semana; -- Dia da semana mais lucrativo
SELECT * FROM vendas_por_faixa_etaria; -- Faixa etária que mais compra
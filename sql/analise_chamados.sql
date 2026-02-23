-- Total de chamados
SELECT COUNT(*) AS total_chamados
FROM chamados;

-- Tempo médio de resolução
SELECT AVG(tempo_resolucao_horas) AS tempo_medio
FROM chamados;

-- Chamados por prioridade
SELECT prioridade, COUNT(*) AS quantidade
FROM chamados
GROUP BY prioridade
ORDER BY quantidade DESC;

-- Percentual de SLA cumprido
SELECT 
    (SUM(CASE WHEN sla_cumprido = TRUE THEN 1 ELSE 0 END) * 100.0) / COUNT(*) 
    AS percentual_sla
FROM chamados;

-- Chamados por categoria
SELECT categoria, COUNT(*) AS total
FROM chamados
GROUP BY categoria
ORDER BY total DESC;

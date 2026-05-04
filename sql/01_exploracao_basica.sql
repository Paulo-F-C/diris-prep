--Quantos contratos por status de inadimplência

SELECT
    TARGET,
    COUNT(*) AS total_contratos,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 4) AS pct_carteira
FROM contratos
GROUP BY TARGET
ORDER BY TARGET;



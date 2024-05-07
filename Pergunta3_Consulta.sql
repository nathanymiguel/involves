--SELECT DISTINCT (ID_PONTO_VENDA,NOME_PONTO_VENDA)
--FROM `involves-422612.involves_datasets.involves-dataset` 


SELECT 
  FORMAT('%02d%d', EXTRACT(MONTH FROM DATA), EXTRACT(YEAR FROM DATA)) AS ID_MES_ANO,
  NOME_PONTO_VENDA,
  SUM(CAST(VALOR AS INT64)) AS TOTAL_VALOR,
  DATA,
  EXTRACT(YEAR FROM DATA) AS ANO,
  EXTRACT(MONTH FROM DATA) AS MES,
  FROM `involves-422612.involves_datasets.involves-dataset` 
WHERE VALOR NOT IN ('SIM', 'NÃO')
GROUP BY NOME_PONTO_VENDA, DATA, EXTRACT(YEAR FROM DATA), EXTRACT(MONTH FROM DATA)
ORDER BY ID_MES_ANO ASC, NOME_PONTO_VENDA ASC
SELECT *
FROM `involves-422612.involves_datasets.involves-dataset` 
WHERE VALOR NOT IN ('SIM', 'NÃO') AND CAST(VALOR AS INT64) > 20000
ORDER BY NOME_PONTO_VENDA;

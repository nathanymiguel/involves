SELECT
  DATA,
  EXTRACT(YEAR
  FROM
    DATA) AS ANO,
  EXTRACT(MONTH
  FROM
    DATA) AS MES
FROM
  `involves-422612.involves_datasets.involves-dataset`
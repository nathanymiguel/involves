--Criar tabela
CREATE TABLE `involves-422612.involves_datasets.involves-dataset-visitas` (
  ID_VISITA INT64 NOT NULL,
  FK_PDV INT64 NOT NULL,
  FL_VISITADO INT64 NOT NULL,
  DATA_VISITA DATE NOT NULL
);

-- Se necessario limpar a tabela
TRUNCATE TABLE `involves-422612.involves_datasets.involves-dataset-visitas`

-- Inserir dados na tablea
INSERT INTO
  `involves-422612.involves_datasets.involves-dataset-visitas` (ID_VISITA,
    FK_PDV,
    FL_VISITADO,
    DATA_VISITA)
SELECT
  id AS ID_VISITA,
  CAST(115 + FLOOR(RAND() * 2) AS INT64) AS FK_PDV,
  CAST(FLOOR(RAND() * 2) AS INT64) AS FL_VISITADO,
  DATE_ADD('2024-01-01', INTERVAL CAST(FLOOR(RAND() * 365) AS INT64) DAY) AS DATA_VISITA,
FROM
  UNNEST(GENERATE_ARRAY(1, 100)) AS id;
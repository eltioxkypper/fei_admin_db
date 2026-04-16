-- creación de un índice con múltiples columnas para valores únicos
CREATE UNIQUE NONCLUSTERED INDEX [name_index]
ON [name_table] ([name_column_1],[name_column_2],[name_column_3]);
GO

-- creación de un índice con una sola columna para valores únicos
CREATE UNIQUE NONCLUSTERED INDEX [name_index]
ON [name_table] ([name_column]);
GO

-- creación de un índice que acepta valores duplicados
CREATE NONCLUSTERED INDEX [name_index]
ON [name_table] ([name_column]);
GO

-- creación de índices ordenados ASC o DESC
CREATE NONCLUSTERED INDEX [name_index]
ON [name_table] (
  [name_column] ASC
);
GO 

CREATE NONCLUSTERED INDEX [name_index]
ON [name_table] (
  [name_column] DESC
);
GO 

-- delete unique nonclustered index
DROP INDEX [name_index] ON [schema_name].[name_table]

-- creación de un índice con múltiples columnas para valores únicos
CREATE UNIQUE NONCLUSTERED [name_index]
ON [name_table] ([name_column_1],[name_column_2],[name_column_3]);
GO

-- creación de un índice con una sola columna para valores únicos
CREATE UNIQUE NONCLUSTERED [name_index]
ON [name_table] ([name_column]);
GO

-- delete unique nonclustered index
DROP INDEX [name_index] ON [schema_name].[name_table]

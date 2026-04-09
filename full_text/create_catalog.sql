#script para generar el catálogo que almacenará la indexación de la tabla
CREATE FULLTEXT CATALOG nombre_catalogo AS DEFAULT;

#script para la creación de la indexación correspondiente, se tiene que reemplazar pos los valores que se vaya a trabajar
CREATE FULLTEXT INDEX ON table_name (column_name_1, column_name_2) KEY INDEX primary_key ON nombre_catalogo;

-- my_extension--1.0.sql
-- 定义函数 table_config
CREATE FUNCTION extention_api() RETURNS void
AS 'MODULE_PATHNAME', 'extention_api'
LANGUAGE C;

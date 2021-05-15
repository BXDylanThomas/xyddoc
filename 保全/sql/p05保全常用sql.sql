-- 所有的表
select TABLE_NAME,TABLE_COMMENT from information_schema.TABLES where TABLE_SCHEMA='dorado_endorse';
-- 表结构信息
select TABLE_NAME,COLUMN_NAME,DATA_TYPE,COLUMN_COMMENT from information_schema.COLUMNS where TABLE_NAME='ljaget';
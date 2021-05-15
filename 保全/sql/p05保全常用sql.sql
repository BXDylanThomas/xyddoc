-- 所有的表
select TABLE_NAME,TABLE_COMMENT from information_schema.TABLES where TABLE_SCHEMA='dorado_endorse';
-- 表结构信息
select TABLE_NAME,COLUMN_NAME,DATA_TYPE,COLUMN_COMMENT from information_schema.COLUMNS where TABLE_NAME='ljaget';

lpedorapp 申请表
lpedoritem  保全项表

ljsgetendorse  ljspay  ljsget   财务表

interfacetracklog  交互日志

-- 可疑交易
select * from lxisresult;
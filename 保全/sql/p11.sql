-- 工作流字段映射表
select * from flowable_field_map;
-- 工作流轨迹表
select * from flowable_mission;
-- 工作流轨迹备份表
select * from flowable_mission_backup;


-- 流水号规则配置
select * from pattern where pattern.key like '%edo%';
-- 路由配置表
select * from gateway_routes where gateway_routes.routename like '%保全%';
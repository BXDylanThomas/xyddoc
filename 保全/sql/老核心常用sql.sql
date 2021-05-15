-- 保全项枚举
select * from LDCODE where CODETYPE='edortypedoc';

-- 保全工作流
select * from LWACTIVITY where ACTIVITYNAME like '%保全%';

select TRANSITIONSTART,(select ACTIVITYNAME from LWACTIVITY c where b.TRANSITIONSTART =c.ACTIVITYID),
       TRANSITIONEND,(select ACTIVITYNAME from LWACTIVITY c where b.TRANSITIONEND =c.ACTIVITYID),TRANSITIONCOND
from LWACTIVITY a,LWPROCESSINSTANCE b where a.ACTIVITYID=b.TRANSITIONSTART and  ACTIVITYNAME like '%保全%' ;

-- 批处理配置表
select * from ldtask;
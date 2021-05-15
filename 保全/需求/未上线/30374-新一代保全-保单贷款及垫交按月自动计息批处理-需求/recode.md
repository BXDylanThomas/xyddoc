# 需求地址

http://10.6.98.69:8080/pages/viewpage.action?pageId=25931310

# 开发代码
分支： 30374

工程：dorado-batch-service

入口类：AutoCalInsertHandler
~~~~
AutoCalInsertReq.java
AutoCalInsertServiceImpl.java
AutoCalInsertService.java
AutoCalInsertClient.java
AutoCalInsertHandler.java
~~~~

工程：dorado-edorse-bussinessflow

入口类 AutoCalInsertController
~~~~
AutoCalInsertServiceImpl.java
AutoCalInsertService.java
AutoCalInsertServiceEvent.java
ContPOJO.java
LploantraceRepository.java
DateUtils.java
LploanMapper.java
LploantraceMapper.java
LploantracePO.java
LploantraceRepositoryImpl.java
AutoCalInsertRequestDTO.java
AutoCalInsertController.java
~~~~

# 定时批处理
每月最后一天 凌晨 1：00 跑 

# 参考
贷款本金及利息计算公式参考保单贷款保全项目，垫交本金及利息计算公式参考保单垫交清偿保全项目。

参考代码：
~~~~
工程：dorado-edorse-bussiness
贷款未清偿本金及利息：
    com.galaxy.dorado.domain.service.EdorCalZTService#getLoanAddInterest
自垫未清偿本金及利息
    com.galaxy.dorado.domain.service.EdorCalZTService#getAutoPayPremAddInterest
~~~~

# 老核心参考代码
AutoCalInterest

select * from lis.LDTASK where TASKDESCRIBE like '%保单贷款及垫交按月自动计息%';

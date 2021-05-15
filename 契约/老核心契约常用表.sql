--豁免险要豁免1年期以上所有险种
 --豁免险保额等于所豁免的险种保费之和
 207
 --纸质ftp配置     
  select * from ldsysvar where sysvar='FTPServer';
 --纸质xml地址
  select * from ldsysvar where sysvar='printdatanew';
 --电子ftp配置 
  select * from ldsysvar where sysvar='FTPServerE';
 --电子xml地址
select sysvarvalue from ldsysvar where sysvar='EdataXML';


lduser----用户表
ldusertomenugrp----用户关联菜单组
ldmenugrptomenu----菜单组对应的菜单关系
ldmenu----具体菜单明细

SELECT t.*, t.ROWID
  FROM ldsysvar t
 where t.sysvar in ('FTPServer', 'FTPServerE');

https://kdocs.cn/l/sPUqHJC8m?f=501
[金山文档] 工作簿.xlsx
http://msim:6040/image200907/staticFile/data/p01/jpeg/2020/3/6/1583458204195S9135.gif
LCIndAppSignLog --签单错误
LCElectronicSignDetail--电子保单产生
LOSendEmailLog --短信发送表
salechnl ='03' and selltypte  in('08','23','26','27',) 银保通进来保单
EasyScanQueryBL --影像件处理类
----fY:年金关联万能，wy:万能关联年金  ny：是万能关联已承保年金 关联保单
--首期短信模板
--费率表导入 
 copy from lis/lis@10.0.11.222:1521/hxtest to lis/lis@10.0.11.121:1521/orcl
 insert rated111311 using select * from rated111311;
 
select * from LDCode1 where upper(codetype) like '%SMS%' and code1 = '10';
--LCScreeningLogs 回溯性日志表
--LCScreeningResults 筛选结果表
--恐怖
select * from lcterroristlist
--犯罪
select * from lccriminallist 
--外国政要
select * from lcforeignplatformlist where makedate='2018-09-13';
--中国政要
select * from LCChinaPlatformList
--关系
select * from lcrelativelist where REMARK1='4435102'

--住址邮政编码  homezipcode
--通讯地址邮政编码 zipcode 
--首选回访电话 mobile
--其他联系电话 phone
--区号 phonecode
  --           省份        市               区           街道             门牌号
  --通讯地址 province      city           county         Community         postaladdress
  --住址     homeprovince  homecity      homecounty      homeCommunity     homeaddress   
    select province,
         city,
         county,
         Community,
         postaladdress,
         homeprovince,
         homecity,
         homecounty,
         homeCommunity,
         homeaddress
    from lcaddress;

  	map.put("update lcgrpcont set printcount='1',ModifyDate='"
				+ tCurMakeDate + "',ModifyTime='" + tCurMakeTime
				+ "',Operator='" + mGlobalInput.Operator
				+ "' where  grpcontno='" + tLCGrpContSchema.getGrpContNo()
				+ "'", "UPDATE");
				
--BOM对象
lrbom
lrbomitem
lrtempitme

lcpolcontdata 电子保单
lcpoldate 纸质保单

ldoccupation--职业类型表
 select OccupationCode,
        OccupationName,
        OccupationType,
        (select codename
           from ldcode
          where codetype = 'occupationtype'
            and code = OccupationType)
   from LDOccupation
  where 1 = 1and occupationver = '002'
  order by OccupationCode
  
   select Code, CodeName, CodeAlias, ComCode, OtherSign
   from ldcode
  where 1 = 1
    and lower(codetype) = 'paylocation'
  order by Code
  
  
  	TransferData tTransferData = new TransferData();
		// tTransferData.setNameAndValue("BOMS", "3");
		String LRTemplateName = (String) tTransferData.getValueByName("BOMS");
		System.out.println("----LRTemplateName---" + LRTemplateName);
		
	风险管理系统	
		select * from ldcode1 where codetype='FXLevel';
        select * from ldsysvar where sysvar like 'FX%';
	指定长度流水号:
	String mMSSeq = PubFun1.CreateMaxNo("MSSeq", 20);
	
	银保通的保单
	select contno from lccont where prtno='"+tPrtNo+"' and salechnl='03' and selltype in('08','23','26','27') and conttype='1'
	
	 create table DT113990 as select * from DTT113990
	 
	 
	 CRS 银保进单 86130620090210052102
	 
	 CodeQueryBL.java 
	 
	 --LCCustomerImpart 业务员告知
	 
	 ---无扫描
select *
  from lccont a
 where appflag = '0'
   and exists (select 1
          from lwmission b
         where a.contno = b.missionprop1
           and b.activityid = '0000001098')
   and exists (select 1 from lcappnt where a.contno = contno)
   and makedate > '2020-05-01'
   and exists (select 1
          from lcinsured
         where a.contno = contno
           and makedate > '2020-05-01')


-- 长险的生效日期
-- 一年期短期险续保的（生效日控制了最早的那期生效日）

-- 个险 保单的生效日期在 2017-12-31 之前（含）的，要 承保过 且 截止 当前时间点 非终止的（但可能是处于保单续期 应交未交 而 失效状态 的）
-- 281单
select * from lccont a where a.cvalidate <= '2017-12-31' and a.conttype='1'
and grpcontno = '00000000000000000000'
and managecom like '86331000%'
and appflag = '1'

union

-- 个险 保单的生效日期在 2018-01-01 之后（含）的，只要 承保过即可（不管之后 是不是 终止了，反正都要）
-- 11单
select * from lccont a where a.cvalidate >= '2018-01-01' and a.conttype='1'
and grpcontno = '00000000000000000000'
and managecom like '86331000%'
and appflag in ('1','4')


select * from ldcom a where name like '%台州%';
--保单团体责任
select * from LDSysVar where SysVar='printdatanew'


select *
  from v$locked_object a,dba_objects b
  where b.object_id = a.object_id;
  
--查询导致锁表的session  
  select *
  from v$locked_object a,v$session b
  where a.session_id = b.sid and a.session_id='828'
  order by b.logon_time;
  
  --保单终止原因
   select * from ldcode where codetype='Terminatestatereason'
 --保单升级  
   select * from ldcode1 where codetype='RiskCodeChange';
  --收费错误原因 
    select * from ldcode1 where codetype='atsbankerror' and code1='I4001'

867091554_yang.SHM7

---契约有效词条
select count(1)
  from lrtemplate
 where business = '01'
   and valid = '1'
   and state = '7'
   and startdate <= sysdate
   and (enddate >= sysdate or enddate is null)
 order by templatelevel desc
 
 --lcissuepol 问题件
 
 ---自核新增表
 LockAppGroup   ---锁表
 LRResultMain   --规则引擎（耗费时间）
 LRResultDetail
 LCCUWSub
 LCIndUWSub  核保轨迹表
 --词条有效标记
select *
  from lrtemplate
 where business = '01'
   and valid = '1'
   and state = '7'
   and startdate <= sysdate
 and (enddate >=  sysdate or enddate is null)
 -- 保全
 lpedoritem  lmedoritem
 
 SignTools.java --->getFilePath()
 select * from ldcode where codetype in ('HeXinEWMUrl','HeXinJMConfig')
 --F:\\wangzw\\
 
 
select OccupationCode,
       OccupationName,
       OccupationType,
       (select codename
          from ldcode
         where codetype = 'occupationtype'
           and code = OccupationType)
  from LDOccupation
 where 1 = 1and occupationver = '002'
 order by OccupationCode
 
 ==================================
 LCGrpContF1PBL.java 删除 delete
 map.put("delete from LCContPrint where ContNo='"
 + tLCGrpContSchema.getGrpContNo() + "'", "DELETE");
 
 
 --卡单购买链接

https://card-dev.minshenglife.com/ms_signCard/api/signCard/receiveAgentParam?param=ru9I1luzntmPJcCmz7MBjIdVerfeJRWh1IntrU5G9z0r3yz7mdr84KwdUQatkZmk4VQ33yHFz338HiPNufGQcAy3xezP6w%2FXfjU00pAZ69JYBRtrkItoBEp348w3X5aDiPol2kEUfwL3sN%2BRSqYRBwX0cB5p60SX2a7A23pNQLAWUhaMvsa17BiQDuztdOFk

 
 
 9128：
 001/GD880818 gd880818001
 
 
 select riskcode,a.prem,a.payyears,a.payintv,contno from lcpol a where prtno='11100120180131';
select  a.enteraccdate,a.* from ljtempfee a where otherno='11100120180131';
update ljtempfee  set enteraccdate ='2018-01-31' where otherno='11100120180131';
select a.enteraccdate from ljtempfeeclass a where tempfeeno='86110020180360123811';
update ljtempfeeclass  set enteraccdate ='2018-01-31' where tempfeeno='86110020180360123811';

保单有效状态
select 1 from lccontstate where statetype='Available' and state='0' and enddate is null


--收发盘表
select * from lysendtobank where paycode='86130020190360337046'; --fapan
select * from lyreturnfrombankb where  paycode='86130020190360337046';
select * from ldcode1 where code1='E1004'
select * from lybanklog where senddate='2019-09-19' and logtype='S' and sendoperator not like '%ATSCashS%'

--下载次数
LCEQueryDownTrace
--电子保单产生失败补上传
HistoryFailRePrintTask.java
HistoryFailRePrintTaskThread.java

ftp:
  ip: 10.0.11.61
  username: ztusr
  password: 190422Msz#
  port: 21
  
  /var/ftp/zutsr/wales/WdataPDF 
  
  --锁表
  select l.session_id sid,
       s.serial#,
       l.locked_mode,
       l.oracle_username,
       s.user#,
       l.os_user_name,
       s.machine,
       s.terminal,
       a.sql_text,
       s.client_info
  from v$sqlarea a, v$session s, v$locked_object l
 where l.session_id = s.sid
   and s.prev_sql_addr = a.address
 order by sid, s.serial#;

 
 --菜单操作权限
select * from lduser where usercode in (
  select usercode from LDUSERTOMENUGRP  where MenuGrpCode in (
   select MenuGrpCode from ldmenugrptomenu where nodecode in (
    select nodecode from ldmenu where nodename like '%暂收费修改%'
   )
 )
);


--支持新增附加险
select * from lmriskedoritem where edorcode='NS';


--保准保费
sum(prem * agentcalstandprem(riskcode, payyears, payintv, '1')) 标准保费,
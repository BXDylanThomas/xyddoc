-- auto-generated definition
create table lploantrace
(
    serialno     varchar(20)    not null comment '流水号'
        primary key,
    contno       varchar(20)    not null comment '保单号',
    polno        varchar(20)    not null comment '险种号',
    loantype     varchar(1)     not null comment '业务类型',
    loandate     date           not null comment '借款日期',
    payoffdate   date           null comment '还清日期',
    caldate      date           not null comment '计息日期',
    caltime      varchar(8)     not null comment '计息时间',
    summoney     decimal(12, 2) not null comment '计息本金',
    calmoney     decimal(12, 2) not null comment '利息金额',
    interestrate decimal(16, 6) not null comment '计息利率',
    interestmode varchar(1)     not null comment '利率类型',
    riskcode     varchar(10)    not null comment '险种编码',
    managecom    varchar(10)    not null comment '管理机构',
    makedate     date           null comment '入机日期',
    maketime     char(8)        null comment '入机时间',
    modifydate   date           null comment '最后一次修改日期',
    modifytime   char(8)        null comment '最后一次修改时间',
    edorno       varchar(24)    null comment '批单号',
    actugetno    varchar(24)    null comment '实付号码'
);


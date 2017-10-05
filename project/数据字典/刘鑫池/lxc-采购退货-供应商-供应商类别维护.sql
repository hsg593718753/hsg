drop database if EXISTS erp;


CREATE DATABASE `erp` ;

USE `erp`;

c_tuihuo_z

#===========================供应商账款主文件表

DROP TABLE IF EXISTS `t_supplier`;

CREATE TABLE `t_supplier` (
  `id` varchar(50) DEFAULT NULL COMMENT '供应商编号',
  `shortname` varchar(50) DEFAULT NULL COMMENT '供应商简称名称',
  `Fundsattribution` varchar(50) DEFAULT NULL COMMENT '账款归属',
  `classid` int DEFAULT NULL COMMENT '类别',
  `currid` varchar(50) DEFAULT NULL COMMENT '币别',
  `chiefname` varchar(50) DEFAULT NULL COMMENT '负责人',
  `linkman` varchar(50) DEFAULT NULL COMMENT '联系人',
  `personid` varchar(50) DEFAULT NULL COMMENT '采购人员',
  `telephone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `amountquota` float DEFAULT NULL COMMENT '账款额度',
  `remainquota` float DEFAULT NULL COMMENT '剩余额度',
  `startadvrecv` float DEFAULT NULL COMMENT '期初预付',
  `startreceivable` float DEFAULT NULL COMMENT '期初应付',
  `curadvrecv` float DEFAULT NULL COMMENT '期末预付',
  `curreceivable` float DEFAULT NULL COMMENT '期末应付',
  `earliesttradedate` date DEFAULT NULL COMMENT '最初采购入库日',
  `firsttradedate` date DEFAULT NULL COMMENT '最初采购退货日',
  `latelytradedate` date DEFAULT NULL COMMENT '最近采购入库日',
  `latelyreturndate` date DEFAULT NULL COMMENT '最近采购退货日',
  `priceoftax` int(11) DEFAULT NULL COMMENT '单价是否含税',
  `invaliddate` date DEFAULT NULL COMMENT '终止交易日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert  into `c_supplier`(`id`,`shortname`,`Fundsattribution`,`classid`,`currid`,`chiefname`,`linkman`,`personid`,`telephone`,`amountquota`,`remainquota`,`startadvrecv`,`startreceivable`,`curadvrecv`,`curreceivable`,`earliesttradedate`,`firsttradedate`,`latelytradedate`,`latelyreturndate`,`priceoftax`,`invaliddate`)
 values ('1001','神州数码','szsm','1','1','小张','小刘','1','13214521236',10000,0,0,0,0,0,NULL,NULL,NULL,'0000-00-00',0,NULL),
('1002','株洲健坤','zzjk','1','1','王','小泉','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1003','上海佳杰','shjj','1','1','流','小胡','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


#===========================供应商账款明细表

DROP TABLE IF EXISTS `t_suppiler_account`;

CREATE TABLE `t_suppiler_account` (
  `id` varchar(50) DEFAULT NULL COMMENT '供应商编号：',
  `trantype` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `fromno` varchar(50) DEFAULT NULL COMMENT '来源单号',
  `billno` varchar(50) DEFAULT NULL COMMENT '单据日期',
  `total` float DEFAULT NULL COMMENT '原单金额',
  `mowleft` float DEFAULT NULL COMMENT '现行余额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert  into `c_suppiler_account`(`id`,`trantype`,`fromno`,`billno`,`total`,`mowleft`) values ('1001','采购退货单','2017010101','2017010101',1000,10);

#===========================采购退货主表

DROP TABLE IF EXISTS `t_tuihuo_z`;

CREATE TABLE `t_tuihuo_z` (
  `billno` varchar(50) DEFAULT NULL COMMENT '单据号码',
  `custid` varchar(50) DEFAULT NULL COMMENT '供应商',
  `addrid` varchar(50) DEFAULT NULL COMMENT '供应商地址',
  `priceoftax` int(11) DEFAULT NULL COMMENT '单价是否含税',
  `isdeduct` int(11) DEFAULT NULL COMMENT '重新入库',
  `billdate` date DEFAULT NULL COMMENT '单据日期',
  `currid` varchar(50) DEFAULT NULL COMMENT '币别',
  `exchrate` float DEFAULT NULL COMMENT '汇率',
  `salesid` varchar(50) DEFAULT NULL COMMENT '采购人员',
  `departid` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `maker` varchar(50) DEFAULT NULL COMMENT '制单人员',
  `permitter` varchar(50) DEFAULT NULL COMMENT '复核人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert  into `c_tuihuo_z`(`billno`,`custid`,`addrid`,`priceoftax`,`isdeduct`,`billdate`,`currid`,`exchrate`,`salesid`,`departid`,`maker`,`permitter`) 
values ('2017090201','1001','1',1,1,'2017-09-02','1',1,'1','1','1','1');

#===========================采购退货详表
DROP TABLE IF EXISTS `t_tuihuo_x`;

CREATE TABLE `t_tuihuo_x` (
  `serno` int(11) DEFAULT NULL COMMENT#===========================供应商类别 '行号',
  `billno` varchar(50) DEFAULT NULL COMMENT '单据号码  引用主表',
  `prodid` varchar(50) DEFAULT NULL COMMENT '物料编号',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `oldprice` float DEFAULT NULL COMMENT '折扣前单价',
  `discount` float DEFAULT NULL COMMENT '折数',
  `price` float DEFAULT NULL COMMENT '单价',
  `amount` float DEFAULT NULL COMMENT '金额',
  `taxrate` float DEFAULT NULL COMMENT '税率',
  `taxamt` int(11) DEFAULT NULL COMMENT '税额',
  `amountatax` float DEFAULT NULL COMMENT '含税金额',
  `trantype` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `fromno` varchar(50) DEFAULT NULL COMMENT '来源单号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `t_supplier_Tpye`;

CREATE TABLE `t_supplier_Tpye` (
  `id` int(11)  COMMENT 'id',
  `className` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `englishName` varchar(50) DEFAULT NULL COMMENT '英文名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '英文名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

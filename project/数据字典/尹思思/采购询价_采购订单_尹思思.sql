

CREATE DATABASE `erp`;

USE `erp`;


DROP TABLE IF EXISTS `enquirydetail`;

CREATE TABLE `enquirydetail` (
  `eid` int(11) NOT NULL AUTO_INCREMENT COMMENT '明细表主键,标识列',
  `prodid` varchar(20) NOT NULL COMMENT '物料编号，连接物料主文件',
  `prodname` varchar(20) NOT NULL COMMENT '物料名称',
  `prodsize` varchar(20) DEFAULT NULL COMMENT '规格型号',
  `sunit` varchar(20) DEFAULT NULL COMMENT '单位名称',
  `squantity` int(11) NOT NULL COMMENT '数量',
  `oldprice` float NOT NULL COMMENT '折扣前单价',
  `discount` float NOT NULL COMMENT '折数',
  `sprice` float NOT NULL COMMENT '单价',
  `amount` float NOT NULL COMMENT '金额',
  `taxrate` float NOT NULL COMMENT '税率',
  `taxamt` float NOT NULL COMMENT '税额',
  `vftotal` float NOT NULL COMMENT '含税金额',
  `isgift` tinyint(1) NOT NULL COMMENT '是否为赠品',
  `itemremark` varchar(50) DEFAULT NULL COMMENT '分录备注',
  `fromtype` varchar(20) DEFAULT NULL COMMENT '来源别',
  `fromno` varchar(20) DEFAULT NULL COMMENT '来源单号',
  `ebillno` int(11) NOT NULL COMMENT '外键，连接询价单主表主键',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `enquirymaster`;

CREATE TABLE `enquirymaster` (
  `custid` varchar(20) NOT NULL COMMENT '供应商编号',
  `billdate` date NOT NULL COMMENT '单据日期',
  `custaddressid` varchar(50) DEFAULT NULL COMMENT '供应商地址编号',
  `custaddress` varchar(50) DEFAULT NULL COMMENT '供应商地址名称',
  `billno` varchar(20) NOT NULL COMMENT '主键，单据号码',
  `validdate` date NOT NULL COMMENT '有效日期',
  `priceoftax` tinyint(1) NOT NULL COMMENT '单价是否含税',
  `maker` varchar(20) NOT NULL COMMENT '制单人员',
  `salesid` varchar(20) NOT NULL COMMENT '采购人员，连接人员主文件',
  `departname` varchar(20) NOT NULL COMMENT '所属部门',
  `permitter` varchar(20) NOT NULL COMMENT '复核人员',
  PRIMARY KEY (`billno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `purchasedetail`;

CREATE TABLE `purchasedetail` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '明细表主键,标识列',
  `prodid` varchar(20) NOT NULL COMMENT '物料编号，连接物料主文件',
  `prodname` varchar(20) NOT NULL COMMENT '物料名称',
  `prodsize` varchar(20) DEFAULT NULL COMMENT '规格型号',
  `sunit` varchar(20) DEFAULT NULL COMMENT '单位名称',
  `squantity` int(11) NOT NULL COMMENT '数量',
  `oldprice` float NOT NULL COMMENT '折扣前单价',
  `discount` float NOT NULL COMMENT '折数',
  `sprice` float NOT NULL COMMENT '单价',
  `amount` float NOT NULL COMMENT '金额',
  `taxrate` float NOT NULL COMMENT '税率',
  `taxamt` float NOT NULL COMMENT '税额',
  `vftotal` float NOT NULL COMMENT '含税金额',
  `preindate` date NOT NULL COMMENT '预入库日',
  `qtyremain` int(11) NOT NULL COMMENT '未入库量',
  `isgift` tinyint(1) NOT NULL COMMENT '是否为赠品',
  `itemremark` varchar(50) DEFAULT NULL COMMENT '分录备注',
  `fromtype` varchar(20) DEFAULT NULL COMMENT '来源别',
  `fromno` varchar(20) DEFAULT NULL COMMENT '来源单号',
  `pbillno` int(11) NOT NULL COMMENT '外键，连接询价单主表主键',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `purchasemaster`;

CREATE TABLE `purchasemaster` (
  `custid` varchar(20) DEFAULT NULL COMMENT '供应商编号，连接供应商主文件',
  `billdate` int(11) DEFAULT NULL COMMENT '单据日期',
  `custaddressid` varchar(50) DEFAULT NULL COMMENT '供应商地址编号',
  `custaddress` varchar(50) DEFAULT NULL COMMENT '供应商地址名称',
  `billno` varchar(20) DEFAULT NULL COMMENT '单据号码',
  `validdate` date DEFAULT NULL COMMENT '有效日期',
  `priceoftax` tinyint(1) DEFAULT NULL COMMENT '单价是否含税',
  `billstatus` int(11) DEFAULT '0' COMMENT '单况:0：未结案,1：已结案,2：失效',
  `maker` varchar(20) DEFAULT NULL COMMENT '制单人员',
  `salesid` varchar(20) DEFAULT NULL COMMENT '采购人员，连接人员主文件',
  `departname` varchar(20) DEFAULT NULL COMMENT '所属部门',
  `permitter` varchar(20) DEFAULT NULL COMMENT '复核人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

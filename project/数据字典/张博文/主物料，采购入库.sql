

CREATE DATABASE /*!32312 IF NOT EXISTS*/`tset` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tset`;


DROP TABLE IF EXISTS `m_material`;

CREATE TABLE `m_material` (
  `ProdID` varchar(20) NOT NULL COMMENT '物料编号',
  `ClassID` varchar(20) DEFAULT NULL COMMENT '物料类别',
  `ProdName` varchar(20) DEFAULT NULL COMMENT '物料名称',
  `StdUnitID` varchar(20) DEFAULT NULL COMMENT '计量单位',
  `ProdSize` varchar(20) DEFAULT NULL COMMENT '规格型号',
  `BarCodeID` varchar(20) DEFAULT NULL COMMENT '条形码编号',
  `EngName` varchar(20) DEFAULT NULL COMMENT '英文名品',
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `m_material_oi1`;

CREATE TABLE `m_material_oi1` (
  `ProdID` varchar(20) NOT NULL COMMENT '物料编号',
  `SuggestPrice` float DEFAULT NULL COMMENT '建议售价',
  `SalesPriceA` float DEFAULT NULL COMMENT '售价A',
  `SalesPriceB` float DEFAULT NULL COMMENT '售价B',
  `SalesPriceC` float DEFAULT NULL COMMENT '售价C',
  `SalesPriceD` float DEFAULT NULL COMMENT '售价D',
  `SalesPriceE` float DEFAULT NULL COMMENT '售价E',
  `StdPrice` float DEFAULT NULL COMMENT '标准进价',
  `CurrID` char(10) DEFAULT NULL COMMENT '使用币别',
  `ProdForm` varchar(20) DEFAULT NULL COMMENT '物料形态',
  `PriceOfTax` int(11) DEFAULT NULL COMMENT '单价是否含税',
  `BusiTaxRate` float DEFAULT NULL COMMENT '税率',
  `AdvanceDays` int(11) DEFAULT NULL COMMENT '采购提前期',
  `MajorSupplier` varchar(20) DEFAULT NULL COMMENT '主供应商',
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `m_material_oi2`;

CREATE TABLE `m_material_oi2` (
  `ProdID` varchar(20) NOT NULL COMMENT '物料编号',
  `SafeQty` int(11) DEFAULT NULL COMMENT '安全存量',
  `CSafeAllStk` int(11) DEFAULT NULL COMMENT '低于安全存量',
  `BAllAmt` int(11) DEFAULT NULL COMMENT '期初总数量',
  `CAllAmt` int(11) DEFAULT NULL COMMENT '现有总数量',
  `BAvgCost` float DEFAULT NULL COMMENT '平均成本',
  `CAvgCost` float DEFAULT NULL COMMENT '现行平均成本',
  `BStdCost` float DEFAULT NULL COMMENT '标准成本',
  `CStdCost` float DEFAULT NULL COMMENT '标准总成本',
  `BTotalCost` float DEFAULT NULL COMMENT '初期总成本',
  `CAllCost` float DEFAULT NULL COMMENT '现行总成本',
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p_main_table`;

CREATE TABLE `p_main_table` (
  `BillNo` char(20) NOT NULL COMMENT '单据编号 #流水单号日期生成',
  `CustID` varchar(10) DEFAULT NULL COMMENT '供应商ID 	#链接供应商主文件表',
  `AddrID` int(11) DEFAULT NULL COMMENT '供应商地址ID 	#链接供应商地址表',
  `BillDate` date DEFAULT NULL COMMENT '单据日期		#自动生成当前日期或选择日期',
  `WareID` int(11) DEFAULT NULL COMMENT '仓库		#链接仓库表',
  `DeparID` int(11) DEFAULT NULL COMMENT '所属部门ID		#链接部门表',
  `Maker` varchar(20) DEFAULT NULL COMMENT '制单人员		#登陆人员姓名',
  `permitter` varchar(20) DEFAULT NULL COMMENT '复核人员		#审核人员姓名',
  `SalserID` int(11) DEFAULT NULL COMMENT '采购人员ID 	#部门表中采购人员姓名',
  PRIMARY KEY (`BillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p_main_table_io`;

CREATE TABLE `p_main_table_io` (
  `ID` int(11) DEFAULT NULL COMMENT '排序列 ',
  `BillNo` char(20) DEFAULT NULL COMMENT '单据编号		#外键对应主表',
  `PridID` varchar(50) DEFAULT NULL COMMENT '物料编号	',
  `ProdName` varchar(50) DEFAULT NULL COMMENT '物料名称',
  `ProdSize` varchar(20) DEFAULT NULL COMMENT '规格型号',
  `StdUnitID` varchar(20) DEFAULT NULL COMMENT '单位编号',
  `SQuantity` int(11) DEFAULT NULL COMMENT '数量',
  `Discount` float DEFAULT NULL COMMENT '折数',
  `SPrice` float DEFAULT NULL COMMENT '单价',
  `TaxAmt` int(11) DEFAULT NULL COMMENT '税率(%) ',
  `TranType` char(20) DEFAULT NULL COMMENT '来源单别',
  `FromNo` char(20) DEFAULT NULL COMMENT '来源单号',
  `MLAppFare` float DEFAULT NULL COMMENT '分摊费用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


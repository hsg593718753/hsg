

CREATE DATABASE /*!32312 IF NOT EXISTS*/`haha` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `haha`;


DROP TABLE IF EXISTS `master_file`;

/*人员主文件表*/

CREATE TABLE `master_file` (
  `PersonID` varchar(50) NOT NULL COMMENT '人员编号',
  `DeparID` int(11) NOT NULL COMMENT '所属部门',
  `PersonName` varchar(50) NOT NULL COMMENT '人员姓名',
  `Sex` int(11) NOT NULL DEFAULT '1' COMMENT '性别(1.女 2.男)',
  `EngName` varchar(50) NOT NULL COMMENT '英文姓名',
  `IdentityNumber` varchar(50) NOT NULL COMMENT '身份证号',
  `Birthday` date DEFAULT NULL COMMENT '出生日期',
  `Polity` varchar(50) DEFAULT NULL COMMENT '政治面貌',
  `MaritalStatus` int(11) NOT NULL COMMENT '婚姻状况(1.未婚 2.已婚 3.离婚 4.丧偶)',
  `OnJobDate` date NOT NULL COMMENT '入职日期',
  `BloodType` int(11) DEFAULT NULL COMMENT '血型',
  `FormalDate` date DEFAULT NULL COMMENT '转正日期',
  PRIMARY KEY (`PersonID`)
) 




DROP TABLE IF EXISTS `sales_quotation_details`;

/*销售报价详单*/
CREATE TABLE `sales_quotation_details` (
  `SerNo` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏号',
  `ProdID` varchar(50) NOT NULL COMMENT '物料编号',
  `ProdName` varchar(50) NOT NULL COMMENT '物料名称',
  `ProdSize` varchar(50) NOT NULL COMMENT '规格型号',
  `SUnit` varchar(50) NOT NULL COMMENT '单位名称',
  `sQuantity` int(11) NOT NULL COMMENT '数量',
  `OldPrice` double NOT NULL COMMENT '折扣前单价',
  `Discount` double NOT NULL COMMENT '折数',
  `sPrice` double NOT NULL COMMENT '单价',
  `Amount` double NOT NULL COMMENT '金额',
  `TaxRate` double NOT NULL COMMENT '税率',
  `TaxAmt` double NOT NULL COMMENT '税额',
  `VFTotal` double NOT NULL COMMENT '含税金额',
  `ItemRemark` varchar(50) DEFAULT NULL COMMENT '分录备注',
  PRIMARY KEY (`SerNo`)
) 



DROP TABLE IF EXISTS `sales_quotation_master`;

/*销售报价主单*/
CREATE TABLE `sales_quotation_master` (
  `FormalCust` varchar(50) NOT NULL COMMENT '正式客户（复选框）',
  `BillDate` date NOT NULL COMMENT '单据日期',
  `BillNo` varchar(50) NOT NULL COMMENT '单据号码',
  `CustAddress` varchar(50) DEFAULT NULL COMMENT '送货地址名称',
  `ValidDate` date NOT NULL COMMENT '有效日期',
  `PriceOfTax` int(11) NOT NULL COMMENT '单价是否含税（1.含税 2.未含税）',
  `CurrName` varchar(50) NOT NULL DEFAULT '人民币' COMMENT '币别',
  `ExchRate` double NOT NULL DEFAULT '1' COMMENT '汇率',
  `SalesName` varchar(50) NOT NULL COMMENT '业务人员',
  `DepartID` int(11) NOT NULL COMMENT '所属部门',
  `Maker` varchar(50) NOT NULL COMMENT '制单人员',
  `Permitter` varchar(50) NOT NULL COMMENT '复核人员',
   PRIMARY KEY (`BillNo`)
)



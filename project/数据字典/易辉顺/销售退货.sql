-- 销售退货主单
create table SalesReturn(
	
	BillNo varchar(20) primary key not null COMMENT '单据号码',
	CustID varchar(20) not null COMMENT '客户',
	IsDeduct varchar(20) not null COMMENT '是否重新出库',
	BillDate date not null COMMENT '单据日期',
	AddrID varchar(20) not null COMMENT '送货地址',	
	PriceofTax int not null COMMENT '单价是否含税',
	WareID varchar(20) not null COMMENT '仓库',
	SalesID varchar(20) not null COMMENT '业务人员',
	Maker varchar(20) not null COMMENT '制单人员',
	Permitter varchar(20) not null COMMENT '复核人员',
	DeparID varchar(20) not null COMMENT '所属部门',
	ProjectID varchar(20) not null COMMENT '所属项目'
	
);

-- select * from SalesReturn;

--  销售退货表物料明细表
create table SalesReturn_Detailed(
	
	FromNo varchar(20) primary key not null COMMENT '来源单号',
	TranType varchar(20) not null COMMENT '来源单别',
	ProdID varchar(20) not null COMMENT '物料编号',
	ProdName varchar(20) not null COMMENT '物料名称',
	ProdSize varchar(20) COMMENT '规格型号',	
	StdUnitName varchar(20) not null COMMENT '单位名称',
	TaxRate Float COMMENT '税率',
	SQuantity int not null COMMENT '数量',
	UnitName varchar(10) not null COMMENT '单位',
	SPrice Float not null COMMENT '单价',
	Amount Float not null COMMENT '税额',
	TaxAmt Float not null COMMENT '金额'
);

-- select * from SalesReturn_Detailed;

-- 2、	部门维护
create table Department_tenance(
	
	DepartID Varchar(20) primary key not null COMMENT '部门编号',
	DepartName Varchar(20) not null COMMENT '部门名称',
	EngName Varchar(20) COMMENT '英文名称',
	Memo Varchar(20) COMMENT '备注'
);

-- select * from Department_tenance;
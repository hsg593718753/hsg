
CREATE TABLE chukuxiangbiao (
  BillNo varchar(50) NOT NULL COMMENT '单据号码',
  SerOn varchar(50) NOT NULL COMMENT '栏号',
  ProdID varchar(50) NOT NULL COMMENT '物料编号',
  ProdDesc varchar(200) NOT NULL COMMENT '产品说明',
  MajorSupplier varchar(50) NOT NULL COMMENT '主供应商',
  ProdName varchar(50) NOT NULL COMMENT '物料名称',
  ProdSize varchar(50) NOT NULL COMMENT '规格型号',
  WareId varchar(50) NOT NULL COMMENT '仓库编号',
  TranType varchar(50) NOT NULL COMMENT '来源单别',
  FromOn varchar(50) NOT NULL COMMENT '来源单号',
  DisCount double NOT NULL COMMENT '折数',
  Amount double NOT NULL COMMENT '金额',
  TaxAmt double NOT NULL COMMENT '税额',
  TaxRate double NOT NULL COMMENT '税率',
  ItemRemark varchar(200) NOT NULL COMMENT '分录备注',
  SQuantity int(11) NOT NULL COMMENT '数量',
  SPrice double NOT NULL COMMENT '单价',
  IsGift int(11) NOT NULL COMMENT '是否赠品',
  OldPrice double NOT NULL COMMENT '折扣前单价',
  AmountATax double NOT NULL COMMENT '含税金额',
  SUnit varchar(50) NOT NULL COMMENT '单位名称',
  HaveBatch int(11) NOT NULL COMMENT '批号',
  HasCombine int(11) NOT NULL COMMENT '物料组合',
  CustBillNo varchar(50) NOT NULL COMMENT '客户订单',
  PRIMARY KEY (BillNo)
) 



CREATE TABLE xiaoshouzhubiao (
  BillNo varchar(50) NOT NULL COMMENT '单据号码',
  BillDate date NOT NULL COMMENT '单据日期',
  PriceofTax int(11) NOT NULL COMMENT '单价是否含税',
  CurrencyName varchar(50) NOT NULL COMMENT '币别名称',
  CustId varchar(50) NOT NULL COMMENT '客户编号',
  WareId varchar(50) NOT NULL COMMENT '仓库编号',
  SaleClassId varchar(50) NOT NULL COMMENT '销售出库类型',
  VoucherNo varchar(50) NOT NULL COMMENT '凭证编号',
  ExchRate double NOT NULL COMMENT '汇率',
  DepartId varchar(50) NOT NULL COMMENT '所属部门编号',
  ProjectId varchar(50) NOT NULL COMMENT '所属部门编号',
  PermitterId varchar(50) NOT NULL COMMENT '复核人员编号',
  MakerId varchar(50) NOT NULL COMMENT '制单人员编号',
  SalesId varchar(50) NOT NULL COMMENT '业务人员编号',
  IdentityNumber varchar(18) NOT NULL COMMENT '身份证号码',
  Phone varchar(11) NOT NULL COMMENT '电话号码',
  Currid varchar(50) NOT NULL COMMENT '币别',
  PRIMARY KEY (BillNo)
) 
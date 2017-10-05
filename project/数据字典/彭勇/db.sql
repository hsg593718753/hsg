use erpdb;


###调拨表
create table allocationTable(

MoveNO	varchar(50) primary key not null, ###单据号码
MoveDate	Date,###单据日期
Maker	varchar(50),###制单人员
Permitter	varchar(50),###复核人员
SumQty	int,###数量合计
Remark	varchar(200),###备注
Udef1	varchar(200),###自定义栏一
UDef2	varchar(200),###自定义栏二
WareOutID	varchar(50),###调出仓库
WareOutName	varchar(50),###调出仓库
WareID	varchar(50),###调入仓库
WareName	varchar(50),###调入仓库名称
MakerSign	varchar(50),###制单人签名
PermitterSign	varchar(50) ###复核人签名
)

###调拨明细表
create table allocationDetailesTable(

DetailesNo	varchar(50),###明细编号
MoveNO	varchar(50),###调拨表编号
ProdID	varchar(50),###物料编号
PrdClassID	varchar(50),###物料类别
PrdClassName	varchar(50),###类别名称
PrdbarCodeID	varchar(50),###条形码编号
PrsEngName	varchar(50),###英文品名
PrdCurrID	varchar(50),###使用币别
PrdSuggstPrice	Double ,###建议售价
PrdSalesPriceA	Double ,###售价A
PrdSalesPriceB	Double ,###售价B
PrdSalesPriceC	Double ,###售价C
PrdSalesPriceD	Double ,###售价D
PrdSalesPriceE	Double ,###售价E
PrdStdPrice	Double ,###标准进价
PrdMajorSuppliar	varchar(50) ###主供应商
)
###调价表modifyPriceTable

create table modifyPriceTable(
BillNO	varchar(50) ,###单据号码
AdjustDate	Date,###单据日期
Maker	varchar(50),###制单人员
Permitter	varchar(50),###复核人员
SumQty	int,###库存量合计
SumCost	Int,###调价金额合计
Remark	varchar(200),###备注
Udef1	varchar(200),###自定义栏一
UDef2	varchar(200),###自定义栏二
VoucherNO	varchar(20),###凭证编号
EngName	varchar(50),###英文名称
Memo	varchar(200),###备注
IncSubjectID	varchar(50),###增值科目
IncSubjectName	varchar(50),###科目名称
DecObjetID	varchar(50),###减值科目
DecObjetName	varchar(50),###科目名称
MakerSign	varchar(50),###制单人签名
PermitterSign	varchar(50)###复核人签名
)

###调价明细表 modifyPriceDetailesTable

create table modifyPriceDetailesTable(
DetailesNo	varchar(50),###明细编号
MpNO	varchar(50),###调价编号
ProdID	varchar(50),###物料编号
PrdClassID	varchar(50),###物料类别
PrdClassName	varchar(50),###类别名称
PrdbarCodeID	varchar(50),###条形码编号
PrsEngName	varchar(50),###英文品名
PrdCurrID	varchar(50),###使用币别
PrdSuggstPrice	Double,###建议售价
PrdSalesPriceA	Double,###售价A
PrdSalesPriceB	Double,###售价B
PrdSalesPriceC	Double,###售价C
PrdSalesPriceD	Double,###售价D
PrdSalesPriceE	Double,###售价E
PrdStdPrice	Double,###标准进价
PrdMajorSuppliar	varchar(50),###主供应商
CAvgCost	Double,###平均成本
Unit	varchar(50),###单位
ProSize	varchar(50),###规格型号
ProName	Int,###物料名称
CurQty	Int,###库存量
LCostAvg	Double,###平均成本
Price	Double,###单价
Amount	Double,###调价金额
Remark	varchar(200),###备注
WhShortname	varchar(50),###简称
WhEngName	varchar(50),###英文名称
WhLinkMan	varchar(50),###联系人员
WhTelephone	varchar(50),###联系电话
WhWareHouseAddress	varchar(50)###仓库地址
)

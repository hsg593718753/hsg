#盘点单(tb_check)
create table tb_check(
	billno varchar(20) not null,	#单据号码(主键)
	AdjustDate Date not null,	#单据日期(默认当前日期)
	BillStatus int not null,	#单据状态
	WareID int not null,		#盘点仓库ID
	SalseID int ,			#盘点人员ID
	MakerID int ,			#制单人员ID
	PermitterID int ,		#复核人员ID
	SumQty int ,			#盈亏数量合计
	SumCost duoble ,		#盈亏金额合计
	SunCurQty int ,			#账面数量合计
	SunCheckQty int ,		#盘点数量合计
	Remark int ,			#盘点数量合计
	WhMemo varchar(200)		#备注
)

#盘点明细表（tb_checkDetail）
create table tb_checkDetail(
	Billno varchar(20) not null,	#单据号码
	Billline int not null,		#行号（主键）
	ProdID varchar(20) not null,	#物料编号ID
	PrdCurrID int ,			#使用币别ID
	CurQty int ,			#账面数量
	CheckQty int ,			#盘点数量
	Quantity int ,			#盈亏数量
	Amount duoble ,			#盈亏金额
	Price duoble ,			#单价
	WhMemo varchar(200),		#备注
	ItemRemark varchar(20)		#原因
)

#仓库表（tb_WareHous）
create table tb_personnel(
	WareHousID int not null,	#仓库名称（主键）
	WarehouseName varchar(20),	#仓库名称
	LinkMan varchar(20),		#联系人员
	Telephone varchar(20),		#联系电话
	WarehouseAddresss varchar(20),	#仓库地址
	WhMemo varchar(200)		#备注
)










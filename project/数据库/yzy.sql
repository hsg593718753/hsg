CREATE TABLE qinggou(
	BillStyleID     int    		/*采购请购类型*/
	BillDate	Date		/*单据日期*/
	BillStatus	int		/*单况*/
	BillNo		varchar(30)	/*单据号码*/
	SaleName	varchar(30)	/*请购人员*/
	MakerID		varchar(30)	/*制单人员*/
	DepartID	varchar(30)	/*请购部门*/
	PermitterID	varchar(30)	/*复核人员*/
)


create table qingmingxi(
	BillNo		varchar(30)	/*单据号码*/
	SerNO  		varchar(30)	/*栏号*/
	ProdClassID 	varchar(30)	/*物料编号*/
	ProdClassName	varchar(30)	/*物料名称*/
	ProdSize	varchar(30)	/*规格型号*/
	SUnit		varchar(30)	/*单位名称*/
	sQuantity	int		/*数量*/
	LastestCurrID	varchar(30)	/*币别*/
	sPrice		float		/*标准进价*/
	Amount		float		/*标准进价金额*/
	PreInDate	Date		/*需求日期*/
	ItemRemark  	varchar(300)	/*分录备注*/
	HeaderID	varchar(300) 	/*表头条文*/
	FooterID	varchar(300)	/*表尾条文*/
	FactAddFieid1	varchar(300)	/*自定义一*/
	FactAddFieid2	varchar(300)	/*自定义二*/
	FactMemo	varchar(300)	/*备注*/
)


CREATE TABLE wuliaoleibie(
	ProID  		varchar(30)	/*物料编号*/
	ClassName 	varchar(30)	/*类别名称*/
	EngName		varchar(30)	/*英文名称*/
	AcclnventoryID	varchar(30)	/*存货科目*/
	AccSaleID	varchar(30)	/*销售收入科目*/
	AccSaleCostName	varchar(30)	/*销售成本科目*/
	SendOutWareID	varchar(30)	/*发出商品科目*/
	GiftExpenseID	varchar(30)	/*赠品费用科目*/
	OtherIncomeID	varchar(30)	/*其他收入科目*/
	OtherExpenseID	varchar(30)	/*其他费用科目*/
	OtherCostName	varchar(30)	/*其他成本科目*/
	Memo  		varchar(300)	/*备注*/
) 

create table jiliang(
	sUnitID  varchar(30)    /*单位编号*/
	SUnit	 varchar(30)	/*单位名称*/	
	EngName	 varchar(30)	/*英文名称*/
	Memo     varchar(300)	/*备注*/

)


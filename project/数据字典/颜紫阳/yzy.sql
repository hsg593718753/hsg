###请购
CREATE TABLE qinggou(
	BillStyleID     int    fk		/*采购请购类型*/
	BillDate	Date		/*单据日期*/
	BillStatus	int		/*单况*/
	BillNo		varchar(30) pk	/*单据号码*/
	SaleName	varchar(30)	/*请购人员*/
	MakerID		varchar(30)	/*制单人员*/
	DepartID	varchar(30)	/*请购部门*/
	PermitterID	varchar(30)	/*复核人员*/
)

##	请 购详细表
create table qingmingxi(
	BillNo          varchar(30)	pk fk  /*栏号*/   （请购主表）
        LineNo          int             pk     标识列
	ProdID 		varchar(30) fk	/*物料编号*/   (物料主文件表)
	PrdClassID	varchar(30)	/*物料名称*/
	ProdSize	varchar(30)	/*规格型号*/
	SUnit		varchar(30)	/*单位名称*/
	sQuantity	int		/*数量*/
	LastestCurrID	varchar(30)	/*币别*/
	sPrice		float		/*标准进价*/
	Amount		float		/*标准进价金额*/
	PreInDate	Date		/*需求日期*/
	ItemRemark  	varchar(300)	/*分录备注*/


)

##物料类别
CREATE TABLE wuliaoleibie(
	ProID  		varchar(30)  pk	/*物料类别编号*/
	ClassName 	varchar(30)	/*类别名称*/
	EngName		varchar(30)	/*英文名称*/
	Memo  		varchar(300)	/*备注*/
) 
##计量
create table jiliang(
	sUnitID  varchar(30)    /*单位编号*/
	SUnit	 varchar(30)	/*单位名称*/	
	EngName	 varchar(30)	/*英文名称*/
	Memo     varchar(300)	/*备注*/

)


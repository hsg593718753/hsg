
create table advance_Main(
	FundBillID varchar(20) primary key not null,
	FundBillDate date not null,
	CustomerID varchar(20) not null,
	CashStyleId int,
	VisaStyleId int,
	OtherPayStyleId int,
	Cash double,
	Visa double,
	OtherPay double,
	AccMonthToMonth varchar(20)
);


create table advance_Detail(
	FundBillID	varchar(20)	not null,
	lineid	int	not null,
	OriginFlag	varchar(20),
	OriginFlagBillNo	varchar(20),
	AddMoney	Double,
	PrepayLeft	Double,
	Memo	varchar(50),
	primary key(FundBillID,lineid)	
);


create table receivable_Main(
	FundBillID	varchar(20) primary key  not null,
	FundBillDate	Date not null,
	CustomerID	varchar(20),
	CashStyleId	int,
	VisaStyleId	int,
	OtherPayStyleId	int,
	Cash	double,
	Visa	double,
	OtherPay	double,
	AccMonthToMonth	varchar(20),
	DiscountPer	Double

);

create table receivable_Detail(
	FundBillID	varchar(20)	not null,
	lineid	int	not null,
	OriginFlag	varchar(20)	not null,
	OriginFlagBillNo	varchar(20)	not null,
	Total	Double	,
	OffSet	double	,
	Discount	Double	,
	OffSetMoney	double	,
	primary key(FundBillID,lineid)
);


create table Useadvance(
	FundBillID	varchar(20)	not null,
	lineid	int	not null,
	OriginNo	varchar(20)	,
	BillType	varchar(20)	,
	FromOrderNo	varchar(20)	,
	UseMoney	double,
	primary key(FundBillID,lineid)
);

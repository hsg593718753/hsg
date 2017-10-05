-- �����˻�����
create table SalesReturn(
	
	BillNo varchar(20) primary key not null COMMENT '���ݺ���',
	CustID varchar(20) not null COMMENT '�ͻ�',
	IsDeduct varchar(20) not null COMMENT '�Ƿ����³���',
	BillDate date not null COMMENT '��������',
	AddrID varchar(20) not null COMMENT '�ͻ���ַ',	
	PriceofTax int not null COMMENT '�����Ƿ�˰',
	WareID varchar(20) not null COMMENT '�ֿ�',
	SalesID varchar(20) not null COMMENT 'ҵ����Ա',
	Maker varchar(20) not null COMMENT '�Ƶ���Ա',
	Permitter varchar(20) not null COMMENT '������Ա',
	DeparID varchar(20) not null COMMENT '��������',
	ProjectID varchar(20) not null COMMENT '������Ŀ'
	
);

-- select * from SalesReturn;

--  �����˻���������ϸ��
create table SalesReturn_Detailed(
	
	FromNo varchar(20) primary key not null COMMENT '��Դ����',
	TranType varchar(20) not null COMMENT '��Դ����',
	ProdID varchar(20) not null COMMENT '���ϱ��',
	ProdName varchar(20) not null COMMENT '��������',
	ProdSize varchar(20) COMMENT '����ͺ�',	
	StdUnitName varchar(20) not null COMMENT '��λ����',
	TaxRate Float COMMENT '˰��',
	SQuantity int not null COMMENT '����',
	UnitName varchar(10) not null COMMENT '��λ',
	SPrice Float not null COMMENT '����',
	Amount Float not null COMMENT '˰��',
	TaxAmt Float not null COMMENT '���'
);

-- select * from SalesReturn_Detailed;

-- 2��	����ά��
create table Department_tenance(
	
	DepartID Varchar(20) primary key not null COMMENT '���ű��',
	DepartName Varchar(20) not null COMMENT '��������',
	EngName Varchar(20) COMMENT 'Ӣ������',
	Memo Varchar(20) COMMENT '��ע'
);

-- select * from Department_tenance;
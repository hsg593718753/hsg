#�̵㵥(tb_check)
create table tb_check(
	billno varchar(20) not null,	#���ݺ���(����)
	AdjustDate Date not null,	#��������(Ĭ�ϵ�ǰ����)
	BillStatus int not null,	#����״̬
	WareID int not null,		#�̵�ֿ�ID
	SalseID int ,			#�̵���ԱID
	MakerID int ,			#�Ƶ���ԱID
	PermitterID int ,		#������ԱID
	SumQty int ,			#ӯ�������ϼ�
	SumCost duoble ,		#ӯ�����ϼ�
	SunCurQty int ,			#���������ϼ�
	SunCheckQty int ,		#�̵������ϼ�
	Remark int ,			#�̵������ϼ�
	WhMemo varchar(200)		#��ע
)

#�̵���ϸ��tb_checkDetail��
create table tb_checkDetail(
	Billno varchar(20) not null,	#���ݺ���
	Billline int not null,		#�кţ�������
	ProdID varchar(20) not null,	#���ϱ��ID
	PrdCurrID int ,			#ʹ�ñұ�ID
	CurQty int ,			#��������
	CheckQty int ,			#�̵�����
	Quantity int ,			#ӯ������
	Amount duoble ,			#ӯ�����
	Price duoble ,			#����
	WhMemo varchar(200),		#��ע
	ItemRemark varchar(20)		#ԭ��
)

#�ֿ��tb_WareHous��
create table tb_personnel(
	WareHousID int not null,	#�ֿ����ƣ�������
	WarehouseName varchar(20),	#�ֿ�����
	LinkMan varchar(20),		#��ϵ��Ա
	Telephone varchar(20),		#��ϵ�绰
	WarehouseAddresss varchar(20),	#�ֿ��ַ
	WhMemo varchar(200)		#��ע
)










package com.accp.spring.domain;

public class Detail {
	private String billno;

	public String getBillno() {
		return billno;
	}

	public void setBillno(String billno) {
		this.billno = billno;
	}

	public Integer getLineid() {
		return lineid;
	}

	public void setLineid(Integer lineid) {
		this.lineid = lineid;
	}

	private Integer lineid;

    private String goodsname;

    private Float goodsnum;

    private Float goodsprice;

    private Float goodsmoneyamt;

    private Boolean ispresent;

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname == null ? null : goodsname.trim();
    }

    public Float getGoodsnum() {
        return goodsnum;
    }

    public void setGoodsnum(Float goodsnum) {
        this.goodsnum = goodsnum;
    }

    public Float getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(Float goodsprice) {
        this.goodsprice = goodsprice;
    }

    public Float getGoodsmoneyamt() {
        return goodsmoneyamt;
    }

    public void setGoodsmoneyamt(Float goodsmoneyamt) {
        this.goodsmoneyamt = goodsmoneyamt;
    }

    public Boolean getIspresent() {
        return ispresent;
    }

    public void setIspresent(Boolean ispresent) {
        this.ispresent = ispresent;
    }
}
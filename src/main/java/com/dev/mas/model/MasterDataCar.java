package com.dev.mas.model;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document (collection="CarBooking_M0_TbDataCar")
public class MasterDataCar {
	
	@Id
	private long id;
	
	private int tcidx;
	private String tcidxDesc;
	private int tbidx;
	private String tbidxDesc;
	private String color;
	private String carli;
	private String qty;
	private int cempIDX;
	private Date createDate;
	private int adEmpIDX;
	private Date updateDate;
	private int tcStatus;
	private String tcStatusDesc;
	
	

public long getId() {
		return id;
	}



	public void setId(long id) {
		this.id = id;
	}



	public String getColor() {
		return color;
	}



	public void setColor(String color) {
		this.color = color;
	}



	public String getCarli() {
		return carli;
	}



	public void setCarli(String carli) {
		this.carli = carli;
	}



	public String getQty() {
		return qty;
	}



	public void setQty(String qty) {
		this.qty = qty;
	}





	public int getTcidx() {
		return tcidx;
	}



	public void setTcidx(int tcidx) {
		this.tcidx = tcidx;
	}



	public String getTcidxDesc() {
		return tcidxDesc;
	}



	public void setTcidxDesc(String tcidxDesc) {
		this.tcidxDesc = tcidxDesc;
	}



	


	public int getTbidx() {
		return tbidx;
	}



	public void setTbidx(int tbidx) {
		this.tbidx = tbidx;
	}



	public String getTbidxDesc() {
		return tbidxDesc;
	}



	public void setTbidxDesc(String tbidxDesc) {
		this.tbidxDesc = tbidxDesc;
	}

	public int getCempIDX() {
		return cempIDX;
	}



	public void setCempIDX(int cempIDX) {
		this.cempIDX = cempIDX;
	}



	public Date getCreateDate() {
		return createDate;
	}



	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}



	public int getAdEmpIDX() {
		return adEmpIDX;
	}



	public void setAdEmpIDX(int adEmpIDX) {
		this.adEmpIDX = adEmpIDX;
	}



	public Date getUpdateDate() {
		return updateDate;
	}



	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}



	public int getTcStatus() {
		return tcStatus;
	}



	public void setTcStatus(int tcStatus) {
		this.tcStatus = tcStatus;
	}



	public String getTcStatusDesc() {
		return tcStatusDesc;
	}



	public void setTcStatusDesc(String tcStatusDesc) {
		this.tcStatusDesc = tcStatusDesc;
	}



@Override
public String toString() {
	return "MasterDataCar [id=" + id + ", Tcidx=" +tcidx + ",Tbidx=" + tbidx + ", Color=" +color + ",Carli=" + carli +", Qty=" +qty + ", CempIDX=" + cempIDX + ", CreateDate=" + createDate + ", AdEmpIDX=" + adEmpIDX + ", UpdateDate=" + updateDate + ", TcStatus=" + tcStatus + "]";
}

//MasterTypeCar
private MasterTypeCar mastertypecar;

public MasterTypeCar getMastertypecar() {
	return mastertypecar;
}

public void setMastertypecar(MasterTypeCar mastertypecar) {
	this.mastertypecar = mastertypecar;
}


//MasterBrand
private MasterBrand masterbrand;

public MasterBrand getMasterbrand() {
	return masterbrand;
}

public void setMasterbrand(MasterBrand masterbrand) {
	this.masterbrand = masterbrand;
}



}

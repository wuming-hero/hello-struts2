package com.wuming.pojo;

//Pic的bean对象
public class Pic {
	private int picId;
	private String picName;
	private String fileName;
	
	//无参构造函数
	public Pic() {
		
	}
	//有参构造函数
	public Pic(int picId, String picName, String fileName) {
		super();
		this.picId = picId;
		this.picName = picName;
		this.fileName = fileName;
	}
	
	public int getPicId() {
		return picId;
	}
	public void setPicId(int picId) {
		this.picId = picId;
	}
	public String getPicName() {
		return picName;
	}
	public void setPicName(String picName) {
		this.picName = picName;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	

}

package com.wuming.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wuming.pojo.Pic;
import com.wuming.service.PicService;

import java.util.List;

public class PicListAction extends ActionSupport{
	
	private List<Pic> pics;

	public List<Pic> getPics() {
		return pics;
	}

	public void setPics(List<Pic> pics) {
		this.pics = pics;
	}
	
	public String execute(){
		PicService ps = new PicService();
		setPics(ps.getAllPic());
		return SUCCESS;
	}
}

package com.wuming.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wuming.service.BookService;

import java.util.List;

public class CatesListAction extends ActionSupport {


	
	private List<String> cates;
	
    public CatesListAction(){
        System.out.println("cateList action---------------------");
    }
	public String execute() {
		BookService bs = new BookService();
		this.setCates(bs.getAllCategories());
		return SUCCESS;
	}

    public List<String> getCates() {
        return cates;
    }
    public void setCates(List<String> cates) {
        this.cates = cates;
    }
}

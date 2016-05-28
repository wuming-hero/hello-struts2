package com.wuming.action;

import com.opensymphony.xwork2.Action;
import com.wuming.pojo.User;
import com.wuming.service.UserService;

import java.util.List;

public class ViewUsersAction implements Action {

	private List<User>  users;
	
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	
	@Override
	public String execute() throws Exception {
		UserService us = new UserService();
		setUsers(us.getAllUsers());
		return SUCCESS;
	}

}

package com.wuming.pojo;

import java.util.Date;

public class User {
	
	private Integer id;
	private String name;
	private String pwd;
	private double weight;
	private Date birthday;
	
	//增加构造器
	public User(){}
	public User(Integer id, String name, String pwd, double weight,Date birthday) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.weight = weight;
		this.birthday = birthday;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

    @Override
    public String toString() {
        return "User{" +
                "birthday=" + birthday +
                ", id=" + id +
                ", name='" + name + '\'' +
                ", pwd='" + pwd + '\'' +
                ", weight=" + weight +
                '}';
    }
}

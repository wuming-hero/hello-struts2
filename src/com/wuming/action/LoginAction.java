package com.wuming.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.wuming.pojo.User;
import com.wuming.service.UserService;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Action类要满足以下3个要求：
 * 1,实现Action接口,或继承ActionSupport
 * 2,为请求参数提供field,并提供setter和getter方法
 * 3,有无参构造器
 *
 * @author wuming
 */

public class LoginAction extends ActionSupport {
    //一个类,若没有为其写构造器，则其默认有一个无参构造器
    //可以通过user自动来访问请求参数
    private User user;

    private String name;
    private String pwd;
    private String tip;

    public LoginAction() {
        System.out.println("login action--------------------------");
    }

    @Override
    public String execute() throws Exception {
        // TODO Auto-generated method stub
        UserService us = new UserService();
        Integer id = us.validateLogin(user);

        if (id > 0) {
            //得到HttpSession方法一--伪访问法:借住于ActionContext
            ActionContext actCon = ActionContext.getContext();
            Map<String, Object> session = actCon.getSession();
            //表面向Map存放key-value,实际存放到HttpSession中
            session.put("userId", id);

            //方法二:真访问,借住于ServletActionContext
            //由于Cookie必须使用HttpServletResponse,
            HttpServletResponse response = ServletActionContext.getResponse();
            HttpServletRequest request = ServletActionContext.getRequest();
            //如果名字是中文的话,能打印出"小明",但会报500错误
            Cookie cookie = new Cookie("userName", user.getName());
            cookie.setMaxAge(100000);
            //添加Cookie
            response.addCookie(cookie);
            return SUCCESS;        //SUCCESS是常量名,它真实的值是"success"
        }
        return ERROR;
    }

    public String regist() {
        UserService us = new UserService();
        us.addUser(user);
        return "userList";
    }

    public String login() {
        if (name.equals("wuming") && (pwd.equals("123456"))) {
//			setTip("欢迎您" + name + "登录成功！");
            //Action的国际化：把以该Action的名字作为基名的国际化资源文件放在该Action的同一目录下，则Action运行时会自动加载国际化资源！
            //getText()是ActionSupport的方法，专门用于加载国际化资源。
            //getText()的数组参数用于为国际化消息中的多个点位符传入参数值。
            this.tip = getText("tipCN", new String[]{name});
            System.out.println(this.tip);
            setTip(this.tip);
        }
        return "I18n_success";
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }
}

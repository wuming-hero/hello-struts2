package com.wuming.service;

import com.wuming.pojo.User;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;


public class UserService {

    static List<User> userDb;

    static {
        userDb = new ArrayList<>();
        userDb.add(new User(1, "小明", "123456", 65.6, new Date()));
        userDb.add(new User(2, "ypp", "123456", 65.0, new Date()));

    }

    public Integer validateLogin(User user) {
        for (User u : userDb) {
            if (u.equals(user)) {
                return u.getId();
            }
        }
        //如果循环结束没找到,返回-1
        return -1;
    }

    public void addUser(User user) {
        user.setId(new Random().nextInt(999999));
        userDb.add(user);
    }

    public List<User> getAllUsers() {
        // TODO Auto-generated method stub
        //返回系统中所有的用户
        return userDb;

    }

}

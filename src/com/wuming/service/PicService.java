package com.wuming.service;


import com.wuming.pojo.Pic;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class PicService {
    //模拟数据库
    static List<Pic> picDb = new ArrayList<Pic>();

    public void addPic(String picName, String newFileName) {
        picDb.add(new Pic(new Random().nextInt(999999), picName, newFileName));

    }

    public List<Pic> getAllPic() {

        return picDb;
    }

}

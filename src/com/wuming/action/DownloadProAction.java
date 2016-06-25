package com.wuming.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class DownloadProAction extends ActionSupport {
    private static final long serialVersionUID = 1L;

    private String res;        //资源的名字
    private String resName;    //下载时指定的文件名
    private String resType; //资源的类型

    //该方法代表了文件下载的入口，它是客户下载文件的输入流。
    public InputStream getResource() throws IOException {
        // ServletActionContext.getServletContext().getRealPath("/") 获得服务器WebContent目录
        String resPath = ServletActionContext.getServletContext().getRealPath("/") + res;
        System.out.println("------------resPath: " + resPath);
        FileInputStream file = new FileInputStream(resPath);
        //返回资源文件对应的输入流
        return file;
    }

    public String getRes() {
        return res;
    }

    public void setRes(String res) {
        this.res = res;
    }

    public String getResName() {
        return resName;
    }

    //如果想指定下载后的名字也可以为中文的话,这里也要处理下
    public void setResName(String resName) {
        this.resName = resName;
    }

    public String getResType() {
        return resType;
    }

    public void setResType(String resType) {
        this.resType = resType;
    }
}

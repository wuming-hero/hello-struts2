package com.wuming.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wuming.service.PicService;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.UUID;

public class UploadPicProAction extends ActionSupport {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String picName;            //填写的文件名
    //每个文件上传域需要3个Field封装
    private File pic;                //上传的文件
    private String picFileName;        //上传文件的原始文件名
    private String picContentType;    //上传文件的类型

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    public File getPic() {
        return pic;
    }

    public void setPic(File pic) {
        this.pic = pic;
    }

    public String getPicFileName() {
        return picFileName;
    }

    public void setPicFileName(String picFileName) {
        this.picFileName = picFileName;
    }

    public String getPicContentType() {
        return picContentType;
    }

    public void setPicContentType(String picContentType) {
        this.picContentType = picContentType;
    }

    public String execute() throws Exception {

        //文件重新命名：随机生成文件名
        String newFileName = UUID.randomUUID().toString() + picFileName.substring(picFileName.lastIndexOf("."));
        //此处的pic就是文件本身，只要将其写到上传的目录即可完成文件上传
        FileInputStream fis = new FileInputStream(pic);
        // 获得上传到服务器上的路径
        String uploadPath = ServletActionContext.getServletContext().getRealPath("/image/" + newFileName);
        System.out.println("-----------------uploadPath: " + uploadPath);

        FileOutputStream fos = new FileOutputStream(uploadPath);
        byte[] buff = new byte[1024];
        int hasRead = 0;
        while ((hasRead = fis.read(buff)) > 0) {
            fos.write(buff, 0, hasRead);
        }
        fis.close();
        fos.close();
        //上传成功后，将文件记录到数据库
        PicService ps = new PicService();
        ps.addPic(picName, newFileName);
        return SUCCESS;

    }

}

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>

    <body>
        <s:select list="pics"
                  listKey="fileName"
                  listValue="picName"
                  label="选择图片"
                  size="5"
                  cssStyle="width:200px"
                  onchange="document.getElementById('show').src='../../image/'+this.value"
        />
        <br>
        <br>

        <img id="show" alt="图片" src="">

    </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>下载页面</title>
    </head>

    <body>
        <a href="${pageContext.request.contextPath}/down?res=周报.doc&resName=file1.doc&resType=application/msword">Content目录下文件下载</a>
        <a href="${pageContext.request.contextPath}/down?res=WEB-INF/resource/周报.doc&resName=file2.doc&resType=application/msword">WEB-INF目录下文件下载</a>
    </body>
</html>
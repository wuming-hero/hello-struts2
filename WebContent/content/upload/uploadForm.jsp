<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>图片上传</title>
</head>
<body>

<s:form action="uploadPicProAction" enctype="multipart/form-data">
	<s:textfield name="picName" label="图片名" ></s:textfield>
	<s:file name="pic" label="选择图片"></s:file>
	<s:submit value="上传"></s:submit>
</s:form>
</body>
</html>
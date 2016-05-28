<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功！</title>
</head>
<body>
恭喜 ${sessionScope.userId}成功登录！！<br/>
<!--超链接推荐使用绝对路径,获取当前的绝对路径:{pageContext.request.contextPath} -->
<a href="${pageContext.request.contextPath}/viewUsers">查询所有用户</a>
</body>
</html>
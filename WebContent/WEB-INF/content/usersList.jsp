<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 这里引入的是struts2的标签库,用法和jsp标签大同小异 -->
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>用户列表</title>
    </head>

    <body>
        <table width="600" border="1">
            <th>用户ID</th>
            <th>用户名</th>
            <th>密码</th>
            <th>体重</th>
            <th>生日</th>
            <s:iterator value="users" var="user">
            <tr>
            <td>${user.id }</td>
            <td>${user.name}</td>
            <td>${user.pwd}</td>
            <td>${user.weight}</td>
            <td>${user.birthday}</td>
            </tr>
            </s:iterator>
        </table>
    </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>合并集合之append</title>
    </head>

    <body>
        <!-- append:将参数中的两个字符串合并（参数2接在参数1后面），生成名为newList的字符串 -->
        <s:append var="newList">
            <s:param value="{'张三','李四','王五'}"></s:param>
            <s:param value="{'小明','小红'}"></s:param>
        </s:append>

        <ul>
            <s:iterator value="#newList" var="item">
                <li>${item }</li>
            </s:iterator>
        </ul>
    </body>
</html>
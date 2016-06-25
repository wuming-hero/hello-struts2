<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>合并集合之merge</title>
    </head>

    <body>
        <!-- merge:将多个列表合并在一起，合并规则为：第一个列表的第1个，第二个列表的第1个；第一个列表的第2个，第二个列表的第2个.. -->
        <s:merge var="newList">
            <s:param value="{'张三','李四','王五'}"></s:param>
            <s:param value="{'小明','小红'}"></s:param>
        </s:merge>

        <ul>
            <s:iterator value="#newList" var="item">
                <li>${item }</li>
            </s:iterator>
        </ul>
    </body>
</html>
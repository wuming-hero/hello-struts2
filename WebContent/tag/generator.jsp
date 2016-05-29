<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>分割出新集合</title>
    </head>

    <body>
        <s:generator separator=":" val="'abc:xyz:123:456'" var="newList"></s:generator>
        <ul>
            <s:iterator value="#newList" var="item">
                <li>${item }</li>
            </s:iterator>
        </ul>
    </body>
</html>
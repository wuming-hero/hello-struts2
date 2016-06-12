<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>截取子集合</title>
    </head>

    <body>
        <s:subset var="newList" source="{'a','b','c','d','e','f'}" start="2" count="2"></s:subset>

        <ul>
            <s:iterator value="#attr.newList" var="item">
                <li>${item }</li>
            </s:iterator>
        </ul>
    </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>对集合元素进行排序</title>
    </head>

    <body>
        <s:bean name="com.wuming.util.NameComparator" var="nc"></s:bean>

        <s:sort comparator="#nc" var="newList" source="{'Java','JavaSE','Android'}"></s:sort>
        <s:debug></s:debug>
        <ul>
            <s:iterator value="#attr.newList" var="item">
                <li>${item }</li>
            </s:iterator>
        </ul>
    </body>
</html>
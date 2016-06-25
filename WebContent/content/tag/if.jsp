<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>s:if标签</title>
    </head>

    <body>
        <!-- scope属性默认是action，意味着将该值放入request范围和stack Context中 -->
        <s:set var="age" value="22"></s:set>

        <s:debug/>

        <s:if test="#age>60">老年人</s:if>
        <s:elseif test="#age>40">中年人</s:elseif>
        <s:elseif test="#age>20">青年人</s:elseif>
        <s:else>少年</s:else>
    </body>
</html>
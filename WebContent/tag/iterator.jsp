<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>iterator标签</title>
    </head>

    <body>
        <ul>
        <s:iterator value="{'张三','李四','王五','小明'}" var="name">
            <li>${name}</li>
        </s:iterator>
        </ul>

        <ul>
        <!-- 用begin和end指定从具体位置开始迭代，并且包括起始位置和结尾数据 -->
        <s:iterator value="{'张三','李四','王五','小明'}" var="name" begin="1" end="2" status="st">
            <li <s:if test="#st.odd">style="background-color:red"</s:if>>${name }</li>
        </s:iterator>
        </ul>

        <!--跌代map -->
        <table width="400" border="1">
                <tr>
                    <th>商品</th>
                    <th>价格</th>
                </tr>
            <s:iterator value="#{'黄瓜': 10.0,'苹果': 8.0,'地瓜': 3.0 }" var="entry">
                <tr>
                    <td>${entry.key}</td>
                    <td>${entry.value}</td>

                </tr>
            </s:iterator>
        </table>

    </body>
</html>
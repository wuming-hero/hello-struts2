<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 国际化资源文件作用于整个国际化标签里,所以把此标签放在<html></html>标签外面，则国际化文件作用于整个页面 -->
<!-- name写国际化资源文件baseName的值,此国际化资源文件放在src目录下 -->
<s:i18n name="resources/login">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="title"/></title>
    </head>

    <body>
    <!-- struts2标签定义from表单
        1.更方便：不用写form的提交方法，因为默认值为post。
        2.自动支持两列布局。
        3.自动输出类型转换失败、输入校验失败的错误提示信息。
    -->
        <%-- <s:form action="loginPro">
            <s:textfield name="text" label="用户名"/>
            <s:password name="password" label="密码"/>
            <s:submit value="登录"/>
        </s:form> --%>

    <s:form action="login_login">
        <s:textfield name="name" key="userName"/>
        <s:password name="pwd" key="userPwd"/>
        <s:submit key="login" value="登录"/>
    </s:form>

    </body>
</html>
</s:i18n>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<s:i18n name="resources/selectLanguage">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>用户选择语言</title>
    </head>

    <body>
        <!-- bean标签的作用就是根据类名创建一个实例,并为实例起个名字 -->
        <s:bean var="language" name="com.wuming.action.Locales"></s:bean>
        <!-- 提交给当前页面 -->
        <s:form>
            <!-- select标签会自动生成一个下拉列表框,每个key-value生成一个optoin-->
            ${request_locale}
            <s:select id="locale" list="#language.locales"
                      listKey="value"
                      listValue="key"
                      key="selectLanguage"
                      name="request_locale"
                      onchange="this.form.submit()"
            />
        </s:form>
    </body>

    <script type="text/javascript">
        document.getElementById("locale").value = "${param.request_locale}";
    </script>

</html>
</s:i18n>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>用户注册</title>
    </head>

    <body>
        <form action="login_regist" method="post">
            用户名:<input type="text" name="user.name"/><br>
            密码:<input type="text" name="user.pwd"/><br>
            体重:<input type="text" name="user.weight"/><br>
            生日:<input type="text" name="user.birthday"/><br>
            <input type="submit" value="注册"/>
        </form>
    </body>
</html>
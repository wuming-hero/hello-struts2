<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
${data }

<html>

    <head>
        <title>json 测试</title>

    </head>

    <body>



        <script src="../js/jquery-1.7.1.min.js"></script>
        <script>
            $(function () {
                // 1 借助struts2 json 扩展
                $.post('/testByAction', {}, function (data) {
                    console.log('typeof data:' + typeof data + '----' + JSON.stringify(data));
                });

                // 不设置返回头部 直接返回json字符串
                $.post('/json/doAction', {}, function (data) {
                    console.log('typeof data:' + typeof data + '----' + data );
                    if(typeof data == 'string'){
                        data = JSON.parse(data);
                        console.log(data.success + '====');
                    }
                });

                // 设置返回头部为"application/json"
                $.post('/json/renderJson', {}, function (data) {
                    console.log('----typeof data: ' + typeof data + '-----' + JSON.stringify(data));
                });
            })
        </script>
    </body>

</html>

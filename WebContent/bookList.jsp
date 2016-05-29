<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>列出图书----${pageContext.request.contextPath}=====</title>
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript">
			function getBooks(ele) {
				//jquery提供的像服务器发送异步请求的post方法.
                console.log(JSON.stringify($(ele).serializeArray()));
				$.post("getBooks", $(ele).serializeArray(), function(data) {
					$("#show").empty();
					for (var i = 0; i < data.books.length; i++) {
						$("#show").append(
								"<tr><td>" + data.books[i].bookId + "</td><td>"
										+ data.books[i].bookName + "</td><td>"
										+ data.books[i].author + "</td><td>"
										+ data.books[i].price + "</td></tr>");
					}
		
				});
			}
		</script>
	</head>
	
	<body>
		<s:action var="catesList" name="catesList" namespace="/"/>

		请选择图书:
		<s:select list="#catesList.cates" name="category" onchange="getBooks(this);">

		</s:select>
		<table width="500" border="1">
			<tr>
				<th>图书Id</th>
				<th>书名</th>
				<th>作者</th>
				<th>价格</th>
			</tr>
			<tbody id="show"></tbody>
		</table>
	</body>
</html>
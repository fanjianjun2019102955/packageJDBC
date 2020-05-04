<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>
	<%= request.getAttribute("statu") %><br>
	欢迎您：<%= request.getParameter("username") %>！
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cn.nenu.entity.*"%>
<%@ page import="java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style type="text/css">
.pageClass {
	margin-top: 10px;
}

.pageClass a {
	color: #02bafa;
	text-decoration: none;
	height: 25px;
	line-height: 25px;
	padding: 6px 11px;
	border: 1px solid lightgray;
	background-color: white;
	font-size: 14px;
	outline: none;
	background-color: white;
}

.pageClass a:hover {
	color: white;
	text-decoration: none;
	height: 25px;
	line-height: 25px;
	padding: 6px 11px;
	background-color: #02bafa;
	border: 1px solid #02bafa;
	font-size: 14px;
	outline: none;
	font-size: 14px;
}

.addDiv {
	width: 320px;
	padding: 15px;
	border: 1px solid black;
}

.inputClass {
	width: 240px;
	height: 25px;
	font-size: 15px;
}

.submitButton {
	margin-top: 10px;
	width: 310px;
	height: 35px;
	border: 0px;
}

.submitButton:hover {
	margin-top: 10px;
	width: 310px;
	height: 35px;
	border: 0px;
	background-color: #02BAFA;
	color: white;
}

.tableClass {
	width: 400px; border : 1px solid black;
	padding: 15px;
	border: 1px solid black;
}

.imagetable {
	width: 400px;
	font-size: 13px;
	border: 1px solid #999999;
	border-collapse: collapse;
}

.imagetable th {
	background: #02BAFA;
	border: 1px solid #999999;
	padding: 8px;
	color: white;
}

.imagetable td {
	background: white;
	border: 1px solid #999999;
	padding: 8px;
}

.deleteButton {
	width: 10px;
	height: 10px;
	text-decoration: none;
	color: red;
	font-size: 17px;
}
</style>
</head>
<body>
	<center>

		<div class="addDiv">
			<form action="addController" method="post">
				<table>
					<tr>
						<td>学号：</td>
						<td><input class="inputClass" type="text" name="userID">

						</td>
					</tr>
					<tr>
						<td>用户名：</td>
						<td><input class="inputClass" type="text" name="username"></td>
					</tr>
					<tr>
						<td>密码：</td>
						<td><input class="inputClass" type="password" name="password"></td>
					</tr>
					<tr>
						<td>性别：</td>
						<td><input type="radio" name="sex" value="0">男 <input
							type="radio" name="sex" value="1">女<br></td>
					</tr>
					<tr>
						<td colspan="2"><input class="submitButton" type="submit"
							value="确认添加"></td>
					</tr>
				</table>
			</form>
		</div>

		<div class="tableClass">

			<table class="imagetable">
				<tr>
					<th>序号</th>
					<th>学号</th>
					<th>用户名</th>
					<th>密码</th>
					<th>性别</th>
					<th>操作</th>
				</tr>
				<%
					List<Doctor> li = (List<Doctor>) request.getAttribute("doctorList");
					int pageNum = (Integer) request.getAttribute("pageNum");
					int currentPage = (Integer) request.getAttribute("currentPage");
					int prePage = (Integer) request.getAttribute("prePage");
					int nextPage = (Integer) request.getAttribute("nextPage");
					int everyPageNum = (Integer) request.getAttribute("everyPageNum");
					int startNum = (currentPage - 1) * everyPageNum;
					for (int index = 0; index < li.size(); index++) {
				%>

				<tr>
					<td><%=startNum + index + 1%></td>
					<td><%=li.get(index).getUserID()%></td>
					<td><%=li.get(index).getUsername()%></td>
					<td><%=li.get(index).getPassword()%></td>
					<td>
						<%
							if (li.get(index).getSex() == 1) {
									out.print("女");
								} else {
									out.print("男");
								}
						%>

					</td>
					<td><a class="deleteButton"
						href="deleteController?userID=<%=li.get(index).getUserID()%>">×</a></td>
				</tr>


				<%
					}
				%>
			</table>

		</div>

		<div class="pageClass">
			<input type="hidden" id="currentPage" value="<%=currentPage%>">
			<a href="pageController?currentPage=1">首页</a> <a
				href="pageController?currentPage=<%=prePage%>">上一页</a>

			<%
				if (currentPage < 5) {
					for (int i = 1; i <= 9; i++) {
			%>
			<a id="pageBut<%=i%>" href="pageController?currentPage=<%=i%>"><%=i%></a>
			<%
				}
				} else if (currentPage > pageNum - 4) {
					for (int i = pageNum - 8; i <= pageNum; i++) {
			%>
			<a id="pageBut<%=i%>" href="pageController?currentPage=<%=i%>"><%=i%></a>
			<%
				}
				} else {
					for (int i = currentPage - 4; i <= currentPage + 4; i++) {
			%>
			<a id="pageBut<%=i%>" href="pageController?currentPage=<%=i%>"><%=i%></a>
			<%
				}
				}
			%>
			<a href="pageController?currentPage=<%=nextPage%>">下一页</a> <a
				href="pageController?currentPage=<%=pageNum%>">尾页</a>
		</div>
		<script type="text/javascript">
			var currentPage = document.getElementById("currentPage").value;
			document.getElementById('pageBut' + currentPage).style.backgroundColor = "#02BAFA";
			document.getElementById('pageBut' + currentPage).style.border = "1px solid #02BAFA";
			document.getElementById('pageBut' + currentPage).style.color = "white";
		</script>

	</center>
</body>
</html>
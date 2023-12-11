<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 출력하기</title>
</head>
<body>
	<%
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB tabel select
		String querySelect = "select * from `bookmark` ORDER BY `id` DESC";
		ResultSet rs = ms.select(querySelect);
	%>
	<h1>사이트 목록</h1>
	
	<table border="1">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		<tbody>
		<%
			while (rs.next()) {
		%>
			<tr>
				<td><%= rs.getString("name") %></td>
				<td><a href="<%=rs.getString("url") %>"><%= rs.getString("url") %></a></td>
				<td><a href="/lesson04/quiz02_delete?id=<%= rs.getInt("id") %>">삭제</a></td>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
		<%
			ms.disconnect();
		%>
</body>
</html>
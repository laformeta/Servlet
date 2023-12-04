<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
	<%
	String type = request.getParameter("type");
	Date now = new Date();
	SimpleDateFormat sdf;

	if (type.equals("time")) {
		// 시간 출력
		sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
	} else {
		// 날짜 출력
		sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일 입니다.");
	}
	String result = sdf.format(now);
	%>
	result = sdf.format(now);
	<!-- <h2>/out.print(result);</h2> -->
	<div class="container">
		<div class="display-3"><%=result %></div>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- 주석 -->
	<%-- JSP 주석 --%>
<%
	// 자바 문법 시작
	// scriptlet
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
%>

	<b>합계:</b>
	<input type="text" value="<%= sum%>">
	
<%!
	// 선언문 - 클래스 같은 느낌
	private int num = 100;

	public String getHelloWorld() {
		return "Hello World";
	}
%>

<%= getHelloWorld() %><br>
</body>
</html>
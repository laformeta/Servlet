<%@page import="java.util.Scanner"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 값</title>
</head>
<body>
<%!
	public int getSum(int a) {
	int sum = 0;
	
	for (int i = 1; i <= a; i++) {
		sum += i;
	}
	return sum;
}
%>
<h1><%= getSum(100) %></h1>


<%
int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++){
		sum += scores[i];
	}
	double average = (double)(sum) / scores.length;
%>
<h1><%=average %></h1>

<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	for (int i = 0; i<scoreList.size(); i++) {
		if (scoreList.get(i).equals("O")) {
			score += 100 / scoreList.size();
		}
	}
%>
<h1><%=score %>점 입니다.</h1>

<%
	String birthDay = "20010820";
	String yearStr = birthDay.substring(0, 4);
	int age = 2023 - Integer.parseInt(yearStr);
%>
<h1><%= age%>세</h1>

	
</body>
</html>
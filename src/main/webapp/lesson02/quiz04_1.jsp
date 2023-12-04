<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환 결과</title>

</head>
<body>
	<%
		String[] unitArr = request.getParameterValues("unit");
		double cm = Integer.parseInt(request.getParameter("cm"));
		double in = cm / 2.54;
		double yd = cm / 91.44;
		double ft = cm / 30.48;
		double m = cm / 100.0;
	%>
	
	<h1>길이 변환 결과</h1>
	<b>24cm</b>
	<hr>
	<% 
    for (String unit : unitArr) {
        if (unit.equals("인치")) {
            out.println("<p>" + in + " 인치</p>");
        }
        if (unit.equals("야드")) {
            out.println("<p>" + yd + " 야드</p>");
        }
        if (unit.equals("피트")) {
            out.println("<p>" + ft + " 피트</p>");
        }
        if (unit.equals("미터")) {
            out.println("<p>" + m + " 미터</p>");
        }
    }
	%>
	
</body>
</html>
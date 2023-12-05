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
		int cm = Integer.parseInt(request.getParameter("cm"));
		double in = cm / 2.54;
		double yd = cm / 91.44;
		double ft = cm / 30.48;
		double m = cm / 100.0;
	%>
	<div class="container">
	<h1>길이 변환 결과</h1>
	<h3><%= cm %>cm</h3>
	<hr>
	<h2>
	<% 
    for (String unit : unitArr) {
        if (unit.equals("인치")) {
            out.print(in + "in<br>");
        } else if (unit.equals("야드")) {
            out.print(yd + "yd<br>");
        } else if (unit.equals("피트")) {
            out.print(ft + "ft<br>");
        } else if (unit.equals("미터")) {
            out.print(m + "m<br>");
        }
    }
	%>
	</h2>
	</div>
</body>
</html>
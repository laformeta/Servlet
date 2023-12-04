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
		
		if (unitArr.equals("인치")) {
			
		}
	%>
</body>
</html>
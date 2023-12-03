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
        // 현재 시간을 가져오기
        Date currentTime = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("HH시 mm분 ss초");
        String formattedTime = dateFormat.format(currentTime);
    %>
   <h2>현재시간은 <%= formattedTime %> 입니다.</h2>
</body>
</html>
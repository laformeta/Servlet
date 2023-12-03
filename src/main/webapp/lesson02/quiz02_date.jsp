<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 날짜</title>
</head>
<body>

    <%
        // 현재 날짜를 가져오기
        Date today = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY년 M월 d일");
        String formattedDay = dateFormat.format(today);
    %>
    
    <h2>오늘의 날짜는 <%= formattedDay %> 입니다.</h2>
</body>
</html>
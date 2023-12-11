<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
</head>
<body>
	<h1>즐겨찾기 추가</h1>
	<form method="post" action="/lesson04/quiz02_insert">
		<p>
			<b>사이트명:</b><br>
			<input type="text" name="siteName">
		</p>
		<p>
			<b>사이트 주소:</b><br>
			<input type="text" name="address">
		</p>
		
		<input type="submit" value="추가">
	</form>
</body>
</html>
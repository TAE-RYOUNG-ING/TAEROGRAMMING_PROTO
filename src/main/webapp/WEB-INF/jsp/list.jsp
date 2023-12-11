<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.center {
	text-align: center;
}
.btn {
	text-align: right;
}
.inline{
	display: inline-block;
}

</style>
</head>
<body>

<div class="center">
	<div class="inline">
	
		<h1 class="center">센텀시티 맛집 리스트</h1> 
		
		<div class="btn">
			<input type="button" value="　등록　" onclick="location.href='/regist';">
		</div>
		<br>
	
		<table border="1">
			<tr>
				<th>　no　</th>
				<th>　가게명　</th>
				<th>　주소　</th>
				<th>　x 좌표　</th>
				<th>　y 좌표　</th>
			</tr>
			
			<c:forEach var="list" items="${exList }">
			<tr>
				<td>${list.num }</td>
				<td><a href="/info?num=${list.num}">${list.title }</a></td>
				<td>${list.addr }</td>
				<td>${list.xxx }</td>
				<td>${list.yyy }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	
	<!-- 페이징 처리 -->
	<a href="#">[1]</a>
	<a href="#">[2]</a>
	<a href="#">[3]</a>

</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
    height: 100;
    background-image: url('img/img4.jpg');
    background-repeat : no-repeat;
    background-size : cover;
}
.card-body {
	margin-left:30%;
	margin-top:10%;
	background-color: #ffff80;
	width:20%;
	border-spacing:30px;
}
</style>
<meta charset="UTF-8">
<title>CRUD</title>
</head>
<body>
	<table class="card-body">
		<tr>
			<td colspan="2"><h2>메뉴 들어가기</h2><hr></td>
		</tr>
		<tr>
			<td></td><td><a href="insert.do">회원가입하기</a></td>
		</tr>
		<tr>
			<td></td><td><a href="update.do">회원정보수정하기</a></td>
		</tr>
		<tr>
			<td></td><td><a href="selectAll.do">회원전체보기</a></td>
		</tr>
		<tr>
			<td></td><td><a href="delete.do">회원삭제하기</a></td>
		</tr>
		<tr align="right">
			<td colspan="2">
				<input type="button" value="로그인하기" onclick="javascript:window.location='login.jsp'">
				<input type="button" value="취소">
			</td>
		</tr>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>LOGIN</title>
</head>
<body>
<form action="loginOk.jsp" method="POST">
	<table class="card-body">
		<tr>
			<td colspan="2"><h2>LOGIN</h2><hr></td>
		</tr>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" value="<% if(session.getAttribute("id") != null) out.println(session.getAttribute("id"));	%>"></td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input type="password" name="pw"><br/></td>
		</tr>
		<tr align="right">
			<td colspan="2">
				<input type="submit" value="로그인">&nbsp;&nbsp;
				<input type = "button" value="회원가입" onclick="javascript:window.location='join.jsp'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
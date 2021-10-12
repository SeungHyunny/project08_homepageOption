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
<title>JOIN</title>
</head>
<body>
<script language="JavaScript" src="members.js"></script>
	<form action="joinOk.jsp" method="POST" name="reg_frm">
		<table class="card-body">
			<tr>
				<td colspan="2"><h2>회원가입</h2><hr></td>
			</tr>
			<tr>
				<td>ID</td><td><input type="text" name="id" size="20"></td>
			</tr>
			<tr>
				<td>PW</td><td><input type="password" name="pw" size="20"></td>
			</tr>
			<tr>
				<td>PWCHECK</td><td><input type="password" name="pw_check" size="20"></td>
			</tr>
			<tr>
				<td>NAME</td><td><input type="text" name="name" size="20"></td>
			</tr>
			<tr>
				<td>E-MAIL</td><td><input type="text" name="eMail" size="20"></td>
			</tr>
			<tr>
				<td>DATE</td><td><input type="text" name="rDate" size="20" placeholder="자동입력됩니다."></td>
			</tr>
			<tr>
				<td>ADDRESS</td><td><input type="text" name="address" size="20"></td>
			</tr>
			<tr align="right">
				<td colspan="2">
					<input type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;
					<input type="reset" value="취소" onclick="javascript:window.location='login.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
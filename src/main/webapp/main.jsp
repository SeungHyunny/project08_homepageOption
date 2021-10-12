<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.vision.front.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	if(session.getAttribute("ValidMem") == null){
%>
		<jsp:forward page="login.jsp"></jsp:forward>
<%
	}
	String id = (String)session.getAttribute("id");
	
	MemberDAO dao = MemberDAO.getInstance();
	MemberDTO dto = dao.getMember(id);
%>

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
	margin-left:20%;
	margin-top:10%;
	background-color: #ffff80;
	width:30%;
	border-spacing:30px;
}
</style>
<meta charset="UTF-8">
<title>MAIN</title>
</head>
<body>
<form action="logout.jsp" method="post">
	<table class="card-body">
		<tr>
			<td colspan="2"><h2>MAIN화면</h2><hr></td>
		</tr>
		<tr>
			<td>ID</td><td><%=dto.getId()%></td>
		</tr>
		<tr>
			<td>PW</td><td><%=dto.getPw()%></td>
		</tr>
		<tr>
			<td>NAME</td><td><%=dto.getName()%></td>
		</tr>
		<tr>
			<td>E-MAIL</td><td><%=dto.geteMail()%></td>
		</tr>
		<tr>
			<td>DATE</td><td><%=dto.getrDate()%></td>
		</tr>
		<tr>
			<td>ADDRESS</td><td><%=dto.getPw()%></td>
		</tr>
		<tr align="right">
			<td colspan="2">
				<input type="submit" value="로그아웃">&nbsp;&nbsp;
				<input type="button" value="정보수정" onclick="javascript:window.location='modify.jsp'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
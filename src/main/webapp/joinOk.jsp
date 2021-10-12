<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//response.setContentType("text/html; charset=UTF-8");
%>

<%@ page import = "com.vision.front.*" %>
<jsp:useBean id="dto" class ="com.vision.front.MemberDTO"/> 
<jsp:setProperty name="dto" property="*"/> 
<%
	// 싱글톤으로 획득 
	MemberDAO dao = MemberDAO.getInstance();
	// 등록직전에 사용할 수 있는 아이디(중복되지 않은 아이디)인지를 점검  
	if(dao.confirmId(dto.getId()) == 1){
%>
	<script>
		alert("이미 존재하는 아이디 입니다.");
		history.back();
	</script>
<%		
	} else{
		// 중복되는 아이디가 아니기 때문에 디비에 등록하는 작업을 수행한다.
		int res = dao.insertMember(dto);
		if(res == 1){
			session.setAttribute("id",dto.getId());
			%>
			<script>
				alert("회원가입을 축하합니다.");
				document.location.href = "login.jsp";
			</script>
		<%		
		}else{
			%>
			<script>
				alert("회원가입 실패했습니다. ");
				document.location.href = "login.jsp";
			</script>
		<%
		}
	}

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입결과통보</title>
</head>
<body>
<h1>회원가입결과통보</h1><hr>
</body>
</html>
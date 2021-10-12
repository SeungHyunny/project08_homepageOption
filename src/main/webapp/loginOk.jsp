<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.vision.front.*" %>    
<%
	request.setCharacterEncoding("UTF-8");
	//response.setContentType("text/html; charset=UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDAO dao = MemberDAO.getInstance();
	int checkRes = dao.userCheck(id, pw);
	//1:등록된회원이면서 암호가 맞는 경우 0:등록된회원이지만 비밀번호가 틀린경우
	//-1: 등록되지 않은 아이디 
	
	if(checkRes == -1){
		%>
		<script>alert("등록된 아이디가 없습니다.");</script>
		<%
		response.sendRedirect("insert.do");
	} //-1
	else if(checkRes == 0){
		%>
		<script>alert("비밀번호가 틀립니다.");history.go(-1);</script>
		<%
	} else if(checkRes == 1){
		// 로그인된 결과를 session에 등록하는 작업 
		MemberDTO dto = dao.getMember(id);
		session.setAttribute("id", id);
		session.setAttribute("name",dto.getName());
		session.setAttribute("ValidMem", "yes");
		response.sendRedirect("main.jsp"); // 메인 페이지로 전환 
		
	} // 1
	
%>    

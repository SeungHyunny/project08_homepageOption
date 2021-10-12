package com.vision.front;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public FrontController() {}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charSet=utf-8");
		
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		// 디스패치(배차) 작업
		String command = uri.substring(contextPath.length()); // c:/sdds/sd/포로잭트명/xxx.do 
		PrintWriter out = response.getWriter();
		System.out.println("액션두로 들어왔습니다.");
		System.out.println(command);
		switch(command) {
		case "/insert.do":
			response.sendRedirect("join.jsp");
			break;
		case "/update.do":
			response.sendRedirect("modify.jsp");
			break;
		case "/delete.do":
			out.print(command+":"+"지울래요?");
			break;
		case "/select.do":
			out.print(command+":"+"한 사람자료 선택");
			break;
		case "/selectAll.do":
			Service service = new AllMemberService();
			ArrayList<MemberDTO> dtos = service.execute(request, response);
			out.println("<h1>회원들을 소개합니다</h1><hr>");
			for(MemberDTO x:dtos) {
				String id = x.getId();
				String pw = x.getPw();
				String name = x.getName();
				String eMail = x.geteMail();
				Timestamp rDate = x.getrDate();
				String address = x.getAddress();
				out.println("ID : "+id+"<br/>NAME : "+name+"<br/>E-MAIL : "+eMail+
						"<br/>DATE : "+rDate+"<br/>ADDRESS : "+address+"<br/>====================================<br/>");
			}
			break;
		}	
	}
}

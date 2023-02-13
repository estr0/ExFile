package com.yg.action;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yg.action.Action;
import com.yg.action.ActionFactory;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request에 대해서 한글인코딩 설정이 필요할지도 HERE.
		String command= request.getParameter("command");
		
		// 객체 : 문자열을 받아서 해당되는 객체를 리턴하는 메서드를 가지고 있는 객체
		ActionFactory af = new ActionFactory();
		Action obj = af.getAction(command);
		obj.execute(request,response);
	}


}

package com.yg.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PlusAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("op", request.getParameter("command"));
		request.setAttribute("result",num1+num2);
		request.getRequestDispatcher("Controller?command=result").forward(request,response);
	}
}

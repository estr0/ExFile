package com.yg.action2;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controllar
 */
@WebServlet("/Controllar")
public class Controllar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);
		if(action != null)
			action.execute(request,response);
	}
	// C --> 글작성(form태그) ---> C ---> [작성완료] action페이지 ---> C ---> 목록페이지.
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}


}

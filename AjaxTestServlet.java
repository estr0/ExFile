

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/AjaxTestServlet")
public class AjaxTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt( request.getParameter("num") );
		System.out.println("POST가 들어옴. num : " + num);
		
		//응답을 만듦:
		
		response.setContentType("application/json");	//응답의 형식 지정(명시적으로)
		PrintWriter out = response.getWriter();
		
		JSONObject obj = new JSONObject();
		obj.put("result","YG");
		
		out.println(obj);
	}

}

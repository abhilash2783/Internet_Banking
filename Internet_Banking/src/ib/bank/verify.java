package ib.bank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class verify
 */
@WebServlet("/verify")
public class verify extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid=request.getParameter("userid");
		String pwd=request.getParameter("password");
		System.out.print("||||");
		verifydao dao=new verifydao();
		System.out.print("||||");
		
		if(dao.check(uid, pwd))
		{
			System.out.print("||||..");
			HttpSession session =request.getSession();
			session.setAttribute("Username",uid);
			response.sendRedirect("homepage.jsp");
		}
		else {
			System.out.print("||||..|");
			response.sendRedirect("login.jsp");
		}
	}

}

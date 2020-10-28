package ib.bank;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.io.IOException;
import java.lang.*;
import java.util.*;

public class ValidateServlet extends HttpServlet 
{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		String uid=req.getParameter("userid");
		String pwd=req.getParameter("password");
		PrintWriter out=res.getWriter();
		if(uid.equals("anunaren") && pwd.equals("mofo"))
		{
			out.println("Welcome to the HEIST");
		}
		else
			out.print("nikal mc");
			
	}

}

package com.servlet.user;
import com.dao.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBConnect;
import com.entity.user;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		try {
			
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			HttpSession session = req.getSession();
			
			userDao dao = new userDao(DBConnect.getConn());
			user u = dao.login(email,password);
			
			if (u != null) {
				session.setAttribute("userObj", u );
				resp.sendRedirect("user/index.jsp");
				
			} else {
				session.setAttribute("errorMsg", "invalid email & password");
				resp.sendRedirect("user_login.jsp");
			}
			
			
			
			
		}catch(Exception e ) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	

}

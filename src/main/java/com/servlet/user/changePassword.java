package com.servlet.user;

import java.io.IOException;
import java.sql.PreparedStatement;

import com.dao.userDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBConnect;


@WebServlet("/userChangePassword")
public class changePassword extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			int id = Integer.parseInt(req.getParameter("uid"));
			String newPass = req.getParameter("newPassword");
			String oldPass = req.getParameter("oldPassword");

			userDao user = new userDao(DBConnect.getConn());
			HttpSession session = req.getSession();

			 

			if (user.checkOldPassword(id, oldPass)) {

				if(user.changePassword(id, newPass)) {
					session.setAttribute("succMsg", "Password changed");
					resp.sendRedirect("user/change_password.jsp");
				}else {
					session.setAttribute("errorMsg", "Something went wrong in server");
					resp.sendRedirect("user/change_password.jsp");
				}
				

			} else {
				session.setAttribute("errorMsg", "Incorrect old password ");
				resp.sendRedirect("user/change_password.jsp");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

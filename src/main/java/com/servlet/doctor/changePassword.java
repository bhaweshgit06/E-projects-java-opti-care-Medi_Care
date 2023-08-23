package com.servlet.doctor;

import java.io.IOException;
import java.sql.PreparedStatement;

import com.dao.DoctorDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBConnect;


@WebServlet("/doctorChangePassword")
public class changePassword extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			int uid = Integer.parseInt(req.getParameter("uid"));
			String newPass = req.getParameter("newPassword");
			String oldPass = req.getParameter("oldPassword");

			DoctorDao user = new DoctorDao(DBConnect.getConn());
			HttpSession session = req.getSession();

			 

			if (user.checkOldPassword(uid, oldPass)) {

				if(user.changePassword(uid, newPass)) {
					session.setAttribute("succMsg", "Password changed");
					resp.sendRedirect("doctor/edit_profile.jsp");
				}else {
					session.setAttribute("errorMsg", "Something went wrong in server");
					resp.sendRedirect("doctor/edit_profile.jsp");
				}
				

			} else {
				session.setAttribute("errorMsg", "Incorrect old password ");
				resp.sendRedirect("doctor/edit_profile.jsp");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

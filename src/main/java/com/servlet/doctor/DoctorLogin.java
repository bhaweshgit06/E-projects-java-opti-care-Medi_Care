package com.servlet.doctor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.entity.Doctor;
import com.db.DBConnect;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("email");
			String psw = req.getParameter("password");

			HttpSession session = req.getSession();

			DoctorDao dao = new DoctorDao(DBConnect.getConn());
			Doctor d = dao.login(name, psw);

			if (d != null) {
				session.setAttribute("DoctorObj", d);
				resp.sendRedirect("doctor/index.jsp");

			} else {
				session.setAttribute("errorMsg", "invalid email & password");
				resp.sendRedirect("doctor_login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

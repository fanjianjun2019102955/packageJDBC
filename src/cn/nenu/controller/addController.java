package cn.nenu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.nenu.dao.IDoctorDao;
import cn.nenu.dao.Impl.DoctorDaoImpl;
import cn.nenu.entity.Doctor;

public class addController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long userID = Long.parseLong(request.getParameter("userID"));
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		int sex = Integer.parseInt(request.getParameter("sex"));
		Doctor doctor = new Doctor(userID,username,password,sex);
		IDoctorDao ld = new DoctorDaoImpl();
		if(ld.insert(doctor)) {
			response.sendRedirect("pageController?currentPage=15");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

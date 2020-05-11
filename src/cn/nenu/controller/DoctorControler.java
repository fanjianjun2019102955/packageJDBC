package cn.nenu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.nenu.dao.IDoctorDao;
import cn.nenu.dao.Impl.DoctorDaoImpl;

public class DoctorControler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		IDoctorDao ld = new DoctorDaoImpl();
		int loginStatu = ld.query(username, password);
		String statu = "";
		if (loginStatu == 0) {
			statu = "用户名或密码错误，请重新登录！";
			request.setAttribute("statu", statu);
			request.getRequestDispatcher("loginError.jsp").forward(request, response);
		}else {
			statu = "登录成功！";
			request.setAttribute("statu", statu);
			response.sendRedirect("pageController");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package cn.nenu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.nenu.dao.IDoctorDao;
import cn.nenu.dao.Impl.DoctorDaoImpl;

public class deleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	IDoctorDao ld = new DoctorDaoImpl();
    	int userID = Integer.parseInt(request.getParameter("userID"));
    	if(ld.delete(userID)) {
    		response.sendRedirect("pageController");
    	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

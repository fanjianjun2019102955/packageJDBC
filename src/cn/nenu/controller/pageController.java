package cn.nenu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.nenu.dao.IDoctorDao;
import cn.nenu.dao.Impl.DoctorDaoImpl;
import cn.nenu.util.PageUtil;

public class pageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public static final int everyPageNum = 15;
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	IDoctorDao ld = new DoctorDaoImpl();
    	PageUtil pu = new PageUtil();
    	//数据总条数
    	int sumCount = ld.queryCountDoctor();
    	//当前页码数
    	String currentPageStr = request.getParameter("currentPage");

    	@SuppressWarnings("static-access")
		PageUtil dp = pu.dividePage(currentPageStr, sumCount, everyPageNum);
		
    	List<Object> doctorList = ld.queryByPageNum(dp.getStartNum(), everyPageNum);		
    	
		request.setAttribute("doctorList", doctorList);
		request.setAttribute("pageNum", dp.getPageNum());
		request.setAttribute("prePage", dp.getPrePage());
		request.setAttribute("nextPage", dp.getNextPage());
		request.setAttribute("everyPageNum", everyPageNum);
		request.setAttribute("currentPage", dp.getCurrentPage());
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

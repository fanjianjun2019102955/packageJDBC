package useJDBCToLogin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginControler() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginDao ld = new LoginDao();
		int loginStatu = ld.query(username, password);
		String statu = "";
		if (loginStatu == -1) {
			statu = "系统异常！";
			request.setAttribute("statu", statu);
			request.getRequestDispatcher("systemError.jsp").forward(request, response);
		}else if(loginStatu == 0) {
			statu = "用户名或密码错误，请重新登录！";
			request.setAttribute("statu", statu);
			request.getRequestDispatcher("loginError.jsp").forward(request, response);
		}else {
			statu = "登录成功！";
			request.setAttribute("statu", statu);
			request.getRequestDispatcher("loginSuccess.jsp").forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

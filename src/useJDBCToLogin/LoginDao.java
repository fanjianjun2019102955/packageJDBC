package useJDBCToLogin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
	// JDBC 加载的驱动类和连接字符串
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/hospital";// hospital为自己建的数据库名
	// 数据库的用户名与密码，需要根据自己的设置
	static final String USER = "root";
	static final String PASS = "admin";
	
	int count = -1;//登录状态码   -1:系统异常   0:登录失败  1:登录成功 
	
	public int query(String username, String password) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			// 1、加载驱动类
			Class.forName(JDBC_DRIVER);

			// 2、连接数据库
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// 3、创建Statement实例，执行查询语句
			String sql = "SELECT COUNT(*) FROM doctor WHERE username = ? AND password = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			
			rs = pstmt.executeQuery();			
			
			if (rs.next()) {
				count = rs.getInt(1);				
			}
			
			return count;
			
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			return count;
		} catch (SQLException e2) {
			e2.printStackTrace();
			return count;
		} catch (Exception e3) {
			e3.printStackTrace();
			return count;
		} finally {
			
			// 关闭资源,遵循先开后关原则。
			try {
				if (rs != null)
					rs.close();
			} catch (SQLException se1) {
				se1.printStackTrace();
			}
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException se1) {
				se1.printStackTrace();
			}
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se2) {
				se2.printStackTrace();
			}
			
		}
	}
}

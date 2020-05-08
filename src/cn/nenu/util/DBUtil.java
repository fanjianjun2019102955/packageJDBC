package cn.nenu.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBUtil {
	// JDBC 加载的驱动类和连接字符串
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/hospital";// hospital为自己建的数据库名
	// 数据库的用户名与密码，需要根据自己的设置
	static final String USER = "root";
	static final String PASS = "admin";

	public static boolean executeUpdate(String sql, Object[] objectParam) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		try {
			// 1、加载驱动类
			Class.forName(JDBC_DRIVER);

			// 2、连接数据库
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// 3、创建PreparedStatement实例，进行预编译
			pstmt = conn.prepareStatement(sql);
			if (!(objectParam == null || objectParam.length == 0)) {
				for (int i = 0; i < objectParam.length; i++) {
					pstmt.setObject(i + 1, objectParam[i]);
				}
			}

			int count = pstmt.executeUpdate();

			// 4、处理结果集
			if (count > 0) {
				flag = true;
			}

			return flag;
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			return flag;
		} catch (SQLException e2) {
			e2.printStackTrace();
			return flag;
		} catch (Exception e3) {
			e3.printStackTrace();
			return flag;
		} finally {
			// 关闭资源,遵循先开后关原则。
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

	public static List<Object> executeQuery(String sql, Object[] objectParam, Object object) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Class cls = object.getClass();
		Field[] fields = cls.getDeclaredFields();
		Constructor declaredConstructor = null;
		try {
			declaredConstructor = cls.getDeclaredConstructor();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Object> list = new ArrayList<Object>();

		try {
			// 1、加载驱动类
			Class.forName(JDBC_DRIVER);

			// 2、连接数据库
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			// 3、创建Statement实例，执行查询语句
			pstmt = conn.prepareStatement(sql);

			if (!(objectParam == null || objectParam.length == 0)) {
				for (int i = 0; i < objectParam.length; i++) {
					pstmt.setObject(i + 1, objectParam[i]);
				}
			}

			rs = pstmt.executeQuery();
			// 4、处理结果集
			while (rs.next()) {
				Object newObject = declaredConstructor.newInstance();
				for (int i = 0; i < fields.length; i++) {
					fields[i].setAccessible(true);
					fields[i].set(newObject, rs.getObject(fields[i].getName()));
				}
				list.add(newObject);
			}
			return list;
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			return null;
		} catch (SQLException e2) {
			e2.printStackTrace();
			return null;
		} catch (Exception e3) {
			e3.printStackTrace();
			return null;
		} finally {
			// 关闭资源,遵循先开后关原则。
			try {
				if (rs != null)
					pstmt.close();
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

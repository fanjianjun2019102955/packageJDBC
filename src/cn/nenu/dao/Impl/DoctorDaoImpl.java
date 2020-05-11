package cn.nenu.dao.Impl;

import static org.junit.Assert.fail;

import java.util.List;

import org.junit.Test;

import cn.nenu.dao.IDoctorDao;
import cn.nenu.entity.Doctor;
import cn.nenu.util.DBUtil;

public class DoctorDaoImpl implements IDoctorDao {
	Doctor doctor = new Doctor();

	@Override
	public int query(String username, String password) {
		Doctor doctor = new Doctor();
		String sql = "SELECT * FROM doctor WHERE username = ? AND password = ?";
		Object[] param = { username, password };
		List<Object> doctors = DBUtil.executeQuery(sql, param, doctor);
		return doctors.size();
	}

	@Override
	public List<Object> queryAll() {
		Doctor doctor = new Doctor();
		String sql = "SELECT * FROM doctor";
		List<Object> doctors = DBUtil.executeQuery(sql, null, doctor);
		return doctors;
	}

	@Override
	public boolean insert(Doctor doctor) {
		try {
			String sql = "INSERT INTO doctor VALUES(?,?,?,?)";
			Object[] param = {doctor.getUserID(), doctor.getUsername(), doctor.getPassword(), doctor.getSex()};
			return DBUtil.executeUpdate(sql, param);			
		} catch (NullPointerException e) {
			String sql = "INSERT INTO doctor VALUES(?,?,?,?)";
			Object[] param = {null, doctor.getUsername(), doctor.getPassword(), doctor.getSex()};
			return DBUtil.executeUpdate(sql, param);			
			// TODO: handle exception
		}
	}

	@Override
	public boolean delete(int userID) {
		String sql = "DELETE FROM doctor WHERE userID=?";
		Object[] param = {userID};
		return DBUtil.executeUpdate(sql, param);
	}

	@Override
	public boolean update(int userID, Doctor doctor) {
		String sql = "UPDATE doctor SET password = ?,sex = ? WHERE userID=?";
		Object[] param = {doctor.getPassword(), doctor.getSex(), userID};
		return DBUtil.executeUpdate(sql, param);
	}

	@Override
	public List<Object> queryByPageNum(int startNum, int endNum) {
		
		String sql = "select * from doctor limit ?,?";
		Object[] object = {startNum, endNum};
		List<Object> doctors = DBUtil.executeQuery(sql, object, doctor);
		return doctors;
	}

//	@Override
//	public int queryCountDoctor() {
//		String sql = "select * from doctor";
//		List<Object> doctors = DBUtil.executeQuery(sql, null, doctor);
//		return doctors.size();
//	}
	@Override
	public int queryCountDoctor() {
		String sql = "select count(*) from doctor";
		return DBUtil.queryCount(sql);
	}
	

}

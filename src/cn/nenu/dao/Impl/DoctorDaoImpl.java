package cn.nenu.dao.Impl;

import java.util.List;

import cn.nenu.dao.IDoctorDao;
import cn.nenu.entity.Doctor;
import cn.nenu.util.DBUtil;

public class DoctorDaoImpl implements IDoctorDao {

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
	public boolean insert(int userID, String username, String password, int sex) {
		String sql = "INSERT INTO doctor VALUES(?,?,?,?)";
		Object[] param = {userID, username, password, sex};
		return DBUtil.executeUpdate(sql, param);
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

}

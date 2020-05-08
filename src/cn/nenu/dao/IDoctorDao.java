package cn.nenu.dao;

import java.util.List;

import cn.nenu.entity.Doctor;

public interface IDoctorDao {

	public int query(String username, String password);

	public List<Object> queryAll();

	public boolean insert(int userID, String username, String password, int sex);

	public boolean delete(int userID);

	public boolean update(int userID, Doctor doctor);

}

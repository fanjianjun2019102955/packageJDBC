package cn.nenu.dao;

import java.util.List;

import cn.nenu.entity.Doctor;

public interface IDoctorDao {

	public int query(String username, String password);

	public List<Object> queryAll();

	public boolean insert(Doctor doctor);

	public boolean delete(int userID);

	public boolean update(int userID, Doctor doctor);
	
	public List<Object> queryByPageNum(int startNum,int endNum);
	
	public int queryCountDoctor();

}

package cn.nenu.controller;

import java.util.Random;

import cn.nenu.dao.IDoctorDao;
import cn.nenu.dao.Impl.DoctorDaoImpl;
import cn.nenu.entity.Doctor;

public class testM {
	public static String str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	public static void insertData() {
		String username = null;

		Random random = new Random();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < 7; i++) {
			int number = random.nextInt(52);
			sb.append(str.charAt(number));
		}
		username = sb.toString();

		Doctor doc = new Doctor();
		doc.setUsername(username);
		doc.setPassword("123456");
		doc.setSex(0);
		IDoctorDao ld = new DoctorDaoImpl();
		ld.insert(doc);
	}

	public static void main(String[] args) {
		for(int i =1;i<=100;i++) {
			insertData();			
		}
	}

}

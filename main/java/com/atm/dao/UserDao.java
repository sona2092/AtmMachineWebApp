package com.atm.dao;

public interface UserDao {
	boolean isValidUser(long account, int upin);

	boolean addUser(User user);
}

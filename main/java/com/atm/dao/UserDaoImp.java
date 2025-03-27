package com.atm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.atm.dao.User;
import com.atm.util.DBUtil;

public class UserDaoImp implements UserDao {
	
    @Override
    public boolean isValidUser(long account, int upin) {
        String query = "SELECT * FROM bank WHERE acc_no = ? AND atmpin = ?";
    	 try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setLong(1, account);
            preparedStatement.setInt(2, upin);

            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("Query is running");
            return resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

	 @Override
	    public boolean addUser(User user) {
	        String query = "INSERT INTO bank (name, email, acc_no, atmpin, balance) VALUES (?, ?, ?, ?, ?)";

	        try (Connection connection = DBUtil.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

	            preparedStatement.setString(1, user.getName());
	            preparedStatement.setString(2, user.getEmail());
	            preparedStatement.setLong(3, user.getAccount());
	            preparedStatement.setInt(4, user.getUpin());
	            preparedStatement.setDouble(5, user.getBalance());

	            int rowsAffected = preparedStatement.executeUpdate();

	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	    }

}

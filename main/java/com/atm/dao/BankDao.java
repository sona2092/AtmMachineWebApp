package com.atm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//import com.atm.dao.*;
import com.atm.util.*;

public class BankDao {
	public static String getAccountHolderName(long account) {
        String name = null;
        try {
            Connection conn = DBUtil.getConnection();
            String query = Query.getName;
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setLong(1, account);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                name = rs.getString("name");
            }
            rs.close();
            pst.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return name;
    }
	
	public boolean depositMoney(long account, int amount) throws SQLException {
		try {
//			User user = new User();
			Connection conn = DBUtil.getConnection();
			String query = Query.deposit;
			PreparedStatement pstm = conn.prepareStatement(query);
			pstm.setInt(1,amount);
			pstm.setLong(2, account);
			
			int count = pstm.executeUpdate();
//			System.out.println(count);
			pstm.close();
//			System.out.println("Query success");
			return count>0;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
            return false;
		}
	}

	public boolean withdrawMoney(long account, int amount) throws SQLException {
		try {
			Connection conn = DBUtil.getConnection();
			String query = Query.withdraw;
			PreparedStatement pstm = conn.prepareStatement(query);
			pstm.setInt(1, amount);
			pstm.setLong(2, account);
			pstm.setInt(3, amount);
			
			int count = pstm.executeUpdate();
			pstm.close();
			return count>0;
		}
		catch(Exception e){
			e.printStackTrace();
            return false;
		}
	}

	public boolean changePIN(long account, int npin) throws SQLException {
		try {
			Connection conn = DBUtil.getConnection();
			String query = Query.update;
			PreparedStatement pstm = conn.prepareStatement(query);
			pstm.setInt(1, npin);
			pstm.setLong(2, account);
			
			int count = pstm.executeUpdate();
			pstm.close();
			return count>0;
		}
		catch(Exception e){
			e.printStackTrace();
            return false;
		}
	}
}


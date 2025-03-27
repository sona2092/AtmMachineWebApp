package com.atm.util;

public class Query {
	public static String getName = "SELECT name FROM bank WHERE acc_no = ?";
	public static String update = "update bank set atmpin = ? where acc_no = ?";
	public static String deposit = "update bank set balance = balance + ? where acc_no = ?";
	public static String withdraw = "update bank set balance = balance - ? where acc_no = ? and balance >= ?";
	public static String select = "select * from bank where acc_no = ?";
}

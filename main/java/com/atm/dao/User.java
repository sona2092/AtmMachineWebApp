package com.atm.dao;

public class User {
	private String name;
	private String email;
	private long account;
	private int upin;
	private double balance = 0;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getAccount() {
		return account;
	}
	public void setAccount(long account2) {
		this.account = account2;
	}
	public int getUpin() {
		return upin;
	}
	public void setUpin(int upin) {
		this.upin = upin;
	}
	public double getBalance() {
		return balance;
	}
	
}

package com.entity;

public class user {
	private int id;
	private String fullName;
	private String email;
	private String password;
	
	public user() {
		super();
	}
	
	public user(int id,String fullName, String email  ,String password){
		super();
		this.id =id;
		this.email =email;
		this.fullName = fullName;
		this.password = password;
	}
	
	
	public user(String fullName, String email  ,String password){
		super();
		this.email =email;
		this.fullName = fullName;
		this.password = password;
	}
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public void setId(int id) {
		this.id = id;
		
	}
	public int getId() {
		return id;
		
	}

}

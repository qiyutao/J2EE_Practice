package com.seven.bean;

import javax.servlet.http.HttpServletRequest;

public class RegisterBean {
	private String userName;
	private String passwd;
	private String email;
	private String birth;
	
	public RegisterBean() {
		userName = null;
		passwd = null;
		email = null;
		birth = null;
	}
	
	public RegisterBean(HttpServletRequest request) {
		userName = request.getParameter("userName");
		passwd = request.getParameter("passwd");
		email = request.getParameter("email");
		birth = request.getParameter("birth");
	}
	
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return the passwd
	 */
	public String getPasswd() {
		return passwd;
	}
	/**
	 * @param passwd the passwd to set
	 */
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the birth
	 */
	public String getBirth() {
		return birth;
	}
	/**
	 * @param birth the birth to set
	 */
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	
}

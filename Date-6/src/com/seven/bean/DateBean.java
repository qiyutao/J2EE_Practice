package com.seven.bean;

public class DateBean {
	private int day;
	private int hour;
	private int min;
	private int s;
	
	/**
	 * 
	 */
	public DateBean() {
		super();
		// TODO Auto-generated constructor stub
		day = 0;
		hour = 0;
		min = 0;
		s = 0;
	}

	/**
	 * @param day
	 * @param hour
	 * @param min
	 * @param s
	 */
	public DateBean(int day, int hour, int min, int s) {
		super();
		this.day = day;
		this.hour = hour;
		this.min = min;
		this.s = s;
	}


	/**
	 * @return the day
	 */
	public int getDay() {
		return day;
	}


	/**
	 * @param day the day to set
	 */
	public void setDay(int day) {
		this.day = day;
	}


	/**
	 * @return the hour
	 */
	public int getHour() {
		return hour;
	}


	/**
	 * @param hour the hour to set
	 */
	public void setHour(int hour) {
		this.hour = hour;
	}


	/**
	 * @return the min
	 */
	public int getMin() {
		return min;
	}


	/**
	 * @param min the min to set
	 */
	public void setMin(int min) {
		this.min = min;
	}


	/**
	 * @return the s
	 */
	public int getS() {
		return s;
	}


	/**
	 * @param s the s to set
	 */
	public void setS(int s) {
		this.s = s;
	}
	
	
}

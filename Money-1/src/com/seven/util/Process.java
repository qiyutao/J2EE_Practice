package com.seven.util;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.seven.bean.FormBean;

public class Process {
	private String type ;
	private double money ;
	private int date ;
	private Date startDate ;
	private Date endDate ;
	
	public Process(FormBean bean){
		type = bean.getType();
		money = Double.parseDouble(bean.getMoney());
		date = Integer.parseInt(bean.getDate());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
	    try {
			startDate = sdf.parse(bean.getStartDate());
			endDate = sdf.parse(bean.getEndDate());
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    System.out.println(bean.getStartDate());
			System.out.println(endDate);
	}
	
	public String getAccrual() {
		double accrual;
		int day = getDaySub();
		if(type.equals("1")) 
			accrual = live(day);
		else 
			accrual = death(day);
		
		return String.format("%.2f",accrual);
	}
	
	private int getDaySub() {
		return (int) ((endDate.getTime()-startDate.getTime())/(24*60*60*1000)); 
	}
	
	private double live(int day) {
		double acr = money*0.0035/12;
		acr *= (double)day*0.1/30;
		return acr;
	}
	
	private double death(int day) {
		double rate = 0;
		double acr;
		
		switch(date) {
			case 1:
				rate = 0.0195;
				break;
			case 2:
				rate = 0.024;
				break;
			case 3:
				rate = 0.03;
				break;
			case 5:
				rate = 0.035;
		}
		
		acr = money*rate;
		return acr;
	}
}

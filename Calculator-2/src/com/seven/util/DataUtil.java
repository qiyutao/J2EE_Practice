package com.seven.util;

public class  DataUtil{
	public static double compute(double a1,char op,double a2) {
		switch(op) {
			case '+':
				a1 += a2;
				break;
			case '-':
				a1 -= a2;
				break;
			case '*':
				a1 *= a2;
				break;
			case '/':
				a1 /= a2;
				break;
			case '%':
				a1 %= a2;
				break;
		}
		return a1;
	}
}

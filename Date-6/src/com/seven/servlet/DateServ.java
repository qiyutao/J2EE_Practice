package com.seven.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seven.bean.DateBean;

/**
 * Servlet implementation class DateServ
 */
@WebServlet("/DateServ")
public class DateServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Date date1;
	private Date date2;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DateServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		setDate(request);
		setBean();
		response.sendRedirect("./show.jsp");
	}
	
	private void setDate(HttpServletRequest request) {
		SimpleDateFormat  format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			date1 = format.parse(request.getParameter("year1")+" "+request.getParameter("hour1"));
			date2 = format.parse(request.getParameter("year2")+" "+request.getParameter("hour2"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void setBean() {
		long time = date2.getTime()-date1.getTime();
		int s = (int)time/1000;
		int min = s/60;
		int hour = min/60;
		int day = hour/24;
		DateBean bean = new DateBean(day, hour, min, s);
		getServletContext().setAttribute("bean", bean);
	}

}

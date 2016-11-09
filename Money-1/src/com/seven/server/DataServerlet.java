package com.seven.server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seven.bean.FormBean;
import com.seven.util.Process;

/**
 * Servlet implementation class Compute
 */
@WebServlet("/compute")
public class DataServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DataServerlet() {
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
		
		FormBean bean = setBean(request);
		Process process = new Process(bean);
		String accrual = process.getAccrual();
		response.sendRedirect("./show.jsp?accrual="+accrual+"&money="+bean.getMoney());
	}
	
	private FormBean setBean(HttpServletRequest request) {
		FormBean bean = new FormBean();
		bean.setType(request.getParameter("type"));
		bean.setMoney(request.getParameter("money"));
		bean.setDate(request.getParameter("date"));
		bean.setStartDate(request.getParameter("startDate"));
		bean.setEndDate(request.getParameter("endDate"));
		
		return bean;
	}

}

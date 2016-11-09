package com.seven.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seven.bean.FileBean;

/**
 * Servlet implementation class CountServ
 */
@WebServlet("/CountServ")
public class CountServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CountServ() {
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
		File file = new File(request.getParameter("file"));
		FileBean bean = count(file);
		getServletContext().setAttribute("bean", bean);
		response.sendRedirect("./show.jsp");
	}
	
	private FileBean count(File file) {
		FileBean bean = null;
		try {
			InputStreamReader in = new FileReader(file);
			BufferedReader buff = new BufferedReader(in);
			int line = 0;
			int word = 0;
			String tmp = null;
			while((tmp = buff.readLine())!=null) {
				line++;
				String[] words = tmp.split(" ");
				word += words.length;
			}
			buff.close();
			in.close();
			bean = new FileBean(file.getName(), file.length(), line, word);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bean;
	}

}

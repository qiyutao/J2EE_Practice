package com.seven.servelet;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.Buffer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seven.bean.RegisterBean;
import com.sun.webkit.ContextMenu.ShowContext;

/**
 * Servlet implementation class WriterServe
 */
@WebServlet("/WriterServe")
public class WriterServe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriterServe() {
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
		RegisterBean bean = new RegisterBean(request);
		writer(bean);
		getServletContext().setAttribute("bean", bean);
		response.sendRedirect("./show.jsp");
	}

	private void writer(RegisterBean bean) {
		// TODO Auto-generated method stub
		File file = new File("D:\\\\log.txt");
		if(!file.exists()) {
			try {
				file.createNewFile();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		try {
			OutputStreamWriter stream = new FileWriter(file,true);
			BufferedWriter buff = new BufferedWriter(stream);
			buff.write("用户名："+bean.getUserName()+"\r\n");
			buff.write("密码："+bean.getPasswd()+"\r\n");
			buff.write("邮箱："+bean.getEmail()+"\r\n");
			buff.write("生日："+bean.getBirth()+"\r\n");
			buff.write("******************************\r\n");
			
			buff.flush();
			buff.close();
			stream.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

<%@page import="com.seven.util.DataUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.seven.bean.ParmsBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	计算结果：
	<jsp:useBean id="bean" class="com.seven.bean.ParmsBean" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
	<%
		out.println(bean.getParm1());
		out.println(bean.getOper1());
		out.println(bean.getParm2());
		out.println(bean.getOper2());
		out.println(bean.getParm3());
		out.println("=");
		
		double result = Double.parseDouble(bean.getParm1());
		double parm = Double.parseDouble(bean.getParm2());
		
		result = DataUtil.compute(result, bean.getOper1().charAt(0), parm);
		
		parm = Double.parseDouble(bean.getParm3());
		result = DataUtil.compute(result, bean.getOper2().charAt(0), parm);
		
		out.println(result);
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bean" class="com.seven.bean.FormBean" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<%
	int mid = Integer.valueOf(bean.getNumber(), bean.getFrom());
	String result = null;
	switch(bean.getTo()) {
		case 2:
			result = Integer.toBinaryString(mid);
			break;
		case 8:
			result = Integer.toOctalString(mid);
			break;
		case 10:
			result = ""+mid;
			break;
		case 16:
			result = Integer.toHexString(mid);
	}
	
	out.println(bean.getNumber()+"->"+result);
%>
</body>
</html>
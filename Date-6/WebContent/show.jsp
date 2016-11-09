<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bean" class="com.seven.bean.DateBean" scope="application"></jsp:useBean>
<p>
天：
<jsp:getProperty property="day" name="bean"/>
</p>
<p>
小时：
<jsp:getProperty property="hour" name="bean"/>
</p>
<p>
分钟：
<jsp:getProperty property="min" name="bean"/>
</p>
<p>
秒：
<jsp:getProperty property="s" name="bean"/>
</p>
</body>
</html>
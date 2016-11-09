<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bean" class="com.seven.bean.RegisterBean" scope="application"></jsp:useBean>
<p>用户名：
<jsp:getProperty property="userName" name="bean"/>
</p>
<p>密码：
<jsp:getProperty property="passwd" name="bean"/>
</p>
<p>邮箱：
<jsp:getProperty property="email" name="bean"/>
</p>
<p>生日：
<jsp:getProperty property="birth" name="bean"/>
</p>
</body>
</html>
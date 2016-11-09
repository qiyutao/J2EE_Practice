<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bean" class="com.seven.bean.FileBean" scope="application"></jsp:useBean>
<p>
文件名：
<jsp:getProperty property="name" name="bean"/>
</p>
<p>
大小：
<jsp:getProperty property="size" name="bean"/>
B
</p>
<p>
行数：
<jsp:getProperty property="line" name="bean"/>
</p>
<p>
字数：
<jsp:getProperty property="word" name="bean"/>
</p>
</body>
</html>
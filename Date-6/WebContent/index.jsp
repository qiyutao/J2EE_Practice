<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./DateServ" method="post">
<table align="center" border="1" cellpadding="1" cellspacing="1" class="form-inline" style="width: 1000px;">
		<tr>
			<td colspan="2" style="text-align: center; vertical-align: middle;">时间间隔计算</td>
		</tr>
		<tr>
			<td style="text-align: right;">
			第一个日期（xxxx-xx-xx）：
			</td>
			<td style="text-align: left;">
			<input type="text" name="year1">
			时间(hh:mm:ss):
			<input type="text" name="hour1">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">
			第二个日期（xxxx-xx-xx）：
			</td>
			<td style="text-align: left;">
			<input type="text" name="year2">
			时间(hh:mm:ss):
			<input type="text" name="hour2">
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center; vertical-align: middle;">
				<input type="submit" value="计算">
				<input type="reset">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
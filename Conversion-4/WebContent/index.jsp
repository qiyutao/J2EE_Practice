<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./show.jsp" method="post">
	<table align="center" border="1" cellpadding="1" cellspacing="1" class="form-inline" style="width: 500px;">
		<tr>
			<td colspan="2" style="text-align: center; vertical-align: middle;">万能进制转换器</td>
		</tr>
		<tr>
			<td style="text-align: right;">
			从：
			</td>
			<td style="text-align: left;">
			<select name="from">  
				  <option value ="2">二进制</option>  
				  <option value ="8">八进制</option>
				  <option value ="10">十进制</option> 
				  <option value ="16">十六进制</option> 
				  </select></td>
		</tr>
		<tr>
			<td style="text-align: right;">
			转换为：
			</td>
			<td style="text-align: left;">
			<select name="to">  
				  <option value ="2">二进制</option>  
				  <option value ="8">八进制</option>
				  <option value ="10">十进制</option> 
				  <option value ="16">十六进制</option> 
				  </select></td>
		</tr>
		<tr>
			<td style="text-align: right;">
			原进制数：
			</td>
			<td style="text-align: left;">
			<input type="text" name="number">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" style="text-align: center; vertical-align: middle;">
				<input type="submit" value="开始转换">
				<input type="reset">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
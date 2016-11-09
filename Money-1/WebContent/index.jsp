<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--<form action="./compute" method="post">
		<center>
		 <table border="1" alihn="right">
		<tr>
			个人存款计算器
		</tr>
		
		<tr>
			<td>
			存款类型（活期、整存整取）
			</td>
			
			<td>
				<select>  
				  <option value ="1">活期</option>  
				  <option value ="2">整存整取</option>
				  </select>
			</td>
		
		</tr>
		
		<tr>
			<td>
			
			</td>
			
			<td>
			
			</td>
		
		</tr>
		
		<tr>
			<td>
			
			</td>
			
			<td>
			
			</td>
		
		</tr>
		
		<tr>
			<td>
			
			</td>
			
			<td>
			
			</td>
		
		</tr>
		
		<tr>
			<td>
			
			</td>
			
			<td>
			
			</td>
		
		</tr>
		
		<tr>
		
		</tr>
		
		</table>
		</center>
	</form> -->
	<form action="./compute" method="post">
	<table align="center" border="1" cellpadding="1" cellspacing="1" class="form-inline" style="width: 500px;">
	<tbody>
		<tr>
			<td colspan="2" style="text-align: center; vertical-align: middle;">个人存款计算器</td>
		</tr>
		<tr>
			<td style="text-align: right;width: 250px;">
			存款类型（活期、整存整取）：
			</td>
			<td style="text-align: left;">
			<select name="type">  
				  <option value ="1">活期</option>  
				  <option value ="2">整存整取</option>
				  </select></td>
		</tr>
		<tr>
			<td style="text-align: right;">存款金额：</td>
			<td style="text-align: left;">
				<input type="text" name="money">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">存款期限(1、2、3、5年)：</td>
			<td style="text-align: left;">
				<input type="text" name="date">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">存入日期(xxxx-xx-xx)：</td>
			<td style="text-align: left;">
				<input type="text" name="startDate">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">提取日期(xxxx-xx-xx)：</td>
			<td style="text-align: left;">
				<input type="text" name="endDate">
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center; vertical-align: middle;">
				<input type="submit" value="提交">
				<input type="reset">
			</td>
		</tr>
	</tbody>
</table>
</form>
</body>
</html>
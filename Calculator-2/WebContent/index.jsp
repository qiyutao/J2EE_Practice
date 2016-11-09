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
	<tbody>
	
		<tr>
			<td colspan="2" style="text-align: center; vertical-align: middle;">简单计算器</td>
		</tr>
		<tr>
			<td style="text-align: right;width: 250px;">
			第一个参数：
			</td>
			<td style="text-align: left;">
			<input type="text" name="parm1">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">第一个操作符：</td>
			<td style="text-align: left;">
				<select name="oper1">  
				  <option value ="+">+</option>  
				  <option value ="-">-</option>
				  <option value ="*">*</option>
				  <option value ="/">/</option>
				  <option value ="%">%</option>
				  </select>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">第二个参数</td>
			<td style="text-align: left;">
				<input type="text" name="parm2">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">第二个操作符：</td>
			<td style="text-align: left;">
				<select name="oper2">  
				  <option value ="+">+</option>  
				  <option value ="-">-</option>
				  <option value ="*">*</option>
				  <option value ="/">/</option>
				  <option value ="%">%</option>
				  </select>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">第三个参数：</td>
			<td style="text-align: left;">
				<input type="text" name="parm3">
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
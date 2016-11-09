<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./CountServ" method="post">
	<table align="center" border="1" cellpadding="1" cellspacing="1" class="form-inline" style="width: 500px;">
		<tr>
			<td colspan="2" style="text-align: center; vertical-align: middle;">文件信息的统计</td>
		</tr>
		<tr>
			<td style="text-align: right;">
			请选择要统计的文件：
			</td>
			<td style="text-align: left;">
			<input type="file" name="file">
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center; vertical-align: middle;">
				<input type="submit" value="上传">
				<input type="reset">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
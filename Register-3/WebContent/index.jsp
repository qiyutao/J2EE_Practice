<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function validate() {
		if(frm.passwd.value!=frm.repasswd.value) {
			alert("密码不一致！");
			return(false);
		}
		return(true);
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<form action="./WriterServe" method="post" onsubmit="return validate()" name="frm">
	<table align="center" border="1" cellpadding="1" cellspacing="1" class="form-inline" style="width: 500px;">
	<tbody>
		<tr>
			<td style="text-align: center;">
			用户名
			</td>
			<td style="text-align: center;">
			<input type="text" name="userName">
			</td>
		</tr>
		<tr>
			<td style="text-align: center;">
			密码
			</td>
			<td style="text-align: center;">
			<input type="password" name="passwd" id="passwd">
			</td>
		</tr>
		<tr>
			<td style="text-align: center;">
			确认密码
			</td>
			<td style="text-align: center;">
			<input type="password" id="repasswd">
			</td>
		</tr>
		<tr>
			<td style="text-align: center;">
			邮箱
			</td>
			<td style="text-align: center;">
			<input type="text" name="email">
			</td>
		</tr>
		<tr>
			<td style="text-align: center;">
			生日
			</td>
			<td style="text-align: center;">
			<input type="text" name="birth">
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center; vertical-align: middle;">
				<input type="submit" value="注册">
				<input type="reset">
			</td>
		</tr>
		</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
	 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
	<script type="text/javascript">
	function validate() {
		if(frm.passwd.value!=frm.repasswd.value) {
			alert("密码不一致！");
			return(false);
		}
		return(true);
	}
</script>
	</head>
	
	<body bgcolor="#90caf9">
	<div class="valign-wrapper">
	
  <div class="row">
        <div class="col" style="width: 400px;">
          <div class="card">
            <div class="card-image">
              <img src="http://materializecss.com/images/sample-1.jpg" height="100px" >
              <span class="card-title">用户注册</span>
            </div>
            <form action="./WriterServe" method="post" onsubmit="return validate()" name="frm">
              <table>
				<tr>
				<td>
                <i class="Small material-icons">perm_identity</i>
				</td>
				<td>
				<label for="last_name">用户名</label>
				<input type="text" name="userName" >
				</td>
				</tr>
				
				<tr>
				<td>
                <i class="Small material-icons">lock</i>
				</td>
				<td>
				<label for="last_name">密码</label>
				<input type="password" name="passwd" id="passwd" >
				</td>
				</tr>
				
				<tr>
				<td>
                <i class="Small material-icons">lock</i>
				</td>
				<td>
				<label for="last_name">重复密码</label>
				<input type="password" id="repasswd" >
				</td>
				</tr>
				
				<tr>
				<td>
                <i class="Small material-icons">email</i>
				</td>
				<td>
				<label for="last_name">电子邮件</label>
				<input  type="text" name="email" >
				</td>
				</tr>
				
				<tr>
				<td>
                <i class="Small material-icons">today</i>
				</td>
				<td>
				<label for="last_name">生日</label>
				<input type="text" name="birth" >
				</td>
				</tr>
				
				</table>
			<button class="btn waves-effect waves-light col s6" type="submit" name="action">注册
			<i class="material-icons right">send</i>
			</button>
			
			<button class="btn waves-effect waves-light col s6" type="reset">重置
			<i class="material-icons right">replay</i>
			</button>
			
			</form>
          </div>
        </div>
		
      </div>
	</div>
	
  
	<body>
</html>

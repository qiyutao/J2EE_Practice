<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="./css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
	
	</head>
	
	<body bgcolor="#90caf9">
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="./js/materialize.min.js"></script>
  <script>
     $(document).ready(function() {
        $('select').material_select();
    });
  </script>

    
	<div class="valign-wrapper">
	
  <div class="row">
        <div class="col" style="width: 400px;">
          <div class="card">
            <div class="card-image">
              <img src="http://materializecss.com/images/sample-1.jpg" height="100px" >
              <span class="card-title">万能进制转换器</span>
            </div>
            <form action="./show.jsp" method="post">
              <table>
				<tr>
				<td>
                从：
				</td>
				<td>
				<div class="input-field col ">
				<select class="icons" name="from">
				  <option value="" disabled selected>选择进制</option>
				  <option value="2" data-icon="http://img.sootuu.com/vector/2006-4/200642011489918.jpg" class="circle">二进制</option>
				  <option value="8" data-icon="http://g.hiphotos.baidu.com/image/h%3D200/sign=fad7594d89b1cb1321693b13ed5556da/ac6eddc451da81cbf7a4b16f5666d016082431d5.jpg" class="circle">八进制</option>
				  <option value="10" data-icon="http://pic.baike.soso.com/p/20120507/bki-20120507163833-1341122043.jpg" class="circle">十进制</option>
				  <option value="16" data-icon="http://pic.58pic.com/58pic/12/29/34/23x58PICB6a.jpg" class="circle">十六进制</option>
				</select>
			  </div>
				
				</td>
				</tr>
				
				<tr>
				<td>
                转换为：
				</td>
				<td>
				<div class="input-field col ">
				<select class="icons" name="to">
				  <option value="" disabled selected>选择进制</option>
				  <option value="2" data-icon="http://img.sootuu.com/vector/2006-4/200642011489918.jpg" class="circle">二进制</option>
				  <option value="8" data-icon="http://g.hiphotos.baidu.com/image/h%3D200/sign=fad7594d89b1cb1321693b13ed5556da/ac6eddc451da81cbf7a4b16f5666d016082431d5.jpg" class="circle">八进制</option>
				  <option value="10" data-icon="http://pic.baike.soso.com/p/20120507/bki-20120507163833-1341122043.jpg" class="circle">十进制</option>
				  <option value="16" data-icon="http://pic.58pic.com/58pic/12/29/34/23x58PICB6a.jpg" class="circle">十六进制</option>
				</select>
			  </div>
				</td>
				</tr>
				
				<tr>
				<td>
                原进制数：
				</td>
				<td>
				<input  type="text" name="number" >
				</td>
				</tr>
				</table>
			<button class="btn waves-effect waves-light col s6" type="submit" name="action">开始转换
			<i class="material-icons right">send</i>
			</button>
			
			<button class="btn waves-effect waves-light col s6" type="reset">取消
			<i class="material-icons right">replay</i>
			</button>
			</form>
          </div>
        </div>
		
      </div>
	</div>
	
	<body>
</html>

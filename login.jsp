<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登录</title>
<link href="./static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="./static/css/login.css" rel="stylesheet">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
</head>
<body>
	<div class="container">
		<form class="form-signin" action="<%=basePath%>LoginServlet"
			method="post">
			<label for="inputName" class="sr-only">用户名</label> <input type="text"
				id="inputName" name="username" class="form-control"
				placeholder="用户名" required="" autofocus=""> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="inputPassword" name="password"
				class="form-control" placeholder="密码" required=""> <label
				for="inputEmail" class="sr-only">邮箱</label> <input type="email"
				id="inputEmail" name="useremail" class="form-control"
				placeholder="jane.doe@example.com" required="">
			<div class="input-group">
				<input type="text" name="code" class="form-control"
					placeholder="验证码"> <span class="input-group-btn">
					<button class="btn btn-default" id="sendEmail" type="button">发送</button>
				</span>
			</div>
			<!-- /input-group -->
			<button class="btn btn-lg btn-primary btn-block btn-shapes"
				type="submit">登录</button>
			<button class="btn btn-lg btn-primary btn-block btn-shapes"
				type="reset">重置</button>
		</form>
	</div>
	<!-- /container -->


	<script type="text/javascript" src="static/js/lib/jquery.js"></script>
	<script type="text/javascript">
    $(function(){
    	var url = "";
    	$("#sendEmail").click(function(){
    		var email=$.trim($("#inputEmail").val());//获取邮箱
    		console.log(email);
    		var url = "<%=basePath%>SendEmailServlet";
    		console.log(url);
    		var param={"email":email};
    		$.post(url,param,function(data){
    			console.log("data");
    		},"json");     		
    	});
    	
    });
    
    </script>
	<script src="static/js/lib/jquery-2.2.3.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>
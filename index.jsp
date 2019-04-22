<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>首页</title>
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/front.css" rel="stylesheet">
</head>
<body>
<home>
	<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Brand</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="#">Link <span class="sr-only"></span></a></li>
						<li><a href="#">Link</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Dropdown <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<button type="button" id="loginButton"  class="btn btn-default navbar-btn" >Sign in/up</button>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		
	<!-- page-content -->
	<!-- home-page-content -->
	<div class="page">
		<div class="jumbotron">
			<div class="container">
  				<h1>Math should be easy</h1>
  				<p>provides tools and services to solve math's problems</p>
  				<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
  			</div>
		</div>
	</div>
		<!-- page-even-content -->
		<div class="page page-even" id="Products">
			<div class="container container-fluid">
				<div class="row text-center">
					<div  class="col-xs-12 col-md-6 product">
						<h1 >DocGen</h1>
						<a href="/docgen">
							<img class="product-logo" src="static/img/docgen.png"></a>
						<p class="description text-left">LucyBot's
							DocGen is a static website generator for API documentation. It
							uses Open API, markdown, and other open standards to create
							highly customizable documentation, as well as an API console and
							interactive tutorials.</p>
						<div class="text-center">
							<div class="btn-toolbar">
								<a class="btn btn-primary" href="/docgen">Learn
									More</a><a class="btn btn-primary"
									href="http://docs.lucybot.com">View the Docs</a>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-md-6 product">
						<h1>DataFire</h1>
						<a href="https://datafire.io">
						<img class="product-logo"src="static/img/datafire.png"></a>
						<p class="description text-left">DataFire is
							an open source framework for building APIs and integrations with
							over 800 available services, including Slack, GitHub, Twitter,
							and MongoDB. DataFire.io also provides a GUI for rapid
							prototyping and deployment.</p>
						<div class="text-center">
							<div class="btn-toolbar">
								<a class="btn btn-primary"
									href="https://datafire.io">Learn More</a>
									<a class="btn btn-primary"
									href="https://github.com/DataFire/DataFire">View on GitHub</a>
							</div>
						</div>
					</div>
				</div>
				<div class="next-page-button">
					<h4 >Press</h4>
					<a class="btn btn-sm btn-link">
					<img src="static/img/arrow-down.svg"></a>
				</div>
			</div>
		</div>
		<!-- madal -->
		
		<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    		<div class="modal-dialog">
        		<div class="modal-content">
            		<div class="modal-header">
               			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                		<h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
            		</div>
           			<div class="modal-body">
           			<iframe style="zoom: 0.6;" height="250" src="" frameBorder="0" width="99.6%"></iframe>
           			</div>
            		<div class="modal-footer">
                		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                		<button type="button" class="btn btn-primary">提交更改</button>
            		</div>
        		</div><!-- /.modal-content -->
    		</div><!-- /.modal -->
		</div>
		
</home>

<script type="text/javascript" src="static/js/lib/jquery.js"></script>
<script type="text/javascript">
	 $(function(){
		 var frameSrc = "http://localhost:8080/servlet_project_one/front/login.jsp";
	        $("#loginButton").click(function(){
	        	/* $('#login').on('show', function () {
	        		$('iframe').attr("src",frameSrc);        
	        	}); */
	        	$('iframe').attr("src",frameSrc); 
	        	$('#login').modal({show:true}); 
	            //$(window).attr('location',"login.jsp");
	        });
	        
	    });
</script>

<script src="static/js/lib/jquery-2.2.3.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
 <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>
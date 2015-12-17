<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
 <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AccioMusic</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>

<s:if test="%{regist_error!=null}">
	<script type="text/javascript">
		alert("注册失败！");
	</script>
</s:if>
</head>

<body class="index">
	<div class="top">
		<div class="nav_wrap">
			<ul class="nav index_nav">
				<div class="logo_wrap">
					<img src="pic/logo2.png">
				</div>
				<li role="presentation" class="active"><a href="#">发现音乐</a></li>
				<li role="presentation"><a href="#">我的音乐</a></li>
				<li role="presentation"><a href="#">我的订单</a></li>
				<s:if test="#session.userName==null">
					<a data-toggle="modal" data-target="#registModal">注册</a>
					<a class="spliter">|</a>
					<a data-toggle="modal" data-target="#loginModal" >登录</a>
				</s:if>
				<s:else>
					<s:a action="logout">退出</s:a>
					<a>您好，<s:property value="#session.userName"/></a>
				</s:else>
				<input type="text" placeholder="单曲/歌手/专辑">
			</ul>
		</div>
	</div>
	<div id="myCarousel" class="carousel slide">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		</ol>
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div class="item active">
				<img class="img-responsive" src="pic/solgan/4.jpg" alt="First slide">
			</div>
			<div class="item">
				<img class="img-responsive" src="pic/solgan/5.jpg"
					alt="Second slide">
			</div>
			<!-- 				<div class="item">
					<img class="img-responsive" src="pic/solgan/6.jpg"
						alt="Third slide">
				</div> -->
		</div>
		<!-- 轮播（Carousel）导航 -->
		<a class="carousel-control left myslider" href="#myCarousel"
			data-slide="prev">&lsaquo;</a> <a
			class="carousel-control right myslider" href="#myCarousel"
			data-slide="next">&rsaquo;</a>
	</div>

	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">登录Accio</h4>
				</div>
				
				<s:form action="login">
					<div class="modal-body">
								<div class="form-group">
									<label for="userName">用户名:</label>
									<input class="form-control" name="userName" required>
								</div>
								<div class="form-group">
									<label for="userPwd">密码:</label>
									<input class="form-control" name="userPwd" required>
								</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
						<button type="submit" class="btn btn-primary">登录</button>
					</div>
				
				</s:form>
			</div>
		</div>
	</div>

	<div class="modal fade" id="registModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">加入Accio</h4>
				</div>
				
				<s:form action="regist">
				<div class="modal-body">
							<div class="form-group">
								<label for="userName">用户名:</label>
								<input class="form-control" name="userName" required>
								<s:fielderror fieldName="userName"/>
							</div>
							<div class="form-group">
								<label for="userPwd">密码:</label>
								<input class="form-control" name="userPwd" required>
								<s:fielderror fieldName="userPwd"/>
							</div>
							  <div class="checkbox">
							    <label>
							      <input type="checkbox" required style="width:auto;">我志愿加入Accio，并同意遵守<a href="#" data-toggle="tooltip" data-placement="bottom" title="别瞎搞   —via 邓布利多">《飞来咒使用细则》</a>
							    </label>
							  </div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
					<button type="submit" class="btn btn-primary">确认注册</button>
				</div>
				</s:form>
			</div>
		</div>
	</div>

</body>
</html>
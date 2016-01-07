<%@ page language="java" import="com.opensymphony.xwork2.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
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
</head>

<body class="index">
	<%@ include file="/jsp/header.jsp" %>
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
	
	
	<div class="box_wrapper container">
		<div class="col-md-12 music_recommond">
			<div class="row recommond_title">
				<div class="col-xs-12 title_wraper">
					<s:a ><i class="iconfont">&#xe600;</i>热门推荐</s:a>
				</div>
			</div>
			<div class="row albums">
				<div class="col-md-3 album">
					<div class="album_content">
						<img  src="pic/albums/gwjd/gwjd.png">
						<div class="bottom">
						<i class="iconfont">&#xe601;</i>
							<s:a href="">《歌舞伎町の女王》</s:a>
						</div>
					</div>
				</div>
				<div class="col-md-3 album">
					<div class="album_content">
						<img  src="pic/albums/ry/ry.png">
						<div class="bottom">
							<i class="iconfont">&#xe601;</i>
							<s:a>《如也》</s:a>
						</div>
					</div>
				</div>
				<div class="col-md-3 album">
					<div class="album_content">
						<img  src="pic/albums/wq/wq.png">
						<div class="bottom">
							<i class="iconfont">&#xe601;</i>
							<s:a>《万能青年旅店》</s:a>
						</div>
					</div>
				</div>
				<div class="col-md-3 album">
					<div class="album_content">
						<img  src="pic/albums/parachutes/parachute.png">
						<div class="bottom">
							<i class="iconfont">&#xe601;</i>
							<s:a href="ShowAlbum">《Parachute》</s:a>
						</div>
					</div>
				</div>
			</div>
		</div>
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

				<s:form action="login" namespace="/">
					<div class="modal-body">
						<div class="form-group">
							<label for="userName">用户名:</label> <input class="form-control"
								name="userName" required>
						</div>
						<div class="form-group">
							<label for="userPwd">密码:</label> <input class="form-control"
								name="userPwd" required>
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

				<s:form action="regist" namespace="/">
					<div class="modal-body">
						<div class="form-group">
							<label for="userName">用户名:</label> <input class="form-control"
								name="userName" required="true">
							<s:fielderror fieldName="userName" />
						</div>
						<div class="form-group">
							<label for="userPwd">密码:</label> <input class="form-control"
								name="userPwd" required="true">
							<s:fielderror fieldName="userPwd" />
						</div>

						<div class="form-group">
							<label for="userPwd">请再次输入密码:</label> <input class="form-control"
								name="reuserPwd" required="true">
							<s:fielderror fieldName="reuserPwd" />
						</div>

						<div class="checkbox">
							<label> <input type="checkbox" required
								style="width: auto;">我志愿加入Accio，并同意遵守<a href="#"
								data-toggle="tooltip" data-placement="bottom"
								title="别瞎搞   —via 邓布利多">《飞来咒使用细则》</a>
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
	<div class="modal fade" id="modifyModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改密码</h4>
				</div>

				<s:form action="modifyPwd" namespace="/">
					<div class="modal-body">
						<div class="form-group">
							<label for="userPwd">请输入新的密码:</label> <input class="form-control"
								name="userPwd" required="true">
							<s:fielderror fieldName="userPwd" />
						</div>
						<div class="form-group">
							<label for="reuserPwd">请再次输入新的密码:</label> <input class="form-control"
								name="reuserPwd" required="true">
							<s:fielderror fieldName="reuserPwd" />
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
						<button type="submit" class="btn btn-primary">确认修改</button>
					</div>
				</s:form>
			</div>
		</div>
	</div>
	<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">注销账户</h4>
				</div>

					<div class="modal-body">
						<div style="height: 200px;">确认注销您的账户吗？</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
						<s:a class="btn btn-primary" action="freeze">确认注销</s:a>
					</div>
			</div>
		</div>
	</div>
</body>
</html>
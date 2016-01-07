<%@ page language="java" import="com.opensymphony.xwork2.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">

<div class="index">
	<div class="top">
		<div class="nav_wrap">
			<ul class="nav index_nav">
				<div class="logo_wrap">
					<img src="pic/logo.png">
				</div>
				<li role="presentation" class="active"><a href="/AccioMusic">发现音乐</a></li>
				<li role="presentation"><s:a href="myMusic">我的音乐</s:a></li>
				<li role="presentation"><a href="#">我的订单</a></li>
				<s:if test="#session.userName==null">
					<a data-toggle="modal" data-target="#registModal">注册</a>
					<a class="spliter">|</a>
					<a data-toggle="modal" data-target="#loginModal">登录</a>
					<input type="text" placeholder="单曲/歌手/专辑">
				</s:if>
				<s:else>
					<li style="float: right;"><s:a action="logout" namespace="/">退出</s:a>
					<li class="dropdown usermenu"
						style="float: right; cursor: pointer;"><a
						class="dropdown-toggle" data-toggle="dropdown">您好，<s:property
								value="#session.userName" /> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a data-toggle="modal" data-target="#modifyModal">修改密码</a></li>
							<li><a data-toggle="modal" data-target="#deleteModal">注销账户</a></li>
						</ul></li>
					<li style="float: right; padding-right: 20px"><input
						type="text" placeholder="单曲/歌手/专辑"></li>
				</s:else>
			</ul>
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
							<label for="reuserPwd">请再次输入新的密码:</label> <input
								class="form-control" name="reuserPwd" required="true">
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
</div>
</html>
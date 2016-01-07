<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>我的音乐</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
</head>

<body class="mymusic">
	<%@ include file="/jsp/header.jsp"%>
	<div class="box_wrapper container">
		<div class="col-md-12 list_wrapper">
			<div class="row list_title">
				<div class="col-xs-12 title_wraper">
					<a><i class="iconfont">&#xe600;</i>我的专辑</a>
				</div>
			</div>
			<%-- 
			<s:property value="list_S.get(0).SingerName"/> --%>
			
			<s:if test="list.size()==0">
				<div>对不起，您还未购买任何专辑，快去选购吧！</div>
			</s:if>
			<s:else>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>专辑封面：</th>
							<th>专辑名：</th>
							<th>演唱者：</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="list" id="outer">
							<tr>
								<td><img alt="" src="<s:property value='albumCover'/>" width="50px"></td>
								<td><s:property value="albumName"/></td>
								
								<s:iterator value="list_S" id="inner">
									<s:if test="#inner.SingerId==#outer.SingerId">
										<td><s:property value="#inner.SingerName"/></td>
									</s:if>
								</s:iterator>
								<td><button class="btn btn-primary">立即收听</button></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</s:else>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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


<body class="AlbumPage">
	<%@ include file="/jsp/header.jsp" %>
	
	
	<div class="box_wrapper container">
		<div class="col-md-12 Album_wrapper">
			<div class="row title">
				<div class="col-xs-12 title_wraper">
					<a><i class="iconfont">&#xe600;</i>专辑详情</a>
				</div>
			</div>
			
			
			<s:property value="album.albumName"/>
			<s:property value="album.singerId"/>
			<s:property value="album.albumCover"/>
			<s:property value="album.albumInfo" />
		</div>
	</div>
</body>
</html>
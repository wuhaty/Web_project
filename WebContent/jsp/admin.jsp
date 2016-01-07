<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
<title>后台管理页面</title>
</head>
<body>
	<div class="container">
		<div class="row" style="border: solid #eee 1px; padding: 35px 20px;margin-bottom: 30px;">
			<div class="col-md-12">
				<s:if test="userAlbums.size()!=0">
					<b style="font-family:'Microsoft Yahei', Arial, Helvetica, sans-serif; font-size: 15px;">用户数据</b>
					<table class="table-striped table-hover" width="100%" style="border: solid #eee 1px; ">
						<thead>
							<tr>
								<th>用户名</th>
								<th>专辑</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="userAlbums" id="user">
								<tr>
									<td><s:property value="userName"/></td>
									<td>
										<s:if test="albums.size()==0">
											空
										</s:if>
										<s:else>
											<table width="100%">
											<s:iterator value="albums" id="inner" status="st">
												<tr>
													<td width="33%" style="padding: 10px;"><img alt="" src="<s:property value='#inner.albumCover'/>"/></td>
													<td width="33%"  style="padding: 10px;"><s:property value="#inner.albumName"/></td>
													<td width="33%"  style="padding: 10px;">
														<button class="btn btn-default">删除</button>
														<s:if test="#st.last">
															<button class="btn btn-default">新增专辑</button>
														</s:if>
													</td>
												</tr>
											</s:iterator>
											<tr>
												<td></td>
												<td></td>
											</tr>
											</table>
										</s:else>
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</s:if>
			</div>
		</div>


		<div class="row" style="border: solid #eee 1px; padding: 35px 20px;">
			<div class="col-md-6" style="border-right: solid #eee 1px;">
				添加专辑：
				<form role="form">
					<div class="form-group">
						<label for="AlbumName">专辑名称</label> <input type="text"
							class="form-control" id="AlbumName" placeholder="请输入名称">
					</div>
					<div class="form-group">
						<label for="SingerName">歌手名称</label> <input type="text"
							class="form-control" id="SingerName" placeholder="请输入名称">
					</div>
					<div class="form-group">
						<label for="AlbumCover">专辑封面</label> <input type="file"
							id="AlbumCover">
					</div>
					<div class="form-group">
						<label for="AlbumInfo">专辑信息</label> <input type="text"
							class="form-control" id="AlbumInfo" placeholder="请输入名称">
					</div>
					<button type="submit" class="btn btn-default">提交</button>
				</form>
			</div>
			<div class="col-md-6">
				添加歌手：
				<form role="form">
					<div class="form-group">
						<label for="SingerName">歌手名称</label> <input type="text"
							class="form-control" id="SingerName" placeholder="请输入名称" required>
					</div>
					<div class="form-group">
						<label for="SingerInfo">歌手简介</label> <input type="text"
							class="form-control" id="SingerName" placeholder="请输入名称">
					</div>
					<button type="submit" class="btn btn-default">提交</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
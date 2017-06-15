<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/slimtable.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>MultiScreen in bootstrap</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#danhSach").slimtable();
	});
</script>
</head>
<body>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
		style="background: red;">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand">グイン デッン クイ FPT一万人ブリッジSE</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="trang-chu.action">書籍一覧</a></li>
				<li><a href="hien-thi-hoc-tu-vung.action">感想一覧</a></li>

			</ul>
		</div>
		</nav>


	</div>
	<div style="margin-top: 20px;"
		class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<a class="btn btn-default" href="addBook.jsp" style="padding: 0px 20px"
			onclick="thongBao(1);"><span
			class="glyphicon glyphicon-list"></span>追加</a>
		<table class="table table-striped"
			style="text-align: center; margin-top: 10px" id="danhSach">
			<thead>
				<tr>
					<th style="text-align: center; width: 8%">書籍ID</th>
					<th style="text-align: center; width: 20%">書籍名</th>
					<th style="text-align: center; width: 20%">出版社</th>
					<th style="text-align: center;">ページ数</th>
					<th style="text-align: center; width: 22%">操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="listBook">
					<tr>
						<td><s:property value="bookId" /></td>
						<td><s:property value="bookName" /></td>
						<td>/<s:property value="publisher" />/
						</td>
						<td><s:property value="pageNumber" /></td>
						<td>
							<button class="btn btn-default" style="padding: 0px 20px"
								onclick="thongBao(0);">
								<span class="glyphicon glyphicon-edit"></span> 修正
							</button>
							<button class="btn btn-default" style="padding: 0px 20px"
								onclick="thongBao(1);">
								<span class="glyphicon glyphicon-remove-circle"></span> 削除
							</button> <a class="btn btn-default" style="padding: 0px 20px"
							href="show-list-impression.action"> <span
								class="glyphicon glyphicon-edit"></span>感想一覧
						</a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>

</body>
</html>
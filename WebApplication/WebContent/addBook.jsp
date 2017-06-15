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
		<div class="col-lg-12" style="border-bottom-style: ridge">
			<p style="font-weight: bold; font-size: 30px">書籍の編集</p>
		</div>
		<div class="col-lg-12" id="leftdiv">
		<s:form action="add-book" method="post">
			<div class="col-lg-12" style="margin-top: 20px">
				<label>書籍名</label>
			</div>
			<div class="col-lg-12" style="margin-bottom: 20px">
				<input type="text" class="form-control" name="book.bookName">
			</div>
			<div class="col-lg-12">
				<label>出版社</label>
			</div>
			<div class="col-lg-12" style="margin-bottom: 20px">
				<input type="text" class="form-control" name="book.publisher">
			</div>
			<div class="col-lg-12">
				<label>ページ数</label>
			</div>
			<div class="col-lg-12" style="margin-bottom: 20px">
				<input type="text" class="form-control" name="book.pageNumber">
			</div>
			
			<p>
							<input type="submit" value="送信"
								class="btn btn-success col-lg-12" />
						</p>
			</s:form>

		</div>
		<a class="btn btn-default" style="padding: 0px 20px" 
			href="show-list-book.action"><span
			class="glyphicon glyphicon-list"></span>戻る</a>
			
	</div>

</body>
</html>
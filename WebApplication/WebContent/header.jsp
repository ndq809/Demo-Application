<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/main.js"></script>
<link rel="shortcut icon" href="images/english.ico"/>
</head>
<body>
	<div tabindex="-1" class="modal fade" id="tuDien" role="dialog"
		aria-hidden="true" aria-labelledby="myModalTitle">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header"
					style="background: #aaa; border: #ccc 1px solid;">
					<button class="close" aria-hidden="true" type="button"
						style="margin-top: -10px;" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove-circle"
							style="color: white;"></span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="message-text" class="control-label">Nhập từ / cụm từ
							cần tra:</label> <input type="text" class="form-control" id="tuCanTra">
					</div>
					<div style="text-align: center;" id="ketQuaTraTu">
						<div id="while-load" class="col-lg-12" style="display: none;">
							<div class="col-lg-5"></div>
							<div class="col-lg-2">
								<img alt="loadIcon" src="images/loadingIcon.gif" width="50%">
							</div>
							<div class="col-lg-5"></div>
						</div>
					</div>
					<div class="modal-footer" style="padding: 0px;border-top: none;">
					<a class="btn btn-primary" id="myModalClose" type="button"
						onclick="tuDienOnline();">Dịch nghĩa ngay</a> <a
						class="btn btn-default" id="myModalClose" data-dismiss="modal"
						type="button">Đóng</a>

				</div>
				</div>
				
			</div>
		</div>

	</div>
	<!-- header -->
	<div class="col-lg-12" style="border-bottom-style: groove;border-top: #ccc 1px solid;">
		<div class="col-lg-1"></div>
		<div class="col-lg-8" style="height: 100px;">
			<div class="col-lg-4"
				style="height: 100px; background: url('images/website_logo.jpg'); background-size: cover;">
				<a href="trang-chu.action"
					style="width: 100%; height: 100%; display: block;"></a>
			</div>
			<div class="col-lg-8">
				<p style="font-family: Algerian; font-size: 300%; color: red;">English
					Social E+</p>
				<p
					style="font-family: Chiller; font-size: 40px; margin-top: -20px; padding-left: 60px;">Come
					to learn,play & experience....</p>
			</div>
		</div>
		<s:set name="userName" value="#session.tenDangNhap" id="userName"></s:set>

		<div class="col-lg-3" style="padding: 0px">
			<div class="col-lg-7"
				style="height: 25px; float: right; padding: 0px">
				<s:if test="%{#userName != null}">
					<div style="border: #ccc 1px solid;">
						<li class="dropdown" style="list-style: none;"><a
							class="dropdown-toggle" data-toggle="dropdown"
							style="font-size: 15px;text-align: center;"><img alt="login"
								src="images/login.png" width="25px" height="25px"
								style="margin-right: 5px; padding-bottom: 3px"> Chào: <s:property
									value="userName" /><span class="caret"></span>
						</a>

							<ul class="dropdown-menu">
								<li><a href="hien-thi-cap-nhat-tk.action">Thông tin cá
										nhân</a></li>
								<li><a href="dang-xuat.action">Đăng xuất</a></li>
							</ul></li>
					</div>
				</s:if>
				<s:else>
					<div style="border: #ccc 1px solid;" class="loginBox">

						<a id="myModalLaunch" data-target="#myModal" data-toggle="modal"
							style="font-size: 15px"><img alt="login"
							src="images/login.png" width="25px" height="25px"
							style="margin-right: 5px; padding-bottom: 3px">Đăng nhập /
							Đăng ký</a>
					</div>
				</s:else>
			</div>
			<div class="input-group stylish-input-group col-lg-12"
				style="margin-top: 67px; padding: 0px">
				<input type="text" class="form-control"
					placeholder="input to search"> <span
					class="input-group-addon">
					<button type="submit">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</span>
			</div>
		</div>
		<div class="col-lg-12">
			<div tabindex="-1" class="modal fade" id="myModal" role="dialog"
				aria-hidden="true" aria-labelledby="myModalTitle">
				<div class="modal-dialog">
					<div class="modal-content">
						<s:form action="dang-nhap" method="post">
							<div class="modal-header">
								<button class="close" aria-hidden="true" type="button"
									data-dismiss="modal">×</button>
								<h4 class="modal-title" id="myModalTitle">Đăng nhập</h4>
							</div>
							<div class="modal-body">


								<div class="form-group">
									<label for="message-text" class="control-label">Tên
										đăng nhập</label> <input type="text" class="form-control"
										name="tenDangNhap">
								</div>
								<div class="form-group">
									<label for="message-text" class="control-label">Mật
										khẩu</label> <input type="password" class="form-control"
										name="matKhau">
								</div>

							</div>
							<div class="modal-footer">
								<a class="btn btn-default" style="float: left;"
									href="hien-thi-dang-ky.action">Tạo tài khoản</a>
								<button class="btn btn-default" id="myModalClose" type="button"
									data-dismiss="modal">Close</button>
								<input type="submit" class="btn btn-primary" id="myModalSave"
									value="Đăng nhập">

							</div>
						</s:form>
					</div>
				</div>

			</div>

		</div>
	</div>
	<div class="col-lg-12" style="height: 50px;">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand">English Plus</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="trang-chu.action">Trang chủ</a></li>
				<li><a href="hien-thi-hoc-tu-vung.action">Học từ vựng</a></li>
				<li><a href="xem-bai-viet-ngu-phap.action">Học Ngữ Pháp</a></li>
				<li><a href="hien-thi-hoc-nghe.action">Học Nghe</a></li>
				<li><a href="hien-thi-hoc-viet.action">Học Viết</a></li>
				<li><a href="hien-thi-bai-viet-cong-dong.action">Bài viết cộng đồng</a></li>
				<li><a data-target="#tuDien" data-toggle="modal">Tra từ
						điển</a></li>
			</ul>
		</div>
		</nav>
	</div>
	<!-- header end-->
</body>
</html>
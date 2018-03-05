<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<!-- CSSとSCRIPTの読み込み -->
	<link rel="stylesheet" type="text/css" href="./css/basis_style.css">

<!-- ファビコン -->
	<link rel="shortcut icon" href="http://www.iconj.com/icon.php?pid=eh53o8d8gl" type="image/x-icon" />
	<link rel="shortcut icon" href="http://www.iconj.com/gif_icon.php?pid=eh53o8d8gl" type="image/gif" />
	<!-- end of iconj.com favicon code -->

<title>MyPageLogin画面</title>
</head>


<body>

<!-- フッター固定の為のdiv(container) -->
<div class="container">

<!-- ヘッダー部分 -->
<header>
	<div id="header">
		<div class="header-logo">ONLINE SHOP</div>

		<div class="top-menu">

			<div class="left-list">
			<ul class="top-li">
			<li><a href='<s:url action="GoHomeAction"/>'>TOP</a></li>
			<li><a href='<s:url action="ProductPageAction"/>'>PRODUCT</a></li>
			<li><a href='<s:url action="UserCreateAction"/>'>SIGNUP</a></li>
			</ul>
			</div>

			<div class="right-list">
			<ul>
			<li><a href='<s:url action="GoLoginAction"/>'>LOGIN</a></li>
			<li><a href='<s:url action="MyPageAction"/>'>MYPAGE</a></li>
			<li><a href='<s:url action="LogoutAction"/>'>LOGOUT</a></li>
			<li><a href='<s:url action="InquiryAction"/>'>MAIL</a></li>
			</ul>
			</div>
		</div>

	</div>
</header>

<div class="main-push"></div>

<!-- メイン部分 -->
<div id="main">
	<h3>MYPAGE LOGIN</h3>

	<div class="push"></div>
	<img src="./image/donut.png" style="width:40px;">
	<div class="icon-push"></div>

	<div class="main-content">

		<p>マイページの確認をする際はログインをお願いします。</p>
		<div class="push"></div>

		<s:form action="MyPageLoginAction">
		<table>
			<tr>
				<td><label>ログインID:</label></td>
				<td><input type="text" name="loginUserId" value=""/></td>
			</tr>

			<tr>
				<td><label>ログインPASS:</label></td>
				<td><input type="password" name="loginPassword" value=""/></td>
			</tr>

			<tr>
				<td><s:submit class="button" value="ログイン"/></td>
			</tr>

		</table>
		</s:form>
		<div class="push"></div>
	</div>

	<div class="content-downpush"></div>

		<div id="text-link">
			<p><a href='<s:url action="UserCreateAction"/>'>新規ユーザー登録はこちら</a></p>
			<p><a href='<s:url action="GoHomeAction"/>'>Homeへ戻る場合はこちら</a></p>
		</div>
</div>

<!-- メインとフッターの間隔調整用div -->
<div class="footer-push"></div>


<!-- フッター部分 -->
<footer>

	<div class="footer-height"></div>

	<div class="footer-message">
		Copyright©2018 SWEETOPIA. All Rights Reserved.
	</div>

</footer>
</div>


</body>
</html>
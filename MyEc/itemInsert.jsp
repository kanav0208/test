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

<title>ItemInsert画面</title>
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
	<h3>ITEM INSERT</h3>

	<div class="main-content">
		<p>追加する商品の情報を入力してください。</p>

		<div class="push"></div>

		<table>
		<s:form method="post" action="ItemInsertAction">
			商品名<br>
			<input type="text" name="ItemName"/><br><br>

			値段<br>
			<input type="text" name="ItemPrice"/><br><br>

			在庫<br>
			<input type="text" name="ItemStock"/><br><br>

			カテゴリ<br>
			<input type="text" name="ItemCategory"/><br><br>

			商品説明<br>
			<input type="text" name="ItemDescription"/><br><br>

			画像パス<br>
			<input type="text" name="ImageFilePath"/><br><br>

			<div class="push"></div>

		<s:submit class="button" value="商品を追加する"/>
		</s:form>

		</table>
	</div>

	<div class="push"></div>

	<div id="text-link">
		<p><a href='<s:url action="GoMasterPageAction"/>'>管理画面に戻る場合はこちら</a><br></p>
		<p><a href='<s:url action="LogoutAction"/>'>ログアウトする場合はこちら</a></p>
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
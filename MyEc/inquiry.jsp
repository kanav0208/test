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

<title>Inquiry画面</title>
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
	<h3>INQUIRY</h3>

	<div class="push"></div>

	<img src="./image/letter.png" style="width:40px;">

	<div class="icon-push"></div>

	<div class="main-content">
		<p>お問い合わせがある方は、下記よりご連絡をお願いいたします。</p>
		<br>

		<div class="error-message">
			<s:if test="errorMessage != null ">
			<p><s:property value="errorMessage" escape="false"/></p>
			</s:if>
		</div>

		<table>
		<s:form action="InquiryConfirmAction">
			名前<br>
				<input type="text" name="inquiry_name" value=""/><br><br>

			メールアドレス<br>
				<input type="text" name="inquiry_mail" value=""/><br><br>

			お問い合わせの種類<br>
				<select name="qtype">
				<option value="company">会社について</option>
				<option value="product">商品について</option>
				<option value="order">注文について</option>
				<option value="support">アフターサポートについて</option>
				<option value="another">その他のお問い合わせ</option>
				</select>

			<br><br>

			お問い合わせ内容<br>
				<s:textarea cols="30" rows="5" name="body" value=""/>
				<br>
				<input type="hidden" name="master_id" value="kanri"/>
				<s:submit class="button" value="送信"/>
		</s:form>
		</table>

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
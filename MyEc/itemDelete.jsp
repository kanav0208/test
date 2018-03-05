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
	<link rel="stylesheet" type="text/css" href="./css/table_style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- ファビコン -->
	<link rel="shortcut icon" href="http://www.iconj.com/icon.php?pid=eh53o8d8gl" type="image/x-icon" />
	<link rel="shortcut icon" href="http://www.iconj.com/gif_icon.php?pid=eh53o8d8gl" type="image/gif" />
	<!-- end of iconj.com favicon code -->

<title>ItemDelete画面</title>
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
	<h3>ITEM DELETE CONTROL</h3>

	<div class="main-content">
		<p>削除したい商品を選択してください。</p>
		<div class="push"></div>

		<table>
		<s:form action="ItemDeleteAction">
		<s:iterator value="buyItemDTOList">

			<dl class="dl-list">
				<dd class="dd-list">

				<img class="image" style="width:150px; height:100px;" src="<s:property value='image_file_path'/>" >

				<br><br>

				<s:property value="itemName" /><br>

				<span>値段:</span>
				<s:property value="itemPrice" /><span>円</span><br>

				<span>現在の在庫:</span>
				<s:property value="item_stock"/><span>個</span><br>

				<input class="check-box" type="checkbox" name="deleteName" value="<s:property value='itemName'/>">

				</dd>
			</dl>
		</s:iterator>

		<div class="clear"></div>
		<div class="buyItemDown-push"></div>

		<tr>
			<td><s:submit class="button" value="商品を削除する"/></td>
		</tr>

		</s:form>
		</table>
	</div>

	<div class="buyItemDown-push"></div>

	<div id="text-link">
		<p><a href='<s:url action="GoMasterPageAction" />'>管理画面に戻る場合はこちら</a></p>
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

<script type="text/javascript" src="./script/check-button.js"></script>
</body>
</html>
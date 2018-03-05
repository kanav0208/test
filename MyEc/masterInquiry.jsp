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

<!-- ファビコン -->
	<link rel="shortcut icon" href="http://www.iconj.com/icon.php?pid=eh53o8d8gl" type="image/x-icon" />
	<link rel="shortcut icon" href="http://www.iconj.com/gif_icon.php?pid=eh53o8d8gl" type="image/gif" />
	<!-- end of iconj.com favicon code -->

<title>MasterInquiry画面</title>
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
	<h3>MASTER INQUIRY</h3>

	<div class="push"></div>
	<div class="main-content">

		<!-- 問合せがない場合 -->
		<s:if test="#session.inquiryDTOList == null">
			<div class="push"></div>
			<span>INQUIRY MESSAGE</span>
			<br><br>
			<div class="error-message">お問合せメッセージはありません。</div>
			<div class="push"></div>
		</s:if>


		<!-- 問合せがある場合 -->
		<s:elseif test="#session.inquiryDTOList != null">
			<br><br>
			<span>INQUIRY MESSAGE</span>
			<div class="push"></div>

			<table class="inquiry-table">
			<tbody>
			<tr>
				<th class="inquiry-th">名前</th>
				<th class="inquiry-th">メールアドレス</th>
				<th class="inquiry-th">お問い合わせの種類</th>
				<th class="inquiry-th">お問い合わせ内容</th>
			</tr>

			<s:iterator value="#session.inquiryDTOList">
			<tr>
				<td class="inquiry-td"><s:property value="inquiry_name"/></td>

				<td class="inquiry-td"><s:property value="inquiry_mail"/></td>

				<s:if test='qtype=="company"'>
				<td class="inquiry-td">会社について</td>
				</s:if>

				<s:if test='qtype=="product"'>
				<td class="inquiry-td">商品について</td>
				</s:if>

				<s:if test='qtype=="order"'>
				<td class="inquiry-td">注文について</td>
				</s:if>

				<s:if test='qtype=="support"'>
				<td class="inquiry-td">アフターサポートについて</td>
				</s:if>

				<s:if test='qtype=="another"'>
				<td class="inquiry-td">その他のお問い合わせ</td>
				</s:if>

				<td class="inquiry-td">
				<s:property value="body"/>
				</td>
			</tr>
			</s:iterator>
			</tbody>
			</table>

			<div class="push"></div>

			<!-- 履歴の削除機能 -->

			<s:form action="InquiryAllDeleteAction">
				<input type="hidden" name="deleteFlg" value="1">
				<s:submit class="button" value="一覧の削除" method="delete"/>
			</s:form>
		</s:elseif>


		<!-- messageに値が入っている場合は表示 -->
			<s:if test="message != null">
			<div class="push"></div>
			<p class="error-message"><s:property value="message"/></p>
			</s:if>
	</div>

	<div class="contentdown-push"></div>
	<div id="text-link">
		<p><a href='<s:url action="GoMasterPageAction"/>'>管理画面へ戻る場合はこちら</a></p>
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
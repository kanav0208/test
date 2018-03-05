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

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>

<!-- ファビコン -->
	<link rel="shortcut icon" href="http://www.iconj.com/icon.php?pid=eh53o8d8gl" type="image/x-icon" />
	<link rel="shortcut icon" href="http://www.iconj.com/gif_icon.php?pid=eh53o8d8gl" type="image/gif" />
	<!-- end of iconj.com favicon code -->


<title>BuyItemConfirm画面</title>
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
	<h3>BUY ITEM CONFIRM</h3>

	<div class="push"></div>

	<div class="main-content">
	<table>
		<s:form>
		<s:iterator value="buyItemDTOList">
			<s:if test="count !=0">

				<dl class="buy-item-list">

					<dd>
					<img class="image" style="width:150px; height:100px;" src="<s:property value='image_file_path'/>" ><br>

					商品名:
					<s:property value="itemName" /><br><br>

					値段:
					<s:property value="itemPrice" /><span>円</span><br>

					購入個数:
					<s:property value="count" /><span>個</span><br>

					</dd>
				</dl>
				<br>

			</s:if>
		</s:iterator>


		<!-- 繰り返し（商品別の計算）終了 -->

			<div class="clear"></div>

				<dl class="buy-item-confirm">
					<dd>
						支払い方法:
						<s:property value="session.pay" />
					</dd>
					<dd>

						お届け先:
						<s:property value="session.userAddress"/><br>

						<s:if test="buyItemDTOList.size()>1">
							合計金額:
							<s:property value="session.totalPrice"/><span>円</span>
						</s:if>
						<s:else>
							合計金額:
							<s:property value="session.total_price"/><span>円</span>
						</s:else>
					</dd>
				</dl>


				<tr>
					<td>
						<br>
					</td>
				</tr>

				<tr>
					<td><input type="button" class="button" value="戻る" onclick="submitAction('ProductPageAction')" /></td>
					<td><input type="button" class="button" value="完了" onclick="submitAction('BuyItemConfirmAction')" /></td>
				</tr>
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
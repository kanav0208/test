<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="text/javascript"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/pages.css">
<title>ホーム画面</title>
</head>
<body>
	<header>
		<!--kokotownロゴ-->
		 <a href='<s:url action="HomeMoveAction" />'>
		    <img src="./img/kokotown.png" class="logo">
		  </a>

		<input type="checkbox" id="navTgl">

		  <label for="navTgl" class="open">≡</label>
		  <label for="navTgl" class="close"></label>
		  <nav class="menu">
		    <p>menu</p>
		    <ul>
				<li><a href='<s:url action="HomeMoveAction" />'>Home</a></li>
				<li><a href="<s:url action="ProductSearchAction"><s:param name="serachWord" value=" ' ' "/><s:param name="categoryId" value="10"/></s:url>">Shop</a></li>
				<li><a href='<s:url action="CartMoveAction" />'>Cart</a></li>
				<li><a href="home2.jsp#m-cate">Category</a></li>

		      <s:if test="session.email != null">
			      <li><a href='<s:url action="MyPageAction" />'>MyPage</a></li>
			      <li><a href='<s:url action="LogoutAction" />'>Logout</a></li>
		      </s:if>

		      <s:else>
		      	  	 <li><a href='<s:url action="LoginMoveAction" />'>Login</a></li>
		      </s:else>
		    </ul>
		  </nav>
    </header>
ホーム画面
<p><s:property value="session.tempUserId"/></p>
<p><s:property value="session.email"/>さんがログインしています。

<p><a href='<s:url action="Home2MoveAction" />'>ホーム2画面</a>GoHome2Action</p>
<p><a href='<s:url action="HomeMoveAction" />'>ホーム画面</a>GoHomeAction</p>
<p><a href='<s:url action="LoginMoveAction" />'>ログイン画面</a>GoLoginAction</p>
<br>
<p><a href='<s:url action="UserCreateMoveAction" />'>新規ユーザー登録</a></p>
<p><a href='<s:url action="UserCreateConfirmAction" />'>登録内容確認画面</a></p>
<p><a href='<s:url action="UserCreateCompleteAction" />'>登録完了画面</a></p>
<br>
<p><a href='<s:url action="ResetUserPassAction" />'>パスワード再設定</a>ResetUserPassAction</p>
<p><a href='<s:url action="ResetUserPassConfirmAction" />'>登録内容確認画面</a>ResetUserPassConfirmAction</p>
<p><a href='<s:url action="ResetUserPassCompleteAction" />'>設定完了画面</a>ResetUserPassCompleteAction</p>
<br>
<p><a href='<s:url action="MyPageAction" />'>マイページ画面</a>MyPageAction</p>
<br>
<p><a href='<s:url action="PurchaseHistoryInfoAction" />'>購入履歴一覧画面</a>PurchaseHistoryInfoAction</p>
<br>
<p><a href='<s:url action="CartMoveAction" />'>カート画面</a>GoCartAction</p>
<p><a href='<s:url action="SettlementConfirmAction" />'>決済確認画面</a>SettlementConfirmAction</p>
<p><a href='<s:url action="DestinationCreateMoveAction" />'>購入情報入力画面</a></p>
<p><a href='<s:url action="DestinationConfirmAction" />'>購入情報確認画面</a></p>
<p><a href='<s:url action="DestinationCompleteAction" />'>購入情報完了画面</a></p>

<p><a href='<s:url action="DestinationCreateMoveAction" />'>あてさき</a></p>


<p><a href='<s:url action="SettlementCompleteAction" />'>購入完了画面</a>BuyItemCompleteAction</p>
<br>
<p><a href='<s:url action="ProductInfoAction" />'>商品一覧画面</a>ProductInfoAction</p>
<p><a href='<s:url action="ProductDetailAction" />'>商品詳細画面</a>ProductDetailAction</p>

<p><a href='<s:url action="AdministratorDisplayMoveAction" />'>管理者画面</a></p>



		<s:form action="ProductSearchAction">
		<select name="categoryId">
<option value="10">全てのカテゴリ</option>
<option value="101">本</option>
<option value="102">パソコン</option>
<option value="103">ゲーム</option>
</select>

				<input class="input"  type="search" name="serachWord" placeholder="商品名など" maxlength="15">

				<s:submit class="submit" value="検索"/>
		</s:form>
<s:form name="searchform4"  action="ProductSearchAction">
<div id="left">
<span>
<select name="categoryId">
<option value="10">全てのカテゴリ</option>
<option value="101">本</option>
<option value="102">パソコン</option>
<option value="103">ゲーム</option>
</select>
</span>
<span id="searchform4">
<input name="serachWord" id="keywords4" value="" type="search" />
<input type="image" src="./img/btn4.gif" alt="検索" id="searchBtn4" />
</span>
</div>
</s:form>
	<footer>
	    <p>good tomorrow co.,ltd All rights reserved</p>
	</footer>

	 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		 <script>
		 </script>
</body>
</html>
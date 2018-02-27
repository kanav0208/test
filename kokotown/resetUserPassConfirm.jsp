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
<link rel="stylesheet" type="text/css" href="./css/login.css">

<title>パスワード再設定確認</title>
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
				<li><a href="<s:url action="ProductSearchAction"><s:param name="searchWord" value=" ' ' "/><s:param name="categoryId" value="10"/></s:url>">Shop</a></li>
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

 	<div id="main">
		<br>
			<div id="title">
				<span>RESETPASS</span>
			</div>
		<s:form action="ResetUserPassCompleteAction">
		<div>入力内容をご確認ください</div>
			<table>
				<tr>
					<td>EMAIL</td>
					<td><s:property value="hideEmail" /></td>
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td><s:property value="hideNewLoginPassword" /></td>
				</tr>
			</table>
			<br>
			<s:hidden name="email" value="%{email}" />
			<s:hidden name="newPassword" value="%{newPassword}" />
			<div id="button">
				<button type="submit" class="">&nbsp;確定&nbsp;</button>
			</div>
		</s:form>
		<br><br>
		パスワード再設定に戻る場合は<a href='<s:url action = "ResetUserPassMoveAction" />'>こちら</a>
		<br><br>
	</div>
		<br>
	<footer>
	    <p>good tomorrow co.,ltd All rights reserved</p>
	</footer>

	 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		 <script>
		 </script>
</body>
</html>
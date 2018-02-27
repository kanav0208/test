<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<link rel="stylesheet" type="text/css" href="./css/form.css">

<title>ユーザー情報登録</title>
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
				<span>USERCREATE</span>
			</div>
		<s:form action="UserCreateConfirmAction">
		<div>ユーザー情報を入力してください</div>
					<table>
						<tr>
						    <td>姓</td>
						    <td><s:textfield type="text" name="familyName"  value="%{familyName}"/></td>
						</tr>
						<tr>
							<td>名<br></td>
							<td><s:textfield type="text" name="firstName" value="%{firstName}"/></td>
						</tr>
						<tr>
							<td>姓（ふりがな）</td>
							<td><s:textfield type="text" name="familyNameKana" value="%{familyNameKana}" /></td>
						</tr>
						<tr>
							<td>名（ふりがな）</td>
							<td><s:textfield type="text" name="firstNameKana" value="%{firstNameKana}" /></td>
						</tr>
						<tr>
							<td>性別</td>
							<td><s:radio name="sex" list="#{'0': '男性', '1': '女性'}" value="0" /></td>
						</tr>
						<tr>
							<td>メール</td>
							<td><s:textfield type="text" name="email" value="%{email}" /></td>
						</tr>
						<tr>
							<td>パスワード</td>
							<td><s:password name="password" value="%{password}"/></td>
						</tr>
						<tr>
							<td>パスワード(確認)</td>
							<td><s:password name="confirmPassword" value="%{confirmPassword}"/></td>
						</tr>
					</table>
					<br>
					<div id="button">
						<button type="submit" class="">&nbsp;登録&nbsp;</button>
					</div>
					</s:form>
					<s:iterator value="errMsgList">
						<s:div id="error">
							<br>
								<s:property />
							<br>
						</s:div>
					</s:iterator>
					<div id="error">
						<br>
						<s:property value="passwordErrorMessage"/>
						<br>
					</div>
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
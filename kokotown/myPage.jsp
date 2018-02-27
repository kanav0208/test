<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/pages.css">
<link rel="stylesheet" type="text/css" href="./css/myPage.css">
<title>myPage</title>
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
				<span>MYPAGE</span>
			</div>

			<s:if test="userInfoDTOList == null">
				<div>ユーザー情報はありません。</div>
			</s:if>

			<s:elseif test="message == null">
				<h2>ユーザー情報</h2>
					<table>
						<s:iterator value="userInfoDTOList">
						<tr>
							<td>姓</td>	<td><s:property value="familyName"/></td>
						</tr>
						<tr>
							<td>名</td><td><s:property value="firstName"/></td>
						</tr>
						<tr>
							<td>姓(かな)</td><td><s:property value="familyNameKana"/></td>
						</tr>
						<tr>
							<td>名(かな)</td><td><s:property value="firstNameKana"/></td>
						</tr>
						<tr>
							<td>性別</td><td><s:if test="sex==0">男性</s:if>
											<s:if test="sex==1">女性</s:if></td>
						</tr>
						<tr>
							<td>メールアドレス</td><td><s:property value="email"/></td>
						</tr>
						</s:iterator>
					</table>
						<br>
						<br>
						<br>
				<s:iterator value="destinationList">
						<table class="destination">
							<tr>
								<td>
									<s:property value="familyName"/>&nbsp;<s:property value="firstName" />
									&nbsp;(<s:property value="familyNameKana" />&nbsp;<s:property value="firstNameKana" />)<br><br>
									<s:property value="userAddress" /><br><br>
									<s:property value="telNumber" /><br><br>
									<s:property value="email" />
								</td>
							</tr>
						</table>
				</s:iterator>
			</s:elseif>
				<br>
				<br>
				<br>
 			<s:if test="session.email == 'test@test.com'">
				<div class="admin">
					<a href='<s:url action="AdministratorDisplayMoveAction" />'>
			   			 <img src="./img/sun.jpg" id="adminImg">
					 </a>
				</div>
			</s:if>
			 	<div>
					<p>購入履歴は<a href='<s:url action="PurchaseHistoryInfoAction" />'>こちら</a></p>
					<p>新規宛先登録は<a href='<s:url action="DestinationCreateMoveAction" />'>こちら</a></p>
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
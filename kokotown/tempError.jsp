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
	<link rel="stylesheet" type="text/css" href="./css/complete.css">

<title>宛先情報登録完了</title>
	<script type="text/javascript">
		history.forward();

		function autoLink() {
			location.href = "StartAction";
		}
		setTimeout("autoLink()", 5000);
	</script>
</head>
<body>
	<header>
		<!--kokotownロゴ-->
		 <a href='<s:url action="StartAction" />'>
		    <img src="./img/kokotown.png" class="logo">
		  </a>

		<input type="checkbox" id="navTgl">

		  <label for="navTgl" class="open">≡</label>
		  <label for="navTgl" class="close"></label>
		  <nav class="menu">
		    <p>menu</p>
		    <ul>
				<li><a href='<s:url action="StartAction" />'>Home</a></li>
		    </ul>
		  </nav>
    </header>

	<div id="main">
		<br>
			<div id="title">
				<span>DESTINATION</span>
			</div>

		<div>
			<h1>セッションエラーです。</h1>
			<h2>5秒後にホーム画面に移ります。</h2>
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
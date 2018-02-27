<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8">
<title>KOKOTOWN</title>

    <link rel="stylesheet"  href="./css/home.css" type="text/css">
    <link rel="stylesheet" href="./css/footer.css" type="text/css">
    <link rel="stylesheet" href="./css/navi.css" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style type="text/css">
a:link{
text-decoration: none;}

	.clearfix:after {
		content:'';
		display:table;
		clear:both;
	}
	.cat-list {
		padding:40px 0;
		background: #000;
	}
	.cat-list li {
		float:left;
		width:33.3%;
		list-style:none;
		overflow:hidden;
		position:relative;
	}
.cat-list li:before,
.cat-list li:after {
  position: absolute;
  display: block;
  content: '';
  width: 0;
  height: 0;
  opacity:1;
  z-index:99;
  transition: all .5s;
}
.cat-list li:before {
  top: 0;
  left: 0;
  border-top: 2px solid #fff;
  border-left: 2px solid #fff;
}
.cat-list li:after {
  right: 0;
  bottom: 0;
  border-right: 2px solid #fff;
  border-bottom: 2px solid #fff;
}
/* .cat-list li:hover a {
  background-color: #fff;
  color: #000;
  transition: all .7s;
} */
.cat-list li:hover:before,
.cat-list li:hover:after {
  width: 100%;
  height: 100%;
  opacity: 1;
  transition: all .7s;
}
	.cat-list li span.cat-title {
		position:absolute;
		top:35%;
		left:0;
		right:0;
		margin:auto;
		text-align: center;
		visibility: hidden;
		opacity: 0;
		color:#fff;
	}
	.cat-list li a {
		display:block;
		width:100%;
		position: relative;
	}
	.cat-list li a:before {
	    content: '';
	    width: 100%;
	    height: 100%;
	    background: rgba(0, 0, 0, 0.5215686274509804);
	    top: 0;
	    position: absolute;
	    opacity: 0;
	    visibility: hidden;
	}
	.cat-list li:hover a:before {
		opacity: 1;
		visibility: visible;
	}
	.cat-list li:hover a span.cat-title {
		visibility: visible;
		opacity: 1;
	}
	.cat-list li img {
		max-width:100%;
		height:auto;
	}
	.m-cate{
	text-align: center;
	color:white;
	font-size:20px;
	margin-bottom: 20px;
	}
	.cat-title{
	font-size: 30px;
	}

</style>
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
    <div class="content" role="main">


  <br>


  <h3>New everyday</h3>
  <br>
  <p>
 『自分自身でいられる時間』 <br>
 『心からリラックスできる空間』 <br>『日々の暮らしを楽しむこと』<br>
 笑顔を絶やさないライフスタイルを提案します。</p>
    	<div id="main">
		<br><br><br><br>
			<div id="title"> <a href='<s:url action="HomeMoveAction" />'>
		<span >n e w &emsp;   a c c o u n t</span></a>
			</div>

</div>
<br> <br><br><br><br><br><br><br>
  <h1>seek peace to you</h1>

</div>
<footer></footer>
		<ul class="cat-list clearfix">
			<div class = "m-cate">商品別カテゴリ-</div>
		  	<li>
				<a href="<s:url action="ProductSearchAction"><s:param name="serachWord" value=" ' ' "/><s:param name="categoryId" value="10"/></s:url>">
					<img  src="./img/all.jpg">
					<span class="cat-title">すべてのカテゴリー</span>
				</a>
			</li>
		  	<li>
				<a href="<s:url action="ProductSearchAction"><s:param name="serachWord" value=" ' ' "/><s:param name="categoryId" value="101"/></s:url>">
					<img  src="./img/camera1.jpg">
					<span class="cat-title">カメラ/時計カテゴリー</span>
				</a>
			</li>
			<li>
				<a href="<s:url action="ProductSearchAction"><s:param name="serachWord" value=" ' ' "/><s:param name="categoryId" value="102"/></s:url>">
					<img  src="./img/car1.jpg">
					<span class="cat-title">くるまカテゴリー</span>
				</a>
			</li>
		  	<li>
				<a href="<s:url action="ProductSearchAction"><s:param name="serachWord" value=" ' ' "/><s:param name="categoryId" value="103"/></s:url>">
					<img  src="./img/chair1.jpg">
					<span class="cat-title">椅子/ソファーカテゴリー</span>
				</a>
			</li><li>
				<a href="<s:url action="ProductSearchAction"><s:param name="serachWord" value=" ' ' "/><s:param name="categoryId" value="104"/></s:url>">
					<img  src="./img/shoes2.jpg">
					<span class="cat-title">帽子/靴カテゴリー</span>
				</a>
			</li>
		  	<li>
				<a href="<s:url action="ProductSearchAction"><s:param name="serachWord" value=" ' ' "/><s:param name="categoryId" value="105"/></s:url>">
					<img  src="./img/umbrella1.jpg">
					<span class="cat-title">サングラス/かさカテゴリー</span>
				</a>
			</li>

	</ul>


    </body>

</html>
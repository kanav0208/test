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
 	<link rel="stylesheet" type="text/css"href="./css/productDetailInfo.css">
 	<link rel="stylesheet" type="text/css" href="./css/pages.css">
 <title>商品詳細</title>


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
 					<span class="kana">DETAIL</span>
 				</div>

 		<%-- <a href="<s:url action="ProductSearchAction"><s:param name="serachWord" value=" ' ' "/><s:param name="categoryId" value="10"/></s:url>">商品一覧に戻る</a> --%>
		<s:if test="buyCount.size()==0">
			<h1>在庫がありません</h1>

			<s:form action="CartMoveAction">
 			<s:iterator value="detailList">
 				<div class="main-container">
 					<div class="left">
 						<div class="image-souldout">
 							<img src="<s:property value="imageFilePath"/>" class="image">
							<img class="png" src="./img/sold_out.png" class="image">
 						</div>
 					</div>

 					<div class="right">
 						<div class="product-right">

 								<s:property value="productName" /><br>
 								(<s:property value="productNameKana" />)
 								<br>
 								<br>
 								　　　　　～商品詳細～<br><br>
 								<s:property value="productDescription" />
 								<br><br>
 								値段
 								<div class="kana"><s:property value="priceComma" /></div>
 								<input type="hidden" name="price" value='<s:property value="price"/>'>
 								<!-- <s:hidden name="price" value='<s:property value="price"/>'/> -->

 								<br>

 								発売会社名 <br>
 								<s:property value="releaseCompany" />
 								<br>
 								発売年月日 <br>
 								<s:property value="releaseDate" />
 						</div>
 					</div>
 				</div>
 				<div class="aa">
 				</div>
 			<!-- 同じカテゴリーの商品 -->
 			<HR>
 			<p>
 				同じカテゴリーの商品
 				(<s:property value="categoryName" />)
 			<p>
 			</s:iterator>
 		</s:form>
		</s:if>
		<s:else>
 		<s:form action="CartMoveAction">
 			<s:iterator value="detailList">
 				<div class="main-container">
 					<div class="left">
 						<div class="image-souldout">
 							<img src="<s:property value="imageFilePath"/>" class="image">
							 <s:if test="detailList.get(0).getProductCount()==0"><img class="png" src="./img/sold_out.png" class="image"></s:if>
 						</div>
 					</div>

 					<div class="right">
 						<div class="product-right">

 								<s:property value="productName" /> <br>
 								(<s:property value="productNameKana" />)
 								<br>
 								<br>
 							　　　　　～商品詳細～<br><br>
 								<s:property value="productDescription" />
 								<br><br>
 							値段
 								<div class="kana"><s:property value="priceComma" /></div>
 								<input type="hidden" name="price" value='<s:property value="price"/>'>
 								<!-- <s:hidden name="price" value='<s:property value="price"/>'/> -->
 								<br>

 							購入個数
 							<s:select list="buyCount" name="productCount" value="1" />
 								<br><br>
 								<s:if test="productCount>=1 && productCount<=5"><div class="stock">在庫が残り僅かです</div></s:if>
 								<br><br>

 							発売会社名 <br>
 								<s:property value="releaseCompany" />
 								<br>
 							発売年月日 <br>
 								<s:property value="releaseDate" />
 								<br><br>

 							<!--<input type="hidden" name="productCount" value='<s:property value="productCount"/>'>-->
 							<input type="hidden" name="addFlg" value="1">
 							<input type="hidden" name="productId" value='<s:property value="productId"/>'>
 							<!-- <s:param name="productId" value='<s:property value="productId"/>'/> -->
 							<div class=botan><s:submit value=" カートに入れる " method="execute"/></div>

 						</div>
 					</div>
 				</div>
 				<div class="aa">
 				</div>
 			<!-- 同じカテゴリーの商品 -->
 			<HR>
 			<p>
 				同じカテゴリーの商品
 				(<s:property value="categoryName" />)
 			<p>
 			</s:iterator>
 		</s:form>
 		</s:else>
 			<br>


 				<s:iterator value="sameCategoryList">
 					<section class="item item-pr">
 							<a href="<s:url action="ProductDetailAction">
 								<s:param name= "productId" value="productId"/>
 								<s:param name="categoryId" value="categoryId"/>
 							</s:url>">
 						<div class="image-souldout">
 						<img src="<s:property value="imageFilePath"/>" class="itemImage">
 						 <s:if test="productCount==0"><img class="png2" src="./img/sold_out.png" class="image"></s:if>
 						 </div>
 						 <s:if test="productCount>=1 && productCount<=5"><div class="stock">在庫が残り僅かです</div></s:if>
 						 <s:else><div class="stock">&nbsp;</div></s:else>
 							<div><s:property value="productName" /></div>
 							<div><s:property value="priceComma"/></div>
 							</a>
 					</section>
 				</s:iterator>

 								<div class="aa">
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
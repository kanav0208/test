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
	<meta charset="utf-8"/>
	<link rel="stylesheet" type="text/css" href="./css/pages.css">
	<link rel="stylesheet" type="text/css" href="./css/cart.css">
<title>カート画面</title>
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
				<span>CART</span>
			</div>
		<s:if test="cartInfoList == null">
			<h1>商品は入っていません</h1>
			<br>
			<h3><a href="<s:url action="ProductSearchAction"><s:param name="searchWord" value=" ' ' "/><s:param name="categoryId" value="10"/></s:url>">商品一覧へ</a></h3>
				<br><br><br><br><br><br><br><br><br><br><br><br>
		</s:if>

		<s:else>
			 <s:if test="buyCountErrorFlg==true">
			 <s:iterator value="buyCountErrorList">
			 	<p><s:property value="productName"/></p>
			 </s:iterator>
				<p>の在庫が足りません、購入個数の変更をお願いします。</p>
			 </s:if>

			<s:form action="CartMoveAction">
				<s:iterator value="cartInfoList" status="st">
					<table>
						<tr>
						<div class="cartText">
							<td class="sample01"><s:checkbox name="checkList" value="checked" fieldValue="%{id}"/><!-- fieldValueを使ってcheckListにidを入れる --></td>
							<td><a href="<s:url action="ProductDetailAction">
		 							<s:param name="productId" value="productId"/>
		 							<s:param name="categoryId" value="categoryId"/>
		 							</s:url>">
		 							<img src="<s:property value='imageFilePath'/>" id="cartImg"></a></td>
							<td>
								<s:property value="productName"/><br>(<s:property value="productNameKana"/>)<br><br>
								<s:property value="priceComma" /><s:hidden value="price"/>&nbsp;<s:property value="productCount"/>点
								<br><br>
								合計<s:property value="totalPriceComma"/><s:hidden value="totalPrice"/><br><br><br><br>
								<s:property value="releaseCompany"/><br>
								<s:property value="releaseDate"/>


							</td>
						</tr>
					</table>
				</s:iterator>
					<br>
					<br>
					<br>


					<br>

				<div class="sample02">
					<input type="hidden" name="deleteFlg" value="1"/>
					  	チェック済の商品は削除できます<s:submit value=" 削除 " method="execute"/>
				</div>
			</s:form>
<!-- 				<div class="cartText"> -->
<!-- 					チェック済の商品は削除できます -->
<!-- 					<input type="hidden" name="deleteFlg" value="1"> -->
<%-- 					<s:submit value="削除" method="execute"/> --%>
<!-- 				</div> -->





				<br>
				<br>

				<div class="cartText">
					<s:form action="SettlementConfirmAction">
						カート合計金額  <s:property value="session.cartTotalPriceComma"/><s:hidden value="session.cartTotalPrice"/>
						<s:submit value=" 購入 " method="execute"/>
					</s:form>
				</div>

				<br>
			<h3><a href="<s:url action="ProductSearchAction"><s:param name="searchWord" value=" ' ' "/><s:param name="categoryId" value="10"/></s:url>">商品一覧へ</a></h3>
			</s:else>

	</div>
	<br>
	<footer>
	    <p>good tomorrow co.,ltd All rights reserved</p>
	</footer>

	 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		 <script>
		 </script>
		 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
           //送信ボタンの無効、チェックボックスを外す
            $(".sample02 input").css({opacity:"0.5",cursor:"default"}).attr("disabled","disabed");
            $(".sample01 input:checkbox").attr('checked',false);
           //チェックボックスがクリックされると送信ボタン有効
            $(".sample01 label,.sample01 input").click(function(){
                if($(".sample01 input:checkbox").is(':checked')){
                    $(".sample02 input").css({opacity:"1",cursor:"pointer"}).removeAttr("disabled");
                }else{
                     $(".sample02 input").css({opacity:"0.5",cursor:"default"}).attr("disabled","disabed");
            }
        })
});
</script>
	</body>
</html>
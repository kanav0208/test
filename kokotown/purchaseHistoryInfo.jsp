<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/pages.css">
<link rel="stylesheet" type="text/css" href="./css/cart.css">
<title>購入履歴確認</title>
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
					<span>HISTORY</span>
				</div>

			<div id="error">
			   	<s:if test = "message != null">
					<s:property value = "message" />
				</s:if>
			</div>

				<s:if test = "purchaseHistoryInfoDTO ==null">
					<h1>購入情報はありません</h1>
						<br>
					マイページへ<a href='<s:url action="MyPageAction" />'>戻る</a>
						<br><br><br><br><br><br><br><br><br><br><br><br>
				</s:if>


			<s:else>
			 	<h1 class="cart">PURCHASE HISTORY</h1>
				 	<s:form method = "delete" action = "PurchaseHistoryInfoAction">
						<s:iterator value="purchaseHistoryInfoDTOList">
							<table>
								<tr>
									<td class="sample01"><s:checkbox name="checkList" value="checked" fieldValue="%{id}"/><!-- fieldValueを使ってcheckListにidを入れる --></td>
									<td><img src="<s:property value='imageFilePath'/>" id="cartImg"></td>

									<td>
									<s:property value="getProductName()" />&nbsp;(<s:property value="getProductNameKana()" />)
									<br>
									<br>

									<s:property value="getPriceComma()" />&nbsp;<s:property value="productCount"/>点
									<br>
									<br>
									<s:property value="getReleaseCompany()" />
									<br>
									<s:property value="getReleaseDate()"/>
									<br>
								</tr>
							</table>
						</s:iterator>

						<br>
						<br>
						<br>
						<br>
						<div class="sample02">
							チェック済の履歴は削除できます
								<input type = "hidden" name="deleteFlg" value="1">
								<s:submit value=" 削除 " method="execute"/>
						</div>
					</s:form>
						<br>
					マイページへ<a href='<s:url action="MyPageAction" />'>戻る</a>
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
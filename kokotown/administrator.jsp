<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="text/javascript"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="./css/admin.css">
<title>かんり かんり かかかんりしゃ</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<header>
		<!--kokotownロゴ-->
			    <img src="./img/kokotown.png" class="logo">
	</header>


	<br>
	<br>






		<!-- 在庫数変更 -->
				<s:form action="MasterProductStockAction">
					<table class="table1">
						<tr>
							<td>商品名1<s:select listKey="productId" list="session.productInfoDTOList" listValue="productName" name="value1"/></td>
						</tr>
						<tr>
							<td>在庫増減数<input type="number" name="countAdd1" value="0" min="-100000" max="100000" required/>
						</tr>
						<tr></tr>
						<tr>
							<td>商品名2<s:select listKey="productId" list="session.productInfoDTOList" listValue="productName" name="value2" headerValue="商品名を選択" headerKey="0"/></td>
						</tr>
						<tr>
							<td>在庫増減数<input type="number" name="countAdd2"  value="0" min="-100000" max="100000" required/>
						</tr>
						<tr></tr>
					</table>
						<s:submit value="在庫数変更" />
				</s:form>

			<!-- 商品削除 -->

					<table class="table2">
						<tr>
							<td>商品ID</td><td>商品名</td><td>在庫数</td>
						</tr>
						<s:iterator value="session.productInfoDTOList">

						<tr>
							<td><s:property  value="productId"/></td><td><s:property  value="productName"/></td><td><s:property  value="stock"/></td>
						</tr>



						</s:iterator>






						<%-- <tr>
							<td>商品名1<s:select listKey="productId" list="session.productInfoDTOList" listValue="productName" name="value1" headerValue="商品名を選択" headerKey="0"/></td>
						</tr>
						<tr></tr>
						<tr>
							<td>商品名2<s:select listKey="productId" list="session.productInfoDTOList" listValue="productName" name="value2" headerValue="商品名を選択" headerKey="0"/></td>
						</tr>

						<tr></tr>
						<tr>
							<td>商品名3<s:select listKey="productId" list="session.productInfoDTOList" listValue="productName" name="value3" headerValue="商品名を選択" headerKey="0"/></td>
						</tr>

						<tr></tr>
						<tr>
							<td>商品名4<s:select listKey="productId" list="session.productInfoDTOList" listValue="productName" name="value4" headerValue="商品名を選択" headerKey="0"/></td>
						</tr>

						<tr></tr>
						<tr>
							<td>商品名5<s:select listKey="productId" list="session.productInfoDTOList" listValue="productName" name="value5" headerValue="商品名を選択" headerKey="0"/></td>
						</tr> --%>

					</table>

				<br>
		<!-- 新商品追加-->
				カテゴリ
				<s:form action="AdministratorProductAddAction">
				<select name="categoryId">
				<option value="101">カメラ/時計</option>
				<option value="102">車</option>
				<option value="103">椅子/ソファー</option>
				<option value="104">帽子・靴</option>
				<option value="105">サングラス・傘</option>
			</select><br>
			商品ID(半角数字)<input class="input" type="number" name="productId" placeholder="商品ID" required ><br>
			商品名<input class="input" type="text" name="productName" placeholder="商品名" maxlength="15" required><br>
			商品名（かな）<input class="input" type="text" name="productNameKana" placeholder="商品名(かな)" pattern="[\u3041-\u309F]*" required><br>
			商品詳細<input class="input" type="text" name="productDescription" placeholder="商品詳細" required><br>
			販売会社<input class="input" type="text" name="releaseCompany" placeholder="販売会社" required><br>
			価格(半角数字)<input class="input" type="number" name="price" placeholder="価格" min="1" max="2147483647" required><br>
			在庫数半角数字<input class="input" type="number" name="count" placeholder="在庫" min="0" max="100000" required><br>
			画像名<input class="input" type="text" name="imageFileName" placeholder="画像名（拡張子含む）" required><br>
			画像相対パス<input class="input" type="text" name="imageFileNamePath" placeholder="画像相対パス" required><br>
			発売日<input class="input" type="datetime" name="releaseDate" placeholder="1999-01-01" min="1990-01-01" max="3000-12-31"><br>

			<s:submit class="submit" value="商品追加" />

			</s:form>



			<div class="admin">

			   			 <img src="./img/fullmoon.jpg" id="moonImg">
			   			   <div class="hide" style="display: none;">
			<s:form action="AdministratorProdouctStockAllChangeAction">
				在庫数一括統一(0～1000)<br>
				&nbsp;<input type="number" name="countAddAll" value="0" min="0" max="1000" required/><br>
				&nbsp;&nbsp;&nbsp;<s:submit value="在庫数一括統一" />
				</s:form>
				</div>

			 </div>

	<footer>
		 <a href='<s:url action="MyPageAction" />' id="move">
		    THISMACHI</a>
	</footer>



		<script>
		$(function(){
			$(".admin").dblclick(function(){
			$(".hide").show("slow");
			});
			});

 	  </script>
</body>
</html>
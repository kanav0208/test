<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html >
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

 <title>商品一覧</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
 <style type="text/css">

 .search-wrap {
    position: relative;
    max-width: 1245px;
}
.search-wrap .result {
	margin:20px 0  0 40px;
}
.search-wrap .pager {
    text-align: center;
}
.search-wrap .pager a {
    border: 1px solid #efd7b8;
    margin: 0 3px;
    padding: 0px 7px;
    text-align: center;
    display: inline-block;
    background: #e0be91;
    color: #fff;
    font-size: 18px;
}
.search-wrap .search-area {
    position: absolute;
    right: 0;
    top: 0;
}
.search-wrap .sort-area {
	float:right;
	margin-top:40px;
}
.search-wrap .sort-area .m-sort {
	float: left;
    padding: 0px 15px 0px 0px;
    margin-left: 15px;
    border: 1px solid #b1b1b1;
    border-radius: 6px;
}
.search-wrap .sort-area .m-sort i {
    background: #e0be91;
    padding: 10px 12px;
    margin-right: 5px;
    color: #fff;
}
.search-wrap .sort-area .m-sort a {
	color:#000;
}

  .hit{
	float:left;
	width:300px;
	padding-left:10px;
	font-size:10px;
	line-height:60px;
}

.clear{
	content:'';
	display:table;
	clear:both;
}

 #main{
  	display:block;
/*   	padding-top: 120px; */
    margin:50px 100px 50px 150px;
  	}

/*  *, *::before, *::after {
   box-sizing: border-box;
 }
 */
 a:link, a:visited, a:hover, a:active {
   color: black;
   text-decoration: none;
   text-align:left;
   }

  .item {
   width: 230px;
   margin-bottom:38px;
   padding: 8px;
   border:1px outset;
   border-bottom: 3px solid;
   border-radius: 10px;
   background-color: #ffffcc;
   }

   .item .image {
   width: 230px;
   height:200px;
 }

 .name, .price {
   margin-left:5px;
   color: #483D8B;
   letter-spacing: 1px;
   font-size:18px;
   margin-left:5px;
 }

 .item-pr,
 .item-pr .name::before
 .item-pr .name::price {
   border-color: red;
 }

 .item > a {
   display: block;
   margin: -8px -8px -11px;
   padding: 8px 8px 11px;
   border-radius: inherit;

   transition: all 0.3s;
 }

 .item > a:hover {
   box-shadow: 7px 5px 2px 7px rgba(0, 0, 0, 0.5);
   opacity: 0.8;
   }

.none{
	text-align:center;
	color:red;
}
#space{
	padding-bottom:200px;
}

 .image-left {
    position: relative;
}
.png {
    position: absolute;
    left: 0;
    top: 0;
     width: 230px;
   height:200px;
}

.stock{
	color:red;
	font-size:12px;
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

	<div class="search-wrap">
		<div class = "result">
			検索結果
			<s:property value="count" />
			件ヒットしました
			<s:if test="productInfoDTOList.size()!=0">
				（
				<s:property value="display" />
				件表示、
				<s:property value="page+1" />
				ページ目)
			</s:if>
			<br>
			カテゴリ
			<s:if test="categoryId==10">
				「全てのカテゴリ」
			</s:if>
			<s:if test="categoryId==101">
				「カメラ/時計」
			</s:if>
			<s:if test="categoryId==102">
				「車」
			</s:if>
			<s:if test="categoryId==103">
				「椅子/ソファー」
			</s:if>
			<s:if test="categoryId==104">
				「靴・帽子」
			</s:if>
			<s:if test="categoryId==105">
				「サングラス・傘」
			</s:if>
			<br>
			 検索ワード 「
			<s:property value="searchWord" />
			」<br>
			<s:if test="productInfoDTOList.size()!=0">
				（
				<s:property value="dp1" />
				－
				<s:property value="dp2" />
			件表示)
			</s:if>
		</div><!-- result -->

		<div class="pager">
			<s:iterator begin="1" end="pageNumber" status="i">
				<a href="<s:url action="ProductSearchPageNumberAction">
				<s:param name="page" value="#i.count-1"/>
				 <s:param name="display" value="display"/>
				<s:param name="categoryId" value="categoryId"/>
				<s:param name="searchWord" value="searchWord" />
				<s:param name="pageNumber" value="pageNumber"/>
				<s:param name="sortFlg" value="sortFlg" />
				<s:param name="sortCategory" value="sortCategory"/>
						</s:url>">
				<s:property value="#i.count" />
				</a>
			</s:iterator>
		</div><!-- pager -->

		<div class = "search-area">
			<s:form action="ProductSearchAction">
				<select name="categoryId">
					<option value="10">全てのカテゴリ</option>
					<option value="101">カメラ/時計</option>
					<option value="102">車</option>
					<option value="103">椅子/ソファー</option>
					<option value="104">靴・帽子</option>
					<option value="105">サングラス・傘</option>
				</select>

				<input class="input" type="search" name="searchWord"
				placeholder="商品名など" maxlength="15">
				<s:submit class="submit" value="検索" />
			</s:form>
		</div><!-- search-area -->

		 <div class="sort-area clearfix">
			<div class ="item-sort m-sort">
				<a href="<s:url action="ProductSearchSortAction">
			 		<s:param name="sortCategory" value="1"/>
			  		<s:param name="flag" value="1"/>
			  		<s:param name="categoryId" value="categoryId"/>
				<s:param name="searchWord" value="searchWord" />
				<s:param name="pageNumber" value="pageNumber"/>
				 <s:param name="display" value="display"/>
			 </s:url>">
			 <i class="fa fa-shopping-bag" aria-hidden="true"></i>
					商品名 <s:if test="sortFlg == 0 && sortCategory==1">
			降順↓
			</s:if>
			 <s:if test="sortFlg == 1 && sortCategory==1">
			昇順↑
			</s:if>
				</a>
			</div><!-- item-sort -->

			<div class = "price-sort m-sort">
				<a href="<s:url action="ProductSearchSortAction">
				<s:param name="sortCategory" value="2"/>
				<s:param name="flag" value="1"/>
				<s:param name="categoryId" value="categoryId"/>
				<s:param name="searchWord" value="searchWord" />
				<s:param name="pageNumber" value="pageNumber"/>
				 <s:param name="display" value="display"/>
				 </s:url>">
				<i class="fa fa-jpy" aria-hidden="true"></i>
					価格<s:if
						test="sortFlg == 0 && sortCategory==2">
			降順↓
			</s:if> <s:if test="sortFlg == 1 && sortCategory==2">
			昇順↑
			</s:if>
				</a>
			</div><!-- price-sort -->


			<div class = "release-sort m-sort">
				<a href="<s:url action="ProductSearchSortAction">
				 <s:param name="sortCategory" value="3"/>
				 <s:param name="flag" value="1"/>
				 <s:param name="categoryId" value="categoryId"/>
				<s:param name="searchWord" value="searchWord" />
				<s:param name="pageNumber" value="pageNumber"/>
				 <s:param name="display" value="display"/>
				 </s:url>">
				 <i class="fa fa-calendar" aria-hidden="true"></i>
						発売日<s:if
							test="sortFlg == 0 && sortCategory==3">
				降順↓
				</s:if> <s:if test="sortFlg == 1 && sortCategory==3">
				昇順↑
				</s:if>
					</a>
			</div><!-- release-sort -->



			<div class ="count-sort m-sort">
				<a href="<s:url action="ProductSearchListAction">
			  <s:param name="display" value="5"/>
			  <s:param name="categoryId" value="categoryId"/>
				<s:param name="searchWord" value="searchWord" />
				<s:param name="sortFlg" value="sortFlg" />
				<s:param name="sortCategory" value="sortCategory"/>

			 </s:url>">
					5件表示
				</a>
				<a href="<s:url action="ProductSearchListAction">
			 <s:param name="display" value="9"/>
			 <s:param name="categoryId" value="categoryId"/>
				<s:param name="searchWord" value="searchWord" />
				<s:param name="sortFlg" value="sortFlg" />
				<s:param name="sortCategory" value="sortCategory"/>

			 </s:url>">
					9件表示
				</a>
				<a href="<s:url action="ProductSearchListAction">
				<s:param name="display" value="100"/>
				<s:param name="categoryId" value="categoryId"/>
				<s:param name="searchWord" value="searchWord" />
				<s:param name="sortFlg" value="sortFlg" />
				<s:param name="sortCategory" value="sortCategory"/>

				</s:url>">
					100表示
				</a>
			</div><!-- count-sort -->
		</div><!-- sort-area -->
	</div><!-- search-wrap -->



 		</header>

 		<div class="clear"></div>


  <div id="main">
	<s:if test="productInfoDTOList.size()==0">
		<br>
			<div id="title">
				<span>SORRY</span>
			</div>
		<br>
			<h1 class="none">検索条件に該当する商品はありません。</h1>
				<br><br><br><br><br><br><br><br><br><br><br><br>

	</s:if>

	<s:else>
		 	<s:iterator value="productInfoDTOList">
			 	<section class="item item-pr">
			 	<a href="<s:url action="ProductDetailAction">
			 		<s:param name="productId" value="productId"/>
			 		<s:param name="categoryId" value="categoryId"/>
			 		<s:param name="id" value="id"/>
			 		</s:url>">
			 		<div class="image-left">
				  	<img class="image" src="<s:property value='imageFilePath'/>" >
				  	<s:if test="stock==0"><img class="png" src="./img/sold_out.png" class="image"></s:if>
				  	</div>

				  	<s:if test="stock>=1 && stock<=5"><div class="stock">在庫が残り僅かです</div></s:if>
				  	<s:else><div class="stock">&nbsp;</div></s:else>
				 	<div><s:property  value="productName"/></div>
				 	<div>  <s:property value="priceComma"/></div><br>
				 	<div><s:property value="ReleaseDate"/></div>
				 	</a>
			 	</section>
		 	</s:iterator>

 	<script src="http://cdnjs.cloudflare.com/ajax/libs/masonry/3.3.0/masonry.pkgd.js"></script>
 	  <script>
 	    new Masonry('#main', {
 	      itemSelector: '.item',
 	      columnWidth: 250,
 	      gutter: 23
 	    });
 	  </script>

	</s:else>
  </div>

 	<br>
 		<footer>
	    	<p>good tomorrow co.,ltd All rights reserved</p>
		</footer>


 <%-- 	<script src="http://cdnjs.cloudflare.com/ajax/libs/masonry/3.3.0/masonry.pkgd.js"></script>
 	  <script>
 	    new Masonry('.main', {
 	      itemSelector: '.item',
 	      columnWidth: 250,
 	      gutter: 23
 	    });
 	  </script> --%>



 </body>
 </html>


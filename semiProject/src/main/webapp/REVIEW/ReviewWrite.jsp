<%@page import="test.vo.ReviewVo"%>
<%@page import="test.dao.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>리뷰작성하기.jsp</title>
	<style>
		* { margin: auto; }
		h1 {
		    font-size: 30px;
		 	text-align: center;
			border-bottom: 2px solid gray;
		    padding: 20px;
		}
		#product_pic, #product_detail { text-align: center; }
		table {
			border-top: 2px solid #444444;
			border-bottom: 2px solid #444444;
		    border-collapse: collapse;
		  }
		  th, td {
		    border-bottom: 1px solid #444444;
		    padding: 10px;
		  }
		#review_content { border: 2px solid grey; padding: 5px;}
		#review_submit { margin-top: 5px; display:block; }
		ul{ list-style:none; }
		span { font-size: 12px; }
	</style>
</head>
<body>
	<h1 style="text-align: center">리뷰 작성</h1>
	<form action="<%=request.getContextPath() %>/reviewWrite" method="post">
		<div id="product">
			<div id="product_pic">
				<img src="images/hoddy.PNG" style="width: 150px; height: 150px;">
			</div>
			<div id="product_detail">
				<ul>
					<li>주문상세번호</li>
					<li>제품명</li>
					<li>사이즈</li>
				</ul>
			</div>
		</div>
		<div id="cust_estm">
			<table>
				<tr>
					<th>평점</th>
					<td>
						<input type="radio" name="cScore" value="★★★★★">★★★★★
						<input type="radio" name="cScore" value="★★★★">★★★★
						<input type="radio" name="cScore" value="★★★">★★★
						<input type="radio" name="cScore" value="★★">★★
						<input type="radio" name="cScore" value="★">★
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<span>*30자 이내로 작성해주세요</span> <br>
						<input type="text" name="content" 
							   style="width: 400px; height: 20px; text-align: left;">
					</td>
				</tr>
			</table>
			<input type="submit" value="리뷰등록" id="review_submit">
		</div>
	</form>
</body>
</html>
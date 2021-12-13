<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MyOrder.jsp</title>
	<link rel="stylesheet" href="MYORDER_STYLE.css">
</head>
<body>
	<h1>주문 / 결제</h1>
	<fieldset>
		<legend><h2>주문하실 상품</h2></legend>
		<table id="table1">
			<tr>
				<th colspan="5" id="tak">택배배송(@@총상품갯수넣는곳@@)</th>
			</tr>
			<tr>
				<th style="bgcolor: #dddddd;">상품명/선택사항</th>
				<th>상품금액</th>
				<th>수량</th>
				<th>주문금액</th>
				<th>배송정보</th>
			</tr>
			<tr>
				<td>
					사진 <br>
					상품명 <br>
					사이즈
				</td>
				<td>
					000원
				</td>
				<td>
					0
				</td>
				<td>
					000원
				</td>
				<td>
					무료배송 / 배송비 3000원
				</td>
			</tr>
		</table>
	</fieldset>
	
	<fieldset>
		<legend><h2>배송 정보</h2></legend>
		<table id="table2">
			<tr>
				<th>주문하시는 분</th>
				<td>이름 <br> 번호 </td>
			</tr>
			<tr>
				<th>배송지 선택</th>
				<td>
					<input type="radio" name="radio" value="기본배송지" checked="checked">기본 배송지
					<input type="radio" name="radio" value="새로운배송지">새로운 배송지
				</td>
			</tr>
			<tr>
				<th>배송지 정보</th>
				<td>
					<input type="text" name="whereto" style="width: 400px; text-align: left;"> <br>
				</td>
			</tr>
			<tr>
				<th>받으시는 분</th>
				<td>이름 <br> 번호 </td>
			</tr>
			<tr>
				<th>배송메세지</th>
				<td>@@....@@</td>
			</tr>
			<tr>
				<th>총 배송비</th>
				<td>0원</td>
			</tr>
		</table>
	</fieldset>
	
	<fieldset>
		<legend><h2>결제 수단</h2></legend>
			<input type="radio" name="paying" value="신카" checked="checked">신용카드
			<input type="radio" name="paying" value="무통장">무통장입금
	</fieldset>
	<fieldset style="width: 50%; border: solid 3px firebrick;">
		<legend><h2 style="color: firebrick;">최종 결제 정보</h2></legend>
		<table id="table3">
			<tr>
				<th>상품금액</th>
				<td>000원</td>
			</tr>
			<tr>
				<th>배송비</th>
				<td>000원</td>
			</tr>
			<tr>
				<th>총결제금액</th>
				<td>00원</td>
			</tr>
		</table>
	</fieldset>
	<input type="submit" value="구매하기" id="purchase">
</body>
</html>
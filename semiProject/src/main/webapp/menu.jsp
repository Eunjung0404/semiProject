<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="mainmenu">
<c:choose>
<c:when test="${sessionScope.aid eq null}">

	<ul>
		<li><a href="">best</a></li>

		<li><a href="">상의</a>
			<ul class="sub">
				<li><a href="">니트</a></li>
				<li><a href="">티셔츠</a></li>
			</ul></li>
		<li><a href="">하의</a>
			<ul class="sub">
				<li><a href="">니트</a></li>
				<li><a href="">티셔츠</a></li>
			</ul></li>
		<li><a href="">아우터</a>
			<ul class="sub">
				<li><a href="">니트</a></li>
				<li><a href="">티셔츠</a></li>
			</ul></li>
	</ul>
</c:when>
<c:otherwise>
	<ul>
		<li><a href="<%=request.getContextPath()%>/admin/list">관리자 관리</a></li>

		<li><a href="">상품등록</a></li>
	</ul>
</c:otherwise>
</c:choose>
</div>
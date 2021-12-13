<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#loginform
{
   position:relative;
	left:40%;
}
#loginform ul>li {
	float: left;
	margin: 10px;
	display: block;
	
}

#loginform #btn {
	width: 200px;
	height: 45px;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: white;
	border: none;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}

#loginform #btn:hover {
	transform: translateY(-7px);
}
#inputform
{
 background-color:gray;
 width:440px;
 height:500px;
 position:absolute;
 top:50px;
 text-align: center;

 
}
#inputform input
{

}
#userlogin {
	display: block;
	margin:50px;
}

#adminlogin {
	display: none;
		margin:50px;
}
</style>

<div id="loginform">
	<ul>
		<li><input type="button" value="회원로그인" id="btn" onclick="userclickEvent()"></li>
		<li><input type="button" value="관리자로그인" id="btn" onclick="adminclickEvent()"></li>

	</ul>

<div id="inputform">
	<div id="userlogin">
		<form method="post" action="<%=request.getContextPath()%>/admin/login">
		    유저로그인<br>
			아이디<input type="text" name="mid"><br> 
			비밀번호<input type="password" name="mpwd">
			<input type="submit" value="로그인"><br>
			<a href="<%=request.getContextPath()%>/id/findid.jsp">
			아이디찾기
			</a>
			<a href="<%=request.getContextPath()%>/id/findpw.jsp">
			비밀번호찾기
			</a>
		</form>
				
	</div>
	<div id="adminlogin">
		<form method="post" action="<%=request.getContextPath()%>/admin/login">
		관리자로그인<br>
		아이디<input type="text" name="aid"> <br> 로그인<input type="password" name="apwd">
		<input type="submit" value="로그인">
		</form>
		
	</div>

</div>

</div>

<script type="text/javascript">
	var btn1 = document.getElementById("btn1");
	var btn2 = document.getElementById("btn2");

	var div1 = document.getElementById("userlogin");
	var div2 = document.getElementById("adminlogin");
	function userclickEvent() {
		div1.style.display = "block";
		div2.style.display = "none";


	};
	function adminclickEvent() {
		div1.style.display = "none";
		div2.style.display = "block";
	

	};
</script>
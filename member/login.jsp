<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function loginCheck(){
		if(document.loginFrm.id.value==""){
			alert("아이디를 넣어주세요");
			document.loginFrm.id.focus();
			return;
		}
		if(document.loginFrm.pwd.value==""){
			alert("비밀번호를 넣어주세요");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
</head>
<body>
<%
	if(id != null){
%>
	<b><%=id %>님 환영합니다.</b>
	<p>즐거운 쇼핑되세요</p>
	<a href="logout.jsp">로그아웃</a>
	<a href="../yun.html">HOME</a>
<%
	} else{
%>
<form method="post" name="loginFrm" action = "loginProc.jsp">
	<table align = "center">
	<tr>
		<th colspan="2" align="center">로그인</th>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input name="id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<td colspan="3" align="center">
		<input type="button" value="로그인" onClick="loginCheck()"> &emsp;
		<input type="button" value="회원가입" onClick="javascript:location.href='member.jsp'"> &emsp;
		<input type="button" value="HOME" onClick="location.href='../yun.html'">
		</td>
	</tr>	
</form>
<%} %>
</body>
</html>
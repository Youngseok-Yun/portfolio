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
			alert("���̵� �־��ּ���");
			document.loginFrm.id.focus();
			return;
		}
		if(document.loginFrm.pwd.value==""){
			alert("��й�ȣ�� �־��ּ���");
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
	<b><%=id %>�� ȯ���մϴ�.</b>
	<p>��ſ� ���εǼ���</p>
	<a href="logout.jsp">�α׾ƿ�</a>
	<a href="../yun.html">HOME</a>
<%
	} else{
%>
<form method="post" name="loginFrm" action = "loginProc.jsp">
	<table align = "center">
	<tr>
		<th colspan="2" align="center">�α���</th>
	</tr>
	<tr>
		<td>���̵�</td>
		<td><input name="id"></td>
	</tr>
	<tr>
		<td>��й�ȣ</td>
		<td><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<td colspan="3" align="center">
		<input type="button" value="�α���" onClick="loginCheck()"> &emsp;
		<input type="button" value="ȸ������" onClick="javascript:location.href='member.jsp'"> &emsp;
		<input type="button" value="HOME" onClick="location.href='../yun.html'">
		</td>
	</tr>	
</form>
<%} %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class="ch00.MemberMgr"/>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String url = "login.jsp";
	String msg = "로그인에 실패햐였습니다.";
	
	boolean result = mMgr.loginMember(id, pwd);
	if(result){
		session.setAttribute("idKey", id);
		msg = "로그인에 성공하였습니다.";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
	alert("<%=msg %>");
	location.href = "<%=url %>";
</script>
<body>

</body>
</html>
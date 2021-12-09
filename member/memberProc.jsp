<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="ch00.MemberMgr"/>
<jsp:useBean id="bean" class="ch00.MemberBean"/>
<jsp:setProperty property="*" name="bean" />
<%
	boolean result = mgr.insertMember(bean);
	String msg = "회원가입에 실패하였습니다.";
	String location = "member.jsp";
	if(result){
		msg = "회원가입을 하였습니다.";
		location = "login.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>
</head>
<body>

</body>
</html>
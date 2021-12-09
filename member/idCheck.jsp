<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class="ch00.MemberMgr" />
<%
   	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	boolean result = mMgr.checkId(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	if(result) {
		out.print(id + "는 이미 존재하는 ID입니다.<P/>");
	} else {
		out.print(id + "는 사용 가능 합니다.<p/>");
	}
%>
	<a href="#" onClick="self.close()">닫기</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/member" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if(id == "") {
			alert("아이디를 입력하세요");
			frm.id.focus();
			return;
		}
		url = "idCheck.jsp?id=" + id;
		window.open(url, "IDCheck", "width=300, height=150");
	}
	
	function findAddr() {
		new daum.Postcode({
	        oncomplete: function(data) {
	            var roadAddr = data.roadAddress;  
	            var jibunAddr = data.jibunAddress;   
	            var extraAddr = '';
	            
	            document.getElementById('postcode').value = data.zonecode;
	            if(roadAddr != '') {
	            	if(data.bname != '') {
	            		extraAddr += data.bname;
	           		}
	            	if(data.buildingName != '') {
	            		extraAddr += (extraAddr != '' ? ', ' + data.buildingName : data.buildingName);
	            	}
	            	roadAddr += (extraAddr != '' ? ' (' + extraAddr + ')' : '');
	            	document.getElementById('addr').value = roadAddr;
	            } else if(jibunAddr != '') {
	            	document.getElementById('addr').value = jibunAddr;
	            }
	            document.getElementById('detailAddr').focus();
	        }
	    }).open();
	}
</script>
</head>
<body>
	<form name="regFrm" method ="post" action="memberProc.jsp">
		<table border="1" align="center" width="800">
			<tr bgcolor="#F288A4" height="40">
				<td colspan="3" align="center"><font color="white" size="5"><b>회원가입</b></font></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>
					<input name="id">
					<input type="button" value="ID중복확인" onClick="idCheck(this.form.id.value)">
				</td>
				<td>아이디를 입력해 주세요</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>
					<input type="password" name="pwd">
				</td>
				<td>패스워드를 입력해 주세요</td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td>
					<input type="password" name="repwd">
				</td>
				<td>패스워드를 한번 더 입력해 주세요</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
					<input name="name">
				</td>
				<td>이름을 입력해 주세요</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="gender" value="1" checked>남&emsp;&emsp;
					<input type="radio" name="gender" value="2" >여
				</td>
				<td>성별을 선택해 주세요</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>
					<input name="birthday" placeholder="ex) 970315">
				</td>
				<td>생년월일을 입력해 주세요</td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td>
					<input name="email">@
					<select name="emailop">
					<option value="naver.com" selected>naver.com
					<option value="daum.net">daum.net
					<option value="gmail.com">gmail.com
					<option value="nate.com">nate.com
					</select>
				</td>
				<td>이메일을 입력해 주세요</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td>
					<input name="zipcode" id="postcode" readonly>
					<input type="button" value="우편번호 찾기" onClick="findAddr()">
				</td>
				<td>우편번호를 검색하세요</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<input name="address" id="addr" size="60" readonly><br/>
					<input name="detailAddress" id="detailAddr" placeholder="상세주소 넣기">
				</td>
				<td>상세주소가 있으면 입력해주세요</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>
					<input name="phone">
				</td>
				<td>전화번호를 입력해 주세요</td>					
			<tr>
				<td colspan="3" align="center">
					<input type="button" value="회원가입" onClick="inputCheck()">&emsp;
					<input type="reset" value="다시쓰기">&emsp;
					<input type="button" value="로그인" onClick="javascript:location.href='login.jsp'"> &emsp;
					<input type="button" value="HOME" onClick="location.href='../yun.html'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
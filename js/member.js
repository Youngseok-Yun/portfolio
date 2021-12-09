function inputCheck() {
	if(document.regFrm.id.value=="") {
		alert("아이디를 입력하세요");
		document.regFrm.id.focus();
		return;
	}
	if(document.regFrm.pwd.value=="") {
		alert("비밀번호를 입력하세요");
		document.regFrm.pwd.focus();
		return;
	}
	if(document.regFrm.repwd.value=="") {
		alert("비밀번호를 다시한번 입력하세요");
		document.regFrm.repwd.focus();
		return;
	}
	if(document.regFrm.pwd.value!=document.regFrm.repwd.value) {
		alert("비밀번호가 일치하지 않습니다");
		document.regFrm.repwd.focus();
		return;
	}
	if(document.regFrm.name.value=="") {
		alert("이름을 입력하세요");
		document.regFrm.name.focus();
		return;
	}
	if(document.regFrm.birthday.value=="") {
		alert("생년월일을 입력하세요");
		document.regFrm.birthday.focus();
		return;
	}
	if(document.regFrm.email.value=="") {
		alert("이메일을 입력하세요");
		document.regFrm.email.focus();
		return;
	}
	if(document.regFrm.zipcode.value=="") {
		alert("우편번호를 검색하세요");
		document.regFrm.zipcode.focus();
		return;
	}
	if(document.regFrm.phone.value=="") {
		alert("전화번호를 입력하세요");
		document.regFrm.phone.focus();
		return;
	}
	document.regFrm.submit();
}
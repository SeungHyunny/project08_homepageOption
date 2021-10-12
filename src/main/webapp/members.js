/**
 * 
 */
function infoConfirm(){
	
	if(document.reg_frm.id.value.length == 0){
		alert("아이디는 필수 입력사항입니다.");
		reg_frm.id.focus();
		return;
	}
	if(document.reg_frm.id.value.length <3){
		alert("아이디는 3글자 이상이어야 합니다. ");
		reg_frm.id.focus();
		return;
	}
	if(document.reg_frm.pw.value.length == 0){
		alert("비밀번호는 필수 입력사항입니다. ");
		reg_frm.pw.focus();
		return;
	}
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value){
		alert("비밀번호가 일치하지 않습니다. ");
		reg_frm.pw.focus();
		return;
	}
	if(document.reg_frm.name.value.length == 0){
		alert("이름은 필수 입력 사항입니다. ");
		reg_frm.name.focus();
		return;
	}
	//매일 , 주소, 가입일자는 공란 인증 
	document.reg_frm.submit();
}

function updateInfoConfirm(){
	if(document.reg_frm.name.value.length == 0){
		alert("이름은 필수 입력 사항입니다. ");
		reg_frm.name.focus();
		return;
	}
	if(document.reg_frm.pw.value.length == 0){
		alert("비밀번호는 필수 입력사항입니다. ");
		reg_frm.pw.focus();
		return;
	}
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value){
		alert("비밀번호가 일치하지 않습니다. ");
		reg_frm.pw.focus();
		return;
	}
	// 서브밋 확정 
	document.reg_frm.submit();
}



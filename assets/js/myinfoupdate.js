$(document).ready(function(){
	//[비밀번호 변경하기] 버튼 클릭하면 자동 실행
	$("#passchange").click(function(){//[비밀번호 변경하기] 버튼 클릭
		//비밀 번호 변경 페이지로 이동
		window.location.href = "passChange.jsp";
	});
	
	//[개인정보 변경하기] 버튼 클릭하면 자동 실행
	$("#privatechange").click(function(){//[개인정보 변경하기] 버튼 클릭
		//연락처 및 개인정보 변경 페이지로 이동
		window.location.href = "privateChange.jsp";
	});
	
	//[회원탈퇴하기] 버튼 클릭하면 자동 실행
	$("#deleteid").click(function(){//[회원탈퇴하기] 버튼 클릭
		//회원탈퇴하기  페이지로 이동
		window.location.href = "deleteId.jsp";
	});
	
	//[취소] 버튼을 클릭하면 자동 실행
	$("#cancle").click(function(){
		window.location.href = "blogMain.jsp";
	});
});
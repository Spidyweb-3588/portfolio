$(document).ready(function(){
	//[회원 가입] 버튼을 클릭하면 자동실행
	$("#join").click(function(){//[회원 가입] 버튼 클릭
		//회원 가입폼 registerForm.jsp 페이지를
		//id 속성값이 main_auth인 영역에 로드
		$("#main_auth").load("join.jsp");
	});
});
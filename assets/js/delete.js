var status = true;

	$(document).ready(function(){
		$("#deleteuser").click(function(){//회원 탈퇴하기 클릭
		checkIt();//비밀번호 입력 여부 체크
		
			if(status){
				var query = {passwd:$("#passwd").val()};
			
			//입력한 비밀번호를 갖고 usercheck.jsp 페이지 실행
			$.ajax({
				type: "post",
				url: "userCheck.jsp",
				data: query,
				success: function(data){
					if(data == 1){//비밀번호 맞음
					//회원 탈퇴 페이지 deleteAction.jsp 실행
					$.ajax({
						type: "POST",
						url: "deleteAction.jsp",
						data: query,
						success: function(data){
							if(data == 1){//탈퇴 성공
							alert("회원 탈퇴가 되었습니다.");
							window.location.href = "blogMain.jsp";
							}
						}
					});
				}else{//비밀번호 틀림
						alert("비밀번호가 맞지 않습니다.");
						$("#passwd").val("");
						$("#passwd").focus();
					}
				}
			});
		}
	});
	
	//[취소] 버튼을 클릭하면 자동 실행
	$("#cancle").click(function(){
		window.location.href = "blogMain.jsp";
	});
});

function checkIt(){
	status = true;
	
			if(!$("#passwd").val()){//비밀번호를 입력하지 않으면 수행
				alert("비밀번호를 입력하세요.");
				$("#passwd").focus();
				status = false;
				return false;
			}
}
/*
	회원 정보 수정(12/06 시행)
	1.비밀번호, 현재 비밀번호가 맞고, 새로운 비밀번호가 현재 비밀번호와 다르며, 비밀번호 재입력과 같을 때 비밀번호 바뀌게 기능
	2.개인정보 수정, 현재비밀번호 입력란이 나오며 그게 맞을 시 개인정보 수정폼으로 이동
	3.회원탈퇴 기능, 현재 비밀번호 입력란이 나오며 그게 맞을 시 탈퇴 버튼을 클릭시에 '회원 탈퇴하시겠습니까?' 안내 문구와 함께 확인,취소 기능
	4.git hub 에 코드 다시올리기
*/

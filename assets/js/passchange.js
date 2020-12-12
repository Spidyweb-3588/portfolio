var status = true;

$(document).ready(function() {
	$("#changepass").click(function() {
		checkIt();//폼에 입력한 값이 있는지 확인
		
			if(status){
				var query = {passwd:$("#passwd").val()};
							$.ajax({
								type: "POST",
								url: "passChangeAction.jsp",
								data: query,
								success: function(data){
									if(data == 1){//비밀번호 수정 성공
									alert("비밀번호가 변경되었습니다.");
									window.location.href = "blogMain.jsp";
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
	
	if(!$("#currentpass").val()){//현재비밀번호를 입력하지 않으면 수행
			alert("비밀번호를 입력하세요.");
			$("#currentpass").focus();
			status = false;
			return false;
		}
			
	if(!$("#passwd").val()){//새 비밀번호를 입력하지 않으면 수행
			alert("새 비밀번호를 입력하세요.");
			$("#passwd").focus();
			status = false;
			return false;
		}
		
	if(!$("#repass").val()){//재입력 비밀번호를 입력하지 않으면 수행
			alert("새 비밀번호를 재입력하세요.");
			$("#repass").focus();
			status = false;
			return false;
		}	
	
	if($("#passwd").val() != $("#repass").val()){//새 비밀번호와 재입력  비밀번호가 같지 않으면 수행
			alert("비밀번호를 동일하게 입력하세요.");
			$("#repass").focus();
			status = false;
			return false;
		}
}

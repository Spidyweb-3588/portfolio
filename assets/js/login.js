		var status = true;
		
	$(document).ready(function(){
/*			//[회원 가입] 버튼을 클릭하면 자동실행
			$("#join").click(function(){//[회원 가입] 버튼 클릭
				//회원 가입폼 join.jsp 페이지를
				//id 속성값이 main_auth인 영역에 로드
				window.location.href = "join.jsp";
			});
			버튼이 아닌 드롭다운 a href으로 구현
*/	
		//[로그인] 버튼을 클릭하면 자동 실행
		//입력한 아이디와 비밀번호를 갖고 loginAction.jsp 페이지 실행
		$("#login").click(function(){
			checkIt();//입력한 폼에 입력한 상황 체크
			if(status){
				//입력된 사용자의 아이디와 비밀번호를 얻어냄
				var query ={id : $("#id").val(),
							passwd:$("#passwd").val()};
							
				$.ajax({
					type: "POST",
					url: "loginAction.jsp",
					data: query,
					success: function(data){
						if(data == 1){//로그인 성공
						 alert("로그인 되었습니다.");
						 window.location.href = "blogMain.jsp";
						}else if(data == 0){//비밀번호 틀림
							alert("비밀번호가 맞지 않습니다.");
							$("#passwd").val("");
							$("#passwd").focus();
						}else if(data == -1){//아이디 틀림
							alert("아이디가 맞지 않거나, 존재하지 않습니다.");
							$("#id").val("");
							$("#passwd").val("");
							$("#id").focus();
						}
					}
				});
			}
		});

		/*-- 인증된 사용자 영역을 처리하는 버튼들---*/
		//[내 정보 수정] 버튼 클릭하면 자동 실행
/*		$("#update").click(function(){//[내 정보 수정] 버튼 클릭
			//회원 정보 수정 및 회원 탈퇴를 위한 myinfoupdate.jsp 페이지 요청
			window.location.href ="myinfoupdate.jsp";
		}); 
		***dropdown 상에서 list로 정보 업데이트 페이지로 넘어가기 때문에 a href="myinfoupdate.jsp"로 대체***
*/	
/*		
		//[로그아웃] 버튼을 클릭하면 자동 실행
		//logoutAction.jsp 페이지를 실행
		$("#logout").click(function(){//[로그아웃] 버튼 클릭
			$.ajax({
				type: "POST",
				url: "logoutAction.jsp",
				success: function(data){
					alert("로그아웃 되었습니다.");
					window.location.href = "blogMain.jsp";
				}
			});
		}); 
		***dropdown 상에서 list로 logout하기 때문에 a href="logout.jsp"로 대체***
*/		
	});
	
	//인증되지 않은 사용자 영역에서 사용하는 입력 폼의 입력값 유무 확인
	function checkIt(){
		status = true;
		if(!$.trim($("#id").val())){
			alert("아이디를 입력하세요.");
			$("#id").focus();
			status = false;
			return false;
		}
		if(!$.trim($("#passwd").val())){
			alert("비밀번호를 입력하세요.");
			$("#passwd").focus();
			status = false;
			return false;
		}
	}
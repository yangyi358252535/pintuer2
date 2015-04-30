$(document).ready(function(){
	$( "#ee" ).tabs();
	$( "#configTab" ).tabs();
	$( "#topDIV_con" ).tabs();
	$( "#bottomDIV_con" ).tabs();
	$( "#bottomDIV_con_theme" ).tabs();
	$( "#close_but_con" ).click(function(){
		clearpopUpWindow();
		clearlockpopScreen();
	});
	$( "#edit_b_con" ).click(function(){
		$("#modifyPass").submit();
	});
	min_max_win_con();
	function min_max_win_con(){
		$("#h3_head_con").click(function() {
			if($("#topDIV_con").is(":visible")){
				$("#topDIV_con").slideUp(700);
				$("#bottomDIV_con").slideDown(700);
				//$("#bottomDIV_con_theme").slideDown(700);
			}else{
				$("#topDIV_con").slideDown(700);
				$("#bottomDIV_con").slideUp(700);
				$("#bottomDIV_con_theme").slideUp(700);
			}
		});
		$("#h3_detail_con").click(function() {
			if($("#bottomDIV_con").is(":visible")){
				$("#bottomDIV_con").slideUp(700);
				//$("#topDIV_con").slideDown(700);
				$("#bottomDIV_con_theme").slideDown(700);
			}else{
				$("#bottomDIV_con").slideDown(700);
				$("#topDIV_con").slideUp(700);
				$("#bottomDIV_con_theme").slideUp(700);
			}
		});
		$("#h3_detail1_con").click(function() {
			if($("#bottomDIV_con_theme").is(":visible")){
				$("#bottomDIV_con_theme").slideUp(700);
				$("#topDIV_con").slideDown(700);
				//$("#bottomDIV_con").slideDown(700);
			}else{
				$("#bottomDIV_con_theme").slideDown(700);
				$("#topDIV_con").slideUp(700);
				$("#bottomDIV_con").slideUp(700);
			}
		});
	}
	$("#modifyPass").validate({						  
		rules: {
			'oldPass': {
				required: true
			},
			'newPass': {
				required: true,
				rangelength:[8,14],
				notEqualTo:"#oldPass"
			},
			'newPassAgain': {
				required: true,
				equalTo:"#newPass"
			}
		},
		//设置提示信息
		messages:{
			'oldPass': {
				required: "请您输入旧密码"
			},
			'newPass': {
				required: "请您输入新密码",
				rangelength:'新密码长度在{0}-{1}个字符之间',
				notEqualTo: '新密码不能与旧密码相同'
			},
			'newPassAgain': {
				required: "请您再次输入新密码",
				equalTo:'两次输入密码不相同'
			}
		},
		//指定错误信息位置
		errorPlacement: function (error, element) { 
  			element.parent().find("span").append(error);
		},
		//设置验证触发事件
		focusInvalid: true,   
		submitHandler: function(form) {
			$("#oldPass").parent().find("span").html("");
			var flag=true;
			var oldP=$("#oldPass").val();
			var data={
				'oldPass':oldP
			};
			var url="";
			var url1="";
			var currentUserCode=$("#currentUserCode").val();
			if(currentUserCode==0){
				url='../systemManage/manager/checkOldPass.action';
				url1='../systemManage/manager/changePass.action';
			}else if(currentUserCode==1){
				url='../systemManage/teacher/checkOldPass.action';
				url1='../systemManage/teacher/changePass.action';
			}else if(currentUserCode==2){
				url='../appraiseManage/student/checkOldPass.action';
				url1='../appraiseManage/student/changePass.action';
			}
			$.ajax({
				url : url,
				data : data,
				type : 'POST',
				async:false,
				success : function(data1) {
					if(data1.passflag=="0"){
						$( "#old" ).html("旧密码错误");
					}else{
						confirmInformation("你确定要修改账户密码吗？",function(){
							// 提交表单<br>
							var n=$( "#newPass" ).val();
							var param={
									'newPass':	n
								};
							$.ajax({
								url : url1,
								data : param,
								type : 'POST',
								success : function(data2) {
									$( "#oldPass" ).val("");
									$( "#newPass" ).val("");
									$( "#newPassAgain" ).val("");
									setTimeout('AlertInfo("账户密码修改成功")',1500);
								}
							});
						});
					}
				}
			});
		}
	});
});

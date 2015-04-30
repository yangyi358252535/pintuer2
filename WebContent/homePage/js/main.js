$(document).ready(function(){
	$("#admin-nav .functionTitle").click(function(){
		//清空翻页Id数组和AllID数组
		arrayId=[];
		dataId = [];
		$("li[class='active']").prop("class","");
		$(this).parent().prop("class","active");
		$(".listClass").hide();
		$(this).parent().find("ul").show();
	});
	$("#admin-nav .method").click(function(){
		//清空翻页Id数组和AllID数组
		arrayId=[];
		dataId = [];
		$("#admin-nav ul li ul li[class='active']").prop("class","");
		$(this).parent().prop("class","active");
		var url=$(this).attr("name");
		showLoading();
		$("#main").load(url,function(){
		});
	});
	
	
	$("#accordion div div ul li a").click(function(){
		//清空翻页Id数组和AllID数组
		arrayId=[];
		dataId = [];
		$("#main").attr("class","0");
		var url=$(this).attr("name");
//		alert(url);
		showLoading();
		if(isAllowOption==true){
			$("#main").load(url,function(){
			});
			$("#accordion a").css("color","black");
			$("#accordion a").css("background-color","transparent");
			$(this).css("background-color","#2293f7");
			$(this).css("color","white");
			hideInformation();
		}else{
			showAlertDialog("请取消或提交您当前的操作");
		}
	});
	 $("#home").click(function(){
		checklogin();
		$("#accordion a").css("color","black");
		$("#accordion a").css("background-color","transparent");
		$("#main").load("welcome.jsp");
	 });
	 $("#logout").click(function(){
			confirmInformation("你确定要注销登陆么？",function(){
				$.ajax({
					url : '../systemManage/manager/logout.action',
					type : 'POST',// html
					beforeSend : function(XMLHttpRequest) {
					},
					success : function(data1) {
						window.location.replace("../login.jsp");
					},
					complete : function() {
					},
					error : function(jqXHR, textStatus, errorThrown) {
						alert(errorThrown + " " + textStatus);
					}
				});
			});
		});
	$("#config").click(function(){
		checklogin();
		PopUpWindow(850, 500, '设置', '../homePage/configeration.jsp');	
	});
});

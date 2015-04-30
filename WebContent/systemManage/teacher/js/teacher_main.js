$(document).ready(function() {
	//初始化全局ID
	dataId=[];
	var data={
	};
	$("input").off("blur");
	// 创建后就可以一直使用
	$("input").on("blur", function() {// .unbind("change")
		$(this).css("background", "white");
		hideInformation();
	});
	forSearchCondition();
	showMain();
	$("#add_but").click(function() {
		showLoading();
		$("#teacher_main").load("../systemManage/teacher/toAdd.action", function() {
			hideLoading();
			$("#teacherbar").hide();
			validate("addForm","add");
			$("#add_b111").click(function(){
				$("#addForm").submit();
			});
			$('#cancel_b').click(function() { 
				data={};
				showMain();
			});
		});
		//初始化全局ID
		dataId=[];
	});
	function forSearchCondition(){
		$("#condition1").change(function(){
			$("#input").css("background","white");
			$("#input").val("");
			$("#input").prop("disabled",false);
		});
	}
	$('#search_but').click(function(){
		$("#input").css("background","white");
		hideInformation();
		var con1=$('#condition1').val();
		clearSession("/systemManage/teacher");
		if(con1==0){
			data={};
			showMain();
		}else{
			data={};
			var text=$('#input').val();
			if((con1=="1"&&text=="")||(con1=="2"&&text=="")){
				$("#input").css("background","#FF77AD");
				$("#input").focus();
				setTimeout('AlertInfo("请您填写相应的信息")',100);
			}else{
				if(text==""){
					text="null";
				}
				data['flagString']=con1;
				data['information']=text;
				showMain();
			}
		}
		//清空全局Ids
		dataId = [];
	});
	function clearError(id){
		$("#"+id).css("background","white");
		hideInformation('effect');
	}
	$("#edit_but").click(function(){
		loadAllIds("/systemManage/teacher");
		if(dataId.length==0||dataId=="null"){
			showAlertDialog("请选择要修改的教师信息");
		}else if(dataId.length>1){
			showAlertDialog("请您选择单条教师信息");
		}else{
//			var id=dataId[0];
			showLoading();
			$("#teacher_main").load("../systemManage/teacher/toModify.action",{'teacher.id':dataId[0]},function(){
				$("#userTitle").html("编辑教师信息");
				hideLoading();
				$("#teacherbar").hide();
				$('#edit_b').click(function() {
					$('#editForm').submit();
				});
				validate("editForm","modify");
				$("h3 a").click(function() {
					data={};
					showMain();
				});
				$('#cancel_b').click(function() {
					data={};
					showMain();
				});
			});
		}
		//清空全局Ids
		dataId = [];
	});
	function validate(formId,type){
		$("#"+formId).validate({						  
			rules: {
				'teacher.name': {
					required: true
				},
				'teacher.age':{
					required: true,
					digits:true,
					gt:0
				},
				'teacher.clasz.id':{
					required: true
				}
			},
			//设置提示信息
			messages:{
				'teacher.name': {
					required: "请输入教师姓名"
				},
				'teacher.age':{
					required: "请输入教师年龄",
					digits:"请输入正确的年龄格式",
					gt:"请输入正确的年龄格式"
				},
				'teacher.clasz.id':{
					required: "请选择要管理的班级"
				}
			},
			//指定错误信息位置
			errorPlacement: function (error, element) { 
				element.parent().find("span:last").append(error);
			},
			//设置验证触发事件
			focusInvalid: true,   
			submitHandler: function(form) {
				if(type=="add"){
					confirmInformation("你确定要添加教师吗？",function(){
						// 提交表单<br>
						var option = {
								data:{},
								beforeSubmit : function() {
									showLoading();
									return true;
								},
								success : function() {
									data={};
									showMain();
									setTimeout('AlertInfo("教师添加成功")',1800);
								},error : function (jqXHR, textStatus, errorThrown) {
									showAlertDialog(errorThrown + " " + textStatus);
								}
							};
						$('#'+formId).ajaxSubmit(option); 
					});
				}else{
					confirmInformation("你确定要修改教师信息吗？",function(){
						// 提交表单<br>
						var option = {
								data:{},
								beforeSubmit : function() {
									showLoading();
									return true;
								},
								success : function() {
									data={};
									showMain();
									setTimeout('AlertInfo("教师修改成功")',1800);
								},error : function (jqXHR, textStatus, errorThrown) {
									showAlertDialog(errorThrown + " " + textStatus);
								}
							};
						$('#'+formId).ajaxSubmit(option); 
					});
				}
			}
		});
	}
	function showMain(){
		clearError('input');
		toDateList('teacher_main','teacherbar','teacherlist','/systemManage/teacher',data,'id',generalIdList);
		showAttribuate1('tabs');
	}
});
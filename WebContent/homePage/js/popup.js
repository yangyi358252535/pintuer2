 $(document).ready(function(){
	 $.ajaxSetup({
			contentType : "application/x-www-form-urlencoded;charset=utf-8",
			complete : function(XMLHttpRequest, textStatus) {
				// 通过XMLHttpRequest取得响应头，sessionstatus
				var sessionstatus = XMLHttpRequest.getResponseHeader("sessionstatus");
				if (sessionstatus == "timeout") {
					// 这里怎么处理在你，这里跳转的登录页面
					window.location.replace("../login.jsp");
				}
			}
	});
 });
// ----------------------------------------------弹出DIV仿模态窗口开始----------------------------------------------
var popW; // pop宽度
var popH; // pop高度
var popclientH; // 浏览器高度
var popclientW; // 浏览器宽度
var popupTitle; // pop标题
var poppoppageUrl; // pop中加载的页面
var pop_X; // pop横坐标
var pop_Y; // pop纵坐标
/** popUp窗口生成 **/
function PopUpWindow(divWidth, divHeight, title, url, data) {
	popW = divWidth; // DIV宽度
	popH = divHeight; // DIV高度
	popupTitle = title; // DIV高度
	poppageUrl = url; // DIV中加载的页面UR
	lockpopScreen(); // 锁定背景
	popOpen();
	if (data == null) {
		data = {};
	}
	$("#popupTitle").append(popupTitle);
	$("#popupContent").load(poppageUrl, data);

	// 交换pop_x图片
	$("#pop_x").hover(function() {
		$(this).attr("src", "../images/Close-2.gif");
	}, function() {
		$(this).attr("src", "../images/Close-1.gif");
	});

	// 关闭DIV窗口
	$("#pop_x").click(function() {
		clearpopUpWindow();
		clearlockpopScreen();
	});
	dargPopupDIV();
}
function hideInformation() {
	$("#effect" + ":visible").removeAttr("style").fadeOut();
	isShowInformation = false;
}
/**返回弹出的DIV的坐标 **/
function popOpen() {
	var minTop = 80; // 弹出的DIV记顶部的最小距离
	if ($("#popUpWin").length == 0) {
		popclientH = $(window).height(); // 浏览器高度
		popclientW = $(window).width(); // 浏览器宽度
		pop_X = (popclientW - popW) / 2; // pop横坐标
		pop_Y = (popclientH - popH) / 2 - 80; // pop纵坐标
		pop_X += window.document.documentElement.scrollLeft; // pop显示的实际横坐标
		pop_Y += window.document.documentElement.scrollTop; // pop显示的实际纵坐标
		if (pop_Y < minTop) {
			pop_Y = minTop;
		}
		$("body")
				.append(
						"<div id='popUpWin' style='overFlow-x: hidden;'><div id='popupTitle'>" +
						"<img src='../images/Close-1.gif' id='pop_x' /></div><div id='popupContent' class='popuplist' style='overflow: hidden;'>" +
						"<img src='../images/waiting.gif' id='pop_x' style='top:150px;right:470px;'/></div></div>"); // 增加DIV
		// popUpWin的样式
		$("#popUpWin").css("position", "absolute");
		$("#popUpWin").css("z-index", 999);
		$("#popUpWin").css("left", (pop_X + "px")); // 定位pop的横坐标
		$("#popUpWin").css("top", (pop_Y + "px")); // 定位pop的纵坐标
		$("#popUpWin").css("opacity", "1");
		$("#popUpWin").width(popW);
		$("#popUpWin").height(popH);
		$("#popUpWin").css("background-color", "#FFFFFF");
		$("#popUpWin").css("border", "solid 1px #d4dae8");
		$("#popUpWin").css("overflow", "auto");
		// popupTitle的样式
		$("#popupTitle").css("height", "20px");
		$("#popupTitle").css("line-height", "20px");
//		$("#popupTitle").css("background-color", "#395a9d");
		$("#popupTitle").css("padding", "3px 5px 1px 5px");
		$("#popupTitle").css("color", "#FFFFFF");
		var theme=$("#session_theme").val();
//		alert(theme);
		if(theme=="default_css"){
			$("#popupTitle").css("background", "url(../js/image/ui-bg_diagonals-thick_22_1484e6_40x40_default_css.png)");
		}else if(theme=="themes1_css"){
			$("#popupTitle").css("background", "url(../js/image/ui-bg_diagonals-thick_22_1484e6_40x40_themes2_css.png)");
		}else if(theme=="themes2_css"){
			$("#popupTitle").css("background", "url(../js/image/ui-bg_diagonals-thick_22_1484e6_40x40_themes2_css.png)");
		}else if(theme=="themes3_css"){
			$("#popupTitle").css("background", "url(../js/image/ui-bg_diagonals-thick_22_1484e6_40x40_themes2_css.png)");
		}
		$("#popupTitle").css("font-weight", "bold");
		$("#popupTitle").css("cursor", "move");
		// pop_x的样式
		$("#pop_x").css("float", "right");
		$("#pop_x").css("cursor", "pointer");
		// popupContent的样式
		$("#popupContent").css("padding", "10px");
	} else {
		popclientH = $(window).height(); // 浏览器高度
		popclientW = $(window).width(); // 浏览器宽度
		pop_X = (popclientW - popW) / 2; // pop横坐标
		pop_Y = (popclientH - popH) / 2; // pop纵坐标
		pop_X += window.document.documentElement.scrollLeft; // pop显示的实际横坐标
		pop_Y += window.document.documentElement.scrollTop; // pop显示的实际纵坐标
		if (pop_Y < minTop) {
			pop_Y = minTop;
		}
		$("#popUpWin").css("left", (pop_X + "px")); // 定位pop的横坐标
		$("#popUpWin").css("top", (pop_Y + "px")); // 定位pop的纵坐标
	}
}

/** 锁定背景屏幕 **/
function lockpopScreen() {
	if ($("#popLock").length == 0) { // 判断pop是否存在
		popclientH = $(window).height(); // 浏览器高度
		popclientW = $(window).width(); // 浏览器宽度
		// var docH = $("body").height(); //网页高度
		// var docW = $("body").width(); //网页宽度
		// var bgW = popclientW > docW ? popclientW : docW; //取有效宽
		// var bgH = popclientH > docH ? popclientH : docH; //取有效高
		$("body").append("<div id='popLock'></div>"); // 增加DIV
		$("#popLock").height(popclientH);
		$("#popLock").width(popclientW);
		$("#popLock").css("display", "block");
		$("#popLock").css("background-color", "#000000");
		$("#popLock").css("position", "fixed");
		$("#popLock").css("z-index", "200");
		$("#popLock").css("top", "0px");
		$("#popLock").css("left", "0px");
		$("#popLock").css("opacity", "0.5");
	} else {
		popclientH = $(window).height(); // 浏览器高度
		popclientW = $(window).width(); // 浏览器宽度
		$("#popLock").height(popclientH);
		$("#popLock").width(popclientW);
	}
}

/** 清除背景锁定 **/
function clearlockpopScreen() {
	$("#popLock").remove();
}

/** 清除DIV窗口 **/
function clearpopUpWindow() {
	$("#popUpWin").remove();
}

/** 窗口大小改变时 **/
$(window).resize(function() {
	if ($("#popLock").length != 0) {
		lockpopScreen();
	}
	if ($("#popUpWin").length != 0) {
		popOpen();
	}
});
function dargPopupDIV(){
	var _move=false;//移动标记  
    var _x=0,_y=0;//鼠标离控件左上角的相对位置  
        $("#popupTitle").click(function(){  
            //alert("click");//点击（松开后触发）  
            }).mousedown(function(e){  
            _move=true;  
            _x=e.pageX-parseInt($("#popupTitle").parent().css("left"));  
            _y=e.pageY-parseInt($("#popupTitle").parent().css("top"));  
            $("#popupTitle").parent().fadeTo(20, 0.5);//点击后开始拖动并透明显示  
        });  
        $(document).mousemove(function(e){  
            if(_move){  
                var x=e.pageX-_x;//移动时根据鼠标位置计算控件左上角的绝对位置  
                var y=e.pageY-_y;  
                $("#popupTitle").parent().css({top:y,left:x});//控件新位置  
            }  
        }).mouseup(function(){  
        _move=false;  
        $("#popupTitle").parent().fadeTo("popupTitle", 1);//松开鼠标后停止移动并恢复成不透明  
      });  
}


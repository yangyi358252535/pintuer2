<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%                          //校验提示框  					%>
<div id="effect" style="display: none" class="ui-state-highlight ui-corner-all">

</div>

<div id="medicineWarnning" style="display: none"></div>

<% 							//提示框					 %>
<div id="dialog-message" title="提示">
	<div style="position: absolute; left: 25px; top: 22px;">
		<img id="img1" src="../images/msginfo.png" style="display: none">
	</div>
	<div style="position: absolute; left: 45px; top: 22px; color: red;"
		id="alertInfo"></div>
</div>
<%							//loading显示							%>
<div class="overlay"></div>
<div id="AjaxLoading" class="showbox">
	<div class="loadingWord" style="display:none">
		<img src="../images/waiting.gif">加载中，请稍候...
	</div>
</div>
<%							//上传文件显示							%>
<div id="AjaxUpLoading" class="showbox1">
	<div class="uploadingWord" style="display:none">
		<img src="../images/waiting.gif">文件上传中，请稍候...
	</div>
	<div><a href="#" id="upload_cancel">取消</a></div>
</div>
<%							//confirm框					%>
<div id="dialog-confirm" title="请选择">
	<div style="position: absolute; left: 25px; top: 22px;">
		<img id="img2" src="../images/msginfo.png" style="display: none">
	</div>
	<div style="position: absolute; left: 45px; top: 22px; color: red;"
		id="confirmInfo"></div>
</div>
<%							//信息添加成功信息显示				%>
<div class="ui-widget" style="width: 180px;display: none" id="successInfo">
	<div class="ui-state-highlight ui-corner-all" style="padding: 0 .7em;height:40px;">
	<p><span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;margin-top: .8em;"></span>
	<strong  style="position: relative;top:10px;color:red;"></strong></p>
	</div>
</div>

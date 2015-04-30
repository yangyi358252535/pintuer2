<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<head>
<script type="text/javascript" src="../homePage/js/configCustom.js" charset="UTF-8"></script>
<style>
ul li {
	text-align: left;
}
.s{
	color:black;
	height: 30px;
}
</style>
</head>
<% if((Integer)session.getAttribute("currentUserCode")==0) {%>
		<s:hidden value="0" id="currentUserCode"></s:hidden>
		<% }else if((Integer)session.getAttribute("currentUserCode")==1){%>
			<s:hidden value="1" id="currentUserCode"></s:hidden>
		<%}else if((Integer)session.getAttribute("currentUserCode")==2){%>
			<s:hidden value="2" id="currentUserCode"></s:hidden>
		<% } %>	
	<div id="configTab" style="height: 430px;">
		<ul>
			<li><a href="#tabs-1-1">账户设置</a>
			</li>
			<li id="tabs-444" style="display: none;"><a href="#tabs-2-1">系统设置</a>
			</li>
		</ul>
	<div id="tabs-1-1" class="rightlist">
		<div id="ee" style="position:relative; left:-16px;top:0px;width: 810px;">
			<h3 id="h3_head_con">
			<span style="color: white">账户信息</span>
			</h3>
			<div id="topDIV_con">
				<div>
					<ul>
						<li><img src="../images/1.png" width="50px" style="position:relative;left:50px;top:20px;width: 80px;">
						</li>
						<li>
							<div style="position:relative;  left :100px;width: 300px;">
								<div>&nbsp;</div>
								<div class="s">账号&nbsp;&nbsp;&nbsp;${currentUser.num}</div>
								<div class="s">姓名&nbsp;&nbsp;&nbsp;${currentUser.name}</div>
								<div  class="s">权限&nbsp;&nbsp;&nbsp;${currentUserAuth}</div>
							</div>
						</li>
					</ul>
				</div>
				<div>
				</div>
			</div>
			<hr>
			<h3 id="h3_detail_con">
				<span style="color: white">安全管理</span>
			</h3>
			<div id="bottomDIV_con" style="display:none">
				<div>
					<ul>
						<li>
							<div style="position:relative;  left :100px;width: 300px;">
								<div>&nbsp;</div>
								<form action="" method="post" id="modifyPass">
								<div style="position:relative; left:-70px;height: 30px;">修改密码</div>
								<div style="position:relative; left:20px;height: 30px;width: 900px;">旧密码&nbsp;&nbsp;&nbsp;<input type="password" class="inputTextStyle"  name="oldPass" id="oldPass" value=""/>&nbsp;&nbsp;<span class="errorSpan" id="old"></span></div>
								<div style="position:relative; left:20px;height: 30px;width: 900px;">新密码&nbsp;&nbsp;&nbsp;<input type="password" class="inputTextStyle" name="newPass" id="newPass"/>&nbsp;&nbsp;<span class="errorSpan"></span></div>
								<div  style="position:relative; left:-32px;height: 30px;width: 900px;">再次输入新密码&nbsp;&nbsp;&nbsp;<input type="password" class="inputTextStyle" name="newPassAgain" id="newPassAgain"/>&nbsp;&nbsp;<span class="errorSpan"></span></div>
								</form>
							</div>
						</li>
					</ul>
					<ul>
						<li >
							<div align="right">
							<a id="edit_b_con"
								class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
								style="width: 65px; height: 25px;right: 0xp;">
								<span class="ui-icon ui-icon-wrench" style="left: 5px;"></span>
								<span style="position:relative; top:3px;left:5px;">修改</span>
							</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<a id="close_but_con"
	class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
	style="position: absolute;bottom:3px;right:30px;width: 50px; height: 20px;"> <span
	class="ui-icon ui-icon-arrowreturnthick-1-w" style="left: 3px;"></span>
	<span style="position: relative; left: 5px;top:2px;">关闭</span> </a>

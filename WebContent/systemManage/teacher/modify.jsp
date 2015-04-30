<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3 id="h3_head">
	<a href="#" style="color: white">教师信息列表</a>-><span style="color: white">修改教师信息</span>
</h3>
<form action="../systemManage/teacher/modifyProcess.action" method="post"
	id="editForm">
	<s:hidden name="teacher.id" id="eId"></s:hidden>
	<s:hidden name="teacher.num"></s:hidden>
	<s:hidden name="teacher.password"></s:hidden>
	<s:hidden name="oldClassId"></s:hidden>
	<div id="topDIV">
		<table class="list" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="140px">教师编号</td>
				<td colspan="2">
					<div align="left">
						<s:property value="teacher.num" />
					</div>
				</td>
			</tr>
			<tr>
				<td width="140px"><span style="color: red">*</span>教师姓名</td>
				<td colspan="2"><div align="left">
						&nbsp;&nbsp;
						<s:textfield name="teacher.name" id="name" cssStyle="width:70px;" cssClass="inputTextStyle"></s:textfield>
						&nbsp;&nbsp;<span class="errorSpan"></span>
					</div>
				</td>
			</tr>
			<tr>
				<td width="140px"><span style="color: red">*</span>教师年龄</td>
				<td colspan="2"><div align="left">
						&nbsp;&nbsp;
						<s:textfield name="teacher.age" id="age" cssStyle="width:50px;"  cssClass="inputTextStyle"></s:textfield>
						&nbsp;&nbsp;<span class="errorSpan"></span>
					</div>
				</td>
			</tr>
			<tr>
				<td><span style="color: red">*</span>班级信息</td>
				<td colspan="2"><div align="left">
						&nbsp;&nbsp;
						<s:select list="claszList" id="pl" listKey="id"
						listValue="name" name="teacher.clasz.id"
						cssClass="selectNumStyle" emptyOption="true"></s:select>
						&nbsp;&nbsp;<span class="errorSpan"></span>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<div align="center">
						<a id="edit_b" 
							class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
							style="width: 80px; height: 25px;"> <span
							class="ui-icon ui-icon-check" style="left: 5px;"></span> <span
							style="position: relative; left: 5px;">修改</span> </a> &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a id="cancel_b"
							class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
							style="width: 80px; height: 25px;"> <span
							class="ui-icon ui-icon-arrowreturnthick-1-w" style="left: 5px;"></span>
							<span style="position: relative; left: 5px;">取消</span> </a>
					</div>
				</td>
			</tr>
		</table>
	</div>
</form>
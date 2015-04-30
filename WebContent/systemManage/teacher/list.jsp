<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<table class="table table-hover" >
<thead>
		<tr>
			<th><s:checkbox id="selectAll" name="all" /></th>
			<th>序号</th>
			<th>教师编号</th>
			<th>教师姓名</th>
			<th>教师年龄</th>
			<th>班级</th>
		</tr>
</thead>
<tbody>
		<s:iterator value="DATALIST" status="st">
			<tr>
				<s:hidden name="id"></s:hidden>
				<td><s:checkbox name="sel" /></td>
				<td><s:property value="#st.count+(currentPage-1)*10" /></td>
				<td><s:property value="num" /></td>
				<td><s:property value="name" /></td>
				<td><s:property value="age" /></td>
				<td><s:property value="clasz.name" /></td>
			</tr>
		</s:iterator>
	</tbody>
</table>
<jsp:include page="/template/page.jsp"></jsp:include>
<p class="rightbottom" style="display:inline-block;">
	当前共有<span class="number" style="color: red;"><s:property
			value="resultCount" />
	</span>位教师信息
</p>

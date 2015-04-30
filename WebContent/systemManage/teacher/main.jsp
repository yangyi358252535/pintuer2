<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="../systemManage/teacher/js/teacher_main.js" charset="UTF-8"></script>
<div class="panel admin-panel" >
	<div id="teacherbar">
    	<div class="panel-head"><strong>内容列表</strong></div>
        <div class="padding border-bottom">
            <input type="button" class="button button-small border-green" id="add_but" value="添加" />
            <input type="button" class="button button-small border-yellow" id="edit_but" value="编辑" />
            <span >
            	 &nbsp;&nbsp;&nbsp;&nbsp;查询:&nbsp;<select style="width:140px;display:inline-block;"
						class="input" id="condition1" tabindex="1">
				<option value="0">全部教师信息</option>
				<option value="1">按编号查询</option>
				<option value="2">按姓名查询</option>
				</select>
				&nbsp;&nbsp;<input type="text" style="width:100px;display:inline-block;" id="input" tabindex="3" disabled="disabled" class="input" >
				<button id="search_but" class="button bg-main" type="button" id="search_but" >搜索</button>
            </span>
	     </div>
	 </div>
	  <span id="teacher_main"></span>
 </div>

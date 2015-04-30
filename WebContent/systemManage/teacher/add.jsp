<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<div class="tab">
      <div class="tab-head">
       <ul class="tab-nav">
          <li class="active"><a href="#tab-set" style="font-size:15px;font-weight:bold;">添加教师信息</a></li>
        </ul>
      </div>
	  <div class="tab-body">
        <br />
           <br />
        <div class="tab-panel active" id="tab-set">
        	<form method="post" class="form-x" action="../systemManage/teacher/addProcess.action" id="addForm">
                <div class="form-group">
                    <div class="label"><label for="name"><span style="color: red">*</span>教师姓名</label></div>
                    <div class="field">	
                    	<s:textfield name="teacher.name" id="name" cssStyle="width:70px;" cssClass="input" placeholder="请填写教师姓名"  ></s:textfield>
						&nbsp;&nbsp;<span class="errorSpan" ></span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="age"><span style="color: red">*</span>教师年龄</label></div>
                    <div class="field">
                    	<s:textfield name="teacher.age" id="age" cssStyle="width:50px;"  cssClass="input" placeholder="请填写教师年龄" ></s:textfield>
						&nbsp;&nbsp;<span class="errorSpan"></span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="clasz"><span style="color: red">*</span>班级信息</label></div>
                    <div class="field">
						<s:select list="claszList" id="pl" listKey="id"
						listValue="name" name="teacher.clasz.id" cssStyle="width:100px;"
						cssClass="input" emptyOption="true"></s:select>
						&nbsp;&nbsp;<span class="errorSpan"></span>
                    </div>
                </div>
                <div class="form-button" style="margin-bottom: 20px;">
                	<button class="button bg-main" type="button" id="add_b111" >添加</button>
                	<button class="button bg-back" type="button" id="cancel_b" >返回</button>
                </div>
            </form>
        </div>
      </div>
   </div>

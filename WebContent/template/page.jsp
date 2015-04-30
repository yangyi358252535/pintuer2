<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="panel-foot text-center">
	 <s:if test="isFirstAvailiable()==false">
	 	<ul class="pagination"><li class="active"><a href="#">首页</a></li></ul>
	 </s:if>
	 <s:elseif test="isFirstAvailiable()==true">
	 	<ul class="pagination"><li><a href="#" id="firstPage">首页</a></li></ul>
	</s:elseif>
	<s:if test="isPreviousAvailiable()==false">
		<ul class="pagination"><li class="active"><a href="#">上一页</a></li></ul>
	</s:if>
	<s:elseif test="isPreviousAvailiable()==true">
		 <ul class="pagination"><li><a href="#" id="prePage">上一页</a></li></ul>
	</s:elseif>
     <ul class="pagination pagination-group">
     	<li class="active"> 第
			<span class="thispage" id="thisPage"> <s:property
				value="currentPage" /> </span>页
         </li>
       	<li class="active"> 共
			<span class="allpage" id="pageAll"><s:property value="totalPageAmount" /> </span>页
		</li>
     </ul>
     <s:if test="isNextAvailiable()==false">
         <ul class="pagination"><li class="active"><a href="#">下一页</a></li></ul>
     </s:if>
	 <s:elseif test="isNextAvailiable()==true">
	 	<ul class="pagination"><li><a href="#" id="nextPage">下一页</a></li></ul>
	 </s:elseif>
	 <s:if test="isLastAvailiable()==false">
	   <ul class="pagination"><li class="active"><a href="#">尾页</a></li></ul>
	 </s:if>
	 <s:elseif test="isLastAvailiable()==true">
	 	<ul class="pagination"><li><a href="#" id="lastPage">尾页</a></li></ul>
	 </s:elseif>
 </div>
&nbsp;&nbsp;
<span><s:textfield cssStyle="text-align: right;width:30px;height:15px;border-color: gray;border-style: groove;border-width: thin;display:inline-block;" 
		id="jumpPage" />&nbsp;&nbsp;<a href="#" class="lastpage" id="jump" style="text-decoration: underline;">跳转</a>
</span>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="righter nav-navicon" id="admin-nav">
    <div class="mainer">
        <div class="admin-navbar">
            <span class="float-right">
                <a class="button button-little bg-yellow" href="javascript:void(0);">注销登录</a>
            </span>
            <ul class="nav nav-inline admin-nav" >
            	<li class="active" id="start"><a href="#" class="icon-home functionTitle"> 开始</a>
            		<ul class="listClass">
						<li ></li>
					</ul>
            	</li>
            	<s:iterator value="#session.BO_MenuAndAuthInfoList" var="menuList">
					<li class="firstClass"><a href="javascript:void(0)" class="icon-file-text functionTitle"><s:property value="#menuList.keySet()"/></a>
						<ul class="listClass">
						<s:iterator value="#menuList.keySet()" id="menusValueIndex">
							<s:iterator value="#menuList.get(#menusValueIndex)" id="menuValueIndex">
								<li ><a class="method" href="javascript:void(0)" title='<s:property value="#menuValueIndex.authName_Chinese"/>' name='<s:property value="#menuValueIndex.source_Url"/>'><s:property value="#menuValueIndex.authName_Chinese"/></a></li>
						     </s:iterator>
						</s:iterator>
						</ul>
					</li>
				</s:iterator>
            </ul>
        </div>
        <div class="admin-bread">
            <span>您好，admin，欢迎您的光临。</span>
            <ul class="bread">
                <li><a href="#" class="icon-home"> 开始</a></li>
            </ul>
        </div>
    </div>
</div>
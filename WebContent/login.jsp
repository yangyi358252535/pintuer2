<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>cccc</title>
    <link rel="stylesheet" href="homePage/css/pintuer.css">
    <link rel="stylesheet" href="homePage/css/admin.css">
    <script type="text/javascript" src="homePage/js/jquery-1.9.1.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="homePage/js/login.js" charset="UTF-8"></script>
</head>

<body>
<div class="container">
    <div class="line">
        <div class="xs6 xm4 xs3-move xm4-move">
            <br /><br />
            <div class="media media-y">
               <span>ddddd</span>
            </div>
            <br /><br />
            <form>
            <div class="panel">
                <div class="panel-head"><strong>asdfasd</strong></div>
                <div class="panel-body" style="padding:30px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input" name="admin" placeholder="登录账号" id="username"/>
                            <span class="icon icon-user"></span>
                            <div class="input-help">
                            	<ul><li style="color:red;list-style-type:none;" id="usernameError"></li>
								</ul>
							</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input" name="password" placeholder="登录密码" id="password"/>
                            <span class="icon icon-key"></span>
                              <div class="input-help">
                            	<ul><li style="color:red;list-style-type:none;" id="passwordError"></li>
								</ul>
							</div>
                        </div>
                    </div>
                    <!--  
                    <div class="form-group">
                        <div class="field">
                            <input type="text" class="input" name="passcode" placeholder="å¡«åå³ä¾§çéªè¯ç " data-validate="required:è¯·å¡«åå³ä¾§çéªè¯ç " />
                            <img src="images/passcode.jpg" width="80" height="32" class="passcode" />
                        </div>
                    </div>
                    -->
                </div>
                <div class="panel-foot text-center"><button class="button button-block bg-main text-big" type="button" id="login_but1">立即登录</button></div>
            </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
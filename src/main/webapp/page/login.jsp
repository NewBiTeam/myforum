<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<link rel="stylesheet" type="text/css" href="../static/css/style.css" />
<link rel="stylesheet" type="text/css" href="../static/css/skin_/login.css" />
<script type="text/javascript" src="../js/tgp/jquery.js"></script>
<script type="text/javascript" src="../js/tgp/jquery.select.js"></script>
<script type="text/javascript" src="../js/jquery-easyui-1.5.2/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/jquery-easyui-1.5.2/jquery.easyui.min.js" charset="utf-8"></script>
<link rel="stylesheet" href="../js/jquery-easyui-1.5.2/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="../js/jquery-easyui-1.5.2/themes/icon.css" type="text/css"></link>
<script type="text/javascript" src="../js/jquery-easyui-1.5.2/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>
<script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
<title>我的小管家</title>
</head>

<body>
<div id="container">
    <div id="bd">
    	<div id="main">
        	<div class="login-box">
                <div id="logo"></div>
                <h1></h1>
                <form onsubmit="return false" name="loginForm">
                <div class="input username" id="username">
                    <label for="userName">用户名</label>
                    <span></span>
                    <input type="text" id="userName" />
                </div>
                <div class="input psw" id="psw">
                    <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <span></span>
                    <input type="password" id="password" />
                </div>
                <div class="input validate" id="validate">
                    <label for="valiDate">验证码</label>
                    <input type="text" id="valiDate" />
                    <div class="value">X3D5</div>
                </div>
                
                
                 <div class="styleArea">
                  
                        <a href="register.jsp"><input type="button" class="button" value="注册"  /></a>
                    
                </div> 
                
                <!-- <div class="styleArea">
                    <div class="styleWrap">
                        <select name="style">
                            <option value="默认风格">默认风格</option>
                            <option value="红色风格">红色风格</option>
                            <option value="绿色风格">绿色风格</option>
                        </select>
                    </div>
                </div> -->
                <div id="btn" class="loginButton">
                    <input type="button" class="button" value="登录"  />
                </div>
                </form>
            </div>
        </div>
        <div id="ft">CopyRight&nbsp;2014&nbsp;&nbsp;版权所有&nbsp;&nbsp;Uimaker.com 仅供学习参考 &nbsp;&nbsp;苏ICP备09003079号</div>
    </div>
   
</div>
</body>
<script>
$(function(){
	$(".loginButton").click(function(){
		var useraccount = $("#userName").val();
		var userpassword = $("#password").val();
		if (useraccount == '') {
			alert("账号不能为空，请输入您的账号！");
			$('#userName').focus();
			return false;
		}
		if (userpassword == '') {
			alert("密码不能为空，请输入您的密码！");
			$('#password').focus();
			return false;
		}
		$.ajax({
			url:'/myforum/login',
			type:'post',
			dataType:'json',
			data:{
				useraccount:$("#userName").val(),
				userpassword:$("#password").val()
			},
			success:function(data){
				localStorage.clear();
				/* location.href = 'main.jsp'; */
				location.href = 'main.jsp';
			},
			error : function() {
				alert("登录失败，账号或密码错误");
			},
			beforeSend: function ()
            {
				$.messager.progress({
			　　　　　   　　title:'消息',
			　　　　　　 　　msg:'正在登陆中,请稍后....',
			　　　　　　　　iconCls:'icon-search'
			　　　　});
            },
            complete: function ()
            {
            	setInterval(function(){
            		  $.messager.progress('close');}, 2400);
            }
		});
	});
});
</script>
<script type="text/javascript">
	var height = $(window).height() > 445 ? $(window).height() : 445;
	$("#container").height(height);
	var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
	$('#bd').css('padding-top', bdheight);
	$(window).resize(function(e) {
        var height = $(window).height() > 445 ? $(window).height() : 445;
		$("#container").height(height);
		var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
		$('#bd').css('padding-top', bdheight);
    });
	$('select').select();
	
	/* $('.loginButton').click(function(e) {
        document.location.href = "main.jsp";
    }); */
</script>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>小作业注册页面</title>
  <link type="text/css" rel="stylesheet" href="css/style.css" >
  <script type="text/javascript" src="script/jquery-1.7.2.js"></script>
  <script type="text/javascript">
    $(function () {
      // $("#sub_btn").click(function () {
        $("#username").blur(function () {
          var usernameText = $("#username").val();
          var usernamePatt = /^\w{6,14}$/;
          if (!usernamePatt.test(usernameText)) {
            $("span.errorMsg1").text("对不起！用户名长度必须在【6-14】位之间");
            return false;
          }
          $("span.errorMsg1").text("");

        })
      $("#password").blur(function () {
        var passwordText = $("#password").val();
        var passwordPatt = /^\w{8,16}$/;
        if (!passwordPatt.test(passwordText)) {
          $("span.errorMsg2").text("对不起！密码长度必须在【8-16】位之间");
          return false;
        }
        $("span.errorMsg2").text("");
      })
      $("#repwd").blur(function () {
        var passwordText = $("#password").val();
        var suerPassword = $("#repwd").val();
        if (passwordText != suerPassword) {
          $("span.errorMsg3").text("对不起！两次输入密码不一致");
          return false;
        }
        $("span.errorMsg3").text("");
      })
      $("#email").blur(function () {
        var emilText = $("#email").val();
        var emilPatt=/^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
        if (!emilPatt.test(emilText)){
        	$("span.errorMsg4").text("对不起！你输入的邮箱格式不正确");
        	return false;
        }
        $("span.errorMsg4").text("");

      })
    })
  </script>
  <style type="text/css">
    .login_form{
      height:420px;
      margin-top: 25px;
    }

  </style>
</head>
<body>
<div id="login_header">
  <img class="logo_img" alt="" src="static/img/logo.gif" >
</div>

<div class="login_banner">

  <div id="l_content">
    <span class="login_word">欢迎注册</span>
  </div>

  <div id="content">
    <div class="login_form">
      <div class="login_box">
        <div class="tit">
          <h1>注册小作业会员</h1>

        </div>
        <div class="form">
          <form action="userServlet" method="post">
            <input type="hidden" name="action" value="regist">
            <label>用户名称：</label>
            <input class="itxt" type="text" placeholder="请输入用户名"
                   autocomplete="off" tabindex="1" name="username" id="username"
                   value=""/> <br />
            <h5> <span class="errorMsg1">
            </span></h5>

            <br />
            <label>用户密码：</label>
            <input class="itxt" type="password" placeholder="请输入密码"
                   autocomplete="off" tabindex="1" name="password" id="password" /> <br />
           <h5> <span class="errorMsg2">
          </span></h5>

            <br />
            <label>确认密码：</label>
            <input class="itxt" type="password" placeholder="确认密码"
                   autocomplete="off" tabindex="1" name="repwd" id="repwd" /> <br />
           <h5> <span class="errorMsg3">
          </span></h5>

            <br />

            <label>电子邮件：</label>
            <input class="itxt" type="text" placeholder="请输入邮箱地址"
                   autocomplete="off" tabindex="1" name="email" id="email"
                   value="" /> <br />
           <h5> <span class="errorMsg4">
          </span></h5>

            <br />

            <input type="submit" value="注册" id="sub_btn" />

          </form>
        </div>

      </div>
    </div>
  </div>
</div>
<div id="bottom">
			<span>
				李想丽.小作业 &copy;学号
			</span>
</div>

</body>
</html>
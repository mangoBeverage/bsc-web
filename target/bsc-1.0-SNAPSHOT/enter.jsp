<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/17
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script src="js/messages_zh.js" type="text/javascript"></script>
</head>
<body>
<form id="loginFrom">
    <div>
        <h2>管理登录</h2>
        <span><label>账号</label></span>
        <span><input type="text" id="sysloginname" name="sysloginname" onkeypress="if(event.keyCode==13){ doLogin()};" class="validate[require] textbox" maxlength="15"/></span>
    </div>
    <div>
        <span><label>密码</label></span>
        <span><input type="password" id="sysloginpass" name="sysloginpass" onkeypress="if(event.keyCode==13){ doLogin()};" class="validate[require] password " maxlength="15"/></span>
    </div>
    <div class="sign">
        <input type="button" value="登录" class="submit" onclick="doLogin();" />
    </div>
</form>

<script>
function doLogin() {
    if ($("#loginFrom").validationEngine('validate')) {
        var submitOptions = {
            target : '#loginFrom',
             url : "${pageContext.request.contextPath}/dologin.htm",
            type : 'post',
            dataType : 'html',
            cache : false,
            async : false,
            error : function(xhr) {

            },
            success : function(data) {
                var r = eval('(' + data + ')');
                if (r.flag) {
                    window.location.href = "${pageContext.request.contextPath}/toappmain.htm";
                }
                else {
                    alert(r.msg);
                }
             }
        }
        $('#loginFrom').ajaxSubmit(submitOptions);
    }
}
</script>



</body>
</html>






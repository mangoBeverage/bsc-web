<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/15
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title></title>
</head>
<body>

<form:form modelAttribute="mail" action="mail/save">
    <table>
        <tr>
            <td>发件人</td>
            <td>${mail.sender.nickName}</td>
            <input type="hidden" id="sid" value="${mail.id}">
        </tr>
        <tr>
            <td>收件人</td>
            <td>${mail.receiver.nickName}</td>
            <input type="hidden" id="rid" value="${mail.id}">
        </tr>
        <tr>
            <td>时间</td>
            <td><input id="time" type="date"/></td>
        </tr>
        <tr>
            <td>内容</td>
            <td><form:textarea path="content"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"/> </td>
            <td><input type="reset" value="重置"/> </td>
        </tr>x
</form:form>

</body>
</html>

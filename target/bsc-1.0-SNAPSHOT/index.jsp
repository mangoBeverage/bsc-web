
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>bsc</title>
  </head>

  <h2><font size="8"></font> welcome to bsc_home</h2>
  <p>个人主页:</p>
  <a href="${pageContext.request.contextPath}/yangrui">杨芮</a><Br/>
  <a href="${pageContext.request.contextPath}/huke">胡珂</a><Br/>
  <a href="${pageContext.request.contextPath}/yuying">于颖</a><Br/>
  <a href="${pageContext.request.contextPath}/zhumeijuan">朱美娟</a><br/>
  <a href="${pageContext.request.contextPath}/wangxiya">王希雅</a>
  <p>数据表查询结果:</p>
  <a href="${pageContext.request.contextPath}/user">用户表</a><br/>
  <a href="${pageContext.request.contextPath}/mail">私信表</a>
  </body>
</html>

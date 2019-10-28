<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/12
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
</head>
<body>
<a href="hello.jsp">点击hello</a><br>
<a href="${pageContext.request.contextPath}/successDo">点击success</a><br>
<a href="${pageContext.request.contextPath}/viewsDo">点击views</a><br>
<a href="${pageContext.request.contextPath}/findAll">点击findAll</a><br>
<a href="${pageContext.request.contextPath}/userDo">点击user</a><br>
<form id="form1" action="${pageContext.request.contextPath}/helloDo" method="get">
    <table>
        <tr>
            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
</body>
</html>

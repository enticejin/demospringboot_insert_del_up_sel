<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/12
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--输出,条件,迭代标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt" %> <!--数据格式化标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="sql" %> <!--数据库相关标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn" %> <!--常用函数标签库-->
<%@ page isELIgnored="false" %> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<html>
<head>
    <title>hello</title>
</head>
<body>
hello


<table>
    <thead>
        <tr>
            <th>id</th>
            <th>姓名</th>
            <th>账号</th>
            <th>密码</th>
        </tr>
    </thead>
<c:forEach items="${userList}" var="user">
    <tbody>
        <tr>
            <td>
                ${user.user_id}
            </td>
            <td>
                ${user.user_name}
            </td>
            <td>
                ${user.user_account}
            </td>
            <td>
                ${user.user_pwd}
            </td>
        </tr>
    </tbody>
</c:forEach>
</table>
</body>
</html>

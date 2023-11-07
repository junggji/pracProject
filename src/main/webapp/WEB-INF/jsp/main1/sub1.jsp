<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: calri
  Date: 2023-11-05
  Time: 오후 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
        <C:forEach items="${userInfo}" var="user">
            <tr>
                <td>유저 아이디${user.loginId}</td>
                <td>유저 비밀번호${user.loginPassword}</td>
                <td>유저 이름${user.userName}</td>
            </tr>
        </C:forEach>
</table>
</body>
</html>

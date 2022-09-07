<%--
  Created by IntelliJ IDEA.
  User: jair9
  Date: 31/8/2565
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Favorite Subjects</title>
</head>
<body>
    <h3>Please Select Favorite Subjects::</h3><hr/>
    <form action="TestReqParam" method="post">
        Student Id : <input type="number" name="student_id"/><br>
        Name: <input type="text" name="name"/><br>
        Favorite Subjects : <br>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT100">INT 101 - Programming Fundamentals"<br/>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT102">INT 102 - Web Technology<br/>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT114">INT 114 - Discrete Mathematics"<br/>
        &nbsp; <input type="checkbox" name="fav_subjects" value="GEN101">GEN 101 - Physical Education<br/>
        &nbsp; <input type="checkbox" name="fav_subjects" value="GEN111">GEN 111 - Man and Ethics of Living"<br/>
        &nbsp; <input type="checkbox" name="fav_subjects" value="LNG120">LNG 120 - General English"<br/>
        &nbsp; <input type="checkbox" name="fav_subjects" value="LNG220">LNG 220 - Academic English"<br/>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT103">INT 103 - Advanced Programming"<br/>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT104">INT 104 - User Experience Design"<br/>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT105">INT 105 - Basic SQL<br/>
        <br/>
        <input type="submit">
    </form>
    <hr/>
    <c:if test="${paramValues.fav_subjects != null}">
        <hr/>
        Hello <p style="color: chocolate"> ${param.name}, id: ${param.student_id}</p>
        Your selected favorite subject:: <br>
        <c:forEach items="${paramValues.fav_subjects}" var="subject">
            ${subject} <br>
        </c:forEach>
    </c:if>
    <hr/>
    <br/>
    <a href="index.jsp">[ Home ]</a>
</body>
</html>

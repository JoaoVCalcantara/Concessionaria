<%--
  Created by IntelliJ IDEA.
  User: Willian
  Date: 23/10/2023
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
<div>
        <c:if test="${sessionScope.loggedUser != null}">
            <span>${sessionScope.loggedUser}</span>
            <a href="/logout">Logout</a>
        </c:if>
    <h1>Cars</h1>
    <table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <<c:if test="${sessionScope.loggedUser != null}">
            <th>Action</th>
        </c:if>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>${car.id}</td>
            <td>${car.name}</td>
            <c:if test="${sessionScope.loggedUser != null}">
                <td>
                    <form action="/delete-car" method="post">
                        <input type="hidden" id="id" name="id" value="${car.id}">
                        <button type="submit">Delete</button>
                        <span> | </span>
                        <a href="index.jsp?id=${car.id}&name=${car.name}">Update</a>
                    </form>
                </td>
            </c:if>
        </tr>
    </c:forEach>
    </table>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Willian
  Date: 30/10/2023
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Create Car</h2>

<div class="mb-3">
<form action="/create-car" method="post">

    <label class="form-label">Car Name</label>
    <input class="form-control" type="text" name="car-name" id="car-name" value="${param.name}">
    <input type="hidden" id="id" name="id" value="${param.id}">

  </div>

    <button type="submit">Save</button>

</form>

</body>
</html>
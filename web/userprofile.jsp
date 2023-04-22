<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="techorda.entity.Users" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="head.jsp"%>
</head>
<body>
    <div class="container">
    <%@include file="navbar.jsp"%>
    </div>
    <%
      Users user =(Users) request.getAttribute("user");
      if(user!=null){
    %>
      <div class="container mt-5 text-center">
        <h1>Welcome <%=user.getFullName()%></h1>
        <h5 style="color: lightgray">This is your profile page</h5>
      </div>
    <%
      }
    %>
</body>
</html>

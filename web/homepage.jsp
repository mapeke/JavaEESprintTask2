<%@ page import="java.util.ArrayList" %>
<%@ page import="techorda.entity.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <div class="container">
        <%@include file="navbar.jsp"%>
    </div>

    <div class="container mt-5 text-center">
        <h1 class="fw-bold">Welcome to BITLAB SHOP</h1>
        <h5 class="fw-light">Electronic devices with high quality and service</h5>
    </div>
    <div class="container">
        <div class="row row-cols-1 row-cols-md-3 g-4 mt-3">
    <%
        ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("items");
        if(items != null){
            for(Items item : items){
    %>
        <div class="col">
            <div class="card h-100">
                <div class="card-header text-center fw-bold fs-4"><%=item.getName()%></div>
                <div class="card-body">
                    <h5 class="card-title text-center text-success fw-bold">$<%=item.getPrice()%></h5>
                    <p class="card-text text-center"><%=item.getDescription()%></p>
                    <a class="btn btn-success w-100" href="#">BUY NOW</a>
                </div>
            </div>
        </div>
        <%
            }
        }
    %>
        </div>
    </div>
</body>
</html>

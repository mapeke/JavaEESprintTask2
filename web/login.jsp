<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%@ include file="head.jsp"%>
</head>
<body>
    <div class="container">
        <%@ include file="navbar.jsp"%>
    </div>

    <div class="container mt-4">
      <form action="/sign" method="post">
        <div class="card">
          <div class="card-header fs-4">
              Login Page
          </div>
          <div class="card-body">
            <div class="mb-3">
              <label class="form-label">Email</label>
              <input type="email" class="form-control" name="email">
            </div>
            <div class="mb-3">
              <label class="form-label">Password</label>
              <input type="password" class="form-control" name="password">
            </div>
            <div class="mb-3">
                <button type="submit" class="btn btn-success">Login</button>
            </div>
          </div>
        </div>
      </form>
    </div>
</body>
</html>

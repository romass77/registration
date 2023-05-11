<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/userstyle.css"> 
    </head>
    <body>
        <h1>Registration</h1>
        <a href="<%=application.getContextPath()%>/register">Register form</a><br>
        <a href="<%=application.getContextPath()%>/login">Login form</a><br>
        <a href="<%=application.getContextPath()%>/register/users_list">Users list</a>
    </body>
</html>

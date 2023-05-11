<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sarasas</title>
          <link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/userstyle.css"> 
    </head>
    <body>
        <a href="<%=application.getContextPath()%>/register/edit">New user</a>
        <ul>
            <c:forEach var="form" items="${list}">
                <li>
                    ${form.id}&nbsp;

                    ${form.name}&nbsp;

                    ${form.email}&nbsp;

                    ${form.password}

                </li>
            </c:forEach> 
        </ul>
        <a href="<%=application.getContextPath()%>/">Back</a>
    </body>
</html>

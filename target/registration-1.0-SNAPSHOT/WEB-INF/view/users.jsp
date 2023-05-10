<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sarasas</title>
    </head>
   <body>
       <a href="<%=application.getContextPath()%>/register/edit">New user</a>
        <ul>
       <c:forEach var="form" items="${list}">
                <li>
                    ${form.id}
                    ${form.name}
                    ${form.email}
                   
                </li>
            </c:forEach> 
        </ul>
 <a href="<%=application.getContextPath()%>/">Back</a>
    </body>
</html>

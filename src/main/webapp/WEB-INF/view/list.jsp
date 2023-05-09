<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
        <ul>
          <c:forEach var="user_form" items="${list}">
                <li>
                    ${user_form.name}
                   
                </li>
            </c:forEach>
        </ul>
 <a href="<%=application.getContextPath()%>/">Pagrindinis puslapis</a>
    </body>
</html>

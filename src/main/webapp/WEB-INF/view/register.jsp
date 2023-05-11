<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>register form</title>

        <!-- custom css file link  -->
        <link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"> 

    </head>
    <body>


        <div class="form-container">

            <form method="POST" action="<%=application.getContextPath()%>/register/save" >

                <h3>register now</h3>
                <c:if test="${value != null}">
                    <input type="hidden" name="id" value="${value.id}">
                </c:if>


                <input type="text" name="name" required placeholder="enter your name" value="${value.name}">
                <input type="email" name="email" required placeholder="enter your email" value="${value.email}">
              
                <input type="password" id="password" name="password" required placeholder="enter your password" value="${value.password}">   
                
                <input type="password" id="cpassword"  name="cpassword" required placeholder="confirm your password" value="${value.cpassword}"> 
                
                <input type="text" name="type" required placeholder="enter your type" value="${value.type}">
                <!--  <select name="user_type" >
                <!--  <option value="user">user</option>
                  <option value="admin">admin</option>  
               </select> -->
                <input type="submit" name="submit" value="register now" class="form-btn">
                <p>already have an account? <a href="<%=application.getContextPath()%>/login">login now</a></p>

                <a href="<%=application.getContextPath()%>/register/users_list">Users list</a>
            </form>

        </div>
            
            <script>
                function comparePasswords(){
                    var password = document.getElementById("password").value;
                     var password = document.getElementById("cpassword").value;
                     if(password === cpassword){
                         
                         alert("sutampa");
                         
                     }else{
                         alert("nesutampa");
                     }
                }
            </script>

    </body>
</html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : login
    Created on : 26.04.2015, 23:46:19
    Author     : Александр
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bookkeeping.css">
        <title>Bookkeeping</title>
    </head>
    <body>
        <div id ="header">

        </div>
        <div id="login_form">
            <form action ="LoginServlet" method="post">
                <table align = "center">
                    
                    <tr><td><h1>Login:</h1></td><tr>
                    <tr><td><input type ="text" name = "username"></td><tr>
                    <tr><td><h1>Password:</h1></td><tr>
                    <tr><td><input type ="password" name = "userpass"></td><tr>
                    <tr><td>
                            <c:if test="${!empty loginFailureFlag}">
                                <font color ="red">User name or password is wrong</font>
                            </c:if>
                        </td></tr>    
                    <tr><td><input type = "submit" value="Sign In">
                            <a href="signup.jsp">
                                <input type = "button" value="Sign Up">
                            </a></td><tr>    
                    <tr><td></br></td></tr>
                </table>
            </form>    
        </div>
    </body>
</html>

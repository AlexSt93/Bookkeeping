<%-- 
    Document   : signup
    Created on : 27.04.2015, 0:08:21
    Author     : Александр
--%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.List"%>
<script src="js/jquery.validate.js" type="text/javascript"></script>
<script src="../js/jquery-1.4.2.js" type="text/javascript"></script>


<script type="text/javascript">

    $(document).ready(function() {
        $("#login_form").validate({
            rules: {
                username: {
                    required: true,
                    minLength: 3
                },
                userpass1: {
                    required: true,
                    minLength: 6
                },
                userpass2: {
                    required: true,
                    minLength: 6
                },
            }
        });
    });
</script>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bookkeeping.css">
        <title>Bookkeeping</title>
        <%String bgColor = "white";
            String loginError = " ";
            String passError = " ";
            if (request.getAttribute("confirmError") != null) {
                bgColor = "red";
                passError = "Passwords do not match";
            }
            if (request.getAttribute("loginError") != null) {
                loginError = "Enter username";
            }
            if (request.getAttribute("userFailureFlag") != null) {
                loginError = "Username is already taken";
            }
            
            
        %>
    </head>
    <body>

        <div id ="header">

        </div>
        <div id="login_form">

            <form action ="SignUpServlet" method="post">
                <table align = "center">

                    <tr><td align="center"><h1>Login:</h1></td><tr>
                    <tr><td align="center"><input type ="text" name = "username"><br><font color = "red"><%=loginError%></font></td><tr>                        
                    <tr><td align="center"><h1>Password:</h1></td><tr>
                    </tr><tr><td align="center"><input type ="password" name = "userpass1" style="background: <%=bgColor%>"></td><tr>
                    <tr><td align="center"><input type ="password" name = "userpass2" style="background: <%=bgColor%>"></td><tr>

                    <tr><td><font color = "red"><%=passError%></font></td></tr>    
                    <tr><td align="center"><input type = "submit" value="Save">
                            <a href="index.jsp">
                                <input type = "button" value="Cancel">
                            </a></td><tr>    
                    <tr><td></br></td></tr>
                </table>
            </form>
        </div>
    </body>
</html>

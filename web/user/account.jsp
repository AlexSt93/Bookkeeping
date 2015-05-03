<%-- 
    Document   : account
    Created on : 27.04.2015, 2:02:12
    Author     : Александр
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bookkeeping.css">
        <title>Accoung</title>
    </head>
    <body>
        <div id="header">
            <hr header="2px">    
        </div>
        <div id="content">
            <form id="account_form" action="SavePassword" method="post">
                <table>
                    <tr>
                        <td>Login: </td>
                        <td>${user.login} ${user.password}</td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type ="text" name="password1"></td>
                    </tr>
                    <tr>
                        <td>Confirm Password:</td>
                        <td><input type ="text" name="password2"></td>
                    </tr>
                    <tr><td><input type="submit" value="Save"></td></tr>
                    
                </table>
            </form>
        </div>

    </body>
</html>

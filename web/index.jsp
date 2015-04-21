<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Bookkeeping</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/bookkeeping.css">
    </head>
    <body>
        <div id="header">
            header
        </div>
        <div id="center">
            <div id ="login_form">

                <form action="main.jsp" method="post">
                    <table id="form_table">
                        <tr><td>Login</tr>
                        <tr><td><input type="text" name="login"></td></tr>
                        <tr><td>Password</tr>
                        <tr><td><input type="text" name="pass"></td></tr>
                        <tr><td><input type="submit" name="log" value="Log in"></td></tr>                            
                    </table>

                </form>
                <a href="registration.jsp"><button>Sign up</button></a>
            </div>
        </div>
        <div id ="footer">
            footer
        </div>
    </body>
</html>

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validate;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Александр
 */
public class Validator {

    public boolean validateSignUp(String login, String pass1, String pass2, HttpServletRequest request) {
        boolean errorFlag = false;
        boolean loginErrorFlag;
        boolean passwordErrorFlag;
        boolean confirmPassErrorFlag;

        if (login.length() < 3
                || login == null
                || login.equals("")) {
            errorFlag = true;
            loginErrorFlag = true;
            request.setAttribute("loginError", loginErrorFlag);
        }
        if (pass1.length() < 3
                || pass1 == null
                || pass1.equals("")) {
            errorFlag = true;
            passwordErrorFlag = true;
            request.setAttribute("passwordError", passwordErrorFlag);
        }
        if (!pass1.equals(pass2)) {
            errorFlag = true;
            confirmPassErrorFlag = true;
            request.setAttribute("confirmError", confirmPassErrorFlag);
        }

        return errorFlag;
    }
}

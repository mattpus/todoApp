package com.mattpus.springboot.todoApp.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    public boolean authenticate(String username, String password) {

        boolean isValidUserName = username.equalsIgnoreCase("mattpus");
        boolean isValidPassword = password.equalsIgnoreCase("dummy");

        return isValidUserName && isValidPassword;
    }
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package frist;

import java.io.Serializable;
import javax.enterprise.context.ConversationScoped;
import javax.inject.Named;
//import javax.enterprise.context.Dependent;
//import javax.enterprise.context.RequestScoped;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author Zbiao
 */
@Named(value = "username")
@ConversationScoped
public class username implements Serializable{

    /**
     * Creates a new instance of username
     */
    public username() {
    }
    
    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    
}

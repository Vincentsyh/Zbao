/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import frist.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Named;
import javax.enterprise.context.Dependent;
import javax.enterprise.context.RequestScoped;
import util.C3P0Util;

/**
 *
 * @author Zbiao
 */
@Named(value = "informatinBean")
@RequestScoped
public class InformatinBean {

    /**
     * Creates a new instance of InformatinBean
     */
    public InformatinBean() {
        try {
            Connection conn = C3P0Util.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from user where username =?"); //23:15
            ps.setString(1, User.username);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                setUsername(rs.getString(0));
                setPassword(rs.getString(1));
                setNickname(rs.getString(2));
                setGender(rs.getString(3));
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(InformatinBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    private String username;
    private String password;
    private String nickname;
    private String gender;
    
    

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    
    
    
}

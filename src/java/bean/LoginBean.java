/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import frist.User;
import frist.username;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import util.C3P0Util;

/**
 *
 * @author Zbiao
 */
@Named(value = "loginBean")
@SessionScoped
public class LoginBean implements Serializable {

    /**
     * Creates a new instance of LoginBean
     */
    public LoginBean() {
    }
    private String username;
    private String password;
    private String nickname;
    private String gender;
    private String output;

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output;
    }

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

//    public String login(){
//        
//    }
    public String login() {
        try {
            Connection conn = C3P0Util.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from user where username=? and password=?");

            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                User.username = getUsername();
//                System.out.println("bean.LoginBean.login()2222222222222222222"+username);

                return "/index.xhtml";

//                  return "../shouye.xhtml";
            } else {
                setOutput("用户名密码不配");
                return "login";
            }

        } catch (SQLException ex) {
            Logger.getLogger(LoginBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String reset() {
        username = null;
        password = null;
        return "login";
    }

    public String xinXi() {
        try {
            Connection conn = C3P0Util.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from user where username = ?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                setUsername(rs.getString(1));
                setPassword(rs.getString(2));
                setNickname(rs.getString(3));
                setGender(rs.getString(4));
            }

//            return "information/xinxi_frist.xhtml";
            return "information/information.jsp";
        } catch (SQLException ex) {
            Logger.getLogger(LoginBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public String Zhuxiao(){
        username=null;
        return "index.xhtml";
    }

}

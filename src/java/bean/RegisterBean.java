/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import dao.DaoUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
@Named(value = "registerBean")
@RequestScoped
public class RegisterBean {

    /**
     * Creates a new instance of RegisterBean
     */
    public RegisterBean() {
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
   

    public String register() throws Exception {
        try {
            Connection conn = C3P0Util.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into user values(?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, nickname);
            ps.setString(4, gender);

            String s = DaoUtil.queryUserByName(username);

            if (s.equals("success")) {
                ps.executeUpdate();
                return "ok";
            } else {
                setOutput("用户已存在");
                return "Register";
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegisterBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String reset() {
        username = null;
        password = null;
        nickname = null;
        gender = null;
        return "Register";
    }

    

}

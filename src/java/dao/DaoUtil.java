/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.C3P0Util;

/**
 *
 * @author Zbiao
 */
public class DaoUtil {

    
    
    public static String queryUserByName(String username) throws SQLException, Exception {
        // TODO Auto-generated method stub
        Connection  conn = C3P0Util.getConnection();
//        Statement st= conn.createStatement();
//        ResultSet rs = st.executeQuery("select * from demo where username="+username+"");
        PreparedStatement ps = conn.prepareStatement("select * from user where username=?");
        ps.setString(1, username);
        ResultSet rs = ps.executeQuery();
        //----------------------------------------------------------
        //验证有问题，只能验证第一个，只跟第一个比较，比完直接return
        
        if (rs.next()) {
            return "用户已存在";
        } else {
            return "success";
        }
        
        
//       if(!rs == null){
//           
//       }
    }
    
}

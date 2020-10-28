package ib.bank;

import java.sql.DriverManager;
import java.sql.*;

public class verifydao {
	String sql1 ="select * from details where name1= ? and pwd= ?";
	String url="jdbc:mysql://localhost:3306/crt";
	String uname="root";
	String pass="admin";
	public boolean check(String uid,String pwd)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			//DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			Connection con=DriverManager.getConnection(url,uname,pass);
			PreparedStatement st=con.prepareStatement("select * from bank_details where uid= ? and pwd= ?");
			
			//System.out.print("||||");
			
			st.setString(1, uid);
			st.setString(2, pwd);
			//System.out.print("||||");
			ResultSet rs=st.executeQuery();
			//System.out.print("||||");
			if(rs.next()) {
				//System.out.print("|||..");
				return true;
			}
			return false;
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}

}

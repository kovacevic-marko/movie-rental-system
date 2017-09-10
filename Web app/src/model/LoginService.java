package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginService {
	
	private String imeiprezime = "";
	
	public boolean proveriKorisnika(String id){
		
		String db_url = "jdbc:mysql://kovacevicm.com:3306/kovacevi_videoklub";
		String user = "kovacevi_videoklubkorisnik";
		String password = "sIFRA123";
		
		String sql = "SELECT ime,prezime,id_korisnika FROM Korisnik WHERE id_korisnika='"+id+"';";
		boolean poklapanje = false;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(db_url, user, password);
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			String idKorisnika = "";
			if(rs.next()){
			idKorisnika = rs.getString("id_korisnika");
			}

				if(idKorisnika.equals(id)){
					poklapanje = true;
					imeiprezime = rs.getString("ime") + " " +rs.getString("prezime");
				}else{
					poklapanje = false;
				}
			
		}
		catch(SQLException e){
			System.out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return poklapanje;
	}
	
	
	public String getImeiprezime(){
		
		return imeiprezime;
	}


}

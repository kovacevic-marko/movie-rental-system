package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Rezervisi_filmService {
	
	String idFilma = "";
	String naslovFilma = "asd";
	
	public boolean proveriKorisnika(String id_korisnika){
		String id = id_korisnika;
		
		String db_url = "jdbc:mysql://kovacevicm.com:3306/kovacevi_videoklub";
		String user = "kovacevi_videoklubkorisnik";
		String password = "sIFRA123";
		
		String sql = "SELECT rezervisao_id FROM Film WHERE dostupno='da' AND rezervisano='da';";
		
		boolean poklapanje = false;
		int kolikoJePutaKorisnikRezervisao = 0;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(db_url, user, password);
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				if(rs.getString("rezervisao_id").equals(id)){
					kolikoJePutaKorisnikRezervisao = kolikoJePutaKorisnikRezervisao +1;
				}
			}

			if(kolikoJePutaKorisnikRezervisao==0){
				poklapanje = true;
			}
			else{
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
	
	
	public boolean proveriFilm(String id_filma){
		
		String db_url = "jdbc:mysql://kovacevicm.com:3306/kovacevi_videoklub";
		String user = "kovacevi_videoklubkorisnik";
		String password = "sIFRA123";
		
		String sql = "SELECT id FROM Film WHERE dostupno='da' AND rezervisano='ne';";
		boolean poklapanje = false;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(db_url, user, password);
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				
			String idFilma = String.valueOf(rs.getInt("id"));

				if(idFilma.equals(id_filma)){
					poklapanje = true;
					idFilma = id_filma;
				}
				
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
	
	
	public void rezervisiFilm(String id_filma, String id_korisnika){
		
		String db_url = "jdbc:mysql://kovacevicm.com:3306/kovacevi_videoklub";
		String user = "kovacevi_videoklubkorisnik";
		String password = "sIFRA123";
		
		String sql = "UPDATE Film SET rezervisano='da', vreme_rezervisanja=now(), rezervisao_id='"+ id_korisnika +"' WHERE id=" +id_filma +";";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(db_url, user, password);
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			
		}
		catch(SQLException e){
			System.out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public String vratiNaslovRezervisanogFilma(String id_filma){
		
		String db_url = "jdbc:mysql://kovacevicm.com:3306/kovacevi_videoklub";
		String user = "kovacevi_videoklubkorisnik";
		String password = "sIFRA123";
		
		String sql = "SELECT naslov FROM Film WHERE id=" +id_filma +";";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(db_url, user, password);
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				naslovFilma = rs.getString("naslov");	
			}
		}
		catch(SQLException e){
			System.out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return naslovFilma;
	}

}

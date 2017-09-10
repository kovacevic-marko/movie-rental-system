package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Rezervisi_filmService;


@WebServlet("/Rezervisi_filmServlet")
public class Rezervisi_filmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id_filma = request.getParameter("id_filma");
		String id_korisnika = (String) request.getSession().getAttribute("id_korisnika");
		
		
		Rezervisi_filmService rezervisi_film = new Rezervisi_filmService();
		
		if( id_filma!=null && id_filma.trim()!="" ){
			
			boolean rezultatProvereFilma = rezervisi_film.proveriFilm(id_filma);
			boolean rezultatProvereKorisnika = rezervisi_film.proveriKorisnika(id_korisnika);
			
			if(rezultatProvereKorisnika==true){
			
				if(rezultatProvereFilma==true){
					rezervisi_film.rezervisiFilm(id_filma, id_korisnika);
					String naslovFilma = rezervisi_film.vratiNaslovRezervisanogFilma(id_filma);
					request.setAttribute("naslovFilma", naslovFilma);
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/uspesno_rezervisanje.jsp");
					dispatcher.forward(request, response);
				}
				else{
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/neuspesno_rezervisanje.jsp");
					dispatcher.forward(request, response);
				}
			
		}else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/neuspesno_rezervisanje_ogranicenje.jsp");
			dispatcher.forward(request, response);
		}
			
		}else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/rezervisi_film.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}

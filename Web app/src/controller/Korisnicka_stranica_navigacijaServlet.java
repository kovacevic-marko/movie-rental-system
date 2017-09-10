package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Korisnicka_stranica")
public class Korisnicka_stranica_navigacijaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String dugme = request.getParameter("dugme");
	
		switch (dugme){
			case "Pocetna":
				RequestDispatcher dispatcher1 = request.getRequestDispatcher("/WEB-INF/pocetna.jsp");
				dispatcher1.forward(request, response);
				break;
			case "Informacije":
				RequestDispatcher dispatcher2 = request.getRequestDispatcher("/WEB-INF/informacije.jsp");
				dispatcher2.forward(request, response);
				break;
			case "Korisnicka stranica":
				RequestDispatcher dispatcher3 = request.getRequestDispatcher("/WEB-INF/korisnicka_stranica.jsp");
				dispatcher3.forward(request, response);
				break;
			case "Svi filmovi": 
				RequestDispatcher dispatcher4 = request.getRequestDispatcher("/WEB-INF/svi_filmovi.jsp");
				dispatcher4.forward(request, response);
				break;
			case "Dostupni filmovi":
				RequestDispatcher dispatcher5 = request.getRequestDispatcher("/WEB-INF/dostupni_filmovi.jsp");
				dispatcher5.forward(request, response);
				break;
			case "Rezervisi film":
				RequestDispatcher dispatcher6 = request.getRequestDispatcher("/WEB-INF/rezervisi_film.jsp");
				dispatcher6.forward(request, response);
				break;
			case "Odjavi se":
				request.getSession().removeAttribute("id_korisnika");
				request.getSession().removeAttribute("imeiprezime");
				
				RequestDispatcher dispatcher7 = request.getRequestDispatcher("/login.jsp");
				dispatcher7.forward(request, response);
				break;
			case "PONOVO":
				RequestDispatcher dispatcher8 = request.getRequestDispatcher("/WEB-INF/rezervisi_film.jsp");
				dispatcher8.forward(request, response);
				break;
			default:
				break;
		}
		
	}

}

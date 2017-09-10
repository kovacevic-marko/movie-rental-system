package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LoginService;


@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");

		LoginService login = new LoginService();
		
		if(id!=null && id.trim()!=""){
		
			boolean rezultat = login.proveriKorisnika(id);
			
			if(rezultat==true){
				String imeiprezime = login.getImeiprezime();
				
				request.getSession().setAttribute("id_korisnika", id);
				request.getSession().setAttribute("imeiprezime", imeiprezime);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/korisnicka_stranica.jsp");
				dispatcher.forward(request, response);
			}else{
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/neuspesno_logovanje.jsp");
				dispatcher.forward(request, response);
				}
		
		}else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
	}

}

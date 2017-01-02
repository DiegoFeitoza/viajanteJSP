package br.com.viajante.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.viajante.controller.UserController;
import br.com.viajante.entity.Anfitriao;

@WebServlet("/createUser")

public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
						throws ServletException, IOException {
		
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String fone = request.getParameter("fone");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String type = request.getParameter("type");
		String vagas = request.getParameter("qtdVagas");
		String restrict = request.getParameter("restricoes");
		String description = request.getParameter("descricao");
		
		Anfitriao anfitriao = new Anfitriao(name, email, fone, address, city, country, type, vagas, restrict, description);
		
		UserController controller = new UserController();
		controller.insert(anfitriao);
		
		response.sendRedirect("search.jsp");
		
		
	}
	
	
}

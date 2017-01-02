package br.com.viajante.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.viajante.controller.UserController;
import br.com.viajante.entity.Anfitriao;

@WebServlet("/searchUser")
public class SearchUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
						throws ServletException, IOException {
		String citySearch = request.getParameter("search");
		
		UserController controller = new UserController();
		
		controller.search(citySearch);
		
		response.sendRedirect("search2.jsp");
		
	}
}

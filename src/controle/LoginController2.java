package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDao;
import negocio.Usuario;

public class LoginController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Usuario admin;
	Usuario client;
       
    public LoginController2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("username")==""||
				request.getParameter("senha")=="") {
			
			String alerta = "Preencha todos os campos!";
			
			request.setAttribute("alerta", alerta);
			 
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
		
		client = new Usuario();
		client.setUserName(request.getParameter("username"));
		client.setSenha(request.getParameter("senha"));
		
		Usuario 	autenticado = UsuarioDao.logar(client);
		
		if(autenticado != null) {
			
			request.getSession().setAttribute("sessao", UsuarioDao.obterPorUserName(request.getParameter("username")));
			
			request.getRequestDispatcher("CategoriaController").forward(request, response);
			
		}else {
			
			String alerta = "Username ou senha incorretos!";
			
			request.setAttribute("alerta", alerta);
			
			request.getRequestDispatcher("login.jsp").forward(request, response); 
			
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("username")==""||
				request.getParameter("senha")=="") {
			
			String alerta = "Preencha todos os campos!";
			
			request.setAttribute("alerta", alerta);
			
			request.getRequestDispatcher("admin.jsp").forward(request, response);
			
		}
		
		admin = new Usuario();
		admin.setUserName(request.getParameter("username"));
		admin.setSenha(request.getParameter("senha"));
		
		Usuario 	autenticado = UsuarioDao.logar(admin);
		
		if(autenticado != null) {
						
			request.getRequestDispatcher("paineladministrador.jsp").forward(request, response);
			
		}else {
			
			String alerta = "Username ou senha incorretos!";
			
			request.setAttribute("alerta", alerta);
			
			request.getRequestDispatcher("admin.jsp").forward(request, response);
			
		}
		
	}

}

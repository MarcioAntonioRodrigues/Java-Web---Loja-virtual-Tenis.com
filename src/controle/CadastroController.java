package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDao;
import negocio.Cliente;
import negocio.Usuario;


public class CadastroController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Usuario usuario;

    
    public CadastroController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		usuario = new Cliente();
		
		if(request.getParameter("nome")==""||
		   request.getParameter("endereco")==""||
		   request.getParameter("telefone")==""||
		   request.getParameter("cidade")==""||
		   request.getParameter("estado")==""||
		   request.getParameter("email")==""||
		   request.getParameter("username")==""||
		   request.getParameter("senha")=="") {
			
			String alerta = "Preencha todos os campos!";
			
			request.setAttribute("alerta", alerta);
			
			request.getRequestDispatcher("cadastro.jsp").forward(request, response);
			
		}else {
			
			usuario = new Usuario();   		
			usuario.setNome(request.getParameter("nome"));
			usuario.setEndereco(request.getParameter("endereco"));
			usuario.setTelefone(request.getParameter("telefone"));
			usuario.setCidade(request.getParameter("cidade"));
			usuario.setEstado(request.getParameter("estado"));
			usuario.setEnderecoEletronico(request.getParameter("email"));
			usuario.setUserName(request.getParameter("username"));
			usuario.setSenha(request.getParameter("senha"));
			
			String lista = usuario.mostrarDados();
			
			UsuarioDao.incluir(usuario);
			 
			request.setAttribute("dados", lista);
			
			request.getRequestDispatcher("cadastrado.jsp").forward(request, response);
		}
		
		
			
			
		
	}//method post

}//class
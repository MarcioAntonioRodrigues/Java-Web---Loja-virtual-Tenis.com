package controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProdutoDao;
import dao.UsuarioDao;
import negocio.Produto;


public class CategoriaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private List<Produto> produto;
       
   
    public CategoriaController() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		produto = ProdutoDao.obterLista();
		
		request.setAttribute("lista", produto);
		
		request.getRequestDispatcher("home.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}

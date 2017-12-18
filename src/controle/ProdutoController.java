package controle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProdutoDao;
import negocio.Produto;

public class ProdutoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Produto produto;
	private List<String> lista;
        
    public ProdutoController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
		switch (request.getParameter("tela")) {
		
		case "cadastro":	
		
		if(request.getParameter("categoria")==""||
					request.getParameter("codigo")==""||
					request.getParameter("imagem")==""||
					request.getParameter("nome")==""||
					request.getParameter("descricao")==""||
					request.getParameter("preco")=="") {
				
				String alerta="Preencha todos os campos!";
				
				request.setAttribute("alerta", alerta);
				
				request.getRequestDispatcher("acesso.jsp").forward(request, response);
				
			}else {
		
			produto = new Produto();		
			lista = new ArrayList<String>();
			
			produto.setCategoria(request.getParameter("categoria"));
			produto.setImagem(request.getParameter("imagem"));
			produto.setNome(request.getParameter("nome"));
			produto.setDescricao(request.getParameter("descricao"));
			produto.setPreco(Float.valueOf(request.getParameter("preco")));
			}
			
			lista.add(produto.descreverProduto());
			
			ProdutoDao.incluirProduto(produto);
					
			request.setAttribute("dados", lista);
			
			request.getRequestDispatcher("produtocadastrado.jsp").forward(request, response);	
			
			break;
			
			case "exclusao":
				
				int codproduto = Integer.valueOf(request.getParameter("produto"));
				
				request.setAttribute("produtoSelecionado", ProdutoDao.obterPorId(codproduto));
				
				request.getRequestDispatcher("confirmaexclusao.jsp").forward(request, response);
			
			break;
			
			}
			
			
			}
		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		switch (request.getParameter("tela")) {
		
		case "acesso":		
		
		request.getRequestDispatcher("acesso.jsp").forward(request, response);
		
		break;
		
		case "excluirproduto":
			
		request.setAttribute("listaProdutos", ProdutoDao.obterLista());
			
		request.getRequestDispatcher("excluir.jsp").forward(request, response);	
		
		break;
		
		case "confirmaexclusao":
			
			Produto excluido = ProdutoDao.obterPorId(Integer.valueOf(request.getParameter("codproduto")));
			
			ProdutoDao.excluir(excluido);
					
			request.setAttribute("listaProdutos",  ProdutoDao.obterLista());
			
			request.getRequestDispatcher("excluir.jsp").forward(request, response);
			
			break;
		
		default:
			break;
		
			}
			
		}
		

}

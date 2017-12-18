package controle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CompraDao;
import dao.ProdutoDao;
import dao.UsuarioDao;
import negocio.Carrinho;
import negocio.Compra;
import negocio.Produto;


public class CarrinhoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Compra compra;
	private List<Produto> lista = new ArrayList<Produto>();

    public CarrinhoController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		switch(request.getParameter("tela")) {
		
		case "incluir":
		
			int codigo = Integer.valueOf(request.getParameter("produto"));
			Produto produto = ProdutoDao.obterPorId(codigo);
			lista.add(produto);
			compra = new Compra();
			int soma = compra.somarProdutos(lista);
			int somaQuant = compra.somarQuantidade(lista);
			request.getSession().setAttribute("mostraQuant", somaQuant);
			request.setAttribute("total", soma);
			request.setAttribute("codproduto", codigo);
			request.getSession().setAttribute("listaProdutos", lista);
			request.getRequestDispatcher("carrinho.jsp").forward(request, response);
			
			break;
			
		case "excluir":
			
			int cod = Integer.valueOf(request.getParameter("produto"));
			Produto produtoExcluido = ProdutoDao.obterPorId(cod);
			lista.remove(produtoExcluido);
			int subtracao = compra.somarProdutos(lista);
			somaQuant = compra.somarQuantidade(lista);
			request.setAttribute("total", subtracao);
			request.getSession().setAttribute("mostraQuant", somaQuant);
			request.getSession().setAttribute("listaProdutos", lista);			
			request.getRequestDispatcher("carrinho.jsp").forward(request, response); 
			
			break;
			
		case "comprar":			
			compra.setProduto(lista);
			compra.setUsuario(UsuarioDao.obterPorUserName(request.getParameter("sessao")));
			CompraDao.incluirCompra(compra);		
			request.setAttribute("listarCompras",lista);
			request.getRequestDispatcher("finalizarcompra.jsp").forward(request, response);
			request.getSession().invalidate();
			lista.clear();
			break;
		
		}
			
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		switch(request.getParameter("tela")) {
		
		case "comprar":
		
		int codproduto = Integer.valueOf(request.getParameter("Comprar")); 
		request.setAttribute("mostrarProduto", ProdutoDao.obterPorId(codproduto));	
		request.getRequestDispatcher("comprar.jsp").forward(request, response);
		
		break;
		
		case "vendas":
				
			request.setAttribute("historicoCompras", CompraDao.listarCompras());
			request.getRequestDispatcher("vendas.jsp").forward(request, response);
			
		break;
		
		}
		
	}

}

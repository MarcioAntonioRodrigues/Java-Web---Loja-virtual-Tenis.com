package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import conexao.Conexao;
import negocio.Produto;


public class ProdutoDao {

	private static EntityManager conexao = null;
	private static EntityTransaction transacao = null;

	private List<Produto> lista;
	
	public static void excluir(Produto produto) {

		conexao = Conexao.obterConexao();

		transacao = conexao.getTransaction();

		Produto prod = conexao.find(Produto.class, produto.getCodproduto());

		transacao.begin();

		conexao.remove(prod);

		transacao.commit();
	}

	public static void incluirProduto(Produto produto) {

		conexao = Conexao.obterConexao();

		transacao = conexao.getTransaction();

		transacao.begin();

		conexao.persist(produto);

		transacao.commit();
	}

	public static List<Produto> obterLista() {

		conexao = Conexao.obterConexao();

		return conexao.createQuery("select u from Produto as u order by u.nome").getResultList();
	}
	
	public static Produto obterPorId(int id){
		conexao = Conexao.obterConexao();
		
		Query query = conexao.createQuery("select u from Produto as u where u.id = :pId");
		query.setParameter("pId", id);
			
		return (Produto)query.getSingleResult();
	}
	
	public static List<Produto> obterPorNome(String produto){

		conexao = Conexao.obterConexao();
		
		Query query = conexao.createQuery("select u from Produto as u where u.nome = :pNome");
		query.setParameter("pNome", produto);
			
		return query.getResultList();
	}


}

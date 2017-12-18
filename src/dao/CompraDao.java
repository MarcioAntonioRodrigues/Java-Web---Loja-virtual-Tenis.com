package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import conexao.Conexao;
import negocio.Compra;
import negocio.Produto;

public class CompraDao {
	
	private static EntityManager conexao = null;
	private static EntityTransaction transacao = null;
	
	public static void incluirCompra(Compra compra) {

		conexao = Conexao.obterConexao();

		transacao = conexao.getTransaction();

		transacao.begin();

		conexao.persist(compra);

		transacao.commit();
	}
	
	public static List<Produto> obterComprasID() {

		conexao = Conexao.obterConexao();

		return conexao.createQuery("select u from Compra as u order by u.id").getResultList();
	}
	
	public static List<Compra> listarCompras() {

		conexao = Conexao.obterConexao();
   
		return conexao.createQuery("select u from Compra as u order by u.id").getResultList();
	}

}

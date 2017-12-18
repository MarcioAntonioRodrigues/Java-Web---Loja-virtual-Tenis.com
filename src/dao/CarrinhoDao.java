package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import conexao.Conexao;
import negocio.Carrinho;

public class CarrinhoDao {
	
	private static EntityManager conexao = null;
	private static EntityTransaction transacao = null;
	
	public static void incluirCarrinho(Carrinho carrinho) {

		conexao = Conexao.obterConexao();

		transacao = conexao.getTransaction();

		transacao.begin();

		conexao.persist(carrinho);

		transacao.commit();
	}

}

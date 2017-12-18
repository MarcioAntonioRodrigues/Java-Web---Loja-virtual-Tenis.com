package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import conexao.Conexao;
import negocio.Compra;
import negocio.Produto;
import negocio.Usuario;

public class UsuarioDao {
	
	private static EntityManager conexao = null;
	private static EntityTransaction transacao = null;
	
	public static List<Compra> listarCompras() {

		conexao = Conexao.obterConexao();
   
		return conexao.createQuery("select u from Compra as u order by u.id").getResultList();
	}
	
	
	public static Usuario obterPorUserName(String username){

		conexao = Conexao.obterConexao();
		
		Query query = conexao.createQuery("select u from Usuario as u where u.userName = :pUserName");
		query.setParameter("pUserName", username);
			
		return (Usuario)query.getSingleResult();
	}
	
	public static Usuario logar(Usuario user){
		
		conexao = Conexao.obterConexao();
		
		Query query = conexao.createQuery("select u from Usuario as u where u.userName = :pUser and u.senha = :pSenha");
		query.setParameter("pUser", user.getUserName());
		query.setParameter("pSenha", user.getSenha());
		
		Usuario usuario;
		
		try {
			usuario = (Usuario)query.getSingleResult();
			return usuario;
		}
		catch(Exception ex) {
			return null;
		}			
	}
	
	public static void incluir(Usuario usuario){
		
			conexao = Conexao.obterConexao();
			
			transacao = conexao.getTransaction();
			
			transacao.begin();
			
			conexao.persist(usuario);
			
			transacao.commit();	
				
	}
	
	public static void alterar(Usuario usuario){
		conexao = Conexao.obterConexao();
		
		transacao = conexao.getTransaction();
		
		transacao.begin();
		
		conexao.merge(usuario);
		
		transacao.commit();			
	}
	
	public static void excluir(Usuario usuario){
		conexao = Conexao.obterConexao();
		
		transacao = conexao.getTransaction();
		
		Usuario user = conexao.find(Usuario.class, usuario.getId());
		
		transacao.begin();
		
		conexao.remove(user);
		
		transacao.commit();			
	}
}
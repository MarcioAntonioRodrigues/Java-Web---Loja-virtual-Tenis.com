package testes;

import dao.UsuarioDao;
import negocio.Usuario;

public class TestaInclusao {

	public static void main(String[] args) {
		
		Usuario u = new Usuario();
		u.setNome("elberth");
		u.setEnderecoEletronico("elberth@gmail.com");
		
		UsuarioDao.incluir(u);
		System.out.println("Inclusão!!!");
	}
}

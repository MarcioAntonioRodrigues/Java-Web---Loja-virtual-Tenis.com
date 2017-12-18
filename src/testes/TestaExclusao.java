package testes;

import dao.UsuarioDao;
import negocio.Usuario;

public class TestaExclusao {

	public static void main(String[] args) {

		Usuario u = new Usuario();
		u.setId(1L);
		u.setNome("elberth moraes");
		u.setEnderecoEletronico("elberth.moraes@gmail.com");
		
		UsuarioDao.excluir(u);
		System.out.println("Exclusão!!!");
		
	}
}

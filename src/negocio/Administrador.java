package negocio;

public class Administrador extends Usuario{
	
	public Administrador() {
		
	}
	
	public Administrador(String username, String senha) {
		this.setUserName(username);
		this.setSenha(senha);
	}
	
	private int vendasRealizadas;

	public int getVendasRealizadas() {
		return vendasRealizadas;
	}

	public void setVendasRealizadas(int vendasRealizadas) {
		this.vendasRealizadas = vendasRealizadas;
	}
	
	public void cadastrarProduto() {
		
	}
	
	public void alterarCadastroProduto() {
		
	}
	
	public void excliurProduto() {
		
	}

}

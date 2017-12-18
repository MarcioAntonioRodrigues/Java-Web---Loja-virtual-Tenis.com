package negocio;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

public class Carrinho {
	
	
	private int id;
	private List<Produto> produto;
	private int total;
	
	
	public Carrinho() {
		
	}
	
	public Carrinho(List<Produto> produto) {
		this.setProduto(produto);
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Produto> adicionarProduto(Produto item) {
		
		produto = new ArrayList<Produto>();
		
		produto.add(item);   
		
		return produto;
			
		}
	
	public void listarProdutos() {
		
		Produto prod = new Produto();
		
		for(int i = 0; i < produto.size();i++) {
			
			prod.descreverProduto();
			
		}
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<Produto> getProduto() {
		return produto;
	}

	public void setProduto(List<Produto> produto) {
		this.produto = produto;
	}

}

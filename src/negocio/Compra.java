package negocio;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TCompra")
public class Compra {

	@Id
	@GeneratedValue
	private int id;
	@OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "idUsuario")
	private Usuario usuario;
	@ManyToMany(cascade = CascadeType.DETACH)
	@JoinTable(name = "Tcompra_Tproduto")
	private List<Produto> produto;

	public Compra() {

	}

	public Compra(List<Produto> produto, Usuario usuario) {
		this.produto = produto;
		this.usuario = usuario;

	}

	public void listarCompra(List<Produto> produto) {

		for (Produto nome : produto) {
			System.out.println(nome.getNome());
		}

	}

	public int somarProdutos(List<Produto> lista) {

		int total = 0;

		for (Produto nome : lista) {
			total += nome.getPreco();
		}

		return total;
	}

	public int subtrairProdutos(List<Produto> lista) {

		int total = 0;

		for (Produto nome : lista) {
			total -= nome.getPreco();
		}

		return total;
	}
	
	public int somarQuantidade(List<Produto> lista) {

		int total = 0;

		for (int i = 0; i < lista.size(); i++) {
			total += 1;
		}

		return total;
	}
	
	

	public List<Produto> getProduto() {
		return produto;
	}

	public void setProduto(List<Produto> produto) {
		this.produto = produto;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}

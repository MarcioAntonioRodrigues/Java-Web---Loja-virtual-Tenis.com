package negocio;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="TProduto")
public class Produto {
	
	private String imagem;   
	private String nome;
	@Id
	@GeneratedValue
	private int codproduto;
	private String categoria;
	private String descricao;
	private float preco;
	@ManyToMany(mappedBy="produto",cascade = CascadeType.DETACH)
	private List<Compra> compra;

	public Produto() {
		
	}
	
	
	public Produto(String imagem,String nome, String categoria, String descricao,float preco) {
		this.imagem = imagem;
		this.nome = nome;
		this.descricao = descricao;
		this.preco = preco;
		this.categoria = categoria;
	}

	
	public String descreverProduto() {
		
		 return String.format("<img style='border:solid 1px black;width:300px;height:300px;' src='%s'/><br/><br/>"+
		 				    "<strong>Nome do produto:</strong> %s<br/>"+
							"<strong>Descrição:</strong> %s<br/>"+
							"<strong>Preço:</strong> R$ %.2f<br/>"+
							"<strong>Categoria:</strong> %s<br/>",
							this.getImagem(),this.nome,this.descricao,this.preco,this.categoria);
		
	}
	
	

	public String getImagem() {
		return imagem;
	}


	public void setImagem(String imagem) {
		this.imagem = imagem;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public int getCodproduto() {
		return codproduto;
	}


	public void setCodproduto(int codproduto) {
		this.codproduto = codproduto;
	}


	public String getCategoria() {
		return categoria;
	}


	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}


	public String getDescricao() {
		return descricao;
	}


	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}


	public float getPreco() {
		return preco;
	}


	public void setPreco(float preco) {
		this.preco = preco;
	}
	
	
	
	

}

package br.com.casadocodigo.loja.models;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode
public class CarrinhoItem {

	@Getter @Setter
	private Produto produto;
	
	@Getter @Setter
	private TipoPreco tipoPreco;
	
	public CarrinhoItem(Produto produto, TipoPreco tipoPreco) {
		this.produto = produto;
		this.tipoPreco = tipoPreco;
	}
}

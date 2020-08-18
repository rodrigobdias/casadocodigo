package br.com.alura.casadocodigo.controller.form;

import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

import com.sun.istack.NotNull;

public class TopicoForm {

	@NotNull @NotEmpty @Length(min = 5)
	private String titulo;
	
	@NotNull @NotEmpty @Length(min = 10)
	private String descricao;
	
	@NotNull @NotEmpty
	private Integer paginas;



//	public Topico converter(CursoRepository cursoRepository) {

//		Curso curso = cursoRepository.findByNome(paginas);
//		return new Topico(titulo, descricao, curso);
//	}
	
}

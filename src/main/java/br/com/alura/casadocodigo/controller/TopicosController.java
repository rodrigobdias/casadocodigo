package br.com.alura.casadocodigo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/casadocodigo")
public class TopicosController {

	@GetMapping
	public String index() {
		return "Casa Do Codigo!";
		
	}
}

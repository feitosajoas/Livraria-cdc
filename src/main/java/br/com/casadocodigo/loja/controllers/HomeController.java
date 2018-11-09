package br.com.casadocodigo.loja.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/") // Faz o mapeamento no "barra"
	// método index
	public String index() {
		System.out.println("Entrando na Home da CDC");
		return "home";
	}

}

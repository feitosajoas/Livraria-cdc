package br.com.casadocodigo.loja.conf;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;	//Habilita o Spring no projeto 

import br.com.casadocodigo.loja.controllers.HomeController;

@EnableWebMvc
@ComponentScan(basePackageClasses={HomeController.class})	//Inclui o pacote onde irá scannear os componentes dele
public class AppWebConfiguration {

	
	
}

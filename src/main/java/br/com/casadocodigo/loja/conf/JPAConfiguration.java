package br.com.casadocodigo.loja.conf;

import java.util.Map;
import java.util.Properties;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.spi.PersistenceProvider;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaDialect;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;

public class JPAConfiguration {

	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
		LocalContainerEntityManagerFactoryBean factoryBean = new LocalContainerEntityManagerFactoryBean();

		JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
		factoryBean.setJpaVendorAdapter(vendorAdapter);
		
		// Gerenciador do database Mysql
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setUsername("root");	//User
		dataSource.setPassword("");	//Pass
		dataSource.setUrl("jdbc:mysql://localhost:3306/casadocodigo");	//DB
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");	//Classe
	
		factoryBean.setDataSource(dataSource);

		Properties props = new Properties();
		props.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
		props.setProperty("hibernate.show_sql", "true");
		props.setProperty("hibernate.hbm2ddl.auto", "update");
		factoryBean.setJpaProperties(props);
		
		factoryBean.setPackagesToScan("br.com.casadocodigo.loja.models");
		return factoryBean
	}
	
}

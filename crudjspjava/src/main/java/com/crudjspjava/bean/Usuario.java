package com.crudjspjava.bean;

public class Usuario {
	private int id;
	private String nome;
	private String password;
	private String email;
	private String sexo;
	private String pais;
	
	//getter and setter id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	//getter and setter nome
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	//getter and setter password
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//getter and setter email
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	//getter and setter sexo
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
	//getter and setter pais
	public String getPais() {
		return pais;
	}
	public void setPais(String pais) {
		this.pais = pais;
	}
}

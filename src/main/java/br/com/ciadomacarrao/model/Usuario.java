package br.com.ciadomacarrao.model;

public class Usuario {

    private long id;
    private String nome;
    private String senha;
    private String login;
    private String email;
    private String endereco;
    private int numero;
    private int telefone;

    public Usuario() {
    }

    public Usuario(long id, String nome, String senha, String login, String email, String endereco, int numero, int telefone) {
        this.id = id;
        this.nome = nome;
        this.senha = senha;
        this.login = login;
        this.email = email;
        this.endereco = endereco;
        this.numero = numero;
        this.telefone = telefone;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }


}

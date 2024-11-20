package modelo;

import java.math.BigDecimal;
import java.sql.Date;

public class Produto {
    private int id;
    private String nome;
    private String descricao;
    private BigDecimal preco;
    private String tipoMadeira;
    private Date dataInclusao;

    // Construtores, getters e setters
    public Produto() {}

    public Produto(int id, String nome, String descricao, BigDecimal preco, String tipoMadeira, Date dataInclusao) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
        this.preco = preco;
        this.tipoMadeira = tipoMadeira;
        this.dataInclusao = dataInclusao;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }
    public String getDescricao() { return descricao; }
    public void setDescricao(String descricao) { this.descricao = descricao; }
    public BigDecimal getPreco() { return preco; }
    public void setPreco(BigDecimal preco) { this.preco = preco; }
    public String getTipoMadeira() { return tipoMadeira; }
    public void setTipoMadeira(String tipoMadeira) { this.tipoMadeira = tipoMadeira; }
    public Date getDataInclusao() { return dataInclusao; }
    public void setDataInclusao(Date dataInclusao) { this.dataInclusao = dataInclusao; }
}

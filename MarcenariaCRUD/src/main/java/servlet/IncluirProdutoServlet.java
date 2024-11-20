package servlet;

import dao.ProdutoDAO;
import modelo.Produto;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;

@WebServlet("/IncluirProdutoServlet")
public class IncluirProdutoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Produto produto = new Produto();
        produto.setNome(request.getParameter("nome"));
        produto.setDescricao(request.getParameter("descricao"));
        produto.setPreco(new BigDecimal(request.getParameter("preco")));
        produto.setTipoMadeira(request.getParameter("tipo_madeira"));
        produto.setDataInclusao(Date.valueOf(request.getParameter("data_inclusao")));

        ProdutoDAO produtoDAO = new ProdutoDAO();
        if (produtoDAO.inserirProduto(produto)) {
            response.sendRedirect("listarProdutos.jsp?status=success");
        } else {
            response.getWriter().println("Erro ao adicionar produto.");
        }
    }
}

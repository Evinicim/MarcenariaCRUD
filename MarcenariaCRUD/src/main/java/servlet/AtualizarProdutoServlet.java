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

@WebServlet("/AtualizarProdutoServlet")
public class AtualizarProdutoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Produto produto = new Produto();
        produto.setId(Integer.parseInt(request.getParameter("id")));
        produto.setNome(request.getParameter("nome"));
        produto.setDescricao(request.getParameter("descricao"));
        produto.setPreco(new BigDecimal(request.getParameter("preco")));
        produto.setTipoMadeira(request.getParameter("tipo_madeira"));
        produto.setDataInclusao(Date.valueOf(request.getParameter("data_inclusao")));

        ProdutoDAO produtoDAO = new ProdutoDAO();
        if (produtoDAO.atualizarProduto(produto)) {
            response.sendRedirect("listarProdutos.jsp");
        } else {
            response.getWriter().println("Erro ao atualizar produto.");
        }
    }
}

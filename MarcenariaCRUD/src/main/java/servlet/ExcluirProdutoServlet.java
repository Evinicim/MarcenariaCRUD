package servlet;

import dao.ProdutoDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ExcluirProdutoServlet")
public class ExcluirProdutoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        ProdutoDAO produtoDAO = new ProdutoDAO();
        if (produtoDAO.excluirProduto(id)) {
            response.sendRedirect("listarProdutos.jsp");
        } else {
            response.getWriter().println("Erro ao excluir produto.");
        }
    }
}

<%@ page import="dao.ProdutoDAO, modelo.Produto" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    ProdutoDAO produtoDAO = new ProdutoDAO();
    Produto produto = produtoDAO.buscarProdutoPorId(id);
    if (produto == null) {
        out.println("Produto não encontrado.");
        return;
    }
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Produto - Mendes Portas e Madeiras</title>
    <!-- Link para o Bootstrap 4 -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 50px;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #007bff;
            text-align: center;
        }
        .form-group label {
            font-weight: bold;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
        }
        .table th, .table td {
            vertical-align: middle;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Editar Produto - Mendes Portas e Madeiras</h1>

    <!-- Formulário de Edição -->
    <form id="formProduto" action="AtualizarProdutoServlet" method="post">
        <input type="hidden" name="id" value="<%= produto.getId() %>">

        <div class="form-group">
            <label for="nome">Nome da Madeira:</label>
            <input type="text" class="form-control" name="nome" id="nome" value="<%= produto.getNome() %>" required>
        </div>

        <div class="form-group">
            <label for="descricao">Descrição da Madeira:</label>
            <textarea class="form-control" name="descricao" id="descricao" required><%= produto.getDescricao() %></textarea>
        </div>

        <div class="form-group">
            <label for="preco">Preço da Madeira (R$):</label>
            <input type="number" class="form-control" name="preco" id="preco" step="0.01" value="<%= produto.getPreco() %>" required>
        </div>

        <div class="form-group">
            <label for="tipo_madeira">Tipo de Madeira:</label>
            <input type="text" class="form-control" name="tipo_madeira" id="tipo_madeira" value="<%= produto.getTipoMadeira() %>" required>
        </div>

        <div class="form-group">
            <label for="data_inclusao">Data de Inclusão:</label>
            <input type="date" class="form-control" name="data_inclusao" id="data_inclusao" value="<%= produto.getDataInclusao() %>" required>
        </div>

        <button type="submit" class="btn btn-primary btn-block" data-toggle="modal" data-target="#confirmModal">Atualizar Produto</button>
    </form>

    <a href="listarProdutos.jsp" class="back-link">Voltar para a Lista de Produtos</a>

    <!-- Modal de Confirmação -->
    <div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="confirmModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmModalLabel">Confirmar Atualização</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Tem certeza de que deseja atualizar este produto? As alterações não poderão ser desfeitas.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primary" form="formProduto">Confirmar</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Links para o JavaScript do Bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

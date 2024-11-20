<%@ page import="dao.ProdutoDAO, modelo.Produto, java.util.List" %>
<%
    ProdutoDAO produtoDAO = new ProdutoDAO();
    List<Produto> produtos = produtoDAO.listarProdutos();
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Produtos - LVC Portas e Madeiras</title>
    <!-- Link para o Bootstrap 4 -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f9;
            padding-top: 50px;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #007bff;
            text-align: center;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .btn-primary, .btn-danger {
            border-radius: 50px;
        }
        .btn-primary:hover, .btn-danger:hover {
            opacity: 0.8;
        }
        .btn-block {
            margin-top: 10px;
        }
        .back-link {
            text-align: center;
            display: block;
            margin-top: 20px;
        }
        .modal-header, .modal-footer {
            border: none;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Lista de Produtos - LVC Portas e Madeiras</h1>

    <a href="adicionarProduto.jsp" class="btn btn-success btn-lg btn-block">Adicionar Novo Produto</a><br>

    <!-- Tabela de Produtos -->
    <table class="table table-striped table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Descrição</th>
                <th>Preço (R$)</th>
                <th>Tipo de Madeira</th>
                <th>Data de Inclusão</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <% for (Produto produto : produtos) { %>
                <tr>
                    <td><%= produto.getId() %></td>
                    <td><%= produto.getNome() %></td>
                    <td><%= produto.getDescricao() %></td>
                    <td>R$ <%= produto.getPreco() %></td>
                    <td><%= produto.getTipoMadeira() %></td>
                    <td><%= produto.getDataInclusao() %></td>
                    <td>
                        <!-- Ações -->
                        <a href="editarProduto.jsp?id=<%= produto.getId() %>" class="btn btn-warning btn-sm">Editar</a>
                        <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#confirmDeleteModal<%= produto.getId() %>">Excluir</button>
                    </td>
                </tr>

                <!-- Modal de Confirmação para Excluir -->
                <div class="modal fade" id="confirmDeleteModal<%= produto.getId() %>" tabindex="-1" role="dialog" aria-labelledby="confirmDeleteModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="confirmDeleteModalLabel">Confirmar Exclusão</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Tem certeza que deseja excluir o produto "<%= produto.getNome() %>"? Esta ação não pode ser desfeita.
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                <a href="ExcluirProdutoServlet?id=<%= produto.getId() %>" class="btn btn-danger">Excluir</a>
                            </div>
                        </div>
                    </div>
                </div>
            <% } %>
        </tbody>
    </table>

    <!-- Link para voltar -->
    <a href="index.jsp" class="back-link">Voltar para o Menu Principal</a>
</div>

<!-- Links para o JavaScript do Bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

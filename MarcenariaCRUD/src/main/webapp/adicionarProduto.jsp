<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LVC Portas e Madeiras - Adicionar Venda de Madeira</title>
    <!-- Link do Bootstrap 4 CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
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
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center">Adicionar Venda de Madeira - LVC Portas e Madeiras</h1>
    <form action="IncluirProdutoServlet" method="post">
        <div class="form-group">
            <label for="nome">Nome da Madeira:</label>
            <input type="text" class="form-control" name="nome" id="nome" required>
        </div>

        <div class="form-group">
            <label for="descricao">Descrição da Madeira:</label>
            <textarea class="form-control" name="descricao" id="descricao" required></textarea>
        </div>

        <div class="form-group">
            <label for="preco">Preço da Madeira (R$):</label>
            <input type="number" class="form-control" name="preco" id="preco" step="0.01" required>
        </div>

        <div class="form-group">
            <label for="tipo_madeira">Tipo de Madeira:</label>
            <input type="text" class="form-control" name="tipo_madeira" id="tipo_madeira" required>
        </div>

        <div class="form-group">
            <label for="data_inclusao">Data de Inclusão:</label>
            <input type="date" class="form-control" name="data_inclusao" id="data_inclusao" required>
        </div>

        <button type="submit" class="btn btn-primary btn-block">Adicionar Venda</button>
    </form>

    <a href="listarProdutos.jsp" class="back-link">Voltar para a Lista de Vendas</a>
</div>

<!-- Script do Bootstrap (incluindo dependências) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

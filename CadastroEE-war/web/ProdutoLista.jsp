<%-- 
    Document   : ProdutoLista
    Created on : May 26, 2024, 7:47:57 PM
    Author     : Alaim
--%>
<%@page import="cadastroee.model.Produtos"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Produtos</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1 class="mt-4">Lista de Produtos</h1>
        <a href="ServletProdutoFC?acao=formIncluir" class="btn btn-primary mb-3">Incluir Novo Produto</a>
        
        <table class="table table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Nome</th>
                    <th>Quantidade</th>
                    <th>Preço</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Produtos> produtos = (List<Produtos>) request.getAttribute("produtos");
                    if (produtos != null) {
                        for (Produtos produto : produtos) {
                %>
                <tr>
                    <td><%= produto.getIdProduto() %></td>
                    <td><%= produto.getNome() %></td>
                    <td><%= produto.getQuantidade() %></td>
                    <td><%= produto.getPrecoVenda() %></td>
                    <td>
                        <a href="ServletProdutoFC?acao=formAlterar&id=<%= produto.getIdProduto() %>" class="btn btn-primary btn-sm">Alterar</a>
                        <a href="ServletProdutoFC?acao=excluir&id=<%= produto.getIdProduto() %>" class="btn btn-danger btn-sm">Excluir</a>
                    </td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="5" class="text-center">Nenhum produto encontrado</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>


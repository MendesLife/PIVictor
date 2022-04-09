<%-- 
    Document   : inserir
    Created on : 04/04/2022, 11:24:51
    Author     : WebFullStack
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
             body{
                text-align: center;
            }
            
            button{
                background-color: white;
                border: 2px solid black;
            }
            
            a{
                text-decoration: none;
                color: black;
            }
        </style>
    </head>
    <body>
<%
    Connection con;
    Statement stmt;
    ResultSet result;
    //DriverManager drive;
    
    Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
    con = DriverManager.getConnection("jdbc:derby://localhost:1527/cadastro_dirtybird");
    stmt = con.createStatement();
    //result = stmt.executeQuery("INSERT into UNTITLED(ID,NOME,TELEFONE,ENDERECO) VALUES ("+Integer.parseInt(request.getParameter("id"))+",'"+request.getParameter("nome")+"','"+request.getParameter("telefone")+"','"+request.getParameter("endereco")+"')");
    int n = stmt.executeUpdate("INSERT into UNTITLED(ID,NOME,TELEFONE,ENDERECO) VALUES ("+Integer.parseInt(request.getParameter("id"))+",'"+request.getParameter("nome")+"','"+request.getParameter("telefone")+"','"+request.getParameter("endereco")+"')");
    if(n>0){%>
    <h1>Cliente Cadastrado com sucesso</h1>
   <% }%>

   <button><a href="./tudo.jsp">Retornar para o Menu<a></button>
    </body>
</html>

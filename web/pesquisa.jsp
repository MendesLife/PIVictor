<%-- 
    Document   : pesquisa
    Created on : 02/04/2022, 11:03:57
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
            
            .tabela{
                padding-top: 300px;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
            }
            
            table{
                width: 500px;
                text-align: center;
            }
            
            table, th, td {
            border: 1px solid rgb(0, 0, 0);
            border-collapse: collapse;
        }

        th, td {
            width: 25%;
            height: 60%;
        }

        tr{
            background-color: #ffffff;
            height: 40%;
        }

        th{
            background-color: #FCECEF;
        } 
        
        button{
                margin-top: 20px;
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
    result = stmt.executeQuery("Select * from UNTITLED where TELEFONE='"+request.getParameter("check")+"'");
    
while(result.next()){
%>
<div class="tabela">
    <h1>Dados do Cliente</h1>
<table>
            <tr>
                <th>ID</th>
              <th>NOME</th>
              <th>TELEFONE</th>
              <th>ENDEREÇO</th>
            </tr>
            <tr>
<td><%out.print(result.getString("ID"));%></td>
<td><%out.print(result.getString("TELEFONE"));%></td>
<td><%out.print(result.getString("NOME"));%></td>
<td><%out.print(result.getString("ENDERECO"));%></td>
<%}%>
</tr>
</table>
<button><a href='./tudo.jsp'>Menu</a></button>    
</div>
    </body>
</html>

<%-- 
    Document   : atualizado
    Created on : 04/04/2022, 16:25:14
    Author     : WebFullStack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<%
    Connection con;
    Statement stmt;
    ResultSet result;
    //DriverManager drive;
    
    Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
    con = DriverManager.getConnection("jdbc:derby://localhost:1527/cadastro_dirtybird");
    stmt = con.createStatement();
    result = stmt.executeQuery("Select * from UNTITLED where TELEFONE='"+request.getParameter("atualiza")+"'");
    
    while(result.next()){


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
        <style>

        .content{
            background-image: url('https://res.cloudinary.com/duyvaptsa/image/upload/v1648834524/Senai/image_23A_kunh4x.png');
            width: 100%;
            height: 100%;
            padding: 0 0;
            margin: 0 0;
        }

        .content-card,.table-content{
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }

        .card-control{
            margin-top: 30px;
            background: #FCECEF;
            border: 3px solid #A79A9C;
            box-sizing: border-box;
            border-radius: 20px;
            width: 500px;
            text-align: center;
            height: 900px;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        }

        input{
            margin-top: 10px;
            padding: 5px 0;
            width: 300px;
            background: #FFFFFF;
            border: 1px solid #000000;
        }

        button{
            font-family: 'Inter', sans-serif;
            margin: 15px 17px 0px 17px;
            padding: 5px 5px;
            background: #FFFFFF;
            border: 1px solid #000000;
        }

        button:hover{
            background-color:#f199a9; 
        }
        
        img{
            width: 70%;
        }

        .card-control::placeholder{
            margin-left: 5px;
        }

        input:focus::-webkit-input-placeholder {
         color: transparent;
        }

        input::placeholder{
            padding-left: 5px;
        }

        h1{
            font-family: 'Inter', sans-serif;
        }

        table{
            font-family: 'Inter', sans-serif;
            margin-top: 30px;
            width: 50%;
            text-align: center;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
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


        .table-content{
            padding: 100px 0;
        }

        .table-content h1{
            border: 2px solid black;
            background-color: #FCECEF;
            padding: 5px 5px;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        }
        
        a{
            text-decoration: none;
            color: black;
        }


    </style>
</head>
<body>
    <div class="content">
    <div class="content-card">
        <div class="card-control">
            <h1>ATUALIZAR CADASTRO</h1>
            <form class="form-inputs" action="sucessatt.jsp">
                <input type="text" value="<%=result.getInt("ID")%>" id="id" name="id" required><br>
                <input type="text" value="<%=result.getString("NOME")%>" id="nome" name="nome" required><br>
                <input type="text" value="<%=result.getString("TELEFONE")%>" id="telefone" name="telefone" required><br>
                <input type="text" value="<%=result.getString("ENDERECO")%>" id="endereco" name="endereco" required><br>
                <input type="submit" value="ATUALIZAR" name="btn"></input>
            </form>
            <button><a href="./tudo.jsp">VOLTAR<a></button>
        </div>
                
    </div>
    <div class="table-content">
        <h1>TABELA DE CLIENTES</h1>
        
        <table>
            <tr>
                <th>ID</th>
              <th>NOME</th>
              <th>TELEFONE</th>
              <th>ENDERE??O</th>
            </tr>
            
            <tr>
                <td><%=result.getInt("ID")%></td>
              <td><%=result.getString("NOME")%></td>
              <td><%=result.getString("TELEFONE")%></td>
              <td><%=result.getString("ENDERECO")%></td>
            </tr>
            <%}%>
          </table>
    </div>
</div>
</body>
</html>

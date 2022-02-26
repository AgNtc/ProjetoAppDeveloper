<%@page language="java" import="java.sql.*"  %>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title></title>

	<style>
		.cor {
			background-color: #cecece ;
		}
		table{
			border-radius: 10px;

		}

	</style>

</head>
<body>

<%
//Cria as variáveis contendo informações sobre o banco de dados
   String driver = "com.mysql.jdbc.Driver";
   String banco = "projeto";
   String usuario = "root";
   String senha = "";
   String endereco = "jdbc:mysql://localhost:3306/" + banco;
   

   //Carregar o Drive na memoria
   Class.forName( driver ) ;

   // Cria a variavel para a conexao com o banco de dados
   Connection conexao ;

   //Abrir a conexao com o banco
   conexao = DriverManager.getConnection( endereco, usuario, senha) ;

   //Cria o objeto Statement
   Statement stm = conexao.createStatement() ;

   String sql = "select * from cadastro" ;

 
	ResultSet dados =   stm.executeQuery( sql )   ; 

	out.print("<table border=1>") ;

	while ( dados.next()  ) {

		out.print("<tr class='cor' >") ;
			
			out.print("<td>") ;
				out.print( dados.getString("codigo") ) ;
			out.print("</td>") ;

			out.print("<td>") ;
				out.print( dados.getString("nome") ) ;
			out.print("</td>");

			out.print("<td>") ;
				out.print( dados.getString("telefone") ) ;
			out.print("</td>") ;

			out.print("<td>") ;
				out.print( dados.getString("email") ) ;
			out.print("</td>") ;

			out.print("<td>") ;
				out.print( dados.getString("assunto") ) ;
			out.print("</td>") ;

			out.print("<td>") ;
				out.print( dados.getString("mensagem") ) ;
			out.print("</td>") ;

		out.print( "</tr>" ) ;

	}

	out.print("</table>") ;
%>
</body>
</html>
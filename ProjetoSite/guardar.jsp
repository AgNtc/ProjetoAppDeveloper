<%@page language="java" import="java.sql.*" %>
<%
   //Cria as variáveis e armazena as informações digitadas pelo Usuário
   String vnome = request.getParameter("txtnome");

   String vtelefone = request.getParameter("txttelefone");

   String vemail = request.getParameter("txtemail");

   String vassunto = request.getParameter("txtassunto");

   String vmensagem = request.getParameter("txtmensagem");

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

   String sql = "insert into cadastro (nome,telefone,email,assunto,mensagem) values( '" + vnome + "','" + vtelefone + "','" + vemail + "','" + vassunto +"','" + vmensagem + "')" ;

   stm.executeUpdate( sql ) ;

   conexao.close() ;
   stm.close() ;

   out.print("<head>");
   out.print("<meta charset='utf-8'>");
   out.print("</head>");
   out.print("Informações enviadas com sucesso,retornaremos em breve!") ;
   out.print("<br/><br/>");
   out.print("Agradecemos a sua interação,a equipe Sheikinah agradece!!!") ;
   out.print("<br/><br/>") ;
   out.print("<a href='contato1.html'>Voltar</a>") ;
%>
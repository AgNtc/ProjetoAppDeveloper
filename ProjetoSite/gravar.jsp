<%@page language="java" import="java.sql.*" %>


<%

String vnome_form = request.getParameter("nome_form");

String vemail_form = request.getParameter("email_form");

String vtelefone_form = request.getParameter("telefone_form");

String vdata  = request.getParameter("mark");

String vhora  = request.getParameter("hora");

String vservico  = request.getParameter("servicos");

String vtratamento  = "";
if (request.getParameter("btn")== null) {	
	vtratamento = "";

}

else{
	vtratamento = request.getParameter("btn");
	}


String vquimica  ="";
if (request.getParameter("quin")== null) {	
	vquimica = "";

}

else{
	vquimica =request.getParameter("quin");
}


String vobs = request.getParameter("obs");




String driver = "com.mysql.jdbc.Driver";
String banco = "projeto";
String usuario = "root";
String senha = "";
String endereco = "jdbc:mysql://localhost:3306/" + banco;


Class.forName(driver);

Connection conexao;


conexao = DriverManager.getConnection(endereco, usuario, senha);


Statement smt = conexao.createStatement();


String sql = "insert into cadastro (nome_form, email_form, telefone_form, data, hora, servicos, tratamento, quimica, observacoes)  values('"+vnome_form + "' , '" + vemail_form +"', '" + vtelefone_form + "','" + vdata + "','" + vhora +"','"+vservico+"','"+vtratamento+"','"+vquimica+"','"+vobs+"')";

smt.executeUpdate(sql);

//out.print(sql);


conexao.close();
smt.close();



out.print("<script>");
    out.print("alert('Enviado com sucesso');");
    
    out.print("</script>");
out.print("<a href='Agendamento.html'>Voltar</a>") ;





%>
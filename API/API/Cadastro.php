<?php

    // Arquivo de Regras de negócio

require_once 'config.php' ;
class Cadastro 
{
    
    public static function select(int $id)
    {
        $tabela = "cadastro";
        $coluna = "id_cliente";
        
        $connPdo = new \PDO(dbDrive.':host='.dbHost.'; dbname='.dbName, dbUser, dbPass);
        // conectando com o banco de dados através do PDO
        // pegando as informações do config.php (variáveis globais)

        $sql = "select * from $tabela where $coluna = :id" ;
        // comando que será executado no banco de dados para consultar

        $stmt = $connPdo->prepare($sql);
        // preparando o comando Select para ser executado

        $stmt->bindValue(':id' , $id) ;
        // configurando o parametro de busca

        $stmt->execute() ;
        // executando o comando select no banco de dados

        if ($stmt->rowCount() > 0)
        {
            // se houve retorno de dados
            //var_dump( $stmt->fetch(\PDO::FETCH_ASSOC) );

            return $stmt->fetch(\PDO::FETCH_ASSOC) ;
            // retornando os dados do banco de dados
        }else{
            // se não houve retorno de dados
            throw new \Exception("Sem registros de agendamento");
        }

    }

    public static function selectAll()
    {
        $tabela = "cadastro";
        
        $connPdo = new \PDO(dbDrive.':host='.dbHost.'; dbname='.dbName, dbUser, dbPass);
        $sql = "select * from $tabela"  ;
        $stmt = $connPdo->prepare($sql);
        $stmt->execute() ;

        if ($stmt->rowCount() > 0)
        {
            return $stmt->fetchAll(\PDO::FETCH_ASSOC) ;
        }else{
            throw new \Exception("Sem registros");
        }

    }

    public static function insert($dados)
    {

        $tabela = "cadastro";
        
        $connPdo = new \PDO(dbDrive.':host='.dbHost.'; dbname='.dbName, dbUser, dbPass);
        $sql = "insert into $tabela (nome_form, email_form, telefone_form, data, hora, servicos, tratamento, quimica, observacoes) values (:nome_form, :email_form, :telefone_form, :data, :hora, :servicos, :tratamento, :quimica, :observacoes)"  ;
        $stmt = $connPdo->prepare($sql);
        $stmt->bindValue(':nome_form' , $dados['nome_form']) ;
        $stmt->bindValue(':email_form' , $dados['email_form']) ;
        $stmt->bindValue(':telefone_form' , $dados['telefone_form']) ;
        $stmt->bindValue(':data' , $dados['data']) ;
        $stmt->bindValue(':hora' , $dados['hora']) ;
        $stmt->bindValue(':servicos' , $dados['servicos']) ;
        $stmt->bindValue(':tratamento' , $dados['tratamento']) ;
        $stmt->bindValue(':quimica' , $dados['quimica']) ;
        $stmt->bindValue(':observacoes' , $dados['observacoes']) ;
        $stmt->execute() ;

        if ($stmt->rowCount() > 0)
        {
            return 'Dados cadastrados com sucesso!';
        }else{
            throw new \Exception("Erro ao  inserir os dados!!");
        }
    }

    public static function alterar($id, $dados)
    {

        $tabela = "cadastro";
        $coluna = "id_cliente";
        
        $connPdo = new \PDO(dbDrive.':host='.dbHost.'; dbname='.dbName, dbUser, dbPass);
        $sql = "update $tabela set nome_form=:nome_form, email_form=:email_form, telefone_form= :telefone_form, data=:data, hora=:hora, servicos=:servicos, tratamento=:tratamento, quimica=:quimica, observacoes=:observacoes where $coluna = :id" ;
        $stmt = $connPdo->prepare($sql);
        $stmt->bindValue(':id', $id);
        $stmt->bindValue(':nome_form' , $dados['nome_form']) ;
        $stmt->bindValue(':email_form' , $dados['email_form']) ;
        $stmt->bindValue(':telefone_form' , $dados['telefone_form']) ;
        $stmt->bindValue(':data' , $dados['data']) ;
        $stmt->bindValue(':hora' , $dados['hora']) ;
        $stmt->bindValue(':servicos' , $dados['servicos']) ;
        $stmt->bindValue(':tratamento' , $dados['tratamento']) ;
        $stmt->bindValue(':quimica' , $dados['quimica']) ;
        $stmt->bindValue(':observacoes' , $dados['observacoes']) ;
        $stmt->execute() ;

        if ($stmt->rowCount() > 0)
        {
            return 'Dados alterados com sucesso!';
        }else{
            throw new \Exception("Erro ao  alterar os dados!!");
        }
    }

    public static function delete(int $id)
    {
        $tabela = "cadastro";
        $coluna = "id_cliente";

        $connPdo = new \PDO(dbDrive.':host='.dbHost.'; dbname='.dbName, dbUser, dbPass);
        $sql = "delete from $tabela where $coluna = :id_cliente"  ;
        $stmt = $connPdo->prepare($sql);
        $stmt->bindValue(':id_cliente' , $id) ;
        $stmt->execute() ;

        if ($stmt->rowCount() > 0)
        {
            return 'Dados excluídos com sucesso!';
        }else{
            throw new \Exception("Erro ao excluir os dados!!");
        }
    }

}
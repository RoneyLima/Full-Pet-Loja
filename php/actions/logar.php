<?php

    session_start();

    require_once 'db_connect.php';

    if(isset($_POST['logar'])){
        $email = $_POST['email'];
        $senha = $_POST['senha'];

        if(strlen($email) > 0 && strlen($senha) > 0){
            $sql = "SELECT * FROM tb_users WHERE email = '$email' AND senha = '$senha'";
            $resultado = mysqli_query($connect, $sql);

            while($row = mysqli_fetch_assoc($resultado)){
                    $_SESSION['iduser'] = $row['iduser'];
                    $_SESSION['nome'] = $row['nome'];
                    $_SESSION['email'] = $row['email'];


                header("Location: ../../produtos.php");
            }
        }
    }

?>
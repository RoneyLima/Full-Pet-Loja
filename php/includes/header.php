<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <!-- Meta tag responsiva - bootstrap -->

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fontes do Google -->

    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">

    <!-- Boostrap CDN -->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
    <!-- Chamando minha função Javascript -->

    <script type="text/javascript" src="./js/script.js"></script>

    <!-- Chamando meu estilo CSS -->
    <link href="./css/estilo.css" rel="stylesheet">
    <title>Full Pet</title>
</head>
<body>

    <div class="fixed-top">
            <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-between"> 
                <a class="navbar-brand" href="index.php"><img src="./imagens/fullpet_logo2.png" alt="logo_menor" width="150px"></a>
                
                <div class="pesquisa">
                <form class="form-inline my-0 my-lg-0 px-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Pesquisar</button>
                </form>
                   <p class="login-options">
                   <a class="stretched-link login-options-head" href="./login.php">Login</a>           
                    <a class="stretched-link" href="./php/actions/sair.php">Sair</a>
                   </p>
                </div>

            </nav>

            <nav class="navbar navbar-expand-lg bg-primary fixed">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link text-white" href="./produtos.php">Produtos</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="./cadastro.php">Cadastrar</a></li>                     
                        <li class="nav-item"><a class="nav-link text-white" href="./lojas.php">Lojas</a></li>

                    </ul>
                </div>
            </nav>
    </div>




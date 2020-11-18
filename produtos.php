<?php

        include_once ('./php/includes/header.php')
       
?>

<div class="container body-conteiner div-pagina-produtos">

    <div class="conteiner coluna-categoria">
        <h3></h3>
        <ul>
            <li onclick="exibirCategoria('dogFood')">Cães</li>
            <li onclick="exibirCategoria('catFood')">Gatos</li>
            <li onclick="exibirCategoria('birdFood')">Pássaros</li>
            <li onclick="exibirCategoria('oFood')">Répteis</li>
            <li onclick="exibirCategoria('oFood')"class="fontePadrao">Outros animais</li>
        </ul>
        
    </div>

    <div class="coluna-produtos">
        <div class="produtos-linha">
<?php
    
    require_once "./php/actions/db_connect.php";

    $sql = "SELECT * FROM tb_produtos";
    $resultado = mysqli_query($connect, $sql);

    while($row=mysqli_fetch_assoc($resultado)){
        
?>  
            <div class="card" style="width: 16rem;">
            <br>
                <img class="card-img-top" src="./imagens/Produtos/<?php echo $row['img_nome'];?>" alt="imagem_produto" onmouseover="destaqueImg(this)"  onmouseout="semDestaque(this)" >
                <div class="card-body">        
                    <a href="#" > <p class="card-text"><?php echo $row['descricao']; ?></p>
                    <p class="card-text valor-antigo">de R$<?php echo $row['valor_antigo']; ?>
                    <p class="card-text valor-atual">Por R$<?php echo $row['valor_atual']; ?></p>
                    </a>    
                </div>
                <div class="card-body">
                    
                <!-- procurar a marca <a href="#" > <p class="card-text"><?php echo $row['marca']; ?></p>
                </a> -->
                </div>
                
            </div>
            <?php
        }
    ?>
    </div>

    <?php 

 include_once ('./php/includes/footer.php')

?>


    
    
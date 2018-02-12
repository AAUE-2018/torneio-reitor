<section>
  <div id="slider" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#slider" data-slide-to="0" class="active"></li>
      <li data-target="#slider" data-slide-to="1" class=""></li>
      <li data-target="#slider" data-slide-to="2" class=""></li>
    </ol>


    <div class="carousel-inner" role="listbox">
      <?php
      $i = 1;

      foreach ($noticiasFreqs as $noticia):
        $active = "";
        if($i == 1):
          $active = "active";
        endif; ?>
        <div class="item <?php echo $active;?>" >
          <img class="imagem-slider" src="<?php echo base_url()?>assets/imgs/slider.png" alt="slide-<?php echo $i;?>">
          <div class="container">
            <div class="carousel-caption" style="text-align: left;">
              <h1><?php print_r( $noticia['titulo'] ); ?></h1>
              <p><?php print_r( substr($noticia['corpo'], 0, 116) ); print_r("..."); ?></p>
              <p><a class="btn btn-lg botao-ler-mais" href="<?php echo base_url()?>index.php/noticias" role="button">Ler Mais</a></p>
            </div>
          </div>
        </div>
        <?php $i++;?>
      <?php endforeach;?>
    </div>

    <a class="left carousel-control" href="#slider" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>

    <a class="right carousel-control" href="#slider" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</section>

<section class="success" id="about" style="  padding-bottom: 50px;">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2>Sobre</h2>
        <hr class="star-light">
      </div>
    </div>

    <div class="row">
      <div class="col-lg-12">
        <p>O torneio do Reitor é um torneio disputado na perspectiva do lazer, espirito de equipa, amizade e competição saudável com o intuito de promover, não só estes valores, como também a práctica de desporto pela comunidade estudantil da Universidade de Évora. A organização do Torneio é da responsabilidade da Associação Académica da Universidade de Évora. Os jogos irão decorrer no pavilhão da Universidade, bairro Senhora da Saúde.</p>
      </div>

      <div class="col-lg-12">
        <p>Além do torneio irão haver as Reitor Tips onde podes apostar nos resultados dos jogos do Torneio do Reitor e habilitar-te a ganhar um dos vários prémios que temos para oferecer! Para mais informações consulta o site ou contacta-nos!</p>
      </div>
    </div>
  </div>
</section>

<!-- <section class="contactos">
  <div class="footer-above">
    <div class="container">
      <div class="row">
        <h3>Contacta-nos!!</h3>

        <div class="footer-col col-md-4">
          <h3>Localização</h3>
          <p>Rua Diogo Cão Nº 21
          <br>Évora, 7000-872</p>
        </div>

        <div class="footer-col col-md-4">
          <h3>Redes Sociais</h3>
          <ul class="list-inline">
            <li>
              <a href="https://www.facebook.com/AAUEvora/"
              target="_blank"
              >
                <img style="	width: 50px;
                height: 50px;" src="<?php echo base_url()?>assets/imgs/facebook.svg">
              </a>
            </li>

            <li>
              <a href="https://www.instagram.com/aauevora/"
              target="_blank"
              >
                <img style="	width: 48px;
                height: 48px;" src="<?php echo base_url()?>assets/imgs/instagram.svg">
              </a>
            </li>
          </ul>
        </div>

        <div class="footer-col col-md-4">
          <h3>Emails</h3>
          <p>desportiva@aaue.pt
          <br>geral@aaue.pt</p>
        </div>
      </div>
    </div>
  </div>
</section>
 -->
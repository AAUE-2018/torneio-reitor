
<div class="container">
  <h1 class="titulo">Notícias</h1>

  <div class="panel-group" id="accordion" >
    <div class="panel panel-faq">
      <?php
      $i=0;
      foreach($noticias as $noticias):?>
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?=$i?>" style="color: inherit;"">
          <div class="panel-heading panel-heading-<?php echo $i%2; ?>">
            <div class="row">
              <div class="col-xs-4">
                <h4 class="panel-title" >
                  <?php print_r( $noticias['data'] ); ?>
                </h4>
              </div>
              <div class="col-xs-7">
                <h4 class="panel-title" >
                  <?php print_r( $noticias['titulo'] ); ?>
                </h4>
              </div>

              <div class="col-xs-1">
                <span class="glyphicon glyphicon-menu-down seta-baixo-<?php echo $i%2; ?>"></span>
              </div>
            </div>
          </div>
        </a>

        <div id="collapse<?=$i?>" class="panel-collapse collapse">
          <div class="panel-body panel-body-<?php echo $i%2; ?>">
            <?php print_r( $noticias['corpo'] ); ?>

          </div>
        </div>

      <?php $i++; endforeach; ?>
    </div>
  </div>
</div>

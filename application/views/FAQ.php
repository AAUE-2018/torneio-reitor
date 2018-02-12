<div class="container" >
  <h1 class="titulo">FAQs</h1>

  <div class="panel-group" id="accordion" >
    <div class="panel panel-faq">
      <?php
      $i=0;
      foreach($row as $row):?>
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?=$i?>" style="color: inherit;"">
          <div class="panel-heading panel-heading-<?php echo $i%2; ?>">
            <div class="row">
              <div class="col-xs-11">
                <h4 class="panel-title" >
                FAQ# <?=$i?> -
                <?php print_r( $row['questao'] ); ?>
                </h4>
              </div>

              <div class="col-xs-1">
                <span class="glyphicon glyphicon-menu-down seta-baixo-<?php echo $i%2; ?>"></span>
              </div>
            </div>
          </div>
        </a>

      <div id="collapse<?=$i?>" class="panel-collapse collapse">
        <div class="panel-body panel-body-<?php echo $i%2; ?>">R.: 
          <?php print_r( $row['resposta'] ); ?>
          
        </div>
      </div>
      <?php $i++; endforeach; ?>

    </div>
  </div>
</div>

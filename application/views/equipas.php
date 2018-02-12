<div class="container" >
  <h1 class="titulo">Equipas</h1>

  <div class="panel-group col-xs-8 col-xs-offset-2" id="accordion" >
    <div class="panel panel-faq">
      <?php
      $i=0;
      foreach($nomeEquipas as $equipa):?>
      <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?=$i?>" style="color: inherit;"">
        <div class="panel-heading panel-heading-<?php echo $i%2; ?>">
          <div class="row">
            <div class="col-xs-11">
              <h4 class="panel-title" >
              TEAM <?php print_r( $equipa['nome'] ); ?>
              </h4>
            </div>
            <div class="col-xs-1">
              <span class="glyphicon glyphicon-menu-down seta-baixo-<?php echo $i%2; ?>">
              </span>
            </div>
          </div>
        </div>
      </a>

      <div id="collapse<?=$i?>" class="panel-collapse collapse">
        <div class="panel-body panel-body-<?php echo $i%2; ?>">
          <div class="jogadores-tabela">
            <?php
                foreach($nomeJogador as $jogador):
                  if ($jogador['equipaId']==$equipa['id']):
                ?>

                <div class="jogadores">
                  Jogador: <?php echo $jogador['nomeJogador']; ?> 
                </div> 
            <?php endif; ?>

            <?php endforeach; ?>
          </div>
        </div>
      </div>
      <?php $i++; endforeach; ?>
    </div>
  </div>
</div>

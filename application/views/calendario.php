<div class="container">
	<h1 class="titulo">Resultados/<wbr>Classificações</h1>

	<div class="btn-group btn-group-justified" role="group">
		<div class="btn-group" role="group">
			<a href="<?php echo base_url()?>index.php/calendario/index">
				<button type="button" class="btn botaoGrupos">Geral</button>
			</a>
		</div>

		<?php
		$grupo = 1;
		foreach ($grupos as $grupos): ?>
		<?php if ($grupo < 4){ ?>
			<div class="btn-group" role="group">
				<a href="<?php echo base_url()?>index.php/calendario/grupos/<?php echo ($grupo) ?>">
					<button type="button" class="btn botaoGrupos"><?php echo ($grupos['nome']); ?></button>
				</a>
			</div>
		<?php } elseif ($grupo == 4){ ?>
			</div>
			<div class="btn-group btn-group-justified" role="group">
				<div class="btn-group" role="group">
					<a href="<?php echo base_url()?>index.php/calendario/grupos/<?php echo ($grupo) ?>">
						<button type="button" class="btn botaoGrupos"><?php echo ($grupos['nome']); ?></button>
					</a>
				</div>
		<?php } else { ?>
			<div class="btn-group" role="group">
				<a href="<?php echo base_url()?>index.php/calendario/grupos/<?php echo ($grupo) ?>">
					<button type="button" class="btn botaoGrupos"><?php echo ($grupos['nome']); ?></button>
				</a>
			</div>
		<?php } ?>
		<?php $grupo ++; endforeach; ?>
	</div>

	<?php if ($tab_equipas == true){ ?>
		<div class="table-responsive">
			<table class="table">
				<table class="table tabela-riscada">
					<thead>
						<tr>
							<th>Posição</th>
							<th>Equipa</th>
							<th>Jogos</th>
							<th>GM</th>
							<th>GS</th>
							<th>DIF</th>
							<th>PTS</th>
						</tr>
					</thead>

					<tbody>
						<?php
						$posicao = 1;
						foreach($equipas as $equipas): ?>
							<tr>
								<td><?php echo($posicao); $posicao ++;?></td>
								<td><?php echo $equipas['nome']; ?></td>
								<td><?php echo $equipas['jogos']; ?></td>
								<td><?php echo $equipas['gm']; ?></td>
								<td><?php echo $equipas['gs']; ?></td>
								<td><?php echo $equipas['dif']; ?></td>
								<td><?php echo $equipas['pontos']; ?></td>
							</tr>
						<?php endforeach; ?>
					</tbody>
				</table>
			</table>
		</div>
	<?php } ?>

	<div class="table-responsive">
		<table class="table">
			<table class="table tabela-riscada">
				<thead>
					<tr>
						<?php if ($fasegrupos == true){ ?>
						<th>Jornada</th>
						<?php } ?>
						<th>Dia</th>
						<th>Hora</th>
						<th>Equipas</th>
						<th>Resultado</th>
					</tr>
				</thead>

				<tbody>
					<?php
					foreach($jogos as $jogos): ?>
						<tr>
							<?php if ($fasegrupos == true){ ?>
								<?php if ($jogos['jornada'] == 0){ ?>
									<td><?php echo "-"; ?></td>
								<?php } else{?>
									<td><?php echo $jogos['jornada']; ?></td>
								<?php } ?>
							<?php } ?>
							<td><?php echo $jogos['dia']; ?></td>
							<td><?php echo $jogos['hora']; ?></td>
							<td><?php echo $jogos['equipas']; ?></td>
							<td><?php echo $jogos['resultado']; ?></td>
						</tr>
					<?php endforeach; ?>
				</table>
		</table>
	</div>
</div>

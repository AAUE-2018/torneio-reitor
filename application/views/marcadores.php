<div class="container">
	<h1 class="titulo">Melhores Marcadores</h1>
	<div class="table-responsive">
		<table class="table">
			<table class="table tabela-riscada">
				<thead>
					<tr>
						<th>Jogador</th>
						<th>Equipa</th>
						<th>Nº Golos</th>
					</tr>
				</thead>

				<tbody>
					<?php
					foreach($marcadores as $marcadores): ?>
					<tr>
						<td><?php echo $marcadores['nomeJogador']; ?></td>
						<td><?php echo $marcadores['nome']; ?></td>
						<td><?php echo $marcadores['golos']; ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</table>
</div>
</div>

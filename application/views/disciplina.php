<div class="container">
	<h1 class="titulo">Disciplina</h1>
	<div class="table-responsive">
		<table class="table">
			<table class="table tabela-riscada">
				<thead>
					<tr>
						<th>Equipa</th>
						<th>Cartões Amarelos</th>
						<th>Cartões Vermelhos</th>
						<th>Castigos</th>
						<th>Pontos Fair Play</th>
					</tr>
				</thead>

				<tbody>
					<?php
					foreach($disciplina as $disciplina): ?>
					<tr>
						<td><?php echo $disciplina['nome']; ?></td>
						<td><?php echo $disciplina['cart_amrl']; ?></td>
						<td><?php echo $disciplina['cart_verm']; ?></td>
						<td><?php echo $disciplina['castigos']; ?></td>
						<td><?php echo $disciplina['pts_fairplay']; ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</table>
</div>
</div>

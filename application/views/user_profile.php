<?php
$user_id=$this->session->userdata('user_id');
 
if(!$user_id){
 
	redirect('index.php/user/');
}
 
 ?>
 
<div class="container login">
	<p>Nome: <?php echo $this->session->userdata('user_name'); ?></td></p>
	<p>Email: <?php echo $this->session->userdata('user_email');  ?></td></p>
	<a href="<?php echo base_url('index.php/user/user_logout');?>" >  <button type="button" class="btn-primary">Sair</button></a>
</div>

<div class="container login">
	<h4>Adicionar Noticia </h4>
	<p>texto </p>
</div>
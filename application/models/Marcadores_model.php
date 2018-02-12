<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Marcadores_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function getMarcadores()

	// select nome from jogadores inner join equipas on jogadores.equipaId = equipas.id ;
	{
		$query = $this->db->select('nome, nomeJogador, golos')
		->from('jogadores')
		->join('equipas', 'jogadores.equipaId = equipas.id')
		->order_by('golos', 'DESC')
		->limit(10)
		->get();

		return $query->result_array();
	}
}
